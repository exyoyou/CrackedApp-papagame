package external.org.apache.commons.lang3.builder;

import external.org.apache.commons.lang3.tuple.Pair;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class c implements a<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<Set<Pair<e, e>>> f90923b = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f90924a = true;

    public static boolean A(Object obj, Object obj2, boolean z10) {
        return B(obj, obj2, z10, null, new String[0]);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    public static boolean B(Object obj, Object obj2, boolean z10, Class<?> cls, String... strArr) {
        c cVar;
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj2 != null) {
            Class<?> superclass = obj.getClass();
            Class<?> cls2 = obj2.getClass();
            if (superclass.isInstance(obj2)) {
                if (!cls2.isInstance(obj)) {
                    superclass = cls2;
                }
                cVar = new c();
                try {
                    y(obj, obj2, superclass, cVar, z10, strArr);
                    while (superclass.getSuperclass() != null && superclass != cls) {
                        superclass = superclass.getSuperclass();
                        y(obj, obj2, superclass, cVar, z10, strArr);
                    }
                    return cVar.w();
                } catch (IllegalArgumentException unused) {
                }
            } else if (cls2.isInstance(obj)) {
                if (superclass.isInstance(obj2)) {
                    superclass = cls2;
                }
                cVar = new c();
                y(obj, obj2, superclass, cVar, z10, strArr);
                while (superclass.getSuperclass() != null) {
                    superclass = superclass.getSuperclass();
                    y(obj, obj2, superclass, cVar, z10, strArr);
                }
                return cVar.w();
            }
        }
        return false;
    }

    public static boolean C(Object obj, Object obj2, String... strArr) {
        return B(obj, obj2, false, null, strArr);
    }

    static void D(Object obj, Object obj2) {
        synchronized (c.class) {
            if (v() == null) {
                f90923b.set(new HashSet());
            }
        }
        v().add(u(obj, obj2));
    }

    static void G(Object obj, Object obj2) {
        Set<Pair<e, e>> setV = v();
        if (setV != null) {
            setV.remove(u(obj, obj2));
            synchronized (c.class) {
                Set<Pair<e, e>> setV2 = v();
                if (setV2 != null && setV2.isEmpty()) {
                    f90923b.remove();
                }
            }
        }
    }

    static Pair<e, e> u(Object obj, Object obj2) {
        return Pair.of(new e(obj), new e(obj2));
    }

    static Set<Pair<e, e>> v() {
        return f90923b.get();
    }

    static boolean x(Object obj, Object obj2) {
        Set<Pair<e, e>> setV = v();
        Pair<e, e> pairU = u(obj, obj2);
        return setV != null && (setV.contains(pairU) || setV.contains(Pair.of(pairU.getLeft(), pairU.getRight())));
    }

    private static void y(Object obj, Object obj2, Class<?> cls, c cVar, boolean z10, String[] strArr) {
        if (x(obj, obj2)) {
            return;
        }
        try {
            D(obj, obj2);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (int i10 = 0; i10 < declaredFields.length && cVar.f90924a; i10++) {
                Field field = declaredFields[i10];
                if (!external.org.apache.commons.lang3.a.S(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z10 || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        cVar.g(field.get(obj), field.get(obj2));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
            G(obj, obj2);
        } catch (Throwable th) {
            G(obj, obj2);
            throw th;
        }
    }

    public static boolean z(Object obj, Object obj2, Collection<String> collection) {
        return C(obj, obj2, f.t0(collection));
    }

    public void E() {
        this.f90924a = true;
    }

    protected void F(boolean z10) {
        this.f90924a = z10;
    }

    public c a(byte b10, byte b11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = b10 == b11;
        return this;
    }

    public c b(char c10, char c11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = c10 == c11;
        return this;
    }

    public c c(double d10, double d11) {
        return !this.f90924a ? this : f(Double.doubleToLongBits(d10), Double.doubleToLongBits(d11));
    }

    public c d(float f10, float f11) {
        return !this.f90924a ? this : e(Float.floatToIntBits(f10), Float.floatToIntBits(f11));
    }

    public c e(int i10, int i11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = i10 == i11;
        return this;
    }

    public c f(long j10, long j11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = j10 == j11;
        return this;
    }

    public c g(Object obj, Object obj2) {
        if (!this.f90924a || obj == obj2) {
            return this;
        }
        if (obj == null || obj2 == null) {
            F(false);
            return this;
        }
        if (!obj.getClass().isArray()) {
            this.f90924a = obj.equals(obj2);
        } else if (obj.getClass() != obj2.getClass()) {
            F(false);
        } else if (obj instanceof long[]) {
            o((long[]) obj, (long[]) obj2);
        } else if (obj instanceof int[]) {
            n((int[]) obj, (int[]) obj2);
        } else if (obj instanceof short[]) {
            q((short[]) obj, (short[]) obj2);
        } else if (obj instanceof char[]) {
            k((char[]) obj, (char[]) obj2);
        } else if (obj instanceof byte[]) {
            j((byte[]) obj, (byte[]) obj2);
        } else if (obj instanceof double[]) {
            l((double[]) obj, (double[]) obj2);
        } else if (obj instanceof float[]) {
            m((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            r((boolean[]) obj, (boolean[]) obj2);
        } else {
            p((Object[]) obj, (Object[]) obj2);
        }
        return this;
    }

    public c h(short s10, short s11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = s10 == s11;
        return this;
    }

    public c i(boolean z10, boolean z11) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = z10 == z11;
        return this;
    }

    public c j(byte[] bArr, byte[] bArr2) {
        if (!this.f90924a || bArr == bArr2) {
            return this;
        }
        if (bArr == null || bArr2 == null) {
            F(false);
            return this;
        }
        if (bArr.length != bArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < bArr.length && this.f90924a; i10++) {
            a(bArr[i10], bArr2[i10]);
        }
        return this;
    }

    public c k(char[] cArr, char[] cArr2) {
        if (!this.f90924a || cArr == cArr2) {
            return this;
        }
        if (cArr == null || cArr2 == null) {
            F(false);
            return this;
        }
        if (cArr.length != cArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < cArr.length && this.f90924a; i10++) {
            b(cArr[i10], cArr2[i10]);
        }
        return this;
    }

    public c l(double[] dArr, double[] dArr2) {
        if (!this.f90924a || dArr == dArr2) {
            return this;
        }
        if (dArr == null || dArr2 == null) {
            F(false);
            return this;
        }
        if (dArr.length != dArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < dArr.length && this.f90924a; i10++) {
            c(dArr[i10], dArr2[i10]);
        }
        return this;
    }

    public c m(float[] fArr, float[] fArr2) {
        if (!this.f90924a || fArr == fArr2) {
            return this;
        }
        if (fArr == null || fArr2 == null) {
            F(false);
            return this;
        }
        if (fArr.length != fArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < fArr.length && this.f90924a; i10++) {
            d(fArr[i10], fArr2[i10]);
        }
        return this;
    }

    public c n(int[] iArr, int[] iArr2) {
        if (!this.f90924a || iArr == iArr2) {
            return this;
        }
        if (iArr == null || iArr2 == null) {
            F(false);
            return this;
        }
        if (iArr.length != iArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < iArr.length && this.f90924a; i10++) {
            e(iArr[i10], iArr2[i10]);
        }
        return this;
    }

    public c o(long[] jArr, long[] jArr2) {
        if (!this.f90924a || jArr == jArr2) {
            return this;
        }
        if (jArr == null || jArr2 == null) {
            F(false);
            return this;
        }
        if (jArr.length != jArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < jArr.length && this.f90924a; i10++) {
            f(jArr[i10], jArr2[i10]);
        }
        return this;
    }

    public c p(Object[] objArr, Object[] objArr2) {
        if (!this.f90924a || objArr == objArr2) {
            return this;
        }
        if (objArr == null || objArr2 == null) {
            F(false);
            return this;
        }
        if (objArr.length != objArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < objArr.length && this.f90924a; i10++) {
            g(objArr[i10], objArr2[i10]);
        }
        return this;
    }

    public c q(short[] sArr, short[] sArr2) {
        if (!this.f90924a || sArr == sArr2) {
            return this;
        }
        if (sArr == null || sArr2 == null) {
            F(false);
            return this;
        }
        if (sArr.length != sArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < sArr.length && this.f90924a; i10++) {
            h(sArr[i10], sArr2[i10]);
        }
        return this;
    }

    public c r(boolean[] zArr, boolean[] zArr2) {
        if (!this.f90924a || zArr == zArr2) {
            return this;
        }
        if (zArr == null || zArr2 == null) {
            F(false);
            return this;
        }
        if (zArr.length != zArr2.length) {
            F(false);
            return this;
        }
        for (int i10 = 0; i10 < zArr.length && this.f90924a; i10++) {
            i(zArr[i10], zArr2[i10]);
        }
        return this;
    }

    public c s(boolean z10) {
        if (!this.f90924a) {
            return this;
        }
        this.f90924a = z10;
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public Boolean build() {
        return Boolean.valueOf(w());
    }

    public boolean w() {
        return this.f90924a;
    }
}
