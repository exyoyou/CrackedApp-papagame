package com.haima.hmcp.beans;

import com.alibaba.fastjson.a;
import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class SerializableMap<T extends Serializable> implements Serializable {
    private Map<String, T> serializableMap;

    public SerializableMap() {
    }

    public Map<String, T> getMap() {
        return this.serializableMap;
    }

    public String getMapJson() {
        Map<String, T> map = this.serializableMap;
        return map == null ? "" : a.toJSONString(map);
    }

    public SerializableMap<T> setMap(Map<String, T> map) {
        this.serializableMap = map;
        return this;
    }

    public SerializableMap(Map<String, T> map) {
        this.serializableMap = map;
    }
}
