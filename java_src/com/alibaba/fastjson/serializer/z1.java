package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class z1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static z1 f6790a = new z1();

    public static <T> T e(com.alibaba.fastjson.parser.c cVar) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 4) {
            T t10 = (T) dVarZ.R();
            dVarZ.l(16);
            return t10;
        }
        if (dVarZ.b() == 2) {
            T t11 = (T) dVarZ.g0();
            dVarZ.l(16);
            return t11;
        }
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) objQ.toString();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        return (T) e(cVar);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        f(v0Var, (String) obj);
    }

    public void f(v0 v0Var, String str) {
        v1 v1VarW = v0Var.w();
        if (str != null) {
            v1VarW.q0(str);
        } else if (v1VarW.g(SerializerFeature.WriteNullStringAsEmpty)) {
            v1VarW.q0("");
        } else {
            v1VarW.p0();
        }
    }
}
