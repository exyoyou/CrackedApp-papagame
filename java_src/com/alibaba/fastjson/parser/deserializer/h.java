package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class h implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f6560a = new h();

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T d(com.alibaba.fastjson.parser.c cVar) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 4) {
            String strR = dVarZ.R();
            dVarZ.l(16);
            return (T) strR.toCharArray();
        }
        if (dVarZ.b() == 2) {
            Number numberA0 = dVarZ.a0();
            dVarZ.l(16);
            return (T) numberA0.toString().toCharArray();
        }
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.a.toJSONString(objQ).toCharArray();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        return (T) d(cVar);
    }
}
