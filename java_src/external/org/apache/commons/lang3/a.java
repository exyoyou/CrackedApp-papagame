package external.org.apache.commons.lang3;

import external.org.apache.commons.lang3.builder.ToStringStyle;
import external.org.apache.commons.lang3.mutable.MutableInt;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object[] f90902a = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class<?>[] f90903b = new Class[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f90904c = new String[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f90905d = new long[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Long[] f90906e = new Long[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f90907f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Integer[] f90908g = new Integer[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final short[] f90909h = new short[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Short[] f90910i = new Short[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f90911j = new byte[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Byte[] f90912k = new Byte[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final double[] f90913l = new double[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Double[] f90914m = new Double[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final float[] f90915n = new float[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Float[] f90916o = new Float[0];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final boolean[] f90917p = new boolean[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Boolean[] f90918q = new Boolean[0];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final char[] f90919r = new char[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Character[] f90920s = new Character[0];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f90921t = -1;

    public static short[] A(short[] sArr, short... sArr2) {
        if (sArr == null) {
            return J(sArr2);
        }
        if (sArr2 == null) {
            return J(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static boolean A0(short[] sArr) {
        return sArr == null || sArr.length == 0;
    }

    public static Float[] A1(Float[] fArr) {
        return (fArr == null || fArr.length == 0) ? f90916o : fArr;
    }

    public static void A2(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            Object obj = objArr[length];
            objArr[length] = objArr[i10];
            objArr[i10] = obj;
            length--;
        }
    }

    public static boolean[] B(boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return K(zArr2);
        }
        if (zArr2 == null) {
            return K(zArr);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr, 0, zArr3, 0, zArr.length);
        System.arraycopy(zArr2, 0, zArr3, zArr.length, zArr2.length);
        return zArr3;
    }

    public static boolean B0(boolean[] zArr) {
        return zArr == null || zArr.length == 0;
    }

    public static Integer[] B1(Integer[] numArr) {
        return (numArr == null || numArr.length == 0) ? f90908g : numArr;
    }

    public static void B2(short[] sArr) {
        if (sArr == null) {
            return;
        }
        int length = sArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            short s10 = sArr[length];
            sArr[length] = sArr[i10];
            sArr[i10] = s10;
            length--;
        }
    }

    public static byte[] C(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static boolean C0(Object obj, Object obj2) {
        return new external.org.apache.commons.lang3.builder.c().g(obj, obj2).w();
    }

    public static Long[] C1(Long[] lArr) {
        return (lArr == null || lArr.length == 0) ? f90906e : lArr;
    }

    public static void C2(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        int length = zArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            boolean z10 = zArr[length];
            zArr[length] = zArr[i10];
            zArr[i10] = z10;
            length--;
        }
    }

    public static char[] D(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static boolean D0(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? false : true;
    }

    public static Object[] D1(Object[] objArr) {
        return (objArr == null || objArr.length == 0) ? f90902a : objArr;
    }

    public static byte[] D2(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > bArr.length) {
            i11 = bArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90911j;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return bArr2;
    }

    public static double[] E(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public static boolean E0(char[] cArr) {
        return (cArr == null || cArr.length == 0) ? false : true;
    }

    public static Short[] E1(Short[] shArr) {
        return (shArr == null || shArr.length == 0) ? f90910i : shArr;
    }

    public static char[] E2(char[] cArr, int i10, int i11) {
        if (cArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > cArr.length) {
            i11 = cArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90919r;
        }
        char[] cArr2 = new char[i12];
        System.arraycopy(cArr, i10, cArr2, 0, i12);
        return cArr2;
    }

    public static float[] F(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return (float[]) fArr.clone();
    }

    public static boolean F0(double[] dArr) {
        return (dArr == null || dArr.length == 0) ? false : true;
    }

    public static String[] F1(String[] strArr) {
        return (strArr == null || strArr.length == 0) ? f90904c : strArr;
    }

    public static double[] F2(double[] dArr, int i10, int i11) {
        if (dArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > dArr.length) {
            i11 = dArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90913l;
        }
        double[] dArr2 = new double[i12];
        System.arraycopy(dArr, i10, dArr2, 0, i12);
        return dArr2;
    }

    public static int[] G(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static boolean G0(float[] fArr) {
        return (fArr == null || fArr.length == 0) ? false : true;
    }

    public static short[] G1(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? f90909h : sArr;
    }

    public static float[] G2(float[] fArr, int i10, int i11) {
        if (fArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > fArr.length) {
            i11 = fArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90915n;
        }
        float[] fArr2 = new float[i12];
        System.arraycopy(fArr, i10, fArr2, 0, i12);
        return fArr2;
    }

    public static long[] H(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static boolean H0(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? false : true;
    }

    public static boolean[] H1(boolean[] zArr) {
        return (zArr == null || zArr.length == 0) ? f90917p : zArr;
    }

    public static int[] H2(int[] iArr, int i10, int i11) {
        if (iArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > iArr.length) {
            i11 = iArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90907f;
        }
        int[] iArr2 = new int[i12];
        System.arraycopy(iArr, i10, iArr2, 0, i12);
        return iArr2;
    }

    public static <T> T[] I(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    public static boolean I0(long[] jArr) {
        return (jArr == null || jArr.length == 0) ? false : true;
    }

    private static Object I1(Object obj, int i10) {
        int iX = X(obj);
        if (i10 < 0 || i10 >= iX) {
            throw new IndexOutOfBoundsException("Index: " + i10 + ", Length: " + iX);
        }
        int i11 = iX - 1;
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i11);
        System.arraycopy(obj, 0, objNewInstance, 0, i10);
        if (i10 < i11) {
            System.arraycopy(obj, i10 + 1, objNewInstance, i10, (iX - i10) - 1);
        }
        return objNewInstance;
    }

    public static long[] I2(long[] jArr, int i10, int i11) {
        if (jArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > jArr.length) {
            i11 = jArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90905d;
        }
        long[] jArr2 = new long[i12];
        System.arraycopy(jArr, i10, jArr2, 0, i12);
        return jArr2;
    }

    public static short[] J(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static <T> boolean J0(T[] tArr) {
        return (tArr == null || tArr.length == 0) ? false : true;
    }

    public static byte[] J1(byte[] bArr, int i10) {
        return (byte[]) I1(bArr, i10);
    }

    public static <T> T[] J2(T[] tArr, int i10, int i11) {
        if (tArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > tArr.length) {
            i11 = tArr.length;
        }
        int i12 = i11 - i10;
        Class<?> componentType = tArr.getClass().getComponentType();
        if (i12 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(componentType, i12));
        System.arraycopy(tArr, i10, tArr2, 0, i12);
        return tArr2;
    }

    public static boolean[] K(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static boolean K0(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? false : true;
    }

    public static char[] K1(char[] cArr, int i10) {
        return (char[]) I1(cArr, i10);
    }

    public static short[] K2(short[] sArr, int i10, int i11) {
        if (sArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > sArr.length) {
            i11 = sArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90909h;
        }
        short[] sArr2 = new short[i12];
        System.arraycopy(sArr, i10, sArr2, 0, i12);
        return sArr2;
    }

    public static boolean L(byte[] bArr, byte b10) {
        return Z(bArr, b10) != -1;
    }

    public static boolean L0(boolean[] zArr) {
        return (zArr == null || zArr.length == 0) ? false : true;
    }

    public static double[] L1(double[] dArr, int i10) {
        return (double[]) I1(dArr, i10);
    }

    public static boolean[] L2(boolean[] zArr, int i10, int i11) {
        if (zArr == null) {
            return null;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 > zArr.length) {
            i11 = zArr.length;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return f90917p;
        }
        boolean[] zArr2 = new boolean[i12];
        System.arraycopy(zArr, i10, zArr2, 0, i12);
        return zArr2;
    }

    public static boolean M(char[] cArr, char c10) {
        return b0(cArr, c10) != -1;
    }

    public static boolean M0(byte[] bArr, byte[] bArr2) {
        if (bArr == null && bArr2 != null && bArr2.length > 0) {
            return false;
        }
        if (bArr2 != null || bArr == null || bArr.length <= 0) {
            return bArr == null || bArr2 == null || bArr.length == bArr2.length;
        }
        return false;
    }

    public static float[] M1(float[] fArr, int i10) {
        return (float[]) I1(fArr, i10);
    }

    public static <T> T[] M2(T... tArr) {
        return tArr;
    }

    public static boolean N(double[] dArr, double d10) {
        return d0(dArr, d10) != -1;
    }

    public static boolean N0(char[] cArr, char[] cArr2) {
        if (cArr == null && cArr2 != null && cArr2.length > 0) {
            return false;
        }
        if (cArr2 != null || cArr == null || cArr.length <= 0) {
            return cArr == null || cArr2 == null || cArr.length == cArr2.length;
        }
        return false;
    }

    public static int[] N1(int[] iArr, int i10) {
        return (int[]) I1(iArr, i10);
    }

    public static Map<Object, Object> N2(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        HashMap map = new HashMap((int) (((double) objArr.length) * 1.5d));
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                map.put(entry.getKey(), entry.getValue());
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalArgumentException("Array element " + i10 + ", '" + obj + "', is neither of type Map.Entry nor an Array");
                }
                Object[] objArr2 = (Object[]) obj;
                if (objArr2.length < 2) {
                    throw new IllegalArgumentException("Array element " + i10 + ", '" + obj + "', has a length less than 2");
                }
                map.put(objArr2[0], objArr2[1]);
            }
        }
        return map;
    }

    public static boolean O(double[] dArr, double d10, double d11) {
        return g0(dArr, d10, 0, d11) != -1;
    }

    public static boolean O0(double[] dArr, double[] dArr2) {
        if (dArr == null && dArr2 != null && dArr2.length > 0) {
            return false;
        }
        if (dArr2 != null || dArr == null || dArr.length <= 0) {
            return dArr == null || dArr2 == null || dArr.length == dArr2.length;
        }
        return false;
    }

    public static long[] O1(long[] jArr, int i10) {
        return (long[]) I1(jArr, i10);
    }

    public static Boolean[] O2(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return f90918q;
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i10 = 0; i10 < zArr.length; i10++) {
            boolArr[i10] = zArr[i10] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static boolean P(float[] fArr, float f10) {
        return h0(fArr, f10) != -1;
    }

    public static boolean P0(float[] fArr, float[] fArr2) {
        if (fArr == null && fArr2 != null && fArr2.length > 0) {
            return false;
        }
        if (fArr2 != null || fArr == null || fArr.length <= 0) {
            return fArr == null || fArr2 == null || fArr.length == fArr2.length;
        }
        return false;
    }

    public static <T> T[] P1(T[] tArr, int i10) {
        return (T[]) ((Object[]) I1(tArr, i10));
    }

    public static Byte[] P2(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f90912k;
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = Byte.valueOf(bArr[i10]);
        }
        return bArr2;
    }

    public static boolean Q(int[] iArr, int i10) {
        return j0(iArr, i10) != -1;
    }

    public static boolean Q0(int[] iArr, int[] iArr2) {
        if (iArr == null && iArr2 != null && iArr2.length > 0) {
            return false;
        }
        if (iArr2 != null || iArr == null || iArr.length <= 0) {
            return iArr == null || iArr2 == null || iArr.length == iArr2.length;
        }
        return false;
    }

    public static short[] Q1(short[] sArr, int i10) {
        return (short[]) I1(sArr, i10);
    }

    public static Character[] Q2(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return f90920s;
        }
        Character[] chArr = new Character[cArr.length];
        for (int i10 = 0; i10 < cArr.length; i10++) {
            chArr[i10] = Character.valueOf(cArr[i10]);
        }
        return chArr;
    }

    public static boolean R(long[] jArr, long j10) {
        return l0(jArr, j10) != -1;
    }

    public static boolean R0(long[] jArr, long[] jArr2) {
        if (jArr == null && jArr2 != null && jArr2.length > 0) {
            return false;
        }
        if (jArr2 != null || jArr == null || jArr.length <= 0) {
            return jArr == null || jArr2 == null || jArr.length == jArr2.length;
        }
        return false;
    }

    public static boolean[] R1(boolean[] zArr, int i10) {
        return (boolean[]) I1(zArr, i10);
    }

    public static Double[] R2(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f90914m;
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = Double.valueOf(dArr[i10]);
        }
        return dArr2;
    }

    public static boolean S(Object[] objArr, Object obj) {
        return n0(objArr, obj) != -1;
    }

    public static boolean S0(Object[] objArr, Object[] objArr2) {
        if (objArr == null && objArr2 != null && objArr2.length > 0) {
            return false;
        }
        if (objArr2 != null || objArr == null || objArr.length <= 0) {
            return objArr == null || objArr2 == null || objArr.length == objArr2.length;
        }
        return false;
    }

    private static Object S1(Object obj, int... iArr) {
        int i10;
        int iX = X(obj);
        if (H0(iArr)) {
            Arrays.sort(iArr);
            int length = iArr.length;
            int i11 = iX;
            i10 = 0;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                int i12 = iArr[length];
                if (i12 < 0 || i12 >= iX) {
                    throw new IndexOutOfBoundsException("Index: " + i12 + ", Length: " + iX);
                }
                if (i12 < i11) {
                    i10++;
                    i11 = i12;
                }
            }
        } else {
            i10 = 0;
        }
        int i13 = iX - i10;
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i13);
        if (i10 < iX) {
            int length2 = iArr.length - 1;
            while (length2 >= 0) {
                int i14 = iArr[length2];
                int i15 = iX - i14;
                if (i15 > 1) {
                    int i16 = i15 - 1;
                    i13 -= i16;
                    System.arraycopy(obj, i14 + 1, objNewInstance, i13, i16);
                }
                length2--;
                iX = i14;
            }
            if (iX > 0) {
                System.arraycopy(obj, 0, objNewInstance, 0, iX);
            }
        }
        return objNewInstance;
    }

    public static Float[] S2(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f90916o;
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = Float.valueOf(fArr[i10]);
        }
        return fArr2;
    }

    public static boolean T(short[] sArr, short s10) {
        return p0(sArr, s10) != -1;
    }

    public static boolean T0(short[] sArr, short[] sArr2) {
        if (sArr == null && sArr2 != null && sArr2.length > 0) {
            return false;
        }
        if (sArr2 != null || sArr == null || sArr.length <= 0) {
            return sArr == null || sArr2 == null || sArr.length == sArr2.length;
        }
        return false;
    }

    public static byte[] T1(byte[] bArr, int... iArr) {
        return (byte[]) S1(bArr, G(iArr));
    }

    public static Integer[] T2(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return f90908g;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        return numArr;
    }

    public static boolean U(boolean[] zArr, boolean z10) {
        return r0(zArr, z10) != -1;
    }

    public static boolean U0(boolean[] zArr, boolean[] zArr2) {
        if (zArr == null && zArr2 != null && zArr2.length > 0) {
            return false;
        }
        if (zArr2 != null || zArr == null || zArr.length <= 0) {
            return zArr == null || zArr2 == null || zArr.length == zArr2.length;
        }
        return false;
    }

    public static char[] U1(char[] cArr, int... iArr) {
        return (char[]) S1(cArr, G(iArr));
    }

    public static Long[] U2(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return f90906e;
        }
        Long[] lArr = new Long[jArr.length];
        for (int i10 = 0; i10 < jArr.length; i10++) {
            lArr[i10] = Long.valueOf(jArr[i10]);
        }
        return lArr;
    }

    private static Object V(Object obj, Class<?> cls) {
        if (obj == null) {
            return Array.newInstance(cls, 1);
        }
        int length = Array.getLength(obj);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        return objNewInstance;
    }

    public static boolean V0(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        return obj.getClass().getName().equals(obj2.getClass().getName());
    }

    public static double[] V1(double[] dArr, int... iArr) {
        return (double[]) S1(dArr, G(iArr));
    }

    public static Short[] V2(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return f90910i;
        }
        Short[] shArr = new Short[sArr.length];
        for (int i10 = 0; i10 < sArr.length; i10++) {
            shArr[i10] = Short.valueOf(sArr[i10]);
        }
        return shArr;
    }

    private static int[] W(HashSet<Integer> hashSet) {
        int[] iArr = new int[hashSet.size()];
        Iterator<Integer> it2 = hashSet.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            iArr[i10] = it2.next().intValue();
            i10++;
        }
        return iArr;
    }

    public static int W0(byte[] bArr, byte b10) {
        return X0(bArr, b10, Integer.MAX_VALUE);
    }

    public static float[] W1(float[] fArr, int... iArr) {
        return (float[]) S1(fArr, G(iArr));
    }

    public static byte[] W2(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f90911j;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = bArr[i10].byteValue();
        }
        return bArr2;
    }

    public static int X(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int X0(byte[] bArr, byte b10, int i10) {
        if (bArr == null || i10 < 0) {
            return -1;
        }
        if (i10 >= bArr.length) {
            i10 = bArr.length - 1;
        }
        while (i10 >= 0) {
            if (b10 == bArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static int[] X1(int[] iArr, int... iArr2) {
        return (int[]) S1(iArr, G(iArr2));
    }

    public static byte[] X2(Byte[] bArr, byte b10) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f90911j;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            Byte b11 = bArr[i10];
            bArr2[i10] = b11 == null ? b10 : b11.byteValue();
        }
        return bArr2;
    }

    public static int Y(Object obj) {
        return new external.org.apache.commons.lang3.builder.d().g(obj).E();
    }

    public static int Y0(char[] cArr, char c10) {
        return Z0(cArr, c10, Integer.MAX_VALUE);
    }

    public static long[] Y1(long[] jArr, int... iArr) {
        return (long[]) S1(jArr, G(iArr));
    }

    public static char[] Y2(Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return f90919r;
        }
        char[] cArr = new char[chArr.length];
        for (int i10 = 0; i10 < chArr.length; i10++) {
            cArr[i10] = chArr[i10].charValue();
        }
        return cArr;
    }

    public static int Z(byte[] bArr, byte b10) {
        return a0(bArr, b10, 0);
    }

    public static int Z0(char[] cArr, char c10, int i10) {
        if (cArr == null || i10 < 0) {
            return -1;
        }
        if (i10 >= cArr.length) {
            i10 = cArr.length - 1;
        }
        while (i10 >= 0) {
            if (c10 == cArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static <T> T[] Z1(T[] tArr, int... iArr) {
        return (T[]) ((Object[]) S1(tArr, G(iArr)));
    }

    public static char[] Z2(Character[] chArr, char c10) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return f90919r;
        }
        char[] cArr = new char[chArr.length];
        for (int i10 = 0; i10 < chArr.length; i10++) {
            Character ch = chArr[i10];
            cArr[i10] = ch == null ? c10 : ch.charValue();
        }
        return cArr;
    }

    private static Object a(Object obj, int i10, Object obj2, Class<?> cls) {
        if (obj == null) {
            if (i10 == 0) {
                Object objNewInstance = Array.newInstance(cls, 1);
                Array.set(objNewInstance, 0, obj2);
                return objNewInstance;
            }
            throw new IndexOutOfBoundsException("Index: " + i10 + ", Length: 0");
        }
        int length = Array.getLength(obj);
        if (i10 > length || i10 < 0) {
            throw new IndexOutOfBoundsException("Index: " + i10 + ", Length: " + length);
        }
        Object objNewInstance2 = Array.newInstance(cls, length + 1);
        System.arraycopy(obj, 0, objNewInstance2, 0, i10);
        Array.set(objNewInstance2, i10, obj2);
        if (i10 < length) {
            System.arraycopy(obj, i10, objNewInstance2, i10 + 1, length - i10);
        }
        return objNewInstance2;
    }

    public static int a0(byte[] bArr, byte b10, int i10) {
        if (bArr == null) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < bArr.length) {
            if (b10 == bArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int a1(double[] dArr, double d10) {
        return c1(dArr, d10, Integer.MAX_VALUE);
    }

    public static short[] a2(short[] sArr, int... iArr) {
        return (short[]) S1(sArr, G(iArr));
    }

    public static double[] a3(Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f90913l;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = dArr[i10].doubleValue();
        }
        return dArr2;
    }

    public static byte[] b(byte[] bArr, byte b10) {
        byte[] bArr2 = (byte[]) V(bArr, Byte.TYPE);
        bArr2[bArr2.length - 1] = b10;
        return bArr2;
    }

    public static int b0(char[] cArr, char c10) {
        return c0(cArr, c10, 0);
    }

    public static int b1(double[] dArr, double d10, double d11) {
        return d1(dArr, d10, Integer.MAX_VALUE, d11);
    }

    public static boolean[] b2(boolean[] zArr, int... iArr) {
        return (boolean[]) S1(zArr, G(iArr));
    }

    public static double[] b3(Double[] dArr, double d10) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f90913l;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            Double d11 = dArr[i10];
            dArr2[i10] = d11 == null ? d10 : d11.doubleValue();
        }
        return dArr2;
    }

    public static byte[] c(byte[] bArr, int i10, byte b10) {
        return (byte[]) a(bArr, i10, Byte.valueOf(b10), Byte.TYPE);
    }

    public static int c0(char[] cArr, char c10, int i10) {
        if (cArr == null) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < cArr.length) {
            if (c10 == cArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int c1(double[] dArr, double d10, int i10) {
        if (v0(dArr) || i10 < 0) {
            return -1;
        }
        if (i10 >= dArr.length) {
            i10 = dArr.length - 1;
        }
        while (i10 >= 0) {
            if (d10 == dArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static byte[] c2(byte[] bArr, byte b10) {
        int iZ = Z(bArr, b10);
        return iZ == -1 ? C(bArr) : J1(bArr, iZ);
    }

    public static float[] c3(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f90915n;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = fArr[i10].floatValue();
        }
        return fArr2;
    }

    public static char[] d(char[] cArr, char c10) {
        char[] cArr2 = (char[]) V(cArr, Character.TYPE);
        cArr2[cArr2.length - 1] = c10;
        return cArr2;
    }

    public static int d0(double[] dArr, double d10) {
        return f0(dArr, d10, 0);
    }

    public static int d1(double[] dArr, double d10, int i10, double d11) {
        if (v0(dArr) || i10 < 0) {
            return -1;
        }
        if (i10 >= dArr.length) {
            i10 = dArr.length - 1;
        }
        double d12 = d10 - d11;
        double d13 = d10 + d11;
        while (i10 >= 0) {
            double d14 = dArr[i10];
            if (d14 >= d12 && d14 <= d13) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static char[] d2(char[] cArr, char c10) {
        int iB0 = b0(cArr, c10);
        return iB0 == -1 ? D(cArr) : K1(cArr, iB0);
    }

    public static float[] d3(Float[] fArr, float f10) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f90915n;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            Float f11 = fArr[i10];
            fArr2[i10] = f11 == null ? f10 : f11.floatValue();
        }
        return fArr2;
    }

    public static char[] e(char[] cArr, int i10, char c10) {
        return (char[]) a(cArr, i10, Character.valueOf(c10), Character.TYPE);
    }

    public static int e0(double[] dArr, double d10, double d11) {
        return g0(dArr, d10, 0, d11);
    }

    public static int e1(float[] fArr, float f10) {
        return f1(fArr, f10, Integer.MAX_VALUE);
    }

    public static double[] e2(double[] dArr, double d10) {
        int iD0 = d0(dArr, d10);
        return iD0 == -1 ? E(dArr) : L1(dArr, iD0);
    }

    public static int[] e3(Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return f90907f;
        }
        int[] iArr = new int[numArr.length];
        for (int i10 = 0; i10 < numArr.length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
        return iArr;
    }

    public static double[] f(double[] dArr, double d10) {
        double[] dArr2 = (double[]) V(dArr, Double.TYPE);
        dArr2[dArr2.length - 1] = d10;
        return dArr2;
    }

    public static int f0(double[] dArr, double d10, int i10) {
        if (v0(dArr)) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < dArr.length) {
            if (d10 == dArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int f1(float[] fArr, float f10, int i10) {
        if (w0(fArr) || i10 < 0) {
            return -1;
        }
        if (i10 >= fArr.length) {
            i10 = fArr.length - 1;
        }
        while (i10 >= 0) {
            if (f10 == fArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static float[] f2(float[] fArr, float f10) {
        int iH0 = h0(fArr, f10);
        return iH0 == -1 ? F(fArr) : M1(fArr, iH0);
    }

    public static int[] f3(Integer[] numArr, int i10) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return f90907f;
        }
        int[] iArr = new int[numArr.length];
        for (int i11 = 0; i11 < numArr.length; i11++) {
            Integer num = numArr[i11];
            iArr[i11] = num == null ? i10 : num.intValue();
        }
        return iArr;
    }

    public static double[] g(double[] dArr, int i10, double d10) {
        return (double[]) a(dArr, i10, Double.valueOf(d10), Double.TYPE);
    }

    public static int g0(double[] dArr, double d10, int i10, double d11) {
        if (v0(dArr)) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        double d12 = d10 - d11;
        double d13 = d10 + d11;
        while (i10 < dArr.length) {
            double d14 = dArr[i10];
            if (d14 >= d12 && d14 <= d13) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int g1(int[] iArr, int i10) {
        return h1(iArr, i10, Integer.MAX_VALUE);
    }

    public static int[] g2(int[] iArr, int i10) {
        int iJ0 = j0(iArr, i10);
        return iJ0 == -1 ? G(iArr) : N1(iArr, iJ0);
    }

    public static long[] g3(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return f90905d;
        }
        long[] jArr = new long[lArr.length];
        for (int i10 = 0; i10 < lArr.length; i10++) {
            jArr[i10] = lArr[i10].longValue();
        }
        return jArr;
    }

    public static float[] h(float[] fArr, float f10) {
        float[] fArr2 = (float[]) V(fArr, Float.TYPE);
        fArr2[fArr2.length - 1] = f10;
        return fArr2;
    }

    public static int h0(float[] fArr, float f10) {
        return i0(fArr, f10, 0);
    }

    public static int h1(int[] iArr, int i10, int i11) {
        if (iArr == null || i11 < 0) {
            return -1;
        }
        if (i11 >= iArr.length) {
            i11 = iArr.length - 1;
        }
        while (i11 >= 0) {
            if (i10 == iArr[i11]) {
                return i11;
            }
            i11--;
        }
        return -1;
    }

    public static long[] h2(long[] jArr, long j10) {
        int iL0 = l0(jArr, j10);
        return iL0 == -1 ? H(jArr) : O1(jArr, iL0);
    }

    public static long[] h3(Long[] lArr, long j10) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return f90905d;
        }
        long[] jArr = new long[lArr.length];
        for (int i10 = 0; i10 < lArr.length; i10++) {
            Long l10 = lArr[i10];
            jArr[i10] = l10 == null ? j10 : l10.longValue();
        }
        return jArr;
    }

    public static float[] i(float[] fArr, int i10, float f10) {
        return (float[]) a(fArr, i10, Float.valueOf(f10), Float.TYPE);
    }

    public static int i0(float[] fArr, float f10, int i10) {
        if (w0(fArr)) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < fArr.length) {
            if (f10 == fArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int i1(long[] jArr, long j10) {
        return j1(jArr, j10, Integer.MAX_VALUE);
    }

    public static <T> T[] i2(T[] tArr, Object obj) {
        int iN0 = n0(tArr, obj);
        return iN0 == -1 ? (T[]) I(tArr) : (T[]) P1(tArr, iN0);
    }

    public static short[] i3(Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return f90909h;
        }
        short[] sArr = new short[shArr.length];
        for (int i10 = 0; i10 < shArr.length; i10++) {
            sArr[i10] = shArr[i10].shortValue();
        }
        return sArr;
    }

    public static int[] j(int[] iArr, int i10) {
        int[] iArr2 = (int[]) V(iArr, Integer.TYPE);
        iArr2[iArr2.length - 1] = i10;
        return iArr2;
    }

    public static int j0(int[] iArr, int i10) {
        return k0(iArr, i10, 0);
    }

    public static int j1(long[] jArr, long j10, int i10) {
        if (jArr == null || i10 < 0) {
            return -1;
        }
        if (i10 >= jArr.length) {
            i10 = jArr.length - 1;
        }
        while (i10 >= 0) {
            if (j10 == jArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static short[] j2(short[] sArr, short s10) {
        int iP0 = p0(sArr, s10);
        return iP0 == -1 ? J(sArr) : Q1(sArr, iP0);
    }

    public static short[] j3(Short[] shArr, short s10) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return f90909h;
        }
        short[] sArr = new short[shArr.length];
        for (int i10 = 0; i10 < shArr.length; i10++) {
            Short sh = shArr[i10];
            sArr[i10] = sh == null ? s10 : sh.shortValue();
        }
        return sArr;
    }

    public static int[] k(int[] iArr, int i10, int i11) {
        return (int[]) a(iArr, i10, Integer.valueOf(i11), Integer.TYPE);
    }

    public static int k0(int[] iArr, int i10, int i11) {
        if (iArr == null) {
            return -1;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < iArr.length) {
            if (i10 == iArr[i11]) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int k1(Object[] objArr, Object obj) {
        return l1(objArr, obj, Integer.MAX_VALUE);
    }

    public static boolean[] k2(boolean[] zArr, boolean z10) {
        int iR0 = r0(zArr, z10);
        return iR0 == -1 ? K(zArr) : R1(zArr, iR0);
    }

    public static boolean[] k3(Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return f90917p;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i10 = 0; i10 < boolArr.length; i10++) {
            zArr[i10] = boolArr[i10].booleanValue();
        }
        return zArr;
    }

    public static long[] l(long[] jArr, int i10, long j10) {
        return (long[]) a(jArr, i10, Long.valueOf(j10), Long.TYPE);
    }

    public static int l0(long[] jArr, long j10) {
        return m0(jArr, j10, 0);
    }

    public static int l1(Object[] objArr, Object obj, int i10) {
        if (objArr == null || i10 < 0) {
            return -1;
        }
        if (i10 >= objArr.length) {
            i10 = objArr.length - 1;
        }
        if (obj == null) {
            while (i10 >= 0) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10--;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i10 >= 0) {
                if (obj.equals(objArr[i10])) {
                    return i10;
                }
                i10--;
            }
        }
        return -1;
    }

    public static byte[] l2(byte[] bArr, byte... bArr2) {
        if (t0(bArr) || t0(bArr2)) {
            return C(bArr);
        }
        HashMap map = new HashMap(bArr2.length);
        for (byte b10 : bArr2) {
            Byte bValueOf = Byte.valueOf(b10);
            MutableInt mutableInt = (MutableInt) map.get(bValueOf);
            if (mutableInt == null) {
                map.put(bValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Byte b11 = (Byte) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iA0 = a0(bArr, b11.byteValue(), i11);
                if (iA0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iA0));
                i10++;
                i11 = iA0 + 1;
            }
        }
        return T1(bArr, W(hashSet));
    }

    public static boolean[] l3(Boolean[] boolArr, boolean z10) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return f90917p;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i10 = 0; i10 < boolArr.length; i10++) {
            Boolean bool = boolArr[i10];
            zArr[i10] = bool == null ? z10 : bool.booleanValue();
        }
        return zArr;
    }

    public static long[] m(long[] jArr, long j10) {
        long[] jArr2 = (long[]) V(jArr, Long.TYPE);
        jArr2[jArr2.length - 1] = j10;
        return jArr2;
    }

    public static int m0(long[] jArr, long j10, int i10) {
        if (jArr == null) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < jArr.length) {
            if (j10 == jArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int m1(short[] sArr, short s10) {
        return n1(sArr, s10, Integer.MAX_VALUE);
    }

    public static char[] m2(char[] cArr, char... cArr2) {
        if (u0(cArr) || u0(cArr2)) {
            return D(cArr);
        }
        HashMap map = new HashMap(cArr2.length);
        for (char c10 : cArr2) {
            Character chValueOf = Character.valueOf(c10);
            MutableInt mutableInt = (MutableInt) map.get(chValueOf);
            if (mutableInt == null) {
                map.put(chValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Character ch = (Character) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iC0 = c0(cArr, ch.charValue(), i11);
                if (iC0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iC0));
                i10++;
                i11 = iC0 + 1;
            }
        }
        return U1(cArr, W(hashSet));
    }

    public static String m3(Object obj) {
        return n3(obj, "{}");
    }

    public static <T> T[] n(T[] tArr, int i10, T t10) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else {
            if (t10 == null) {
                throw new IllegalArgumentException("Array and element cannot both be null");
            }
            componentType = t10.getClass();
        }
        return (T[]) ((Object[]) a(tArr, i10, t10, componentType));
    }

    public static int n0(Object[] objArr, Object obj) {
        return o0(objArr, obj, 0);
    }

    public static int n1(short[] sArr, short s10, int i10) {
        if (sArr == null || i10 < 0) {
            return -1;
        }
        if (i10 >= sArr.length) {
            i10 = sArr.length - 1;
        }
        while (i10 >= 0) {
            if (s10 == sArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static double[] n2(double[] dArr, double... dArr2) {
        if (v0(dArr) || v0(dArr2)) {
            return E(dArr);
        }
        HashMap map = new HashMap(dArr2.length);
        for (double d10 : dArr2) {
            Double dValueOf = Double.valueOf(d10);
            MutableInt mutableInt = (MutableInt) map.get(dValueOf);
            if (mutableInt == null) {
                map.put(dValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Double d11 = (Double) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iF0 = f0(dArr, d11.doubleValue(), i11);
                if (iF0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iF0));
                i10++;
                i11 = iF0 + 1;
            }
        }
        return V1(dArr, W(hashSet));
    }

    public static String n3(Object obj, String str) {
        return obj == null ? str : new external.org.apache.commons.lang3.builder.g(obj, ToStringStyle.SIMPLE_STYLE).g(obj).toString();
    }

    public static <T> T[] o(T[] tArr, T t10) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass();
        } else {
            if (t10 == null) {
                throw new IllegalArgumentException("Arguments cannot both be null");
            }
            cls = t10.getClass();
        }
        T[] tArr2 = (T[]) ((Object[]) V(tArr, cls));
        tArr2[tArr2.length - 1] = t10;
        return tArr2;
    }

    public static int o0(Object[] objArr, Object obj, int i10) {
        if (objArr == null) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (obj == null) {
            while (i10 < objArr.length) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i10 < objArr.length) {
                if (obj.equals(objArr[i10])) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    public static int o1(boolean[] zArr, boolean z10) {
        return p1(zArr, z10, Integer.MAX_VALUE);
    }

    public static float[] o2(float[] fArr, float... fArr2) {
        if (w0(fArr) || w0(fArr2)) {
            return F(fArr);
        }
        HashMap map = new HashMap(fArr2.length);
        for (float f10 : fArr2) {
            Float fValueOf = Float.valueOf(f10);
            MutableInt mutableInt = (MutableInt) map.get(fValueOf);
            if (mutableInt == null) {
                map.put(fValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Float f11 = (Float) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iI0 = i0(fArr, f11.floatValue(), i11);
                if (iI0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iI0));
                i10++;
                i11 = iI0 + 1;
            }
        }
        return W1(fArr, W(hashSet));
    }

    public static short[] p(short[] sArr, int i10, short s10) {
        return (short[]) a(sArr, i10, Short.valueOf(s10), Short.TYPE);
    }

    public static int p0(short[] sArr, short s10) {
        return q0(sArr, s10, 0);
    }

    public static int p1(boolean[] zArr, boolean z10, int i10) {
        if (B0(zArr) || i10 < 0) {
            return -1;
        }
        if (i10 >= zArr.length) {
            i10 = zArr.length - 1;
        }
        while (i10 >= 0) {
            if (z10 == zArr[i10]) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public static int[] p2(int[] iArr, int... iArr2) {
        if (x0(iArr) || x0(iArr2)) {
            return G(iArr);
        }
        HashMap map = new HashMap(iArr2.length);
        for (int i10 : iArr2) {
            Integer numValueOf = Integer.valueOf(i10);
            MutableInt mutableInt = (MutableInt) map.get(numValueOf);
            if (mutableInt == null) {
                map.put(numValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Integer num = (Integer) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i11 = 0;
            int i12 = 0;
            while (i11 < iIntValue) {
                int iK0 = k0(iArr, num.intValue(), i12);
                if (iK0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iK0));
                i11++;
                i12 = iK0 + 1;
            }
        }
        return X1(iArr, W(hashSet));
    }

    public static short[] q(short[] sArr, short s10) {
        short[] sArr2 = (short[]) V(sArr, Short.TYPE);
        sArr2[sArr2.length - 1] = s10;
        return sArr2;
    }

    public static int q0(short[] sArr, short s10, int i10) {
        if (sArr == null) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < sArr.length) {
            if (s10 == sArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static byte[] q1(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? f90911j : bArr;
    }

    public static long[] q2(long[] jArr, long... jArr2) {
        if (y0(jArr) || y0(jArr2)) {
            return H(jArr);
        }
        HashMap map = new HashMap(jArr2.length);
        for (long j10 : jArr2) {
            Long lValueOf = Long.valueOf(j10);
            MutableInt mutableInt = (MutableInt) map.get(lValueOf);
            if (mutableInt == null) {
                map.put(lValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Long l10 = (Long) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iM0 = m0(jArr, l10.longValue(), i11);
                if (iM0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iM0));
                i10++;
                i11 = iM0 + 1;
            }
        }
        return Y1(jArr, W(hashSet));
    }

    public static boolean[] r(boolean[] zArr, int i10, boolean z10) {
        return (boolean[]) a(zArr, i10, Boolean.valueOf(z10), Boolean.TYPE);
    }

    public static int r0(boolean[] zArr, boolean z10) {
        return s0(zArr, z10, 0);
    }

    public static char[] r1(char[] cArr) {
        return (cArr == null || cArr.length == 0) ? f90919r : cArr;
    }

    public static <T> T[] r2(T[] tArr, T... tArr2) {
        if (z0(tArr) || z0(tArr2)) {
            return (T[]) I(tArr);
        }
        HashMap map = new HashMap(tArr2.length);
        for (T t10 : tArr2) {
            MutableInt mutableInt = (MutableInt) map.get(t10);
            if (mutableInt == null) {
                map.put(t10, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iO0 = o0(tArr, key, i11);
                if (iO0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iO0));
                i10++;
                i11 = iO0 + 1;
            }
        }
        return (T[]) Z1(tArr, W(hashSet));
    }

    public static boolean[] s(boolean[] zArr, boolean z10) {
        boolean[] zArr2 = (boolean[]) V(zArr, Boolean.TYPE);
        zArr2[zArr2.length - 1] = z10;
        return zArr2;
    }

    public static int s0(boolean[] zArr, boolean z10, int i10) {
        if (B0(zArr)) {
            return -1;
        }
        if (i10 < 0) {
            i10 = 0;
        }
        while (i10 < zArr.length) {
            if (z10 == zArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static double[] s1(double[] dArr) {
        return (dArr == null || dArr.length == 0) ? f90913l : dArr;
    }

    public static short[] s2(short[] sArr, short... sArr2) {
        if (A0(sArr) || A0(sArr2)) {
            return J(sArr);
        }
        HashMap map = new HashMap(sArr2.length);
        for (short s10 : sArr2) {
            Short shValueOf = Short.valueOf(s10);
            MutableInt mutableInt = (MutableInt) map.get(shValueOf);
            if (mutableInt == null) {
                map.put(shValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Short sh = (Short) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iQ0 = q0(sArr, sh.shortValue(), i11);
                if (iQ0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iQ0));
                i10++;
                i11 = iQ0 + 1;
            }
        }
        return a2(sArr, W(hashSet));
    }

    public static byte[] t(byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return C(bArr2);
        }
        if (bArr2 == null) {
            return C(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static boolean t0(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static float[] t1(float[] fArr) {
        return (fArr == null || fArr.length == 0) ? f90915n : fArr;
    }

    public static boolean[] t2(boolean[] zArr, boolean... zArr2) {
        if (B0(zArr) || B0(zArr2)) {
            return K(zArr);
        }
        HashMap map = new HashMap(zArr2.length);
        for (boolean z10 : zArr2) {
            Boolean boolValueOf = Boolean.valueOf(z10);
            MutableInt mutableInt = (MutableInt) map.get(boolValueOf);
            if (mutableInt == null) {
                map.put(boolValueOf, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            Boolean bool = (Boolean) entry.getKey();
            int iIntValue = ((MutableInt) entry.getValue()).intValue();
            int i10 = 0;
            int i11 = 0;
            while (i10 < iIntValue) {
                int iS0 = s0(zArr, bool.booleanValue(), i11);
                if (iS0 < 0) {
                    break;
                }
                hashSet.add(Integer.valueOf(iS0));
                i10++;
                i11 = iS0 + 1;
            }
        }
        return b2(zArr, W(hashSet));
    }

    public static char[] u(char[] cArr, char... cArr2) {
        if (cArr == null) {
            return D(cArr2);
        }
        if (cArr2 == null) {
            return D(cArr);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static boolean u0(char[] cArr) {
        return cArr == null || cArr.length == 0;
    }

    public static int[] u1(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? f90907f : iArr;
    }

    public static void u2(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            byte b10 = bArr[length];
            bArr[length] = bArr[i10];
            bArr[i10] = b10;
            length--;
        }
    }

    public static double[] v(double[] dArr, double... dArr2) {
        if (dArr == null) {
            return E(dArr2);
        }
        if (dArr2 == null) {
            return E(dArr);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    public static boolean v0(double[] dArr) {
        return dArr == null || dArr.length == 0;
    }

    public static long[] v1(long[] jArr) {
        return (jArr == null || jArr.length == 0) ? f90905d : jArr;
    }

    public static void v2(char[] cArr) {
        if (cArr == null) {
            return;
        }
        int length = cArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            char c10 = cArr[length];
            cArr[length] = cArr[i10];
            cArr[i10] = c10;
            length--;
        }
    }

    public static float[] w(float[] fArr, float... fArr2) {
        if (fArr == null) {
            return F(fArr2);
        }
        if (fArr2 == null) {
            return F(fArr);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    public static boolean w0(float[] fArr) {
        return fArr == null || fArr.length == 0;
    }

    public static Boolean[] w1(Boolean[] boolArr) {
        return (boolArr == null || boolArr.length == 0) ? f90918q : boolArr;
    }

    public static void w2(double[] dArr) {
        if (dArr == null) {
            return;
        }
        int length = dArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            double d10 = dArr[length];
            dArr[length] = dArr[i10];
            dArr[i10] = d10;
            length--;
        }
    }

    public static int[] x(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return G(iArr2);
        }
        if (iArr2 == null) {
            return G(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    public static boolean x0(int[] iArr) {
        return iArr == null || iArr.length == 0;
    }

    public static Byte[] x1(Byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? f90912k : bArr;
    }

    public static void x2(float[] fArr) {
        if (fArr == null) {
            return;
        }
        int length = fArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            float f10 = fArr[length];
            fArr[length] = fArr[i10];
            fArr[i10] = f10;
            length--;
        }
    }

    public static long[] y(long[] jArr, long... jArr2) {
        if (jArr == null) {
            return H(jArr2);
        }
        if (jArr2 == null) {
            return H(jArr);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
        System.arraycopy(jArr2, 0, jArr3, jArr.length, jArr2.length);
        return jArr3;
    }

    public static boolean y0(long[] jArr) {
        return jArr == null || jArr.length == 0;
    }

    public static Character[] y1(Character[] chArr) {
        return (chArr == null || chArr.length == 0) ? f90920s : chArr;
    }

    public static void y2(int[] iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            int i11 = iArr[length];
            iArr[length] = iArr[i10];
            iArr[i10] = i11;
            length--;
        }
    }

    public static <T> T[] z(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) I(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) I(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e10) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (componentType.isAssignableFrom(componentType2)) {
                throw e10;
            }
            throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e10);
        }
    }

    public static boolean z0(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static Double[] z1(Double[] dArr) {
        return (dArr == null || dArr.length == 0) ? f90914m : dArr;
    }

    public static void z2(long[] jArr) {
        if (jArr == null) {
            return;
        }
        int length = jArr.length - 1;
        for (int i10 = 0; length > i10; i10++) {
            long j10 = jArr[length];
            jArr[length] = jArr[i10];
            jArr[i10] = j10;
            length--;
        }
    }
}
