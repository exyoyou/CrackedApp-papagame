package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class b1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b1 f6676a = new b1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        String str = (String) cVar.Q();
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("_");
        if (strArrSplit.length == 1) {
            return (T) new Locale(strArrSplit[0]);
        }
        return strArrSplit.length == 2 ? (T) new Locale(strArrSplit[0], strArrSplit[1]) : (T) new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.N();
        } else {
            v0Var.L(((Locale) obj).toString());
        }
    }
}
