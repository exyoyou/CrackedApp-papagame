package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class g extends r {
    public g(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        return 6;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 6) {
            dVarZ.l(16);
            if (obj == null) {
                map.put(this.f6570a.getName(), Boolean.TRUE);
                return;
            } else {
                l(obj, true);
                return;
            }
        }
        if (dVarZ.b() == 2) {
            int I = dVarZ.I();
            dVarZ.l(16);
            boolean z10 = I == 1;
            if (obj == null) {
                map.put(this.f6570a.getName(), Boolean.valueOf(z10));
                return;
            } else {
                l(obj, z10);
                return;
            }
        }
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            if (c() == Boolean.TYPE || obj == null) {
                return;
            }
            k(obj, null);
            return;
        }
        if (dVarZ.b() == 7) {
            dVarZ.l(16);
            if (obj == null) {
                map.put(this.f6570a.getName(), Boolean.FALSE);
                return;
            } else {
                l(obj, false);
                return;
            }
        }
        Boolean boolH = com.alibaba.fastjson.util.k.h(cVar.Q());
        if (boolH == null && c() == Boolean.TYPE) {
            return;
        }
        if (obj == null) {
            map.put(this.f6570a.getName(), boolH);
        } else {
            j(obj, boolH);
        }
    }
}
