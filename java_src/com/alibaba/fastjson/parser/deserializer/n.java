package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class n extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x0 f6566c;

    public n(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        super(cls, eVar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public int a() {
        x0 x0Var = this.f6566c;
        if (x0Var != null) {
            return x0Var.b();
        }
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
        if (this.f6566c == null) {
            this.f6566c = cVar.j().e(this.f6570a);
        }
        if (type instanceof ParameterizedType) {
            cVar.getContext().e(type);
        }
        Object objC = this.f6566c.c(cVar, e(), this.f6570a.getName());
        if (cVar.J() == 1) {
            com.alibaba.fastjson.parser.c.a aVarY = cVar.y();
            aVarY.d(this);
            aVarY.e(cVar.getContext());
            cVar.y0(0);
            return;
        }
        if (obj == null) {
            map.put(this.f6570a.getName(), objC);
        } else {
            j(obj, objC);
        }
    }
}
