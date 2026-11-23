package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import io.netty.util.internal.StringUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class v implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, r> f6580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<r> f6581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<r> f6582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f6583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.alibaba.fastjson.util.d f6584e;

    public v(com.alibaba.fastjson.parser.k kVar, Class<?> cls) {
        this(kVar, cls, cls);
    }

    private void d(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        String strIntern = eVar.getName().intern();
        r rVarE = e(kVar, cls, eVar);
        this.f6580a.put(strIntern, rVarE);
        this.f6581b.add(rVarE);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        return (T) g(cVar, type, obj, null);
    }

    public r e(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        return kVar.a(kVar, cls, eVar);
    }

    public Object f(com.alibaba.fastjson.parser.c cVar, Type type) {
        if ((type instanceof Class) && this.f6583d.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        if (this.f6584e.f() == null) {
            return null;
        }
        try {
            Constructor<?> constructorF = this.f6584e.f();
            Object objNewInstance = constructorF.getParameterTypes().length == 0 ? constructorF.newInstance(new Object[0]) : constructorF.newInstance(cVar.getContext().a());
            if (cVar.P(Feature.InitStringFieldAsEmpty)) {
                for (com.alibaba.fastjson.util.e eVar : this.f6584e.k()) {
                    if (eVar.j() == String.class) {
                        try {
                            eVar.s(objNewInstance, "");
                        } catch (Exception e10) {
                            throw new JSONException("create instance error, class " + this.f6583d.getName(), e10);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (Exception e11) {
            throw new JSONException("create instance error, class " + this.f6583d.getName(), e11);
        }
    }

    public <T> T g(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) throws Throwable {
        Object obj3;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        com.alibaba.fastjson.parser.j jVar = null;
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        com.alibaba.fastjson.parser.j context = cVar.getContext();
        if (obj2 != null && context != null) {
            context = context.b();
        }
        com.alibaba.fastjson.parser.j jVar2 = context;
        try {
            if (dVarZ.b() == 13) {
                dVarZ.l(16);
                T t10 = obj2 == null ? (T) f(cVar, type) : (T) obj2;
                cVar.v0(jVar2);
                return t10;
            }
            if (dVarZ.b() == 14 && m(dVarZ)) {
                T t11 = (T) h(cVar, type, obj, obj2);
                cVar.v0(jVar2);
                return t11;
            }
            if (dVarZ.b() != 12 && dVarZ.b() != 16) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("syntax error, expect {, actual ");
                stringBuffer.append(dVarZ.h());
                stringBuffer.append(", pos ");
                stringBuffer.append(dVarZ.v());
                if (obj instanceof String) {
                    stringBuffer.append(", fieldName ");
                    stringBuffer.append(obj);
                }
                throw new JSONException(stringBuffer.toString());
            }
            if (cVar.J() == 2) {
                cVar.y0(0);
            }
            obj3 = obj2;
            HashMap map = null;
            com.alibaba.fastjson.parser.j jVarT0 = null;
            while (true) {
                try {
                    String strC0 = dVarZ.c0(cVar.M());
                    if (strC0 == null) {
                        if (dVarZ.b() == 13) {
                            dVarZ.l(16);
                            break;
                        }
                        if (dVarZ.b() != 16 || !cVar.P(Feature.AllowArbitraryCommas)) {
                        }
                    }
                    if ("$ref" == strC0) {
                        dVarZ.L(4);
                        if (dVarZ.b() != 4) {
                            throw new JSONException("illegal ref, " + com.alibaba.fastjson.parser.h.a(dVarZ.b()));
                        }
                        String strR = dVarZ.R();
                        if ("@".equals(strR)) {
                            obj3 = (T) jVar2.a();
                        } else if ("..".equals(strR)) {
                            com.alibaba.fastjson.parser.j jVarB = jVar2.b();
                            if (jVarB.a() != null) {
                                obj3 = (T) jVarB.a();
                            } else {
                                cVar.e(new com.alibaba.fastjson.parser.c.a(jVarB, strR));
                                cVar.y0(1);
                            }
                        } else if ("$".equals(strR)) {
                            com.alibaba.fastjson.parser.j jVarB2 = jVar2;
                            while (jVarB2.b() != null) {
                                jVarB2 = jVarB2.b();
                            }
                            if (jVarB2.a() != null) {
                                obj3 = (T) jVarB2.a();
                            } else {
                                cVar.e(new com.alibaba.fastjson.parser.c.a(jVarB2, strR));
                                cVar.y0(1);
                            }
                        } else {
                            cVar.e(new com.alibaba.fastjson.parser.c.a(jVar2, strR));
                            cVar.y0(1);
                        }
                        dVarZ.l(13);
                        if (dVarZ.b() != 13) {
                            throw new JSONException("illegal ref");
                        }
                        dVarZ.l(16);
                        cVar.t0(jVar2, obj3, obj);
                        if (jVarT0 != null) {
                            jVarT0.d(obj3);
                        }
                        cVar.v0(jVar2);
                        return (T) obj3;
                    }
                    if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY == strC0) {
                        dVarZ.L(4);
                        if (dVarZ.b() != 4) {
                            throw new JSONException("syntax error");
                        }
                        String strR2 = dVarZ.R();
                        dVarZ.l(16);
                        if (!(type instanceof Class) || !strR2.equals(((Class) type).getName())) {
                            Type typeK = com.alibaba.fastjson.util.k.K(strR2);
                            T t12 = (T) cVar.j().g(typeK).c(cVar, typeK, obj);
                            if (jVarT0 != null) {
                                jVarT0.d(obj3);
                            }
                            cVar.v0(jVar2);
                            return t12;
                        }
                        if (dVarZ.b() == 13) {
                            dVarZ.j();
                            break;
                        }
                    } else {
                        if (obj3 == null && map == null) {
                            obj3 = (T) f(cVar, type);
                            if (obj3 == null) {
                                map = new HashMap(this.f6581b.size());
                            }
                            jVarT0 = cVar.t0(jVar2, obj3, obj);
                        }
                        Object obj4 = obj3;
                        HashMap map2 = map;
                        com.alibaba.fastjson.parser.j jVar3 = jVarT0;
                        try {
                            if (o(cVar, strC0, obj4, type, map2)) {
                                if (dVarZ.b() != 16) {
                                    if (dVarZ.b() == 13) {
                                        dVarZ.l(16);
                                        obj3 = (T) obj4;
                                        map = map2;
                                        jVarT0 = jVar3;
                                        break;
                                    }
                                    if (dVarZ.b() == 18 || dVarZ.b() == 1) {
                                        throw new JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.h.a(dVarZ.b()));
                                    }
                                }
                                obj3 = (T) obj4;
                                map = map2;
                                jVarT0 = jVar3;
                            } else {
                                if (dVarZ.b() == 13) {
                                    dVarZ.j();
                                    obj3 = (T) obj4;
                                    map = map2;
                                    jVarT0 = jVar3;
                                    break;
                                }
                                obj3 = (T) obj4;
                                map = map2;
                                jVarT0 = jVar3;
                            }
                        } catch (Throwable th) {
                            th = th;
                            obj3 = obj4;
                            jVar = jVar3;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jVar = jVarT0;
                }
            }
            if (obj3 == null) {
                if (map == null) {
                    T t13 = (T) f(cVar, type);
                    if (jVarT0 == null) {
                        jVarT0 = cVar.t0(jVar2, t13, obj);
                    }
                    if (jVarT0 != null) {
                        jVarT0.d(t13);
                    }
                    cVar.v0(jVar2);
                    return t13;
                }
                List<com.alibaba.fastjson.util.e> listK = this.f6584e.k();
                int size = listK.size();
                Object[] objArr = new Object[size];
                for (int i10 = 0; i10 < size; i10++) {
                    objArr[i10] = map.get(listK.get(i10).getName());
                }
                if (this.f6584e.d() != null) {
                    try {
                        obj3 = (T) this.f6584e.d().newInstance(objArr);
                    } catch (Exception e10) {
                        throw new JSONException("create instance error, " + this.f6584e.d().toGenericString(), e10);
                    }
                } else if (this.f6584e.h() != null) {
                    try {
                        obj3 = (T) this.f6584e.h().invoke(null, objArr);
                    } catch (Exception e11) {
                        throw new JSONException("create factory method error, " + this.f6584e.h().toString(), e11);
                    }
                }
                if (jVar != null) {
                    jVar.d(obj3);
                }
                cVar.v0(jVar2);
                throw th;
            }
            if (jVarT0 != null) {
                jVarT0.d(obj3);
            }
            cVar.v0(jVar2);
            return (T) obj3;
        } catch (Throwable th3) {
            th = th3;
            obj3 = obj2;
        }
    }

    public <T> T h(com.alibaba.fastjson.parser.c cVar, Type type, Object obj, Object obj2) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 14) {
            throw new JSONException("error");
        }
        T t10 = (T) f(cVar, type);
        int size = this.f6582c.size();
        int i10 = 0;
        while (i10 < size) {
            char c10 = i10 == size + (-1) ? ']' : StringUtil.COMMA;
            r rVar = this.f6582c.get(i10);
            Class<?> clsC = rVar.c();
            if (clsC == Integer.TYPE) {
                rVar.h(t10, dVarZ.m(c10));
            } else if (clsC == String.class) {
                rVar.k(t10, dVarZ.q(c10));
            } else if (clsC == Long.TYPE) {
                rVar.i(t10, dVarZ.t(c10));
            } else if (clsC.isEnum()) {
                rVar.j(t10, dVarZ.z(clsC, cVar.M(), c10));
            } else {
                dVarZ.l(14);
                rVar.j(t10, cVar.n0(rVar.e()));
                if (c10 == ']') {
                    if (dVarZ.b() != 15) {
                        throw new JSONException("syntax error");
                    }
                    dVarZ.l(16);
                } else if (c10 == ',' && dVarZ.b() != 16) {
                    throw new JSONException("syntax error");
                }
            }
            i10++;
        }
        dVarZ.l(16);
        return t10;
    }

    public Class<?> i() {
        return this.f6583d;
    }

    public r j(String str) {
        r rVar = this.f6580a.get(str);
        if (rVar != null) {
            return rVar;
        }
        for (Map.Entry<String, r> entry : this.f6580a.entrySet()) {
            if (str.equals(entry.getKey())) {
                return entry.getValue();
            }
        }
        return null;
    }

    public Map<String, r> k() {
        return this.f6580a;
    }

    public List<r> l() {
        return this.f6582c;
    }

    public final boolean m(com.alibaba.fastjson.parser.d dVar) {
        int iL = this.f6584e.l();
        Feature feature = Feature.SupportArrayToBean;
        return Feature.isEnabled(iL, feature) || dVar.c(feature);
    }

    void n(com.alibaba.fastjson.parser.c cVar, Object obj, String str) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.c(Feature.IgnoreNotMatch)) {
            dVarZ.M();
            Type typeJ = com.alibaba.fastjson.serializer.j0.j(cVar, obj, str);
            com.alibaba.fastjson.serializer.j0.k(cVar, obj, str, typeJ == null ? cVar.Q() : cVar.n0(typeJ));
        } else {
            throw new JSONException("setter not found, class " + this.f6583d.getName() + ", property " + str);
        }
    }

    public boolean o(com.alibaba.fastjson.parser.c cVar, String str, Object obj, Type type, Map<String, Object> map) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        r value = this.f6580a.get(str);
        if (value == null) {
            for (Map.Entry<String, r> entry : this.f6580a.entrySet()) {
                if (entry.getKey().equalsIgnoreCase(str)) {
                    value = entry.getValue();
                    break;
                }
            }
        }
        if (value == null) {
            n(cVar, obj, str);
            return false;
        }
        dVarZ.L(value.a());
        value.g(cVar, obj, type, map);
        return true;
    }

    public v(com.alibaba.fastjson.parser.k kVar, Class<?> cls, Type type) {
        this.f6580a = new IdentityHashMap();
        this.f6581b = new ArrayList();
        this.f6582c = new ArrayList();
        this.f6583d = cls;
        com.alibaba.fastjson.util.d dVarB = com.alibaba.fastjson.util.d.b(cls, type);
        this.f6584e = dVarB;
        Iterator<com.alibaba.fastjson.util.e> it2 = dVarB.k().iterator();
        while (it2.hasNext()) {
            d(kVar, cls, it2.next());
        }
        Iterator<com.alibaba.fastjson.util.e> it3 = this.f6584e.m().iterator();
        while (it3.hasNext()) {
            this.f6582c.add(this.f6580a.get(it3.next().getName().intern()));
        }
    }
}
