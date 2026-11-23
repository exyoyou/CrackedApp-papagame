package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class q0 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static q0 f6732a = new q0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Object obj2;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        if (dVarZ.b() == 2) {
            int I = dVarZ.I();
            dVarZ.l(16);
            obj2 = (T) Integer.valueOf(I);
        } else if (dVarZ.b() == 3) {
            BigDecimal bigDecimalQ = dVarZ.Q();
            dVarZ.l(16);
            obj2 = (T) Integer.valueOf(bigDecimalQ.intValue());
        } else {
            obj2 = (T) com.alibaba.fastjson.util.k.p(cVar.Q());
        }
        return type == AtomicInteger.class ? (T) new AtomicInteger(((Integer) obj2).intValue()) : (T) obj2;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Number number = (Number) obj;
        if (number == null) {
            if (v1VarW.g(SerializerFeature.WriteNullNumberAsZero)) {
                v1VarW.m('0');
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        v1VarW.j0(number.intValue());
        if (v0Var.y(SerializerFeature.WriteClassName)) {
            Class<?> cls = number.getClass();
            if (cls == Byte.class) {
                v1VarW.m('B');
            } else if (cls == Short.class) {
                v1VarW.m('S');
            }
        }
    }
}
