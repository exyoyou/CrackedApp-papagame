package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes7.dex */
public class u0 implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u0 f6579a = new u0();

    public static Object f(com.alibaba.fastjson.parser.c cVar, Map<Object, Object> map, Type type, Type type2, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 12 && dVarZ.b() != 16) {
            throw new JSONException("syntax error, expect {, actual " + dVarZ.h());
        }
        x0 x0VarG = cVar.j().g(type);
        x0 x0VarG2 = cVar.j().g(type2);
        dVarZ.l(x0VarG.b());
        com.alibaba.fastjson.parser.j context = cVar.getContext();
        while (dVarZ.b() != 13) {
            try {
                Object objA = null;
                if (dVarZ.b() == 4 && dVarZ.O()) {
                    dVarZ.L(4);
                    if (dVarZ.b() != 4) {
                        throw new JSONException("illegal ref, " + com.alibaba.fastjson.parser.h.a(dVarZ.b()));
                    }
                    String strR = dVarZ.R();
                    if ("..".equals(strR)) {
                        objA = context.b().a();
                    } else if ("$".equals(strR)) {
                        com.alibaba.fastjson.parser.j jVarB = context;
                        while (jVarB.b() != null) {
                            jVarB = jVarB.b();
                        }
                        objA = jVarB.a();
                    } else {
                        cVar.e(new com.alibaba.fastjson.parser.c.a(context, strR));
                        cVar.y0(1);
                    }
                    dVarZ.l(13);
                    if (dVarZ.b() != 13) {
                        throw new JSONException("illegal ref");
                    }
                    dVarZ.l(16);
                    cVar.v0(context);
                    return objA;
                }
                if (map.size() == 0 && dVarZ.b() == 4 && com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(dVarZ.R())) {
                    dVarZ.L(4);
                    dVarZ.l(16);
                    if (dVarZ.b() == 13) {
                        dVarZ.j();
                        cVar.v0(context);
                        return map;
                    }
                    dVarZ.l(x0VarG.b());
                }
                Object objC = x0VarG.c(cVar, type, null);
                if (dVarZ.b() != 17) {
                    throw new JSONException("syntax error, expect :, actual " + dVarZ.b());
                }
                dVarZ.l(x0VarG2.b());
                map.put(objC, x0VarG2.c(cVar, type2, objC));
                if (dVarZ.b() == 16) {
                    dVarZ.l(x0VarG.b());
                }
            } catch (Throwable th) {
                cVar.v0(context);
                throw th;
            }
        }
        dVarZ.l(16);
        cVar.v0(context);
        return map;
    }

    public static Map g(com.alibaba.fastjson.parser.c cVar, Map<String, Object> map, Type type, Object obj) {
        String strK;
        Object objN0;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 12) {
            throw new JSONException("syntax error, expect {, actual " + dVarZ.b());
        }
        com.alibaba.fastjson.parser.j context = cVar.getContext();
        while (true) {
            try {
                dVarZ.s();
                char current = dVarZ.getCurrent();
                if (cVar.P(Feature.AllowArbitraryCommas)) {
                    while (current == ',') {
                        dVarZ.next();
                        dVarZ.s();
                        current = dVarZ.getCurrent();
                    }
                }
                if (current == '\"') {
                    strK = dVarZ.d(cVar.M(), '\"');
                    dVarZ.s();
                    if (dVarZ.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + dVarZ.v());
                    }
                } else {
                    if (current == '}') {
                        dVarZ.next();
                        dVarZ.d0();
                        dVarZ.l(16);
                        cVar.v0(context);
                        return map;
                    }
                    if (current == '\'') {
                        if (!cVar.P(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        strK = dVarZ.d(cVar.M(), '\'');
                        dVarZ.s();
                        if (dVarZ.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + dVarZ.v());
                        }
                    } else {
                        if (!cVar.P(Feature.AllowUnQuotedFieldNames)) {
                            throw new JSONException("syntax error");
                        }
                        strK = dVarZ.K(cVar.M());
                        dVarZ.s();
                        char current2 = dVarZ.getCurrent();
                        if (current2 != ':') {
                            throw new JSONException("expect ':' at " + dVarZ.v() + ", actual " + current2);
                        }
                    }
                }
                dVarZ.next();
                dVarZ.s();
                dVarZ.getCurrent();
                dVarZ.d0();
                if (strK != com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                    dVarZ.j();
                    if (dVarZ.b() == 8) {
                        dVarZ.j();
                        objN0 = null;
                    } else {
                        objN0 = cVar.n0(type);
                    }
                    map.put(strK, objN0);
                    cVar.g(map, strK);
                    cVar.t0(context, objN0, strK);
                    int iB = dVarZ.b();
                    if (iB != 20 && iB != 15) {
                        if (iB == 13) {
                            dVarZ.j();
                            cVar.v0(context);
                            return map;
                        }
                    }
                    cVar.v0(context);
                    return map;
                }
                Class<?> clsK = com.alibaba.fastjson.util.k.K(dVarZ.d(cVar.M(), '\"'));
                if (clsK != map.getClass()) {
                    x0 x0VarG = cVar.j().g(clsK);
                    dVarZ.l(16);
                    cVar.y0(2);
                    if (context != null && !(obj instanceof Integer)) {
                        cVar.r0();
                    }
                    Map map2 = (Map) x0VarG.c(cVar, clsK, obj);
                    cVar.v0(context);
                    return map2;
                }
                dVarZ.l(16);
                if (dVarZ.b() == 13) {
                    dVarZ.l(16);
                    cVar.v0(context);
                    return map;
                }
            } catch (Throwable th) {
                cVar.v0(context);
                throw th;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        Map<Object, Object> mapD = d(type);
        com.alibaba.fastjson.parser.j context = cVar.getContext();
        try {
            cVar.t0(context, mapD, obj);
            return (T) e(cVar, type, obj, mapD);
        } finally {
            cVar.v0(context);
        }
    }

    protected Map<Object, Object> d(Type type) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class || type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type instanceof ParameterizedType) {
            return d(((ParameterizedType) type).getRawType());
        }
        Class cls = (Class) type;
        if (cls.isInterface()) {
            throw new JSONException("unsupport type " + type);
        }
        try {
            return (Map) cls.newInstance();
        } catch (Exception e10) {
            throw new JSONException("unsupport type " + type, e10);
        }
    }

    protected Object e(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Map map) {
        if (!(type instanceof ParameterizedType)) {
            return cVar.p0(map, obj);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type type2 = parameterizedType.getActualTypeArguments()[0];
        Type type3 = parameterizedType.getActualTypeArguments()[1];
        return String.class == type2 ? g(cVar, map, type3, obj) : f(cVar, map, type2, type3, obj);
    }
}
