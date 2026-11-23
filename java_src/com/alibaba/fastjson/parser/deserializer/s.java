package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class s extends r {
    public s(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        Integer numP;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            int I = dVarZ.I();
            dVarZ.l(16);
            if (obj == null) {
                map.put(this.f6570a.getName(), Integer.valueOf(I));
                return;
            } else {
                h(obj, I);
                return;
            }
        }
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            numP = null;
        } else {
            numP = com.alibaba.fastjson.util.k.p(cVar.Q());
        }
        if (numP == null && c() == Integer.TYPE) {
            return;
        }
        if (obj == null) {
            map.put(this.f6570a.getName(), numP);
        } else {
            j(obj, numP);
        }
    }
}
