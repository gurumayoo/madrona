package com.madrona.server.model;

import java.util.Map;

public interface RequestMessage {
    public Map<String, Object> convertToMap();
}