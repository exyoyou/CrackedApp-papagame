package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class p implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f6728a = new p();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 6;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Object obj2;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 6) {
            dVarZ.l(16);
            obj2 = (T) Boolean.TRUE;
        } else if (dVarZ.b() == 7) {
            dVarZ.l(16);
            obj2 = (T) Boolean.FALSE;
        } else if (dVarZ.b() == 2) {
            int I = dVarZ.I();
            dVarZ.l(16);
            obj2 = I == 1 ? (T) Boolean.TRUE : (T) Boolean.FALSE;
        } else {
            Object objQ = cVar.Q();
            if (objQ == null) {
                return null;
            }
            obj2 = (T) com.alibaba.fastjson.util.k.h(objQ);
        }
        return type == AtomicBoolean.class ? (T) new AtomicBoolean(((Boolean) obj2).booleanValue()) : (T) obj2;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            if (v1VarW.g(SerializerFeature.WriteNullBooleanAsFalse)) {
                v1VarW.write("false");
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        if (bool.booleanValue()) {
            v1VarW.write("true");
        } else {
            v1VarW.write("false");
        }
    }
}
