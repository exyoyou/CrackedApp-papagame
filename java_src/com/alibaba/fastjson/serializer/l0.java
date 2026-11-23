package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class l0 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static l0 f6719a = new l0();

    public static <T> T e(com.alibaba.fastjson.parser.c cVar) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            String strG0 = dVarZ.g0();
            dVarZ.l(16);
            return (T) Float.valueOf(Float.parseFloat(strG0));
        }
        if (dVarZ.b() == 3) {
            float fP = dVarZ.p();
            dVarZ.l(16);
            return (T) Float.valueOf(fP);
        }
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.k.o(objQ);
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
        if (obj == null) {
            if (v0Var.y(SerializerFeature.WriteNullNumberAsZero)) {
                v1VarW.m('0');
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        float fFloatValue = ((Float) obj).floatValue();
        if (Float.isNaN(fFloatValue)) {
            v1VarW.p0();
            return;
        }
        if (Float.isInfinite(fFloatValue)) {
            v1VarW.p0();
            return;
        }
        String string = Float.toString(fFloatValue);
        if (string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        v1VarW.write(string);
        if (v0Var.y(SerializerFeature.WriteClassName)) {
            v1VarW.m('F');
        }
    }
}
