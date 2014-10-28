package com.madrona.server.model;



import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Role implements Serializable {
    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    private String roleId;
    private String authority;
    private String description;

    public Role() {
    }

    public Role(String authority, String description) {
        this.authority = authority;
        this.description = description;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
