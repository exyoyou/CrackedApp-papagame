package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes7.dex */
public class m implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f6721a = new m();

    public static <T> T e(com.alibaba.fastjson.parser.c cVar) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 2) {
            long jY = dVarZ.y();
            dVarZ.l(16);
            return (T) new BigDecimal(jY);
        }
        if (dVarZ.b() == 3) {
            T t10 = (T) dVarZ.Q();
            dVarZ.l(16);
            return t10;
        }
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.k.f(objQ);
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
            if (v1VarW.g(SerializerFeature.WriteNullNumberAsZero)) {
                v1VarW.m('0');
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        BigDecimal bigDecimal = (BigDecimal) obj;
        v1VarW.write(bigDecimal.toString());
        if (v1VarW.g(SerializerFeature.WriteClassName) && type != BigDecimal.class && bigDecimal.scale() == 0) {
            v1VarW.m(external.org.apache.commons.lang3.d.f90941a);
        }
    }
}
