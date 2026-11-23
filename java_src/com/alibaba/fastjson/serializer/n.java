package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes7.dex */
public class n implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f6724a = new n();

    public static <T> T e(com.alibaba.fastjson.parser.c cVar) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            String strG0 = dVarZ.g0();
            dVarZ.l(16);
            return (T) new BigInteger(strG0);
        }
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.k.g(objQ);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        return (T) e(cVar);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj != null) {
            v1VarW.write(((BigInteger) obj).toString());
        } else if (v1VarW.g(SerializerFeature.WriteNullNumberAsZero)) {
            v1VarW.m('0');
        } else {
            v1VarW.p0();
        }
    }
}
