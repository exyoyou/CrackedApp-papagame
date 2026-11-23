package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class d implements a<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal<Set<e>> f90925c = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f90926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90927b;

    public d() {
        this.f90926a = 37;
        this.f90927b = 17;
    }

    public static int A(Object obj, Collection<String> collection) {
        return C(obj, f.t0(collection));
    }

    public static int B(Object obj, boolean z10) {
        return z(17, 37, obj, z10, null, new String[0]);
    }

    public static int C(Object obj, String... strArr) {
        return z(17, 37, obj, false, null, strArr);
    }

    static void D(Object obj) {
        synchronized (d.class) {
            if (u() == null) {
                f90925c.set(new HashSet());
            }
        }
        u().add(new e(obj));
    }

    static void F(Object obj) {
        Set<e> setU = u();
        if (setU != null) {
            setU.remove(new e(obj));
            synchronized (d.class) {
                Set<e> setU2 = u();
                if (setU2 != null && setU2.isEmpty()) {
                    f90925c.remove();
                }
            }
        }
    }

    static Set<e> u() {
        return f90925c.get();
    }

    static boolean v(Object obj) {
        Set<e> setU = u();
        return setU != null && setU.contains(new e(obj));
    }

    private static void w(Object obj, Class<?> cls, d dVar, boolean z10, String[] strArr) {
        if (v(obj)) {
            return;
        }
        try {
            D(obj);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                if (!external.org.apache.commons.lang3.a.S(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z10 || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        dVar.g(field.get(obj));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
            F(obj);
        } catch (Throwable th) {
            F(obj);
            throw th;
        }
    }

    public static int x(int i10, int i11, Object obj) {
        return z(i10, i11, obj, false, null, new String[0]);
    }

    public static int y(int i10, int i11, Object obj, boolean z10) {
        return z(i10, i11, obj, z10, null, new String[0]);
    }

    public static <T> int z(int i10, int i11, T t10, boolean z10, Class<? super T> cls, String... strArr) {
        if (t10 == null) {
            throw new IllegalArgumentException("The object to build a hash code for must not be null");
        }
        d dVar = new d(i10, i11);
        Class<?> superclass = t10.getClass();
        w(t10, superclass, dVar, z10, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            w(t10, superclass, dVar, z10, strArr);
        }
        return dVar.E();
    }

    public int E() {
        return this.f90927b;
    }

    public d a(byte b10) {
        this.f90927b = (this.f90927b * this.f90926a) + b10;
        return this;
    }

    public d b(char c10) {
        this.f90927b = (this.f90927b * this.f90926a) + c10;
        return this;
    }

    public d c(double d10) {
        return f(Double.doubleToLongBits(d10));
    }

    public d d(float f10) {
        this.f90927b = (this.f90927b * this.f90926a) + Float.floatToIntBits(f10);
        return this;
    }

    public d e(int i10) {
        this.f90927b = (this.f90927b * this.f90926a) + i10;
        return this;
    }

    public d f(long j10) {
        this.f90927b = (this.f90927b * this.f90926a) + ((int) (j10 ^ (j10 >> 32)));
        return this;
    }

    public d g(Object obj) {
        if (obj == null) {
            this.f90927b *= this.f90926a;
        } else if (!obj.getClass().isArray()) {
            this.f90927b = (this.f90927b * this.f90926a) + obj.hashCode();
        } else if (obj instanceof long[]) {
            o((long[]) obj);
        } else if (obj instanceof int[]) {
            n((int[]) obj);
        } else if (obj instanceof short[]) {
            q((short[]) obj);
        } else if (obj instanceof char[]) {
            k((char[]) obj);
        } else if (obj instanceof byte[]) {
            j((byte[]) obj);
        } else if (obj instanceof double[]) {
            l((double[]) obj);
        } else if (obj instanceof float[]) {
            m((float[]) obj);
        } else if (obj instanceof boolean[]) {
            r((boolean[]) obj);
        } else {
            p((Object[]) obj);
        }
        return this;
    }

    public d h(short s10) {
        this.f90927b = (this.f90927b * this.f90926a) + s10;
        return this;
    }

    public int hashCode() {
        return E();
    }

    public d i(boolean z10) {
        this.f90927b = (this.f90927b * this.f90926a) + (!z10 ? 1 : 0);
        return this;
    }

    public d j(byte[] bArr) {
        if (bArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (byte b10 : bArr) {
                a(b10);
            }
        }
        return this;
    }

    public d k(char[] cArr) {
        if (cArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (char c10 : cArr) {
                b(c10);
            }
        }
        return this;
    }

    public d l(double[] dArr) {
        if (dArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (double d10 : dArr) {
                c(d10);
            }
        }
        return this;
    }

    public d m(float[] fArr) {
        if (fArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (float f10 : fArr) {
                d(f10);
            }
        }
        return this;
    }

    public d n(int[] iArr) {
        if (iArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (int i10 : iArr) {
                e(i10);
            }
        }
        return this;
    }

    public d o(long[] jArr) {
        if (jArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (long j10 : jArr) {
                f(j10);
            }
        }
        return this;
    }

    public d p(Object[] objArr) {
        if (objArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (Object obj : objArr) {
                g(obj);
            }
        }
        return this;
    }

    public d q(short[] sArr) {
        if (sArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (short s10 : sArr) {
                h(s10);
            }
        }
        return this;
    }

    public d r(boolean[] zArr) {
        if (zArr == null) {
            this.f90927b *= this.f90926a;
        } else {
            for (boolean z10 : zArr) {
                i(z10);
            }
        }
        return this;
    }

    public d s(int i10) {
        this.f90927b = (this.f90927b * this.f90926a) + i10;
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public Integer build() {
        return Integer.valueOf(E());
    }

    public d(int i10, int i11) {
        this.f90927b = 0;
        if (i10 != 0) {
            if (i10 % 2 == 0) {
                throw new IllegalArgumentException("HashCodeBuilder requires an odd initial value");
            }
            if (i11 != 0) {
                if (i11 % 2 != 0) {
                    this.f90926a = i11;
                    this.f90927b = i10;
                    return;
                }
                throw new IllegalArgumentException("HashCodeBuilder requires an odd multiplier");
            }
            throw new IllegalArgumentException("HashCodeBuilder requires a non zero multiplier");
        }
        throw new IllegalArgumentException("HashCodeBuilder requires a non zero initial value");
    }
}
