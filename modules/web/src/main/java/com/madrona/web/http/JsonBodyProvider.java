package com.madrona.web.http;

import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.ContextResolver;
import javax.ws.rs.ext.Providers;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;

/**
 * Created by mayooran on 11/9/14.
 */
@javax.ws.rs.ext.Provider
@javax.ws.rs.Consumes("application/json")
@javax.ws.rs.Produces("application/json")
public class JsonBodyProvider implements javax.ws.rs.ext.MessageBodyWriter<java.lang.Object>, javax.ws.rs.ext.MessageBodyReader<java.lang.Object> {


    private static final String CHARSET = "charset";
    @Context
    protected Providers providers;

    @Override
    public boolean isReadable(Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType) {

        return java.lang.Object.class == type;
//        return java.lang.Object.class == getDomainClass(genericType);
    }

    @Override
    public Object readFrom(Class<Object> type, Type genericType, Annotation[] annotations, MediaType mediaType, MultivaluedMap<String, String> httpHeaders, InputStream entityStream) throws IOException, WebApplicationException {

        try {
            Class<?> domainClass = getDomainClass(genericType);
            Unmarshaller u = getJAXBContext(domainClass, mediaType).createUnmarshaller();
            u.setProperty("eclipselink.media-type", MediaType.APPLICATION_JSON);
            u.setProperty("eclipselink.json.include-root", false);

            StreamSource jsonSource;
            Map<String, String> mediaTypeParameters = mediaType.getParameters();
            if(mediaTypeParameters.containsKey(CHARSET)) {
                String charSet = mediaTypeParameters.get(CHARSET);
                Reader entityReader = new InputStreamReader(entityStream, charSet);
                jsonSource = new StreamSource(entityReader);
            } else {
                jsonSource = new StreamSource(entityStream);
            }

            return u.unmarshal(jsonSource, domainClass).getValue();
        } catch(JAXBException jaxbException) {
            throw new WebApplicationException(jaxbException);
        }
    }

    @Override
    public boolean isWriteable(Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType) {
        return isReadable(type, genericType, annotations, mediaType);
    }

    @Override
    public long getSize(Object o, Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType) {
        return 0;
    }

    @Override
    public void writeTo(Object o, Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType, MultivaluedMap<String, Object> httpHeaders, OutputStream entityStream) throws IOException, WebApplicationException {
        try {
            Class<?> domainClass = getDomainClass(genericType);
            Marshaller m = getJAXBContext(domainClass, mediaType).createMarshaller();
            m.setProperty("Content-Type", MediaType.APPLICATION_JSON);
//            m.setProperty("eclipselink.json.include-root", false);

            Map<String, String> mediaTypeParameters = mediaType.getParameters();
            if(mediaTypeParameters.containsKey(CHARSET)) {
                String charSet = mediaTypeParameters.get(CHARSET);
                m.setProperty(Marshaller.JAXB_ENCODING, charSet);
            }

            m.marshal(o, entityStream);
        } catch(JAXBException jaxbException) {
            throw new WebApplicationException(jaxbException);
        }
    }

    private JAXBContext getJAXBContext(Class<?> type, MediaType mediaType)
            throws JAXBException {
        ContextResolver<JAXBContext> resolver
                = providers.getContextResolver(JAXBContext.class, mediaType);
        JAXBContext jaxbContext;
        if(null == resolver || null == (jaxbContext = resolver.getContext(type))) {
            return JAXBContext.newInstance(type);
        } else {
            return jaxbContext;
        }
    }

    private Class<?> getDomainClass(Type genericType) {
        if(genericType instanceof Class) {
            return (Class<?>) genericType;
        } else if(genericType instanceof ParameterizedType) {
            return (Class<?>) ((ParameterizedType) genericType).getActualTypeArguments()[0];
        } else {
            return null;
        }
    }
}
