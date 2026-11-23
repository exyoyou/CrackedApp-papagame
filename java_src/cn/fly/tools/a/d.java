package cn.fly.tools.a;

import android.content.Context;
import android.os.Build;
import cn.fly.commons.m;
import cn.fly.commons.z;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class d implements cn.fly.tools.a.a {

    private static class b {

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f1780a;
        }

        /* JADX INFO: renamed from: cn.fly.tools.a.d$b$b, reason: collision with other inner class name */
        public static final class C0041b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private transient ClassLoader f1781a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private transient Class<?> f1782b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private transient Object f1783c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private transient Object f1784d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private transient Object[] f1785e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private transient String f1786f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private transient Class<?> f1787g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private transient Object f1788h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private transient long f1789i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private transient long f1790j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private transient int f1791k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private transient int f1792l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private transient int f1793m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private transient int f1794n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private transient int f1795o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private volatile transient int f1796p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            private transient int f1797q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            private transient int f1798r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            private transient int f1799s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            private transient int f1800t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            private transient int f1801u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            private transient int f1802v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            private transient int f1803w;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            private transient short f1804x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            private transient short f1805y;
        }

        public static final class c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private C0041b f1806a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private C0041b f1807b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Object[] f1808c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f1809d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f1810e;
        }

        /* JADX INFO: renamed from: cn.fly.tools.a.d$b$d, reason: collision with other inner class name */
        public static final class C0042d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f1811a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Member f1812b = null;
        }

        public static class e {
            /* JADX INFO: Access modifiers changed from: private */
            public static Object b(Object... objArr) {
                throw new IllegalStateException("i1");
            }

            private e(Object... objArr) {
                throw new IllegalStateException("i2");
            }
        }

        public static class f {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private f f1816d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private f f1817e;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final MethodType f1815c = null;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            protected final int f1813a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            protected final long f1814b = 0;
        }

        public static final class g extends f {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Field f1818c = null;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final C0041b f1819d = null;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final long f1820e = 0;
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static int f1821a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static int f1822b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f1823c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1824d;
        }

        public static class i {
            /* JADX INFO: Access modifiers changed from: private */
            public static void c() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static void d() {
            }
        }
    }

    @Override // cn.fly.tools.a.a
    public Class b(String str) throws Throwable {
        return Class.forName(str);
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static long f1768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static long f1769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static long f1770c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static long f1771d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static long f1772e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static long f1773f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static long f1774g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static long f1775h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static long f1776i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static long f1777j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static long f1778k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static boolean f1779l;

        private static synchronized void a(int i10) {
            z.a().a("usf", Integer.valueOf(i10)).h();
        }

        private static synchronized boolean b() {
            int iIntValue = ((Integer) z.a().b("usf", -1)).intValue();
            if (iIntValue == 1) {
                f.a("36u ckFe f", new String[0]);
                return false;
            }
            if (iIntValue != -1 && iIntValue != 0) {
                return false;
            }
            a(1);
            return true;
        }

        private static synchronized void c() {
            a(0);
        }

        private static boolean d() {
            try {
                int length = b.f.class.getDeclaredFields().length;
                String str = "" + com.xinzhu.overmind.server.os.f.TAG + length;
                if (length != 5) {
                    f.a("36u ckHpCz " + str, new String[0]);
                    return false;
                }
                int length2 = b.g.class.getDeclaredFields().length;
                String str2 = str + "|f" + length2;
                if (length2 != 3) {
                    f.a("36u ckHpCz " + str2, new String[0]);
                    return false;
                }
                int length3 = b.C0042d.class.getDeclaredFields().length;
                String str3 = str2 + "|f" + length3;
                if (length3 != 2) {
                    f.a("36u ckHpCz " + str3, new String[0]);
                    return false;
                }
                int length4 = b.C0041b.class.getDeclaredFields().length;
                String str4 = str3 + "|f" + length4;
                if (length4 != 25) {
                    f.a("36u ckHpCz " + str4, new String[0]);
                    return false;
                }
                int length5 = b.a.class.getDeclaredFields().length;
                String str5 = str4 + "|f" + length5;
                if (length5 != 1) {
                    f.a("36u ckHpCz " + str5, new String[0]);
                    return false;
                }
                int length6 = b.c.class.getDeclaredFields().length;
                String str6 = str5 + "|f" + length6;
                if (length6 != 5) {
                    f.a("36u ckHpCz " + str6, new String[0]);
                    return false;
                }
                int length7 = b.h.class.getDeclaredFields().length;
                String str7 = str6 + "|f" + length7;
                if (length7 != 4) {
                    f.a("36u ckHpCz " + str7, new String[0]);
                    return false;
                }
                int length8 = b.i.class.getDeclaredMethods().length;
                String str8 = str7 + "|m" + length8;
                if (length8 < 2) {
                    f.a("36u ckHpCz " + str8, new String[0]);
                    return false;
                }
                int length9 = b.e.class.getDeclaredMethods().length;
                String str9 = str8 + "|m" + length9;
                if (length9 >= 1) {
                    return true;
                }
                f.a("36u ckHpCz " + str9, new String[0]);
                return false;
            } catch (Throwable th) {
                f.a(th);
                return false;
            }
        }

        public static synchronized boolean a() throws Throwable {
            f.a("36u ck", new String[0]);
            if (Build.VERSION.SDK_INT < 29) {
                return false;
            }
            if (c.a()) {
                if (!b() || !d()) {
                    return false;
                }
                try {
                    Field[] declaredFields = b.c.class.getDeclaredFields();
                    for (Field field : declaredFields) {
                        if (field.getType() == Long.TYPE) {
                            f1768a = c.a(field);
                            break;
                        }
                    }
                    if (a("", f1768a)) {
                        return false;
                    }
                    for (Field field2 : declaredFields) {
                        if (field2.getType() == b.C0041b.class) {
                            f1769b = c.a(field2);
                            break;
                        }
                    }
                    if (a("", f1769b)) {
                        return false;
                    }
                    for (Field field3 : b.f.class.getDeclaredFields()) {
                        if (field3.getType() == Long.TYPE) {
                            f1770c = c.a(field3);
                            break;
                        }
                    }
                    if (a("", f1770c)) {
                        return false;
                    }
                    for (Field field4 : b.g.class.getDeclaredFields()) {
                        if (field4.getType() == b.C0041b.class) {
                            f1771d = c.a(field4);
                            break;
                        }
                    }
                    if (a("", f1771d)) {
                        return false;
                    }
                    int i10 = 1;
                    for (Field field5 : b.C0041b.class.getDeclaredFields()) {
                        if (field5.getType() == Long.TYPE) {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    f1772e = c.a(field5);
                                    break;
                                }
                            } else {
                                f1773f = c.a(field5);
                                i10++;
                            }
                        }
                    }
                    if (a("", f1773f)) {
                        return false;
                    }
                    if (a("", f1772e)) {
                        return false;
                    }
                    for (Field field6 : b.C0042d.class.getDeclaredFields()) {
                        if (field6.getType() == Member.class) {
                            f1774g = c.a(field6);
                            break;
                        }
                    }
                    if (a("", f1774g)) {
                        return false;
                    }
                    long jA = 0;
                    long jA2 = 0;
                    int i11 = 1;
                    for (Method method : b.i.class.getDeclaredMethods()) {
                        if (method.getReturnType() == Void.TYPE) {
                            if (i11 != 1) {
                                if (i11 == 2) {
                                    method.setAccessible(true);
                                    jA = c.a(MethodHandles.lookup().unreflect(method), f1770c);
                                    break;
                                }
                            } else {
                                method.setAccessible(true);
                                jA2 = c.a(MethodHandles.lookup().unreflect(method), f1770c);
                                i11++;
                            }
                        }
                    }
                    long j10 = jA - jA2;
                    f1775h = j10;
                    if (a("", j10)) {
                        return false;
                    }
                    long jA3 = (jA2 - c.a(b.i.class, f1772e)) - f1775h;
                    f1776i = jA3;
                    if (a("", jA3)) {
                        return false;
                    }
                    MethodHandle methodHandleUnreflectGetter = null;
                    MethodHandle methodHandleUnreflectGetter2 = null;
                    int i12 = 1;
                    for (Field field7 : b.h.class.getDeclaredFields()) {
                        if (field7.getType() == Integer.TYPE) {
                            if (i12 != 1) {
                                if (i12 == 2) {
                                    field7.setAccessible(true);
                                    methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(field7);
                                    break;
                                }
                            } else {
                                field7.setAccessible(true);
                                methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(field7);
                                i12++;
                            }
                        }
                    }
                    long jA4 = c.a(methodHandleUnreflectGetter2, f1770c);
                    long jA5 = c.a(methodHandleUnreflectGetter, f1770c) - jA4;
                    f1777j = jA5;
                    if (a("", jA5)) {
                        return false;
                    }
                    long jA6 = jA4 - c.a(b.h.class, f1773f);
                    f1778k = jA6;
                    if (a("", jA6)) {
                        return false;
                    }
                    d.b();
                } catch (Throwable unused) {
                }
                c();
            }
            f1779l = true;
            return true;
        }

        public static synchronized <T> T a(String str, Object... objArr) throws Throwable {
            return (T) a(Class.forName(str), objArr);
        }

        public static synchronized <T> T a(Class<?> cls, Object... objArr) throws Throwable {
            Method method;
            T t10;
            boolean zB = b();
            if (f1779l && zB) {
                Method[] declaredMethods = b.e.class.getDeclaredMethods();
                int length = declaredMethods.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        method = null;
                        break;
                    }
                    method = declaredMethods[i10];
                    if (method.getReturnType() == Object.class) {
                        break;
                    }
                    i10++;
                }
                if (method != null) {
                    Constructor declaredConstructor = b.e.class.getDeclaredConstructor(Object[].class);
                    declaredConstructor.setAccessible(true);
                    long jA = c.a(cls, f1772e);
                    if (jA != 0) {
                        int iA = c.a(jA);
                        for (int i11 = 0; i11 < iA; i11++) {
                            long j10 = i11;
                            long j11 = f1775h;
                            Long.signum(j10);
                            long j12 = (j10 * j11) + jA + f1776i;
                            c.a(method, f1768a, j12);
                            if (m.a("0065kgfk]g@fk;kLki").equals(method.getName())) {
                                c.a(declaredConstructor, f1768a, j12);
                                c.a(declaredConstructor, f1769b, cls);
                                if (a(declaredConstructor.getParameterTypes(), objArr)) {
                                    try {
                                        t10 = (T) declaredConstructor.newInstance(objArr);
                                        c();
                                    } catch (Throwable unused) {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                    c();
                    throw new NoSuchMethodException("n1");
                }
                throw new Throwable("x22");
            }
            throw new Throwable("x1 " + f1779l + "|" + zB);
            return t10;
        }

        public static synchronized <T> T a(String str, Object obj, String str2, Object... objArr) throws Throwable {
            return (T) a(Class.forName(str), obj, str2, objArr);
        }

        public static synchronized <T> T a(Class<?> cls, Object obj, String str, Object... objArr) throws Throwable {
            Method method;
            T t10;
            boolean zB = b();
            if (f1779l && zB) {
                Method[] declaredMethods = b.e.class.getDeclaredMethods();
                int length = declaredMethods.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        method = null;
                        break;
                    }
                    method = declaredMethods[i10];
                    if (method.getReturnType() == Object.class) {
                        break;
                    }
                    i10++;
                }
                if (method != null) {
                    method.setAccessible(true);
                    long jA = c.a(cls, f1772e);
                    if (jA != 0) {
                        int iA = c.a(jA);
                        for (int i11 = 0; i11 < iA; i11++) {
                            long j10 = i11;
                            long j11 = f1775h;
                            Long.signum(j10);
                            c.a(method, f1768a, (j10 * j11) + jA + f1776i);
                            if (str.equals(method.getName()) && a(method.getParameterTypes(), objArr)) {
                                try {
                                    t10 = (T) method.invoke(obj, objArr);
                                    c();
                                } catch (Throwable unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    c();
                    throw new NoSuchMethodException("n2");
                }
                throw new Throwable("x22");
            }
            throw new Throwable("x2 " + f1779l + "|" + zB);
            return t10;
        }

        public static synchronized <T> T a(String str, String str2, Object obj) throws Throwable {
            return (T) a(Class.forName(str), str2, obj);
        }

        public static synchronized <T> T a(Class<?> cls, String str, Object obj) throws Throwable {
            MethodHandle methodHandleUnreflectGetter;
            T t10;
            boolean zB = b();
            if (f1779l && zB) {
                if (Build.VERSION.SDK_INT >= 26) {
                    Field[] declaredFields = b.h.class.getDeclaredFields();
                    int length = declaredFields.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            methodHandleUnreflectGetter = null;
                            break;
                        }
                        Field field = declaredFields[i10];
                        if (field.getType() == Integer.TYPE && (obj != null || (field.getModifiers() & 8) != 0)) {
                            field.setAccessible(true);
                            methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(field);
                            break;
                        }
                        i10++;
                    }
                    if (methodHandleUnreflectGetter != null) {
                        long jA = c.a(cls, f1773f);
                        if (jA != 0) {
                            int iA = c.a(jA);
                            for (int i11 = 0; i11 < iA; i11++) {
                                long j10 = i11;
                                long j11 = f1777j;
                                Long.signum(j10);
                                c.a(methodHandleUnreflectGetter, f1770c, (j10 * j11) + jA + f1778k);
                                c.a(methodHandleUnreflectGetter, f1771d, (Object) null);
                                try {
                                    MethodHandles.Lookup lookup = MethodHandles.lookup();
                                    Method method = lookup.getClass().getMethod(m.a("012RflFh?ffDhfiJhnfkflPhek"), k.a());
                                    method.setAccessible(true);
                                    method.invoke(lookup, methodHandleUnreflectGetter);
                                } catch (Throwable unused) {
                                }
                                Field field2 = (Field) c.b(c.b(methodHandleUnreflectGetter, f1771d), f1774g);
                                if (field2.getName().equals(str)) {
                                    field2.setAccessible(true);
                                    try {
                                        t10 = (T) field2.get(obj);
                                        c();
                                    } catch (Throwable unused2) {
                                        continue;
                                    }
                                }
                            }
                        }
                        c();
                        throw new NoSuchMethodException("n3");
                    }
                    throw new Throwable("x34");
                }
                throw new Throwable("x33");
            }
            throw new Throwable("x3 " + f1779l + "|" + zB);
            return t10;
        }

        private static boolean a(String str, long j10) {
            if (j10 != 0) {
                return false;
            }
            try {
                String str2 = str + j10 + "|";
                f.a("36u ckZr " + str2.substring(0, str2.length() - 1), new String[0]);
            } catch (Throwable unused) {
            }
            return true;
        }

        private static boolean a(Class<?>[] clsArr, Object[] objArr) {
            if ((clsArr != null && clsArr.length != 0) || (objArr != null && objArr.length != 0)) {
                if (clsArr.length != objArr.length) {
                    return false;
                }
                for (int i10 = 0; i10 < clsArr.length; i10++) {
                    if (clsArr[i10].isPrimitive()) {
                        Class<?> cls = clsArr[i10];
                        if (cls == Integer.TYPE && !(objArr[i10] instanceof Integer)) {
                            return false;
                        }
                        if (cls == Byte.TYPE && !(objArr[i10] instanceof Byte)) {
                            return false;
                        }
                        if (cls == Character.TYPE && !(objArr[i10] instanceof Character)) {
                            return false;
                        }
                        if (cls == Boolean.TYPE && !(objArr[i10] instanceof Boolean)) {
                            return false;
                        }
                        if (cls == Double.TYPE && !(objArr[i10] instanceof Double)) {
                            return false;
                        }
                        if (cls == Float.TYPE && !(objArr[i10] instanceof Float)) {
                            return false;
                        }
                        if (cls == Long.TYPE && !(objArr[i10] instanceof Long)) {
                            return false;
                        }
                        if (cls == Short.TYPE && !(objArr[i10] instanceof Short)) {
                            return false;
                        }
                    } else {
                        Object obj = objArr[i10];
                        if (obj != null && !clsArr[i10].isInstance(obj)) {
                            return false;
                        }
                    }
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        try {
            b.f fVar = new b.f();
            String str = "" + fVar.f1815c + fVar.f1816d + fVar.f1817e + "00";
            b.g gVar = new b.g();
            String str2 = str + "" + gVar.f1819d + gVar.f1818c + 0L;
            b.C0042d c0042d = new b.C0042d();
            String str3 = str2 + "" + c0042d.f1812b + c0042d.f1811a;
            b.C0041b c0041b = new b.C0041b();
            String str4 = (str3 + "" + c0041b.f1781a + c0041b.f1782b + c0041b.f1783c + c0041b.f1784d + Arrays.toString(c0041b.f1785e) + c0041b.f1786f + c0041b.f1787g + c0041b.f1788h + c0041b.f1790j + c0041b.f1789i + c0041b.f1791k + c0041b.f1792l + c0041b.f1793m + c0041b.f1794n + c0041b.f1795o + c0041b.f1796p + c0041b.f1797q + c0041b.f1798r + c0041b.f1799s + c0041b.f1800t + c0041b.f1801u + c0041b.f1802v + c0041b.f1803w + ((int) c0041b.f1804x) + ((int) c0041b.f1805y)) + "" + new b.a().f1780a;
            b.c cVar = new b.c();
            String str5 = str4 + "" + cVar.f1806a + cVar.f1807b + Arrays.toString(cVar.f1808c) + cVar.f1809d + cVar.f1810e;
            b.h hVar = new b.h();
            String str6 = str5 + "" + hVar.f1823c + hVar.f1824d + b.h.f1821a + b.h.f1822b;
            new b.i();
            b.i.c();
            b.i.d();
            b.e.b(new Object[0]);
            new b.e(new Object[]{str6});
        } catch (Throwable unused) {
        }
    }

    public boolean a(Context context) {
        try {
            return a.a();
        } catch (Throwable unused) {
            return false;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Object f1825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Method f1826b;

        public static boolean a() throws Throwable {
            Object objInvoke = a(Class.forName(m.a("015>hkfiYgVfnfhfkhk9e.fngm:g9hkEf+ghJh")), m.a("009$glThk;gmBg7hkKfDghZh"), new Class[0]).invoke(null, new Object[0]);
            f1825a = objInvoke;
            return objInvoke != null;
        }

        public static Object b(Object obj, long j10) throws Throwable {
            return a(f1825a.getClass(), m.a("009!glUhk)ijhhjiThek"), Object.class, Long.TYPE).invoke(f1825a, obj, Long.valueOf(j10));
        }

        public static long a(Object obj, long j10) throws Throwable {
            return ((Long) a(f1825a.getClass(), m.a("0072gl:hkYhgfmFg:gl"), Object.class, Long.TYPE).invoke(f1825a, obj, Long.valueOf(j10))).longValue();
        }

        public static void a(Object obj, long j10, long j11) throws Throwable {
            Class<?> cls = f1825a.getClass();
            String strA = m.a("007l(fi]kXhgfm+g=gl");
            Class cls2 = Long.TYPE;
            a(cls, strA, Object.class, cls2, cls2).invoke(f1825a, obj, Long.valueOf(j10), Long.valueOf(j11));
        }

        public static void a(Object obj, long j10, Object obj2) throws Throwable {
            a(f1825a.getClass(), m.a("009lSfiBk=ijhhji.hek"), Object.class, Long.TYPE, Object.class).invoke(f1825a, obj, Long.valueOf(j10), obj2);
        }

        public static int a(long j10) throws Throwable {
            return ((Integer) a(f1825a.getClass(), m.a("006]glEhkDggGgk"), Long.TYPE).invoke(f1825a, Long.valueOf(j10))).intValue();
        }

        public static long a(Field field) throws Throwable {
            return ((Long) a(f1825a.getClass(), m.a("017;fmhhji$hek.iefk=hiTfeijghghhkUhk"), Field.class).invoke(f1825a, field)).longValue();
        }

        private static Method a(Class cls, String str, Class... clsArr) throws Throwable {
            try {
                if (f1826b == null) {
                    f1826b = Class.class.getDeclaredMethod(m.a("0176glMhkYhnFheif+fl?h2feje)hkjCfmfe"), String.class, Class[].class);
                }
                Method method = (Method) f1826b.invoke(cls, str, clsArr);
                method.setAccessible(true);
                return method;
            } catch (Throwable unused) {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            }
        }
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr, Class<?> cls2) throws Throwable {
        return (T) a.a((Class<?>) cls, obj, str, objArr);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr, Class<?> cls) throws Throwable {
        return (T) a.a(str, obj, str2, objArr);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str) throws Throwable {
        return (T) a.a(str, new Object[0]);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, String str2, Object obj, Class<?> cls) throws Throwable {
        return (T) a.a(str, str2, obj);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Class[] clsArr, Object[] objArr) throws Throwable {
        return (T) a.a(str, objArr);
    }
}
