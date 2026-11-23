package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class r implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f6734a = new r();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.util.Calendar] */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        T t10 = (T) com.alibaba.fastjson.parser.deserializer.l.f6564a.c(cVar, type, obj);
        if (t10 instanceof Calendar) {
            return t10;
        }
        Date date = (Date) t10;
        if (date == null) {
            return null;
        }
        ?? r10 = (T) Calendar.getInstance();
        r10.setTime(date);
        return r10;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v0Var.K(((Calendar) obj).getTime());
    }
}
