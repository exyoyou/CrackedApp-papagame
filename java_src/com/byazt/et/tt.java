package com.byazt.et;

import com.byazt.iy.ve;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 426, 13})
public class tt {
    public Map<String, Object> c(Map<String, Object> map, ve veVar, boolean z10) {
        if (veVar == null) {
            return map;
        }
        Map<String, Object> concurrentHashMap = z10 ? new ConcurrentHashMap<>() : map;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (z10) {
                key = veVar.decrypt(key);
            }
            concurrentHashMap.put(key, veVar.decrypt(value.toString()));
        }
        return concurrentHashMap;
    }

    public Map<String, Object> tt(Map<String, Object> map, ve veVar, boolean z10) {
        if (veVar == null) {
            return map;
        }
        Map<String, Object> concurrentHashMap = z10 ? new ConcurrentHashMap<>() : map;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (z10) {
                key = veVar.encrypt(key);
            }
            concurrentHashMap.put(key, veVar.encrypt(value.toString()));
        }
        return concurrentHashMap;
    }
}
