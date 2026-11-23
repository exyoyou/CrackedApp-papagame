package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Comparator;

/* JADX INFO: loaded from: classes8.dex */
public class b implements a<Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f90922a = 0;

    public static int A(Object obj, Object obj2, boolean z10, Class<?> cls, String... strArr) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null || obj2 == null) {
            throw null;
        }
        Class<?> superclass = obj.getClass();
        if (!superclass.isInstance(obj2)) {
            throw new ClassCastException();
        }
        b bVar = new b();
        w(obj, obj2, superclass, bVar, z10, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            w(obj, obj2, superclass, bVar, z10, strArr);
        }
        return bVar.C();
    }

    public static int B(Object obj, Object obj2, String... strArr) {
        return A(obj, obj2, false, null, strArr);
    }

    private static void w(Object obj, Object obj2, Class<?> cls, b bVar, boolean z10, String[] strArr) {
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (int i10 = 0; i10 < declaredFields.length && bVar.f90922a == 0; i10++) {
            Field field = declaredFields[i10];
            if (!external.org.apache.commons.lang3.a.S(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z10 || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                try {
                    bVar.g(field.get(obj), field.get(obj2));
                } catch (IllegalAccessException unused) {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
            }
        }
    }

    public static int x(Object obj, Object obj2) {
        return A(obj, obj2, false, null, new String[0]);
    }

    public static int y(Object obj, Object obj2, Collection<String> collection) {
        return B(obj, obj2, f.t0(collection));
    }

    public static int z(Object obj, Object obj2, boolean z10) {
        return A(obj, obj2, z10, null, new String[0]);
    }

    public int C() {
        return this.f90922a;
    }

    public b a(byte b10, byte b11) {
        int i10;
        if (this.f90922a != 0) {
            return this;
        }
        if (b10 < b11) {
            i10 = -1;
        } else {
            i10 = b10 > b11 ? 1 : 0;
        }
        this.f90922a = i10;
        return this;
    }

    public b b(char c10, char c11) {
        int i10;
        if (this.f90922a != 0) {
            return this;
        }
        if (c10 < c11) {
            i10 = -1;
        } else {
            i10 = c10 > c11 ? 1 : 0;
        }
        this.f90922a = i10;
        return this;
    }

    public b c(double d10, double d11) {
        if (this.f90922a != 0) {
            return this;
        }
        this.f90922a = Double.compare(d10, d11);
        return this;
    }

    public b d(float f10, float f11) {
        if (this.f90922a != 0) {
            return this;
        }
        this.f90922a = Float.compare(f10, f11);
        return this;
    }

    public b e(int i10, int i11) {
        int i12;
        if (this.f90922a != 0) {
            return this;
        }
        if (i10 < i11) {
            i12 = -1;
        } else {
            i12 = i10 > i11 ? 1 : 0;
        }
        this.f90922a = i12;
        return this;
    }

    public b f(long j10, long j11) {
        int i10;
        if (this.f90922a != 0) {
            return this;
        }
        if (j10 < j11) {
            i10 = -1;
        } else {
            i10 = j10 > j11 ? 1 : 0;
        }
        this.f90922a = i10;
        return this;
    }

    public b g(Object obj, Object obj2) {
        return h(obj, obj2, null);
    }

    public b h(Object obj, Object obj2, Comparator<?> comparator) {
        if (this.f90922a != 0 || obj == obj2) {
            return this;
        }
        if (obj == null) {
            this.f90922a = -1;
            return this;
        }
        if (obj2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (obj.getClass().isArray()) {
            if (obj instanceof long[]) {
                p((long[]) obj, (long[]) obj2);
            } else if (obj instanceof int[]) {
                o((int[]) obj, (int[]) obj2);
            } else if (obj instanceof short[]) {
                s((short[]) obj, (short[]) obj2);
            } else if (obj instanceof char[]) {
                l((char[]) obj, (char[]) obj2);
            } else if (obj instanceof byte[]) {
                k((byte[]) obj, (byte[]) obj2);
            } else if (obj instanceof double[]) {
                m((double[]) obj, (double[]) obj2);
            } else if (obj instanceof float[]) {
                n((float[]) obj, (float[]) obj2);
            } else if (obj instanceof boolean[]) {
                t((boolean[]) obj, (boolean[]) obj2);
            } else {
                r((Object[]) obj, (Object[]) obj2, comparator);
            }
        } else if (comparator == null) {
            this.f90922a = ((Comparable) obj).compareTo(obj2);
        } else {
            this.f90922a = comparator.compare(obj, obj2);
        }
        return this;
    }

    public b i(short s10, short s11) {
        int i10;
        if (this.f90922a != 0) {
            return this;
        }
        if (s10 < s11) {
            i10 = -1;
        } else {
            i10 = s10 > s11 ? 1 : 0;
        }
        this.f90922a = i10;
        return this;
    }

    public b j(boolean z10, boolean z11) {
        if (this.f90922a != 0 || z10 == z11) {
            return this;
        }
        if (z10) {
            this.f90922a = 1;
        } else {
            this.f90922a = -1;
        }
        return this;
    }

    public b k(byte[] bArr, byte[] bArr2) {
        if (this.f90922a != 0 || bArr == bArr2) {
            return this;
        }
        if (bArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (bArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (bArr.length != bArr2.length) {
            this.f90922a = bArr.length >= bArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < bArr.length && this.f90922a == 0; i10++) {
            a(bArr[i10], bArr2[i10]);
        }
        return this;
    }

    public b l(char[] cArr, char[] cArr2) {
        if (this.f90922a != 0 || cArr == cArr2) {
            return this;
        }
        if (cArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (cArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (cArr.length != cArr2.length) {
            this.f90922a = cArr.length >= cArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < cArr.length && this.f90922a == 0; i10++) {
            b(cArr[i10], cArr2[i10]);
        }
        return this;
    }

    public b m(double[] dArr, double[] dArr2) {
        if (this.f90922a != 0 || dArr == dArr2) {
            return this;
        }
        if (dArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (dArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (dArr.length != dArr2.length) {
            this.f90922a = dArr.length >= dArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < dArr.length && this.f90922a == 0; i10++) {
            c(dArr[i10], dArr2[i10]);
        }
        return this;
    }

    public b n(float[] fArr, float[] fArr2) {
        if (this.f90922a != 0 || fArr == fArr2) {
            return this;
        }
        if (fArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (fArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (fArr.length != fArr2.length) {
            this.f90922a = fArr.length >= fArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < fArr.length && this.f90922a == 0; i10++) {
            d(fArr[i10], fArr2[i10]);
        }
        return this;
    }

    public b o(int[] iArr, int[] iArr2) {
        if (this.f90922a != 0 || iArr == iArr2) {
            return this;
        }
        if (iArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (iArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (iArr.length != iArr2.length) {
            this.f90922a = iArr.length >= iArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < iArr.length && this.f90922a == 0; i10++) {
            e(iArr[i10], iArr2[i10]);
        }
        return this;
    }

    public b p(long[] jArr, long[] jArr2) {
        if (this.f90922a != 0 || jArr == jArr2) {
            return this;
        }
        if (jArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (jArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (jArr.length != jArr2.length) {
            this.f90922a = jArr.length >= jArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < jArr.length && this.f90922a == 0; i10++) {
            f(jArr[i10], jArr2[i10]);
        }
        return this;
    }

    public b q(Object[] objArr, Object[] objArr2) {
        return r(objArr, objArr2, null);
    }

    public b r(Object[] objArr, Object[] objArr2, Comparator<?> comparator) {
        if (this.f90922a != 0 || objArr == objArr2) {
            return this;
        }
        if (objArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (objArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (objArr.length != objArr2.length) {
            this.f90922a = objArr.length >= objArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < objArr.length && this.f90922a == 0; i10++) {
            h(objArr[i10], objArr2[i10], comparator);
        }
        return this;
    }

    public b s(short[] sArr, short[] sArr2) {
        if (this.f90922a != 0 || sArr == sArr2) {
            return this;
        }
        if (sArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (sArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (sArr.length != sArr2.length) {
            this.f90922a = sArr.length >= sArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < sArr.length && this.f90922a == 0; i10++) {
            i(sArr[i10], sArr2[i10]);
        }
        return this;
    }

    public b t(boolean[] zArr, boolean[] zArr2) {
        if (this.f90922a != 0 || zArr == zArr2) {
            return this;
        }
        if (zArr == null) {
            this.f90922a = -1;
            return this;
        }
        if (zArr2 == null) {
            this.f90922a = 1;
            return this;
        }
        if (zArr.length != zArr2.length) {
            this.f90922a = zArr.length >= zArr2.length ? 1 : -1;
            return this;
        }
        for (int i10 = 0; i10 < zArr.length && this.f90922a == 0; i10++) {
            j(zArr[i10], zArr2[i10]);
        }
        return this;
    }

    public b u(int i10) {
        if (this.f90922a != 0) {
            return this;
        }
        this.f90922a = i10;
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Integer build() {
        return Integer.valueOf(C());
    }
}
