package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class BaseMessageBean implements Serializable {
    private static final long serialVersionUID = 1;
    public String data;
    public String type;

    public String getData() {
        return this.data;
    }

    public String getType() {
        return this.type;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "BaseMessageBean{type='" + this.type + "', data='" + this.data + "'}";
    }
}
