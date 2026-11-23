package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Currency;

/* JADX INFO: loaded from: classes7.dex */
public class z implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z f6785a = new z();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        String str = (String) cVar.Q();
        if (str == null || str.length() == 0) {
            return null;
        }
        return (T) Currency.getInstance(str);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
        } else {
            v1VarW.q0(((Currency) obj).getCurrencyCode());
        }
    }
}
