package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class z0 extends c implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z0 f6589a = new z0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.c
    protected <T> T d(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        long timeInMillis;
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return (T) new java.sql.Date(((Date) obj2).getTime());
        }
        if (obj2 instanceof Number) {
            return (T) new java.sql.Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error : " + obj2);
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.g gVar = new com.alibaba.fastjson.parser.g(str);
        try {
            if (gVar.V0()) {
                timeInMillis = gVar.j0().getTimeInMillis();
            } else {
                try {
                    T t10 = (T) new java.sql.Date(cVar.l().parse(str).getTime());
                    gVar.close();
                    return t10;
                } catch (ParseException unused) {
                    timeInMillis = Long.parseLong(str);
                }
            }
            gVar.close();
            return (T) new java.sql.Date(timeInMillis);
        } catch (Throwable th) {
            gVar.close();
            throw th;
        }
    }
}
