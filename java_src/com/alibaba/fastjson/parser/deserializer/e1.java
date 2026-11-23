package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class e1 extends c implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e1 f6559a = new e1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.c
    protected <T> T d(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return (T) new Timestamp(((Date) obj2).getTime());
        }
        if (obj2 instanceof Number) {
            return (T) new Timestamp(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        try {
            return (T) new Timestamp(cVar.l().parse(str).getTime());
        } catch (ParseException unused) {
            return (T) new Timestamp(Long.parseLong(str));
        }
    }
}
