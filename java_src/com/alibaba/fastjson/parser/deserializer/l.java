package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class l extends c implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f6564a = new l();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, java.util.Calendar] */
    @Override // com.alibaba.fastjson.parser.deserializer.c
    protected <T> T d(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        if (obj2 == 0) {
            return null;
        }
        if (obj2 instanceof Date) {
            return obj2;
        }
        if (obj2 instanceof Number) {
            return (T) new Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.g gVar = new com.alibaba.fastjson.parser.g(str);
        try {
            if (!gVar.W0(false)) {
                gVar.close();
                try {
                    return (T) cVar.l().parse(str);
                } catch (ParseException unused) {
                    return (T) new Date(Long.parseLong(str));
                }
            }
            ?? r10 = (T) gVar.j0();
            if (type == Calendar.class) {
                gVar.close();
                return r10;
            }
            T t10 = (T) r10.getTime();
            gVar.close();
            return t10;
        } catch (Throwable th) {
            gVar.close();
            throw th;
        }
    }
}
