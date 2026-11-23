package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class w0 implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w0 f6588a = new w0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    /* JADX WARN: Type inference failed for: r7v11, types: [T, java.lang.Number, java.math.BigDecimal] */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            if (type == Double.TYPE || type == Double.class) {
                String strG0 = dVarZ.g0();
                dVarZ.l(16);
                return (T) Double.valueOf(Double.parseDouble(strG0));
            }
            long jY = dVarZ.y();
            dVarZ.l(16);
            if (type == Short.TYPE || type == Short.class) {
                return (T) Short.valueOf((short) jY);
            }
            if (type == Byte.TYPE || type == Byte.class) {
                return (T) Byte.valueOf((byte) jY);
            }
            return (jY < -2147483648L || jY > 2147483647L) ? (T) Long.valueOf(jY) : (T) Integer.valueOf((int) jY);
        }
        if (dVarZ.b() != 3) {
            Object objQ = cVar.Q();
            if (objQ == null) {
                return null;
            }
            if (type == Double.TYPE || type == Double.class) {
                return (T) com.alibaba.fastjson.util.k.m(objQ);
            }
            if (type == Short.TYPE || type == Short.class) {
                return (T) com.alibaba.fastjson.util.k.t(objQ);
            }
            return (type == Byte.TYPE || type == Byte.class) ? (T) com.alibaba.fastjson.util.k.i(objQ) : (T) com.alibaba.fastjson.util.k.f(objQ);
        }
        if (type == Double.TYPE || type == Double.class) {
            String strG1 = dVarZ.g0();
            dVarZ.l(16);
            return (T) Double.valueOf(Double.parseDouble(strG1));
        }
        ?? r10 = (T) dVarZ.Q();
        dVarZ.l(16);
        if (type == Short.TYPE || type == Short.class) {
            return (T) Short.valueOf(r10.shortValue());
        }
        return (type == Byte.TYPE || type == Byte.class) ? (T) Byte.valueOf(r10.byteValue()) : r10;
    }
}
