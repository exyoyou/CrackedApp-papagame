package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONType;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Clob;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class t1 extends com.alibaba.fastjson.util.g<Type, j1> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final t1 f6744g = new t1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f6746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6747f;

    public t1() {
        this(1024);
    }

    public static final t1 f() {
        return f6744g;
    }

    public final j1 d(Class<?> cls) throws Exception {
        return this.f6746e.z(cls, null);
    }

    public j1 e(Class<?> cls) {
        if (!Modifier.isPublic(cls.getModifiers())) {
            return new z0(cls);
        }
        boolean z10 = this.f6745d;
        if ((z10 && this.f6746e.D(cls)) || cls == Serializable.class || cls == Object.class) {
            z10 = false;
        }
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType != null && !jSONType.asm()) {
            z10 = false;
        }
        if ((!z10 || com.alibaba.fastjson.util.b.a(cls.getName())) ? z10 : false) {
            try {
                j1 j1VarD = d(cls);
                if (j1VarD != null) {
                    return j1VarD;
                }
            } catch (ClassCastException unused) {
            } catch (Throwable th) {
                throw new JSONException("create asm serializer error, class " + cls, th);
            }
        }
        return new z0(cls);
    }

    public j1 g(Class<?> cls) {
        boolean z10;
        ClassLoader classLoader;
        j1 j1VarA = a(cls);
        if (j1VarA == null) {
            try {
                for (Object obj : com.alibaba.fastjson.util.i.a(k.class, Thread.currentThread().getContextClassLoader())) {
                    if (obj instanceof k) {
                        k kVar = (k) obj;
                        Iterator<Type> it2 = kVar.a().iterator();
                        while (it2.hasNext()) {
                            b(it2.next(), kVar);
                        }
                    }
                }
            } catch (ClassCastException unused) {
            }
            j1VarA = a(cls);
        }
        if (j1VarA == null && (classLoader = com.alibaba.fastjson.a.class.getClassLoader()) != Thread.currentThread().getContextClassLoader()) {
            try {
                for (Object obj2 : com.alibaba.fastjson.util.i.a(k.class, classLoader)) {
                    if (obj2 instanceof k) {
                        k kVar2 = (k) obj2;
                        Iterator<Type> it3 = kVar2.a().iterator();
                        while (it3.hasNext()) {
                            b(it3.next(), kVar2);
                        }
                    }
                }
            } catch (ClassCastException unused2) {
            }
            j1VarA = a(cls);
        }
        if (j1VarA != null) {
            return j1VarA;
        }
        if (Map.class.isAssignableFrom(cls)) {
            b(cls, e1.f6692a);
        } else if (List.class.isAssignableFrom(cls)) {
            b(cls, a1.f6668a);
        } else if (Collection.class.isAssignableFrom(cls)) {
            b(cls, x.f6778a);
        } else if (Date.class.isAssignableFrom(cls)) {
            b(cls, b0.f6675a);
        } else if (com.alibaba.fastjson.b.class.isAssignableFrom(cls)) {
            b(cls, r0.f6735a);
        } else if (t0.class.isAssignableFrom(cls)) {
            b(cls, u0.f6749a);
        } else if (com.alibaba.fastjson.e.class.isAssignableFrom(cls)) {
            b(cls, y0.f6781a);
        } else if (cls.isEnum() || (cls.getSuperclass() != null && cls.getSuperclass().isEnum())) {
            b(cls, e0.f6691a);
        } else if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            b(cls, new e(componentType, g(componentType)));
        } else if (Throwable.class.isAssignableFrom(cls)) {
            b(cls, new g0(cls));
        } else if (TimeZone.class.isAssignableFrom(cls)) {
            b(cls, a2.f6669a);
        } else if (Appendable.class.isAssignableFrom(cls)) {
            b(cls, d.f6684a);
        } else if (Charset.class.isAssignableFrom(cls)) {
            b(cls, u.f6748a);
        } else if (Enumeration.class.isAssignableFrom(cls)) {
            b(cls, f0.f6694a);
        } else if (Calendar.class.isAssignableFrom(cls)) {
            b(cls, r.f6734a);
        } else if (Clob.class.isAssignableFrom(cls)) {
            b(cls, w.f6770a);
        } else {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            boolean z11 = false;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    Class<?> cls2 = interfaces[i10];
                    z10 = true;
                    if (cls2.getName().equals("net.sf.cglib.proxy.Factory") || cls2.getName().equals("org.springframework.cglib.proxy.Factory")) {
                        z11 = true;
                    } else {
                        if (cls2.getName().equals("javassist.util.proxy.ProxyObject")) {
                            break;
                        }
                        i10++;
                    }
                }
                z10 = false;
                break;
            }
            if (z11 || z10) {
                j1 j1VarG = g(cls.getSuperclass());
                b(cls, j1VarG);
                return j1VarG;
            }
            if (Proxy.isProxyClass(cls)) {
                b(cls, e(cls));
            } else {
                b(cls, e(cls));
            }
        }
        return a(cls);
    }

    public String h() {
        return this.f6747f;
    }

    public boolean i() {
        return this.f6745d;
    }

    public void j(boolean z10) {
        this.f6745d = z10;
    }

    public void k(String str) {
        this.f6747f = str;
    }

    public t1(int i10) {
        super(i10);
        this.f6745d = !com.alibaba.fastjson.util.b.g();
        this.f6747f = com.alibaba.fastjson.a.DEFAULT_TYPE_KEY;
        try {
            this.f6746e = new b();
        } catch (ExceptionInInitializerError unused) {
            this.f6745d = false;
        } catch (NoClassDefFoundError unused2) {
            this.f6745d = false;
        }
        b(Boolean.class, p.f6728a);
        b(Character.class, t.f6743a);
        b(Byte.class, q0.f6732a);
        b(Short.class, q0.f6732a);
        b(Integer.class, q0.f6732a);
        b(Long.class, d1.f6687a);
        b(Float.class, l0.f6719a);
        b(Double.class, d0.f6685b);
        b(BigDecimal.class, m.f6721a);
        b(BigInteger.class, n.f6724a);
        b(String.class, z1.f6790a);
        b(byte[].class, q.f6731a);
        b(short[].class, w1.f6777a);
        b(int[].class, p0.f6729a);
        b(long[].class, c1.f6682a);
        b(float[].class, k0.f6715a);
        b(double[].class, c0.f6681a);
        b(boolean[].class, o.f6726a);
        b(char[].class, s.f6741a);
        b(Object[].class, h1.f6702a);
        b(Class.class, v.f6750a);
        b(SimpleDateFormat.class, a0.f6667a);
        b(Locale.class, b1.f6676a);
        b(Currency.class, z.f6785a);
        b(TimeZone.class, a2.f6669a);
        b(UUID.class, d2.f6688a);
        b(InetAddress.class, n0.f6725a);
        b(Inet4Address.class, n0.f6725a);
        b(Inet6Address.class, n0.f6725a);
        b(InetSocketAddress.class, o0.f6727a);
        b(File.class, i0.f6704a);
        b(URI.class, b2.f6677a);
        b(URL.class, c2.f6683a);
        d dVar = d.f6684a;
        b(Appendable.class, dVar);
        b(StringBuffer.class, dVar);
        b(StringBuilder.class, dVar);
        b(Pattern.class, l1.f6720a);
        b(Charset.class, u.f6748a);
        b(AtomicBoolean.class, f.f6693a);
        b(AtomicInteger.class, h.f6696a);
        b(AtomicLong.class, j.f6714a);
        q1 q1Var = q1.f6733a;
        b(AtomicReference.class, q1Var);
        b(AtomicIntegerArray.class, g.f6695a);
        b(AtomicLongArray.class, i.f6703a);
        b(WeakReference.class, q1Var);
        b(SoftReference.class, q1Var);
        try {
            b(Class.forName("java.awt.Color"), y.f6780a);
            b(Class.forName("java.awt.Font"), m0.f6722a);
            b(Class.forName("java.awt.Point"), m1.f6723a);
            b(Class.forName("java.awt.Rectangle"), p1.f6730a);
        } catch (Throwable unused3) {
        }
        try {
            Class<?> cls = Class.forName("java.time.LocalDateTime");
            com.alibaba.fastjson.parser.deserializer.r0 r0Var = com.alibaba.fastjson.parser.deserializer.r0.f6572a;
            b(cls, r0Var);
            b(Class.forName("java.time.LocalDate"), r0Var);
            b(Class.forName("java.time.LocalTime"), r0Var);
            b(Class.forName("java.time.ZonedDateTime"), r0Var);
            b(Class.forName("java.time.OffsetDateTime"), r0Var);
            b(Class.forName("java.time.OffsetTime"), r0Var);
            b(Class.forName("java.time.ZoneOffset"), r0Var);
            b(Class.forName("java.time.ZoneRegion"), r0Var);
            b(Class.forName("java.time.Period"), r0Var);
            b(Class.forName("java.time.Duration"), r0Var);
            b(Class.forName("java.time.Instant"), r0Var);
        } catch (Throwable unused4) {
        }
    }
}
