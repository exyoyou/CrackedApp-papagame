package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes7.dex */
public class m extends c implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f6565a = new m();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.c
    protected <T> T d(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        return (T) new SimpleDateFormat(str);
    }
}
