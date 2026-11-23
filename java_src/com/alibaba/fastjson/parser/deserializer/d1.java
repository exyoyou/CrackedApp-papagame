package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.sql.Time;

/* JADX INFO: loaded from: classes7.dex */
public class d1 implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d1 f6555a = new d1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 16) {
            dVarZ.l(4);
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            dVarZ.L(2);
            if (dVarZ.b() != 2) {
                throw new JSONException("syntax error");
            }
            long jY = dVarZ.y();
            dVarZ.l(13);
            if (dVarZ.b() != 13) {
                throw new JSONException("syntax error");
            }
            dVarZ.l(16);
            return (T) new Time(jY);
        }
        T t10 = (T) cVar.Q();
        if (t10 == 0) {
            return null;
        }
        if (t10 instanceof Time) {
            return t10;
        }
        if (t10 instanceof Number) {
            return (T) new Time(((Number) t10).longValue());
        }
        if (!(t10 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) t10;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.g gVar = new com.alibaba.fastjson.parser.g(str);
        long timeInMillis = gVar.V0() ? gVar.j0().getTimeInMillis() : Long.parseLong(str);
        gVar.close();
        return (T) new Time(timeInMillis);
    }
}
