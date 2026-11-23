package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class t0 extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0 f6577c;

    public t0(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
        this.f6577c = kVar.e(eVar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        return this.f6577c.b();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        Long lS;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            long jY = dVarZ.y();
            dVarZ.l(16);
            if (obj == null) {
                map.put(this.f6570a.getName(), Long.valueOf(jY));
                return;
            } else {
                i(obj, jY);
                return;
            }
        }
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            lS = null;
        } else {
            lS = com.alibaba.fastjson.util.k.s(cVar.Q());
        }
        if (lS == null && c() == Long.TYPE) {
            return;
        }
        if (obj == null) {
            map.put(this.f6570a.getName(), lS);
        } else {
            j(obj, lS);
        }
    }
}
