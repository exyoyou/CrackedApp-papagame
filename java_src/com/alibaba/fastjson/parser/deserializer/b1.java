package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b1 extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0 f6553c;

    public b1(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
        this.f6553c = kVar.e(eVar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        return this.f6553c.b();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        String string;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 4) {
            string = dVarZ.R();
            dVarZ.l(16);
        } else {
            Object objQ = cVar.Q();
            string = objQ == null ? null : objQ.toString();
        }
        if (obj == null) {
            map.put(this.f6570a.getName(), string);
        } else {
            k(obj, string);
        }
    }
}
