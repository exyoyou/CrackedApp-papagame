package com.aggmoread.sdk.client;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class AMAdExtras {
    private HashMap<String, Object> extras;

    public AMAdExtras(Map<String, Object> map) {
        HashMap<String, Object> map2 = new HashMap<>();
        this.extras = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public Object getData(String str) {
        return this.extras.get(str);
    }
}
