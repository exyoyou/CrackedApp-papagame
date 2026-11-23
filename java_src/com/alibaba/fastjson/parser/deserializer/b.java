package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected C0200b f6551a;

    /* JADX INFO: renamed from: com.alibaba.fastjson.parser.deserializer.b$b, reason: collision with other inner class name */
    public final class C0200b extends v {
        @Override // com.alibaba.fastjson.parser.deserializer.v
        public r e(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
            return b.this.d(kVar, cls, eVar);
        }

        @Override // com.alibaba.fastjson.parser.deserializer.v
        public boolean o(com.alibaba.fastjson.parser.c cVar, String str, Object obj, Type type, Map<String, Object> map) {
            return b.this.k(cVar, str, obj, type, map);
        }

        private C0200b(com.alibaba.fastjson.parser.k kVar, Class<?> cls) {
            super(kVar, cls);
        }
    }

    public b(com.alibaba.fastjson.parser.k kVar, Class<?> cls) {
        C0200b c0200b = new C0200b(kVar, cls);
        this.f6551a = c0200b;
        c0200b.k();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return this.f6551a.b();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        return (T) this.f6551a.c(cVar, type, obj);
    }

    public r d(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        return kVar.a(kVar, cls, eVar);
    }

    public Object e(com.alibaba.fastjson.parser.c cVar) {
        C0200b c0200b = this.f6551a;
        return c0200b.f(cVar, c0200b.i());
    }

    public abstract Object f(com.alibaba.fastjson.parser.c cVar, Type type);

    public r g(String str) {
        return this.f6551a.k().get(str);
    }

    public Type h(String str) {
        return this.f6551a.k().get(str).e();
    }

    public C0200b i() {
        return this.f6551a;
    }

    public boolean j(com.alibaba.fastjson.parser.d dVar) {
        return this.f6551a.m(dVar);
    }

    public boolean k(com.alibaba.fastjson.parser.c cVar, String str, Object obj, Type type, Map<String, Object> map) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        Map<String, r> mapK = this.f6551a.k();
        r value = mapK.get(str);
        if (value == null) {
            for (Map.Entry<String, r> entry : mapK.entrySet()) {
                if (entry.getKey().equalsIgnoreCase(str)) {
                    value = entry.getValue();
                    break;
                }
            }
        }
        if (value == null) {
            this.f6551a.n(cVar, obj, str);
            return false;
        }
        dVarZ.L(value.a());
        value.g(cVar, obj, type, map);
        return true;
    }

    public Object l(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        return this.f6551a.g(cVar, type, obj, obj2);
    }
}
