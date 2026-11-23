package cn.fly.tools.a;

import android.content.Context;
import cn.fly.commons.x;
import cn.fly.commons.z;
import cn.fly.tools.utils.DH;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class c implements cn.fly.tools.a.a {

    private static class b {

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f1722a;
        }

        /* JADX INFO: renamed from: cn.fly.tools.a.c$b$b, reason: collision with other inner class name */
        public static final class C0038b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private transient ClassLoader f1723a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private transient Class<?> f1724b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private transient Object f1725c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private transient Object f1726d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private transient Object[] f1727e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private transient String f1728f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private transient Class<?> f1729g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private transient Object f1730h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private transient long f1731i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private transient long f1732j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            private transient long f1733k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            private transient int f1734l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            private transient int f1735m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            private transient int f1736n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private transient int f1737o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            private transient int f1738p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            private volatile transient int f1739q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            private transient int f1740r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            private transient int f1741s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            private transient int f1742t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            private transient int f1743u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            private transient int f1744v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            private transient int f1745w;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            private transient int f1746x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            private transient short f1747y;

            /* JADX INFO: renamed from: z, reason: collision with root package name */
            private transient short f1748z;
        }

        /* JADX INFO: renamed from: cn.fly.tools.a.c$b$c, reason: collision with other inner class name */
        public static final class C0039c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private C0038b f1749a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private C0038b f1750b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Object[] f1751c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f1752d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f1753e;
        }

        public static final class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f1754a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Member f1755b = null;
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
            private MethodType f1759d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private f f1760e;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final MethodType f1758c = null;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            protected final int f1756a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            protected final long f1757b = 0;
        }

        public static final class g extends f {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final C0038b f1761c = null;
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static int f1762a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static int f1763b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f1764c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1765d;
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
        private static long f1709a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static long f1710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static long f1711c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static long f1712d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static long f1713e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static long f1714f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static long f1715g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static long f1716h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static long f1717i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static long f1718j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static long f1719k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static long f1720l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static boolean f1721m;

        private static synchronized void a(int i10) {
            z.a().a("usf", Integer.valueOf(i10)).h();
        }

        private static synchronized boolean b() {
            int iIntValue = ((Integer) z.a().b("usf", -1)).intValue();
            if (iIntValue == 1) {
                f.a("3xu ckFe f", new String[0]);
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
                    f.a("3xu ckHpCz " + str, new String[0]);
                    return false;
                }
                int length2 = b.g.class.getDeclaredFields().length;
                String str2 = str + "|f" + length2;
                if (length2 != 1) {
                    f.a("3xu ckHpCz " + str2, new String[0]);
                    return false;
                }
                int length3 = b.d.class.getDeclaredFields().length;
                String str3 = str2 + "|f" + length3;
                if (length3 != 2) {
                    f.a("3xu ckHpCz " + str3, new String[0]);
                    return false;
                }
                int length4 = b.C0038b.class.getDeclaredFields().length;
                String str4 = str3 + "|f" + length4;
                if (length4 != 26) {
                    f.a("3xu ckHpCz " + str4, new String[0]);
                    return false;
                }
                int length5 = b.a.class.getDeclaredFields().length;
                String str5 = str4 + "|f" + length5;
                if (length5 != 1) {
                    f.a("3xu ckHpCz " + str5, new String[0]);
                    return false;
                }
                int length6 = b.C0039c.class.getDeclaredFields().length;
                String str6 = str5 + "|f" + length6;
                if (length6 != 5) {
                    f.a("3xu ckHpCz " + str6, new String[0]);
                    return false;
                }
                int length7 = b.h.class.getDeclaredFields().length;
                String str7 = str6 + "|f" + length7;
                if (length7 != 4) {
                    f.a("3xu ckHpCz " + str7, new String[0]);
                    return false;
                }
                int length8 = b.i.class.getDeclaredMethods().length;
                String str8 = str7 + "|m" + length8;
                if (length8 < 2) {
                    f.a("3xu ckHpCz " + str8, new String[0]);
                    return false;
                }
                int length9 = b.e.class.getDeclaredMethods().length;
                String str9 = str8 + "|m" + length9;
                if (length9 >= 1) {
                    return true;
                }
                f.a("3xu ckHpCz " + str9, new String[0]);
                return false;
            } catch (Throwable th) {
                f.a(th);
                return false;
            }
        }

        public static synchronized boolean a() throws Throwable {
            f.a("3xu ck", new String[0]);
            if (DH.SyncMtd.getOSVersionIntForFly() < 29) {
                return false;
            }
            if (C0040c.a()) {
                if (!b() || !d()) {
                    return false;
                }
                try {
                    Field[] declaredFields = b.C0039c.class.getDeclaredFields();
                    for (Field field : declaredFields) {
                        if (field.getType() == Long.TYPE) {
                            f1709a = C0040c.a(field);
                            break;
                        }
                    }
                    if (a("", f1709a)) {
                        return false;
                    }
                    for (Field field2 : declaredFields) {
                        if (field2.getType() == b.C0038b.class) {
                            f1710b = C0040c.a(field2);
                            break;
                        }
                    }
                    if (a("", f1710b)) {
                        return false;
                    }
                    for (Field field3 : b.f.class.getDeclaredFields()) {
                        if (field3.getType() == Long.TYPE) {
                            f1711c = C0040c.a(field3);
                            break;
                        }
                    }
                    if (a("", f1711c)) {
                        return false;
                    }
                    for (Field field4 : b.g.class.getDeclaredFields()) {
                        if (field4.getType() == b.C0038b.class) {
                            f1712d = C0040c.a(field4);
                            break;
                        }
                    }
                    if (a("", f1712d)) {
                        return false;
                    }
                    int i10 = 1;
                    for (Field field5 : b.C0038b.class.getDeclaredFields()) {
                        if (field5.getType() == Long.TYPE) {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    if (i10 == 3) {
                                        f1715g = C0040c.a(field5);
                                        break;
                                    }
                                } else {
                                    f1713e = C0040c.a(field5);
                                }
                            } else {
                                f1714f = C0040c.a(field5);
                            }
                            i10++;
                        }
                    }
                    if (a("", f1714f)) {
                        return false;
                    }
                    if (a("", f1713e)) {
                        return false;
                    }
                    if (a("", f1715g)) {
                        return false;
                    }
                    for (Field field6 : b.d.class.getDeclaredFields()) {
                        if (field6.getType() == Member.class) {
                            f1716h = C0040c.a(field6);
                            break;
                        }
                    }
                    if (a("", f1716h)) {
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
                                    jA = C0040c.a(MethodHandles.lookup().unreflect(method), f1711c);
                                    break;
                                }
                            } else {
                                method.setAccessible(true);
                                jA2 = C0040c.a(MethodHandles.lookup().unreflect(method), f1711c);
                                i11++;
                            }
                        }
                    }
                    long j10 = jA - jA2;
                    f1717i = j10;
                    if (a("", j10)) {
                        return false;
                    }
                    long jA3 = (jA2 - C0040c.a(b.i.class, f1713e)) - f1717i;
                    f1718j = jA3;
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
                    long jA4 = C0040c.a(methodHandleUnreflectGetter2, f1711c);
                    long jA5 = C0040c.a(methodHandleUnreflectGetter, f1711c) - jA4;
                    f1719k = jA5;
                    if (a("", jA5)) {
                        return false;
                    }
                    long jA6 = jA4 - C0040c.a(b.h.class, f1714f);
                    f1720l = jA6;
                    if (a("", jA6)) {
                        return false;
                    }
                    c.b();
                } catch (Throwable unused) {
                }
                c();
            }
            f1721m = true;
            return true;
        }

        public static synchronized <T> T a(String str, Object... objArr) throws Throwable {
            return (T) a(Class.forName(str), objArr);
        }

        public static synchronized <T> T a(Class<?> cls, Object... objArr) throws Throwable {
            Method method;
            T t10;
            boolean zB = b();
            if (f1721m && zB) {
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
                    long jA = C0040c.a(cls, f1713e);
                    if (jA != 0) {
                        int iA = C0040c.a(jA);
                        for (int i11 = 0; i11 < iA; i11++) {
                            long j10 = i11;
                            long j11 = f1717i;
                            Long.signum(j10);
                            long j12 = (j10 * j11) + jA + f1718j;
                            C0040c.a(method, f1709a, j12);
                            if (x.b("006.hdchWd+ch*hQhf").equals(method.getName())) {
                                C0040c.a(declaredConstructor, f1709a, j12);
                                C0040c.a(declaredConstructor, f1710b, cls);
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
            throw new Throwable("x1 " + f1721m + "|" + zB);
            return t10;
        }

        public static synchronized <T> T a(String str, Object obj, String str2, Object... objArr) throws Throwable {
            return (T) a(Class.forName(str), obj, str2, objArr);
        }

        public static synchronized <T> T a(Class<?> cls, Object obj, String str, Object... objArr) throws Throwable {
            Method method;
            T t10;
            boolean zB = b();
            if (f1721m && zB) {
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
                    long jA = C0040c.a(cls, f1713e);
                    if (jA != 0) {
                        int iA = C0040c.a(jA);
                        for (int i11 = 0; i11 < iA; i11++) {
                            long j10 = i11;
                            long j11 = f1717i;
                            Long.signum(j10);
                            C0040c.a(method, f1709a, (j10 * j11) + jA + f1718j);
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
            throw new Throwable("x2 " + f1721m + "|" + zB);
            return t10;
        }

        public static synchronized <T> T a(String str, String str2, Object obj) throws Throwable {
            return (T) a(Class.forName(str), str2, obj);
        }

        public static synchronized <T> T a(Class<?> cls, String str, Object obj) throws Throwable {
            MethodHandle methodHandleUnreflectGetter;
            T t10;
            boolean zB = b();
            if (f1721m && zB) {
                if (DH.SyncMtd.getOSVersionIntForFly() >= 26) {
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
                        long jA = C0040c.a(cls, obj == null ? f1715g : f1714f);
                        if (jA != 0) {
                            int iA = C0040c.a(jA);
                            for (int i11 = 0; i11 < iA; i11++) {
                                long j10 = i11;
                                long j11 = f1719k;
                                Long.signum(j10);
                                C0040c.a(methodHandleUnreflectGetter, f1711c, (j10 * j11) + jA + f1720l);
                                C0040c.a(methodHandleUnreflectGetter, f1712d, (Object) null);
                                try {
                                    MethodHandles.Lookup lookup = MethodHandles.lookup();
                                    Method method = lookup.getClass().getMethod(x.b("012ZciFe'cc4ecf%ekchciWebh"), k.a());
                                    method.setAccessible(true);
                                    method.invoke(lookup, methodHandleUnreflectGetter);
                                } catch (Throwable unused) {
                                }
                                Field field2 = (Field) C0040c.b(C0040c.b(methodHandleUnreflectGetter, f1712d), f1716h);
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
            throw new Throwable("x3 " + f1721m + "|" + zB);
            return t10;
        }

        private static boolean a(String str, long j10) {
            if (j10 != 0) {
                return false;
            }
            try {
                String str2 = str + j10 + "|";
                f.a("3xu ckZr " + str2.substring(0, str2.length() - 1), new String[0]);
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
            String str = ("" + fVar.f1758c + fVar.f1759d + fVar.f1760e + "00") + "" + new b.g().f1761c;
            b.d dVar = new b.d();
            String str2 = str + "" + dVar.f1755b + dVar.f1754a;
            b.C0038b c0038b = new b.C0038b();
            String str3 = (str2 + "" + c0038b.f1723a + c0038b.f1724b + c0038b.f1725c + c0038b.f1726d + Arrays.toString(c0038b.f1727e) + c0038b.f1728f + c0038b.f1729g + c0038b.f1730h + c0038b.f1731i + c0038b.f1732j + c0038b.f1733k + c0038b.f1734l + c0038b.f1735m + c0038b.f1736n + c0038b.f1737o + c0038b.f1738p + c0038b.f1739q + c0038b.f1740r + c0038b.f1741s + c0038b.f1742t + c0038b.f1743u + c0038b.f1744v + c0038b.f1745w + c0038b.f1746x + ((int) c0038b.f1747y) + ((int) c0038b.f1748z)) + "" + new b.a().f1722a;
            b.C0039c c0039c = new b.C0039c();
            String str4 = str3 + "" + c0039c.f1749a + c0039c.f1750b + Arrays.toString(c0039c.f1751c) + c0039c.f1752d + c0039c.f1753e;
            b.h hVar = new b.h();
            String str5 = str4 + "" + hVar.f1764c + hVar.f1765d + b.h.f1762a + b.h.f1763b;
            new b.i();
            b.i.c();
            b.i.d();
            b.e.b(new Object[0]);
            new b.e(new Object[]{str5});
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

    /* JADX INFO: renamed from: cn.fly.tools.a.c$c, reason: collision with other inner class name */
    private static class C0040c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Object f1766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Method f1767b;

        public static boolean a() throws Throwable {
            Object objInvoke = a(Class.forName(x.b("015!ehcfBd7ckcecheh8bEckdj.dGehWcLdeKe")), x.b("009WdiQeh,djId*ehMc;deRe"), new Class[0]).invoke(null, new Object[0]);
            f1766a = objInvoke;
            return objInvoke != null;
        }

        public static Object b(Object obj, long j10) throws Throwable {
            return a(f1766a.getClass(), x.b("0097di*eh=fgeegfZebh"), Object.class, Long.TYPE).invoke(f1766a, obj, Long.valueOf(j10));
        }

        public static long a(Object obj, long j10) throws Throwable {
            return ((Long) a(f1766a.getClass(), x.b("007]di;eh?edcjXdGdi"), Object.class, Long.TYPE).invoke(f1766a, obj, Long.valueOf(j10))).longValue();
        }

        public static void a(Object obj, long j10, long j11) throws Throwable {
            Class<?> cls = f1766a.getClass();
            String strB = x.b("007i@cfMhOedcj%d_di");
            Class cls2 = Long.TYPE;
            a(cls, strB, Object.class, cls2, cls2).invoke(f1766a, obj, Long.valueOf(j10), Long.valueOf(j11));
        }

        public static void a(Object obj, long j10, Object obj2) throws Throwable {
            a(f1766a.getClass(), x.b("009iScfDh0fgeegf6ebh"), Object.class, Long.TYPE, Object.class).invoke(f1766a, obj, Long.valueOf(j10), obj2);
        }

        public static int a(long j10) throws Throwable {
            return ((Integer) a(f1766a.getClass(), x.b("006Xdi.eh'dd'dh"), Long.TYPE).invoke(f1766a, Long.valueOf(j10))).intValue();
        }

        public static long a(Field field) throws Throwable {
            return ((Long) a(f1766a.getClass(), x.b("017JcjeegfVebh5fbchWef,cbfgdedeehLeh"), Field.class).invoke(f1766a, field)).longValue();
        }

        private static Method a(Class cls, String str, Class... clsArr) throws Throwable {
            try {
                if (f1767b == null) {
                    f1767b = Class.class.getDeclaredMethod(x.b("017,diEehTek,ebfc7ciPe3cbgbIehg3cjcb"), String.class, Class[].class);
                }
                Method method = (Method) f1767b.invoke(cls, str, clsArr);
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
