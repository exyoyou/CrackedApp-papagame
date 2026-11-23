package com.haima.hmcp.utils;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorInfo {
    private final Map<String, Object> map = new HashMap();

    public Map<String, Object> getErrorMap() {
        return this.map;
    }

    public ErrorInfo put(String str, Object obj) {
        if ("errorCode".equals(str) && obj == null) {
            obj = "";
        }
        this.map.put(str, obj);
        return this;
    }

    public String toString() {
        return "ErrorInfo{map=" + this.map + '}';
    }
}
