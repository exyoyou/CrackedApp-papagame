package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class d1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static d1 f6687a = new d1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Object obj2;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            long jY = dVarZ.y();
            dVarZ.l(16);
            obj2 = (T) Long.valueOf(jY);
        } else {
            Object objQ = cVar.Q();
            if (objQ == null) {
                return null;
            }
            obj2 = (T) com.alibaba.fastjson.util.k.s(objQ);
        }
        return type == AtomicLong.class ? (T) new AtomicLong(((Long) obj2).longValue()) : (T) obj2;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            if (v1VarW.g(SerializerFeature.WriteNullNumberAsZero)) {
                v1VarW.m('0');
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        long jLongValue = ((Long) obj).longValue();
        v1VarW.n0(jLongValue);
        if (!v0Var.y(SerializerFeature.WriteClassName) || jLongValue > 2147483647L || jLongValue < -2147483648L || type == Long.class) {
            return;
        }
        v1VarW.m('L');
    }
}
