package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.asm.ASMException;
import com.alibaba.fastjson.parser.deserializer.a1;
import com.alibaba.fastjson.parser.deserializer.b1;
import com.alibaba.fastjson.parser.deserializer.c1;
import com.alibaba.fastjson.parser.deserializer.d1;
import com.alibaba.fastjson.parser.deserializer.e1;
import com.alibaba.fastjson.parser.deserializer.m;
import com.alibaba.fastjson.parser.deserializer.n;
import com.alibaba.fastjson.parser.deserializer.o;
import com.alibaba.fastjson.parser.deserializer.r;
import com.alibaba.fastjson.parser.deserializer.r0;
import com.alibaba.fastjson.parser.deserializer.s;
import com.alibaba.fastjson.parser.deserializer.t;
import com.alibaba.fastjson.parser.deserializer.t0;
import com.alibaba.fastjson.parser.deserializer.u;
import com.alibaba.fastjson.parser.deserializer.u0;
import com.alibaba.fastjson.parser.deserializer.v;
import com.alibaba.fastjson.parser.deserializer.w;
import com.alibaba.fastjson.parser.deserializer.w0;
import com.alibaba.fastjson.parser.deserializer.x0;
import com.alibaba.fastjson.parser.deserializer.z0;
import com.alibaba.fastjson.serializer.a2;
import com.alibaba.fastjson.serializer.b2;
import com.alibaba.fastjson.serializer.c2;
import com.alibaba.fastjson.serializer.d2;
import com.alibaba.fastjson.serializer.i0;
import com.alibaba.fastjson.serializer.l0;
import com.alibaba.fastjson.serializer.l1;
import com.alibaba.fastjson.serializer.m0;
import com.alibaba.fastjson.serializer.m1;
import com.alibaba.fastjson.serializer.n0;
import com.alibaba.fastjson.serializer.o0;
import com.alibaba.fastjson.serializer.p;
import com.alibaba.fastjson.serializer.p1;
import com.alibaba.fastjson.serializer.q0;
import com.alibaba.fastjson.serializer.q1;
import com.alibaba.fastjson.serializer.y;
import com.alibaba.fastjson.serializer.z;
import com.alibaba.fastjson.serializer.z1;
import com.haima.hmcp.Constants;
import java.io.Closeable;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static k f6647f = new k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Class<?>> f6648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.alibaba.fastjson.util.g<Type, x0> f6649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final l f6651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.alibaba.fastjson.parser.deserializer.a f6652e;

    public k() {
        this(null, null);
    }

    public static Field h(Class<?> cls, String str) {
        Field fieldI = i(cls, str);
        if (fieldI == null) {
            fieldI = i(cls, "_" + str);
        }
        if (fieldI != null) {
            return fieldI;
        }
        return i(cls, Constants.TAG_TO_MESSAGE_SDK + str);
    }

    private static Field i(Class<?> cls, String str) {
        for (Field field : cls.getDeclaredFields()) {
            if (str.equals(field.getName())) {
                return field;
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == Object.class) {
            return null;
        }
        return h(cls.getSuperclass(), str);
    }

    public static k k() {
        return f6647f;
    }

    public r a(k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        com.alibaba.fastjson.parser.deserializer.a aVar;
        boolean z10 = this.f6650c;
        if (z10) {
            Class<?> superclass = cls;
            do {
                if (!Modifier.isPublic(superclass.getModifiers())) {
                    z10 = false;
                    break;
                }
                superclass = superclass.getSuperclass();
                if (superclass == Object.class) {
                    break;
                }
            } while (superclass != null);
        }
        if (eVar.j() == Class.class) {
            z10 = false;
        }
        if (!((z10 && (aVar = this.f6652e) != null && aVar.C(cls)) ? false : z10)) {
            return b(kVar, cls, eVar);
        }
        try {
            return this.f6652e.u(kVar, cls, eVar);
        } catch (Throwable unused) {
            return b(kVar, cls, eVar);
        }
    }

    public r b(k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        Class<?> clsJ = eVar.j();
        if (clsJ == Boolean.TYPE || clsJ == Boolean.class) {
            return new com.alibaba.fastjson.parser.deserializer.g(kVar, cls, eVar);
        }
        if (clsJ == Integer.TYPE || clsJ == Integer.class) {
            return new s(kVar, cls, eVar);
        }
        if (clsJ == Long.TYPE || clsJ == Long.class) {
            return new t0(kVar, cls, eVar);
        }
        if (clsJ == String.class) {
            return new b1(kVar, cls, eVar);
        }
        return (clsJ == List.class || clsJ == ArrayList.class) ? new com.alibaba.fastjson.parser.deserializer.e(kVar, cls, eVar) : new n(kVar, cls, eVar);
    }

    public x0 c(Class<?> cls, Type type) {
        com.alibaba.fastjson.parser.deserializer.a aVar;
        boolean zA = this.f6650c;
        if (zA) {
            Class<?> superclass = cls;
            do {
                if (!Modifier.isPublic(superclass.getModifiers())) {
                    zA = false;
                    break;
                }
                superclass = superclass.getSuperclass();
                if (superclass == Object.class) {
                    break;
                }
            } while (superclass != null);
        }
        if (cls.getTypeParameters().length != 0) {
            zA = false;
        }
        if (zA && (aVar = this.f6652e) != null && aVar.C(cls)) {
            zA = false;
        }
        if (zA) {
            zA = com.alibaba.fastjson.util.b.a(cls.getName());
        }
        if (zA) {
            if (cls.isInterface()) {
                zA = false;
            }
            com.alibaba.fastjson.util.d dVarB = com.alibaba.fastjson.util.d.b(cls, type);
            if (dVarB.k().size() > 200) {
                zA = false;
            }
            if (dVarB.f() == null && !cls.isInterface()) {
                zA = false;
            }
            for (com.alibaba.fastjson.util.e eVar : dVarB.k()) {
                if (!eVar.r()) {
                    Class<?> clsJ = eVar.j();
                    if (Modifier.isPublic(clsJ.getModifiers())) {
                        if (clsJ.isMemberClass() && !Modifier.isStatic(clsJ.getModifiers())) {
                            zA = false;
                        }
                        if (!com.alibaba.fastjson.util.b.a(eVar.o().getName())) {
                            zA = false;
                        }
                    }
                }
                zA = false;
            }
        }
        if (!((zA && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) ? false : zA)) {
            return new v(this, cls, type);
        }
        try {
            return this.f6652e.v(this, cls, type);
        } catch (ASMException unused) {
            return new v(this, cls, type);
        } catch (NoSuchMethodException unused2) {
            return new v(this, cls, type);
        } catch (Exception e10) {
            throw new JSONException("create asm deserializer error, " + cls.getName(), e10);
        }
    }

    public com.alibaba.fastjson.util.g<Type, x0> d() {
        return this.f6649b;
    }

    public x0 e(com.alibaba.fastjson.util.e eVar) {
        return f(eVar.j(), eVar.k());
    }

    public x0 f(Class<?> cls, Type type) {
        x0 c1Var;
        Class<?> clsMappingTo;
        x0 x0VarA = this.f6649b.a(type);
        if (x0VarA != null) {
            return x0VarA;
        }
        if (type == null) {
            type = cls;
        }
        x0 x0VarA2 = this.f6649b.a(type);
        if (x0VarA2 != null) {
            return x0VarA2;
        }
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType != null && (clsMappingTo = jSONType.mappingTo()) != Void.class) {
            return f(clsMappingTo, clsMappingTo);
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            x0VarA2 = this.f6649b.a(cls);
        }
        if (x0VarA2 != null) {
            return x0VarA2;
        }
        try {
            for (com.alibaba.fastjson.parser.deserializer.f fVar : com.alibaba.fastjson.util.i.a(com.alibaba.fastjson.parser.deserializer.f.class, Thread.currentThread().getContextClassLoader())) {
                Iterator<Type> it2 = fVar.a().iterator();
                while (it2.hasNext()) {
                    this.f6649b.b(it2.next(), fVar);
                }
            }
        } catch (Exception unused) {
        }
        x0 x0VarA3 = this.f6649b.a(type);
        if (x0VarA3 != null) {
            return x0VarA3;
        }
        if (cls.isEnum()) {
            c1Var = new o(cls);
        } else if (cls.isArray()) {
            c1Var = com.alibaba.fastjson.parser.deserializer.d.f6554a;
        } else if (cls == Set.class || cls == HashSet.class || cls == Collection.class || cls == List.class || cls == ArrayList.class || Collection.class.isAssignableFrom(cls)) {
            c1Var = com.alibaba.fastjson.parser.deserializer.j.f6562a;
        } else if (Map.class.isAssignableFrom(cls)) {
            c1Var = u0.f6579a;
        } else {
            c1Var = Throwable.class.isAssignableFrom(cls) ? new c1(this, cls) : c(cls, type);
        }
        o(type, c1Var);
        return c1Var;
    }

    public x0 g(Type type) {
        x0 x0VarA = this.f6649b.a(type);
        if (x0VarA != null) {
            return x0VarA;
        }
        if (type instanceof Class) {
            return f((Class) type, type);
        }
        if (!(type instanceof ParameterizedType)) {
            return w.f6587a;
        }
        Type rawType = ((ParameterizedType) type).getRawType();
        return rawType instanceof Class ? f((Class) rawType, type) : g(rawType);
    }

    public Map<String, r> j(Class<?> cls) {
        x0 x0VarG = g(cls);
        if (x0VarG instanceof v) {
            return ((v) x0VarG).k();
        }
        return x0VarG instanceof com.alibaba.fastjson.parser.deserializer.b ? ((com.alibaba.fastjson.parser.deserializer.b) x0VarG).i().k() : Collections.emptyMap();
    }

    public l l() {
        return this.f6651d;
    }

    public boolean m() {
        return this.f6650c;
    }

    public boolean n(Class<?> cls) {
        return this.f6648a.contains(cls);
    }

    public void o(Type type, x0 x0Var) {
        this.f6649b.b(type, x0Var);
    }

    public void p(boolean z10) {
        this.f6650c = z10;
    }

    public k(ClassLoader classLoader) {
        this(null, classLoader);
    }

    public k(com.alibaba.fastjson.parser.deserializer.a aVar) {
        this(aVar, null);
    }

    private k(com.alibaba.fastjson.parser.deserializer.a aVar, ClassLoader classLoader) {
        com.alibaba.fastjson.parser.deserializer.a aVar2;
        this.f6648a = new HashSet();
        this.f6649b = new com.alibaba.fastjson.util.g<>();
        this.f6650c = !com.alibaba.fastjson.util.b.g();
        this.f6651d = new l();
        if (aVar == null) {
            try {
                if (classLoader == null) {
                    aVar2 = com.alibaba.fastjson.parser.deserializer.a.B();
                } else {
                    aVar2 = new com.alibaba.fastjson.parser.deserializer.a(classLoader);
                }
            } catch (ExceptionInInitializerError | NoClassDefFoundError | AccessControlException unused) {
                aVar2 = aVar;
            }
        } else {
            aVar2 = aVar;
        }
        this.f6652e = aVar2;
        if (aVar2 == null) {
            this.f6650c = false;
        }
        Set<Class<?>> set = this.f6648a;
        Class<?> cls = Boolean.TYPE;
        set.add(cls);
        this.f6648a.add(Boolean.class);
        this.f6648a.add(Character.TYPE);
        this.f6648a.add(Character.class);
        this.f6648a.add(Byte.TYPE);
        this.f6648a.add(Byte.class);
        this.f6648a.add(Short.TYPE);
        this.f6648a.add(Short.class);
        Set<Class<?>> set2 = this.f6648a;
        Class<?> cls2 = Integer.TYPE;
        set2.add(cls2);
        this.f6648a.add(Integer.class);
        Set<Class<?>> set3 = this.f6648a;
        Class<?> cls3 = Long.TYPE;
        set3.add(cls3);
        this.f6648a.add(Long.class);
        Set<Class<?>> set4 = this.f6648a;
        Class<?> cls4 = Float.TYPE;
        set4.add(cls4);
        this.f6648a.add(Float.class);
        this.f6648a.add(Double.TYPE);
        this.f6648a.add(Double.class);
        this.f6648a.add(BigInteger.class);
        this.f6648a.add(BigDecimal.class);
        this.f6648a.add(String.class);
        this.f6648a.add(Date.class);
        this.f6648a.add(java.sql.Date.class);
        this.f6648a.add(Time.class);
        this.f6648a.add(Timestamp.class);
        this.f6649b.b(SimpleDateFormat.class, m.f6565a);
        this.f6649b.b(Timestamp.class, e1.f6559a);
        this.f6649b.b(java.sql.Date.class, z0.f6589a);
        this.f6649b.b(Time.class, d1.f6555a);
        this.f6649b.b(Date.class, com.alibaba.fastjson.parser.deserializer.l.f6564a);
        this.f6649b.b(Calendar.class, com.alibaba.fastjson.serializer.r.f6734a);
        this.f6649b.b(JSONObject.class, u.f6578a);
        this.f6649b.b(JSONArray.class, t.f6576a);
        com.alibaba.fastjson.util.g<Type, x0> gVar = this.f6649b;
        u0 u0Var = u0.f6579a;
        gVar.b(Map.class, u0Var);
        this.f6649b.b(HashMap.class, u0Var);
        this.f6649b.b(LinkedHashMap.class, u0Var);
        this.f6649b.b(TreeMap.class, u0Var);
        this.f6649b.b(ConcurrentMap.class, u0Var);
        this.f6649b.b(ConcurrentHashMap.class, u0Var);
        com.alibaba.fastjson.util.g<Type, x0> gVar2 = this.f6649b;
        com.alibaba.fastjson.parser.deserializer.j jVar = com.alibaba.fastjson.parser.deserializer.j.f6562a;
        gVar2.b(Collection.class, jVar);
        this.f6649b.b(List.class, jVar);
        this.f6649b.b(ArrayList.class, jVar);
        com.alibaba.fastjson.util.g<Type, x0> gVar3 = this.f6649b;
        w wVar = w.f6587a;
        gVar3.b(Object.class, wVar);
        this.f6649b.b(String.class, z1.f6790a);
        com.alibaba.fastjson.util.g<Type, x0> gVar4 = this.f6649b;
        Class cls5 = Character.TYPE;
        com.alibaba.fastjson.serializer.t tVar = com.alibaba.fastjson.serializer.t.f6743a;
        gVar4.b(cls5, tVar);
        this.f6649b.b(Character.class, tVar);
        com.alibaba.fastjson.util.g<Type, x0> gVar5 = this.f6649b;
        Class cls6 = Byte.TYPE;
        w0 w0Var = w0.f6588a;
        gVar5.b(cls6, w0Var);
        this.f6649b.b(Byte.class, w0Var);
        this.f6649b.b(Short.TYPE, w0Var);
        this.f6649b.b(Short.class, w0Var);
        this.f6649b.b(cls2, q0.f6732a);
        this.f6649b.b(Integer.class, q0.f6732a);
        this.f6649b.b(cls3, com.alibaba.fastjson.serializer.d1.f6687a);
        this.f6649b.b(Long.class, com.alibaba.fastjson.serializer.d1.f6687a);
        this.f6649b.b(BigInteger.class, com.alibaba.fastjson.serializer.n.f6724a);
        this.f6649b.b(BigDecimal.class, com.alibaba.fastjson.serializer.m.f6721a);
        this.f6649b.b(cls4, l0.f6719a);
        this.f6649b.b(Float.class, l0.f6719a);
        this.f6649b.b(Double.TYPE, w0Var);
        this.f6649b.b(Double.class, w0Var);
        com.alibaba.fastjson.util.g<Type, x0> gVar6 = this.f6649b;
        p pVar = p.f6728a;
        gVar6.b(cls, pVar);
        this.f6649b.b(Boolean.class, pVar);
        this.f6649b.b(Class.class, com.alibaba.fastjson.parser.deserializer.i.f6561a);
        this.f6649b.b(char[].class, com.alibaba.fastjson.parser.deserializer.h.f6560a);
        this.f6649b.b(AtomicBoolean.class, pVar);
        this.f6649b.b(AtomicInteger.class, q0.f6732a);
        this.f6649b.b(AtomicLong.class, com.alibaba.fastjson.serializer.d1.f6687a);
        com.alibaba.fastjson.util.g<Type, x0> gVar7 = this.f6649b;
        q1 q1Var = q1.f6733a;
        gVar7.b(AtomicReference.class, q1Var);
        this.f6649b.b(WeakReference.class, q1Var);
        this.f6649b.b(SoftReference.class, q1Var);
        this.f6649b.b(UUID.class, d2.f6688a);
        this.f6649b.b(TimeZone.class, a2.f6669a);
        this.f6649b.b(Locale.class, com.alibaba.fastjson.serializer.b1.f6676a);
        this.f6649b.b(Currency.class, z.f6785a);
        this.f6649b.b(InetAddress.class, n0.f6725a);
        this.f6649b.b(Inet4Address.class, n0.f6725a);
        this.f6649b.b(Inet6Address.class, n0.f6725a);
        this.f6649b.b(InetSocketAddress.class, o0.f6727a);
        this.f6649b.b(File.class, i0.f6704a);
        this.f6649b.b(URI.class, b2.f6677a);
        this.f6649b.b(URL.class, c2.f6683a);
        this.f6649b.b(Pattern.class, l1.f6720a);
        this.f6649b.b(Charset.class, com.alibaba.fastjson.serializer.u.f6748a);
        this.f6649b.b(Number.class, w0Var);
        this.f6649b.b(AtomicIntegerArray.class, com.alibaba.fastjson.serializer.g.f6695a);
        this.f6649b.b(AtomicLongArray.class, com.alibaba.fastjson.serializer.i.f6703a);
        this.f6649b.b(StackTraceElement.class, a1.f6550a);
        this.f6649b.b(Serializable.class, wVar);
        this.f6649b.b(Cloneable.class, wVar);
        this.f6649b.b(Comparable.class, wVar);
        this.f6649b.b(Closeable.class, wVar);
        try {
            this.f6649b.b(Class.forName("java.awt.Point"), m1.f6723a);
            this.f6649b.b(Class.forName("java.awt.Font"), m0.f6722a);
            this.f6649b.b(Class.forName("java.awt.Rectangle"), p1.f6730a);
            this.f6649b.b(Class.forName("java.awt.Color"), y.f6780a);
        } catch (Throwable unused2) {
        }
        try {
            com.alibaba.fastjson.util.g<Type, x0> gVar8 = this.f6649b;
            Class<?> cls7 = Class.forName("java.time.LocalDateTime");
            r0 r0Var = r0.f6572a;
            gVar8.b(cls7, r0Var);
            this.f6649b.b(Class.forName("java.time.LocalDate"), r0Var);
            this.f6649b.b(Class.forName("java.time.LocalTime"), r0Var);
            this.f6649b.b(Class.forName("java.time.ZonedDateTime"), r0Var);
            this.f6649b.b(Class.forName("java.time.OffsetDateTime"), r0Var);
            this.f6649b.b(Class.forName("java.time.OffsetTime"), r0Var);
            this.f6649b.b(Class.forName("java.time.ZoneOffset"), r0Var);
            this.f6649b.b(Class.forName("java.time.ZoneRegion"), r0Var);
            this.f6649b.b(Class.forName("java.time.ZoneId"), r0Var);
            this.f6649b.b(Class.forName("java.time.Period"), r0Var);
            this.f6649b.b(Class.forName("java.time.Duration"), r0Var);
            this.f6649b.b(Class.forName("java.time.Instant"), r0Var);
        } catch (Throwable unused3) {
        }
    }
}
