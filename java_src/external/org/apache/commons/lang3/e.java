package external.org.apache.commons.lang3;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f90949a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f90950b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f90951c = 8192;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f90952d = Pattern.compile("\\s+");

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Throwable f90953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Method f90954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Pattern f90955c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Throwable f90956d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Method f90957e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Object f90958f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final Pattern f90959g;

        static {
            Object obj;
            Exception exc;
            Method method;
            Method method2;
            Pattern patternCompile = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
            f90955c = patternCompile;
            f90959g = patternCompile;
            Exception exc2 = null;
            try {
                Class<?> clsLoadClass = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer$Form");
                obj = clsLoadClass.getField("NFD").get(null);
                try {
                    method = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer").getMethod("normalize", CharSequence.class, clsLoadClass);
                    exc = null;
                    method2 = null;
                } catch (Exception e10) {
                    e = e10;
                    try {
                        method2 = Thread.currentThread().getContextClassLoader().loadClass("sun.text.Normalizer").getMethod("decompose", String.class, Boolean.TYPE, Integer.TYPE);
                        method = null;
                        exc = null;
                    } catch (Exception e11) {
                        exc = e11;
                        method = null;
                        method2 = null;
                    }
                    exc2 = e;
                }
            } catch (Exception e12) {
                e = e12;
                obj = null;
            }
            f90956d = exc2;
            f90958f = obj;
            f90957e = method;
            f90953a = exc;
            f90954b = method2;
        }

        private a() {
        }
    }

    public static String A(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        int iT = T(str, str2);
        return iT == -1 ? "" : str2.substring(iT);
    }

    public static int A0(CharSequence charSequence, CharSequence charSequence2, int i10) {
        if (charSequence != null && charSequence2 != null) {
            if (i10 > charSequence.length() - charSequence2.length()) {
                i10 = charSequence.length() - charSequence2.length();
            }
            if (i10 < 0) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i10;
            }
            while (i10 >= 0) {
                if (b.e(charSequence, true, i10, charSequence2, 0, charSequence2.length())) {
                    return i10;
                }
                i10--;
            }
        }
        return -1;
    }

    public static String[] A1(String str, char c10) {
        return D1(str, c10, true);
    }

    public static boolean B(CharSequence charSequence, CharSequence charSequence2) {
        return C(charSequence, charSequence2, false);
    }

    public static int B0(CharSequence charSequence, CharSequence charSequence2, int i10) {
        return M0(charSequence, charSequence2, i10, true);
    }

    public static String[] B1(String str, String str2) {
        return E1(str, str2, -1, true);
    }

    private static boolean C(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return b.e(charSequence, z10, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length());
    }

    public static String C0(String str, int i10) {
        if (str == null) {
            return null;
        }
        if (i10 < 0) {
            return "";
        }
        return str.length() <= i10 ? str : str.substring(0, i10);
    }

    public static String[] C1(String str, String str2, int i10) {
        return E1(str, str2, i10, true);
    }

    public static boolean D(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!f0(charSequence) && !external.org.apache.commons.lang3.a.z0(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (B(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String D0(String str, int i10) {
        return E0(str, i10, ' ');
    }

    private static String[] D1(String str, char c10, boolean z10) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f90904c;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i11 = 0;
        while (i10 < length) {
            if (str.charAt(i10) == c10) {
                if (z11 || z10) {
                    arrayList.add(str.substring(i11, i10));
                    z11 = false;
                    z12 = true;
                }
                i11 = i10 + 1;
                i10 = i11;
            } else {
                i10++;
                z11 = true;
                z12 = false;
            }
        }
        if (z11 || (z10 && z12)) {
            arrayList.add(str.substring(i11, i10));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean E(CharSequence charSequence, CharSequence charSequence2) {
        return C(charSequence, charSequence2, true);
    }

    public static String E0(String str, int i10, char c10) {
        if (str == null) {
            return null;
        }
        int length = i10 - str.length();
        if (length <= 0) {
            return str;
        }
        return length > 8192 ? F0(str, i10, String.valueOf(c10)) : W0(c10, length).concat(str);
    }

    private static String[] E1(String str, String str2, int i10, boolean z10) {
        int i11;
        boolean z11;
        boolean z12;
        int i12;
        int i13;
        boolean z13;
        boolean z14;
        int i14;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f90904c;
        }
        ArrayList arrayList = new ArrayList();
        if (str2 == null) {
            i13 = 0;
            z13 = false;
            z14 = false;
            i14 = 0;
            int i15 = 1;
            while (i13 < length) {
                if (Character.isWhitespace(str.charAt(i13))) {
                    if (z13 || z10) {
                        int i16 = i15 + 1;
                        if (i15 == i10) {
                            i13 = length;
                            z14 = false;
                        } else {
                            z14 = true;
                        }
                        arrayList.add(str.substring(i14, i13));
                        i15 = i16;
                        z13 = false;
                    }
                    i14 = i13 + 1;
                    i13 = i14;
                } else {
                    i13++;
                    z13 = true;
                    z14 = false;
                }
            }
        } else {
            if (str2.length() == 1) {
                char cCharAt = str2.charAt(0);
                i11 = 0;
                z11 = false;
                z12 = false;
                i12 = 0;
                int i17 = 1;
                while (i11 < length) {
                    if (str.charAt(i11) == cCharAt) {
                        if (z11 || z10) {
                            int i18 = i17 + 1;
                            if (i17 == i10) {
                                i11 = length;
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            arrayList.add(str.substring(i12, i11));
                            i17 = i18;
                            z11 = false;
                        }
                        i12 = i11 + 1;
                        i11 = i12;
                    } else {
                        i11++;
                        z11 = true;
                        z12 = false;
                    }
                }
            } else {
                i11 = 0;
                z11 = false;
                z12 = false;
                i12 = 0;
                int i19 = 1;
                while (i11 < length) {
                    if (str2.indexOf(str.charAt(i11)) >= 0) {
                        if (z11 || z10) {
                            int i20 = i19 + 1;
                            if (i19 == i10) {
                                i11 = length;
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            arrayList.add(str.substring(i12, i11));
                            i19 = i20;
                            z11 = false;
                        }
                        i12 = i11 + 1;
                        i11 = i12;
                    } else {
                        i11++;
                        z11 = true;
                        z12 = false;
                    }
                }
            }
            i13 = i11;
            z13 = z11;
            z14 = z12;
            i14 = i12;
        }
        if (z13 || (z10 && z14)) {
            arrayList.add(str.substring(i14, i13));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean F(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null) {
            return charSequence2 == null;
        }
        return charSequence.equals(charSequence2);
    }

    public static String F0(String str, int i10, String str2) {
        if (str == null) {
            return null;
        }
        if (f0(str2)) {
            str2 = " ";
        }
        int length = str2.length();
        int length2 = i10 - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return E0(str, i10, str2.charAt(0));
        }
        if (length2 == length) {
            return str2.concat(str);
        }
        if (length2 < length) {
            return str2.substring(0, length2).concat(str);
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i11 = 0; i11 < length2; i11++) {
            cArr[i11] = charArray[i11 % length];
        }
        return new String(cArr).concat(str);
    }

    public static boolean F1(CharSequence charSequence, CharSequence charSequence2) {
        return G1(charSequence, charSequence2, false);
    }

    public static boolean G(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        return b.e(charSequence, true, 0, charSequence2, 0, Math.max(charSequence.length(), charSequence2.length()));
    }

    public static int G0(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    private static boolean G1(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return b.e(charSequence, z10, 0, charSequence2, 0, charSequence2.length());
    }

    public static String H(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        int iU = U(strArr);
        if (iU != -1) {
            return iU == 0 ? "" : strArr[0].substring(0, iU);
        }
        String str = strArr[0];
        return str == null ? "" : str;
    }

    public static String H0(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    public static boolean H1(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!f0(charSequence) && !external.org.apache.commons.lang3.a.z0(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (F1(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int I(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        if (length > length2) {
            length2 = charSequence.length();
            length = length2;
        } else {
            charSequence2 = charSequence;
            charSequence = charSequence2;
        }
        int i10 = length + 1;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        for (int i11 = 0; i11 <= length; i11++) {
            iArr[i11] = i11;
        }
        int i12 = 1;
        while (i12 <= length2) {
            char cCharAt = charSequence.charAt(i12 - 1);
            iArr2[0] = i12;
            for (int i13 = 1; i13 <= length; i13++) {
                int i14 = i13 - 1;
                iArr2[i13] = Math.min(Math.min(iArr2[i14] + 1, iArr[i13] + 1), iArr[i14] + (charSequence2.charAt(i14) == cCharAt ? 0 : 1));
            }
            i12++;
            int[] iArr3 = iArr;
            iArr = iArr2;
            iArr2 = iArr3;
        }
        return iArr[length];
    }

    public static String I0(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    public static boolean I1(CharSequence charSequence, CharSequence charSequence2) {
        return G1(charSequence, charSequence2, true);
    }

    public static int J(CharSequence charSequence, CharSequence charSequence2, int i10) {
        int i11;
        int length;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        if (length2 == 0) {
            if (length3 <= i10) {
                return length3;
            }
            return -1;
        }
        if (length3 == 0) {
            if (length2 <= i10) {
                return length2;
            }
            return -1;
        }
        if (length2 > length3) {
            length = charSequence.length();
            i11 = length3;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i11 = length2;
            length = length3;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i12 = i11 + 1;
        int[] iArr = new int[i12];
        int[] iArr2 = new int[i12];
        int iMin = Math.min(i11, i10) + 1;
        char c10 = 0;
        for (int i13 = 0; i13 < iMin; i13++) {
            iArr[i13] = i13;
        }
        int i14 = Integer.MAX_VALUE;
        Arrays.fill(iArr, iMin, i12, Integer.MAX_VALUE);
        Arrays.fill(iArr2, Integer.MAX_VALUE);
        int i15 = 1;
        while (i15 <= length) {
            char cCharAt = charSequence4.charAt(i15 - 1);
            iArr2[c10] = i15;
            int iMax = Math.max(1, i15 - i10);
            int iMin2 = Math.min(i11, i15 + i10);
            if (iMax > iMin2) {
                return -1;
            }
            if (iMax > 1) {
                iArr2[iMax - 1] = i14;
            }
            while (iMax <= iMin2) {
                int i16 = iMax - 1;
                if (charSequence3.charAt(i16) == cCharAt) {
                    iArr2[iMax] = iArr[i16];
                } else {
                    iArr2[iMax] = Math.min(Math.min(iArr2[i16], iArr[iMax]), iArr[i16]) + 1;
                }
                iMax++;
            }
            i15++;
            c10 = 0;
            i14 = Integer.MAX_VALUE;
            int[] iArr3 = iArr2;
            iArr2 = iArr;
            iArr = iArr3;
        }
        int i17 = iArr[i11];
        if (i17 <= i10) {
            return i17;
        }
        return -1;
    }

    public static String J0(String str, int i10, int i11) {
        if (str == null) {
            return null;
        }
        if (i11 < 0 || i10 > str.length()) {
            return "";
        }
        if (i10 < 0) {
            i10 = 0;
        }
        int i12 = i11 + i10;
        return str.length() <= i12 ? str.substring(i10) : str.substring(i10, i12);
    }

    public static String J1(String str) {
        return K1(str, null);
    }

    public static int K(CharSequence charSequence, int i10) {
        if (f0(charSequence)) {
            return -1;
        }
        return b.a(charSequence, i10, 0);
    }

    public static String K0(String str) {
        if (str == null) {
            return null;
        }
        return f90952d.matcher(d2(str)).replaceAll(" ");
    }

    public static String K1(String str, String str2) {
        return f0(str) ? str : O1(P1(str, str2), str2);
    }

    public static int L(CharSequence charSequence, int i10, int i11) {
        if (f0(charSequence)) {
            return -1;
        }
        return b.a(charSequence, i10, i11);
    }

    public static int L0(CharSequence charSequence, CharSequence charSequence2, int i10) {
        return M0(charSequence, charSequence2, i10, false);
    }

    public static String L1(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (a.f90957e != null) {
                return Q0(str);
            }
            if (a.f90954b != null) {
                return R0(str);
            }
            throw new UnsupportedOperationException("The stripAccents(CharSequence) method requires at least Java6, but got: " + a.f90956d + "; or a Sun JVM: " + a.f90953a);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("IllegalAccessException occurred", e10);
        } catch (IllegalArgumentException e11) {
            throw new RuntimeException("IllegalArgumentException occurred", e11);
        } catch (SecurityException e12) {
            throw new RuntimeException("SecurityException occurred", e12);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException("InvocationTargetException occurred", e13);
        }
    }

    public static int M(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return b.b(charSequence, charSequence2, 0);
    }

    private static int M0(CharSequence charSequence, CharSequence charSequence2, int i10, boolean z10) {
        int length = -1;
        if (charSequence != null && charSequence2 != null && i10 > 0) {
            int i11 = 0;
            if (charSequence2.length() == 0) {
                if (z10) {
                    return charSequence.length();
                }
                return 0;
            }
            length = z10 ? charSequence.length() : -1;
            do {
                length = z10 ? b.d(charSequence, charSequence2, length - 1) : b.b(charSequence, charSequence2, length + 1);
                if (length < 0) {
                    return length;
                }
                i11++;
            } while (i11 < i10);
        }
        return length;
    }

    public static String[] M1(String... strArr) {
        return N1(strArr, null);
    }

    public static int N(CharSequence charSequence, CharSequence charSequence2, int i10) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return b.b(charSequence, charSequence2, i10);
    }

    public static String N0(String str, String str2, int i10, int i11) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        int length = str.length();
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 > length) {
            i10 = length;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        if (i11 > length) {
            i11 = length;
        }
        if (i10 > i11) {
            int i12 = i11;
            i11 = i10;
            i10 = i12;
        }
        StringBuilder sb2 = new StringBuilder(((length + i10) - i11) + str2.length() + 1);
        sb2.append(str.substring(0, i10));
        sb2.append(str2);
        sb2.append(str.substring(i11));
        return sb2.toString();
    }

    public static String[] N1(String[] strArr, String str) {
        int length;
        if (strArr == null || (length = strArr.length) == 0) {
            return strArr;
        }
        String[] strArr2 = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr2[i10] = K1(strArr[i10], str);
        }
        return strArr2;
    }

    public static int O(CharSequence charSequence, String str) {
        if (f0(charSequence) || f0(str)) {
            return -1;
        }
        return P(charSequence, str.toCharArray());
    }

    public static String O0(String str, char c10) {
        if (f0(str) || str.indexOf(c10) == -1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i10 = 0;
        for (char c11 : charArray) {
            if (c11 != c10) {
                charArray[i10] = c11;
                i10++;
            }
        }
        return new String(charArray, 0, i10);
    }

    public static String O1(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        if (str2 == null) {
            while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
        } else {
            if (str2.length() == 0) {
                return str;
            }
            while (length != 0 && str2.indexOf(str.charAt(length - 1)) != -1) {
                length--;
            }
        }
        return str.substring(0, length);
    }

    public static int P(CharSequence charSequence, char... cArr) {
        if (!f0(charSequence) && !external.org.apache.commons.lang3.a.u0(cArr)) {
            int length = charSequence.length();
            int i10 = length - 1;
            int length2 = cArr.length;
            int i11 = length2 - 1;
            for (int i12 = 0; i12 < length; i12++) {
                char cCharAt = charSequence.charAt(i12);
                for (int i13 = 0; i13 < length2; i13++) {
                    if (cArr[i13] == cCharAt && (i12 >= i10 || i13 >= i11 || !Character.isHighSurrogate(cCharAt) || cArr[i13 + 1] == charSequence.charAt(i12 + 1))) {
                        return i12;
                    }
                }
            }
        }
        return -1;
    }

    public static String P0(String str, String str2) {
        return (f0(str) || f0(str2)) ? str : a1(str, str2, "", -1);
    }

    public static String P1(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int i10 = 0;
        if (str2 == null) {
            while (i10 != length && Character.isWhitespace(str.charAt(i10))) {
                i10++;
            }
        } else {
            if (str2.length() == 0) {
                return str;
            }
            while (i10 != length && str2.indexOf(str.charAt(i10)) != -1) {
                i10++;
            }
        }
        return str.substring(i10);
    }

    public static int Q(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iB;
        if (charSequence == null || charSequenceArr == null) {
            return -1;
        }
        int i10 = Integer.MAX_VALUE;
        for (CharSequence charSequence2 : charSequenceArr) {
            if (charSequence2 != null && (iB = b.b(charSequence, charSequence2, 0)) != -1 && iB < i10) {
                i10 = iB;
            }
        }
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10;
    }

    private static String Q0(CharSequence charSequence) throws IllegalAccessException, InvocationTargetException {
        if (a.f90957e == null || a.f90958f == null) {
            throw new IllegalStateException("java.text.Normalizer is not available", a.f90956d);
        }
        return a.f90959g.matcher((String) a.f90957e.invoke(null, charSequence, a.f90958f)).replaceAll("");
    }

    public static String Q1(String str) {
        return str == null ? "" : K1(str, null);
    }

    public static int R(CharSequence charSequence, CharSequence charSequence2) {
        if (!f0(charSequence) && !f0(charSequence2)) {
            int length = charSequence.length();
            int i10 = 0;
            while (i10 < length) {
                char cCharAt = charSequence.charAt(i10);
                boolean z10 = b.a(charSequence2, cCharAt, 0) >= 0;
                int i11 = i10 + 1;
                if (i11 < length && Character.isHighSurrogate(cCharAt)) {
                    char cCharAt2 = charSequence.charAt(i11);
                    if (z10 && b.a(charSequence2, cCharAt2, 0) < 0) {
                        return i10;
                    }
                } else if (!z10) {
                    return i10;
                }
                i10 = i11;
            }
        }
        return -1;
    }

    private static String R0(CharSequence charSequence) throws IllegalAccessException, InvocationTargetException {
        if (a.f90954b != null) {
            return a.f90955c.matcher((String) a.f90954b.invoke(null, charSequence, Boolean.FALSE, 0)).replaceAll("");
        }
        throw new IllegalStateException("sun.text.Normalizer is not available", a.f90953a);
    }

    public static String R1(String str) {
        if (str == null) {
            return null;
        }
        String strK1 = K1(str, null);
        if (strK1.length() == 0) {
            return null;
        }
        return strK1;
    }

    public static int S(CharSequence charSequence, char... cArr) {
        if (!f0(charSequence) && !external.org.apache.commons.lang3.a.u0(cArr)) {
            int length = charSequence.length();
            int i10 = length - 1;
            int length2 = cArr.length;
            int i11 = length2 - 1;
            for (int i12 = 0; i12 < length; i12++) {
                char cCharAt = charSequence.charAt(i12);
                for (int i13 = 0; i13 < length2; i13++) {
                    if (cArr[i13] != cCharAt || (i12 < i10 && i13 < i11 && Character.isHighSurrogate(cCharAt) && cArr[i13 + 1] != charSequence.charAt(i12 + 1))) {
                    }
                }
                return i12;
            }
        }
        return -1;
    }

    public static String S0(String str, String str2) {
        return (f0(str) || f0(str2) || !str.endsWith(str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String S1(String str, int i10) {
        if (str == null) {
            return null;
        }
        if (i10 < 0) {
            i10 += str.length();
        }
        if (i10 < 0) {
            i10 = 0;
        }
        return i10 > str.length() ? "" : str.substring(i10);
    }

    public static int T(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return -1;
        }
        int i10 = 0;
        if (charSequence != null && charSequence2 != null) {
            while (i10 < charSequence.length() && i10 < charSequence2.length() && charSequence.charAt(i10) == charSequence2.charAt(i10)) {
                i10++;
            }
            if (i10 >= charSequence2.length() && i10 >= charSequence.length()) {
                return -1;
            }
        }
        return i10;
    }

    public static String T0(String str, String str2) {
        return (f0(str) || f0(str2) || !E(str, str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String T1(String str, int i10, int i11) {
        if (str == null) {
            return null;
        }
        if (i11 < 0) {
            i11 += str.length();
        }
        if (i10 < 0) {
            i10 += str.length();
        }
        if (i11 > str.length()) {
            i11 = str.length();
        }
        if (i10 > i11) {
            return "";
        }
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        return str.substring(i10, i11);
    }

    public static int U(CharSequence... charSequenceArr) {
        if (charSequenceArr != null && charSequenceArr.length > 1) {
            int length = charSequenceArr.length;
            int iMin = Integer.MAX_VALUE;
            boolean z10 = true;
            int iMax = 0;
            boolean z11 = false;
            for (int i10 = 0; i10 < length; i10++) {
                CharSequence charSequence = charSequenceArr[i10];
                if (charSequence == null) {
                    iMin = 0;
                    z11 = true;
                } else {
                    iMin = Math.min(charSequence.length(), iMin);
                    iMax = Math.max(charSequenceArr[i10].length(), iMax);
                    z10 = false;
                }
            }
            if (!z10 && (iMax != 0 || z11)) {
                if (iMin == 0) {
                    return 0;
                }
                int i11 = -1;
                for (int i12 = 0; i12 < iMin; i12++) {
                    char cCharAt = charSequenceArr[0].charAt(i12);
                    for (int i13 = 1; i13 < length; i13++) {
                        if (charSequenceArr[i13].charAt(i12) != cCharAt) {
                            i11 = i12;
                            break;
                        }
                    }
                    if (i11 != -1) {
                        break;
                    }
                }
                return (i11 != -1 || iMin == iMax) ? i11 : iMin;
            }
        }
        return -1;
    }

    public static String U0(String str, String str2) {
        return (f0(str) || f0(str2) || !str.startsWith(str2)) ? str : str.substring(str2.length());
    }

    public static String U1(String str, String str2) {
        int iIndexOf;
        if (f0(str)) {
            return str;
        }
        return (str2 == null || (iIndexOf = str.indexOf(str2)) == -1) ? "" : str.substring(iIndexOf + str2.length());
    }

    public static int V(CharSequence charSequence, CharSequence charSequence2) {
        return W(charSequence, charSequence2, 0);
    }

    public static String V0(String str, String str2) {
        return (f0(str) || f0(str2) || !I1(str, str2)) ? str : str.substring(str2.length());
    }

    public static String V1(String str, String str2) {
        int iLastIndexOf;
        if (f0(str)) {
            return str;
        }
        return (f0(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1 || iLastIndexOf == str.length() - str2.length()) ? "" : str.substring(iLastIndexOf + str2.length());
    }

    public static int W(CharSequence charSequence, CharSequence charSequence2, int i10) {
        if (charSequence != null && charSequence2 != null) {
            if (i10 < 0) {
                i10 = 0;
            }
            int length = (charSequence.length() - charSequence2.length()) + 1;
            if (i10 > length) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i10;
            }
            while (i10 < length) {
                if (b.e(charSequence, true, i10, charSequence2, 0, charSequence2.length())) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    public static String W0(char c10, int i10) {
        char[] cArr = new char[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            cArr[i11] = c10;
        }
        return new String(cArr);
    }

    public static String W1(String str, String str2) {
        if (f0(str) || str2 == null) {
            return str;
        }
        if (str2.length() == 0) {
            return "";
        }
        int iIndexOf = str.indexOf(str2);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    public static boolean X(CharSequence charSequence) {
        if (charSequence == null || f0(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isLowerCase(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String X0(String str, int i10) {
        if (str == null) {
            return null;
        }
        if (i10 <= 0) {
            return "";
        }
        int length = str.length();
        if (i10 == 1 || length == 0) {
            return str;
        }
        if (length == 1 && i10 <= 8192) {
            return W0(str.charAt(0), i10);
        }
        int i11 = length * i10;
        if (length == 1) {
            return W0(str.charAt(0), i10);
        }
        if (length != 2) {
            StringBuilder sb2 = new StringBuilder(i11);
            for (int i12 = 0; i12 < i10; i12++) {
                sb2.append(str);
            }
            return sb2.toString();
        }
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(1);
        char[] cArr = new char[i11];
        for (int i13 = (i10 * 2) - 2; i13 >= 0; i13 = (i13 - 1) - 1) {
            cArr[i13] = cCharAt;
            cArr[i13 + 1] = cCharAt2;
        }
        return new String(cArr);
    }

    public static String X1(String str, String str2) {
        int iLastIndexOf;
        return (f0(str) || f0(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1) ? str : str.substring(0, iLastIndexOf);
    }

    public static boolean Y(CharSequence charSequence) {
        if (charSequence == null || f0(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isUpperCase(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String Y0(String str, String str2, int i10) {
        if (str == null || str2 == null) {
            return X0(str, i10);
        }
        return S0(X0(str + str2, i10), str2);
    }

    public static String Y1(String str, String str2) {
        return Z1(str, str2, str2);
    }

    public static boolean Z(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isLetter(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String Z0(String str, String str2, String str3) {
        return a1(str, str2, str3, -1);
    }

    public static String Z1(String str, String str2, String str3) {
        int iIndexOf;
        int iIndexOf2;
        if (str == null || str2 == null || str3 == null || (iIndexOf = str.indexOf(str2)) == -1 || (iIndexOf2 = str.indexOf(str3, str2.length() + iIndexOf)) == -1) {
            return null;
        }
        return str.substring(iIndexOf + str2.length(), iIndexOf2);
    }

    public static String a(String str, int i10) {
        return b(str, 0, i10);
    }

    public static boolean a0(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isLetter(charSequence.charAt(i10)) && charSequence.charAt(i10) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String a1(String str, String str2, String str3, int i10) {
        int i11;
        if (f0(str) || f0(str2) || str3 == null || i10 == 0) {
            return str;
        }
        int i12 = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf == -1) {
            return str;
        }
        int length = str2.length();
        int length2 = str3.length() - length;
        if (length2 < 0) {
            length2 = 0;
        }
        if (i10 < 0) {
            i11 = 16;
        } else {
            i11 = 64;
            if (i10 <= 64) {
                i11 = i10;
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (length2 * i11));
        while (iIndexOf != -1) {
            sb2.append(str.substring(i12, iIndexOf));
            sb2.append(str3);
            i12 = iIndexOf + length;
            i10--;
            if (i10 == 0) {
                break;
            }
            iIndexOf = str.indexOf(str2, i12);
        }
        sb2.append(str.substring(i12));
        return sb2.toString();
    }

    public static String[] a2(String str, String str2, String str3) {
        int iIndexOf;
        int i10;
        int iIndexOf2;
        if (str == null || f0(str2) || f0(str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f90904c;
        }
        int length2 = str3.length();
        int length3 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < length - length2 && (iIndexOf = str.indexOf(str2, i11)) >= 0 && (iIndexOf2 = str.indexOf(str3, (i10 = iIndexOf + length3))) >= 0) {
            arrayList.add(str.substring(i10, iIndexOf2));
            i11 = iIndexOf2 + length2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(String str, int i10, int i11) {
        if (str == null) {
            return null;
        }
        if (i11 < 4) {
            throw new IllegalArgumentException("Minimum abbreviation width is 4");
        }
        if (str.length() <= i11) {
            return str;
        }
        if (i10 > str.length()) {
            i10 = str.length();
        }
        int i12 = i11 - 3;
        if (str.length() - i10 < i12) {
            i10 = str.length() - i12;
        }
        if (i10 <= 4) {
            return str.substring(0, i12) + "...";
        }
        if (i11 < 7) {
            throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
        }
        if ((i11 + i10) - 3 < str.length()) {
            return "..." + a(str.substring(i10), i12);
        }
        return "..." + str.substring(str.length() - i12);
    }

    public static boolean b0(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String b1(String str, char c10, char c11) {
        if (str == null) {
            return null;
        }
        return str.replace(c10, c11);
    }

    public static String b2(String str) {
        if (f0(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (Character.isUpperCase(c10)) {
                charArray[i10] = Character.toLowerCase(c10);
            } else if (Character.isTitleCase(c10)) {
                charArray[i10] = Character.toLowerCase(c10);
            } else if (Character.isLowerCase(c10)) {
                charArray[i10] = Character.toUpperCase(c10);
            }
        }
        return new String(charArray);
    }

    public static String c(String str, String str2, int i10) {
        if (f0(str) || f0(str2) || i10 >= str.length() || i10 < str2.length() + 2) {
            return str;
        }
        int length = i10 - str2.length();
        int i11 = length / 2;
        int i12 = (length % 2) + i11;
        int length2 = str.length() - i11;
        StringBuilder sb2 = new StringBuilder(i10);
        sb2.append(str.substring(0, i12));
        sb2.append(str2);
        sb2.append(str.substring(length2));
        return sb2.toString();
    }

    public static boolean c0(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i10)) && charSequence.charAt(i10) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String c1(String str, String str2, String str3) {
        if (f0(str) || f0(str2)) {
            return str;
        }
        if (str3 == null) {
            str3 = "";
        }
        int length = str3.length();
        int length2 = str.length();
        StringBuilder sb2 = new StringBuilder(length2);
        boolean z10 = false;
        for (int i10 = 0; i10 < length2; i10++) {
            char cCharAt = str.charAt(i10);
            int iIndexOf = str2.indexOf(cCharAt);
            if (iIndexOf >= 0) {
                if (iIndexOf < length) {
                    sb2.append(str3.charAt(iIndexOf));
                }
                z10 = true;
            } else {
                sb2.append(cCharAt);
            }
        }
        return z10 ? sb2.toString() : str;
    }

    public static String c2(byte[] bArr, String str) throws UnsupportedEncodingException {
        return str == null ? new String(bArr) : new String(bArr, str);
    }

    public static String d(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(length);
        sb2.append(Character.toTitleCase(str.charAt(0)));
        sb2.append(str.substring(1));
        return sb2.toString();
    }

    public static boolean d0(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!c.h(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String d1(String str, String[] strArr, String[] strArr2) {
        return e1(str, strArr, strArr2, false, 0);
    }

    public static String d2(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String e(String str, int i10) {
        return f(str, i10, ' ');
    }

    public static boolean e0(CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i10 = 0; i10 < length; i10++) {
                if (!Character.isWhitespace(charSequence.charAt(i10))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static String e1(String str, String[] strArr, String[] strArr2, boolean z10, int i10) {
        String str2;
        String str3;
        int length;
        String str4;
        if (str == null || str.length() == 0 || strArr == null || strArr.length == 0 || strArr2 == null || strArr2.length == 0) {
            return str;
        }
        if (i10 < 0) {
            throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
        }
        int length2 = strArr.length;
        int length3 = strArr2.length;
        if (length2 != length3) {
            throw new IllegalArgumentException("Search and Replace array lengths don't match: " + length2 + " vs " + length3);
        }
        boolean[] zArr = new boolean[length2];
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < length2; i13++) {
            if (!zArr[i13] && (str4 = strArr[i13]) != null && str4.length() != 0 && strArr2[i13] != null) {
                int iIndexOf = str.indexOf(strArr[i13]);
                if (iIndexOf == -1) {
                    zArr[i13] = true;
                } else if (i11 == -1 || iIndexOf < i11) {
                    i12 = i13;
                    i11 = iIndexOf;
                }
            }
        }
        if (i11 == -1) {
            return str;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < strArr.length; i15++) {
            if (strArr[i15] != null && (str3 = strArr2[i15]) != null && (length = str3.length() - strArr[i15].length()) > 0) {
                i14 += length * 3;
            }
        }
        StringBuilder sb2 = new StringBuilder(str.length() + Math.min(i14, str.length() / 5));
        int length4 = 0;
        while (i11 != -1) {
            while (length4 < i11) {
                sb2.append(str.charAt(length4));
                length4++;
            }
            sb2.append(strArr2[i12]);
            length4 = strArr[i12].length() + i11;
            i11 = -1;
            i12 = -1;
            for (int i16 = 0; i16 < length2; i16++) {
                if (!zArr[i16] && (str2 = strArr[i16]) != null && str2.length() != 0 && strArr2[i16] != null) {
                    int iIndexOf2 = str.indexOf(strArr[i16], length4);
                    if (iIndexOf2 == -1) {
                        zArr[i16] = true;
                    } else if (i11 == -1 || iIndexOf2 < i11) {
                        i12 = i16;
                        i11 = iIndexOf2;
                    }
                }
            }
        }
        int length5 = str.length();
        while (length4 < length5) {
            sb2.append(str.charAt(length4));
            length4++;
        }
        String string = sb2.toString();
        return !z10 ? string : e1(string, strArr, strArr2, z10, i10 - 1);
    }

    public static String e2(String str) {
        return str == null ? "" : str.trim();
    }

    public static String f(String str, int i10, char c10) {
        int length;
        int length2;
        return (str == null || i10 <= 0 || (length2 = i10 - (length = str.length())) <= 0) ? str : l1(E0(str, length + (length2 / 2), c10), i10, c10);
    }

    public static boolean f0(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String f1(String str, String[] strArr, String[] strArr2) {
        return e1(str, strArr, strArr2, true, strArr == null ? 0 : strArr.length);
    }

    public static String f2(String str) {
        String strD2 = d2(str);
        if (f0(strD2)) {
            return null;
        }
        return strD2;
    }

    public static String g(String str, int i10, String str2) {
        if (str == null || i10 <= 0) {
            return str;
        }
        if (f0(str2)) {
            str2 = " ";
        }
        int length = str.length();
        int i11 = i10 - length;
        return i11 <= 0 ? str : m1(F0(str, length + (i11 / 2), str2), i10, str2);
    }

    public static boolean g0(CharSequence charSequence) {
        return !e0(charSequence);
    }

    public static String g1(String str, String str2, String str3) {
        return a1(str, str2, str3, 1);
    }

    public static String g2(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(length);
        sb2.append(Character.toLowerCase(str.charAt(0)));
        sb2.append(str.substring(1));
        return sb2.toString();
    }

    public static String h(String str) {
        if (f0(str)) {
            return str;
        }
        if (str.length() == 1) {
            char cCharAt = str.charAt(0);
            return (cCharAt == '\r' || cCharAt == '\n') ? "" : str;
        }
        int length = str.length() - 1;
        char cCharAt2 = str.charAt(length);
        if (cCharAt2 == '\n') {
            if (str.charAt(length - 1) == '\r') {
                length--;
            }
        } else if (cCharAt2 != '\r') {
            length++;
        }
        return str.substring(0, length);
    }

    public static boolean h0(CharSequence charSequence) {
        return !f0(charSequence);
    }

    public static String h1(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String h2(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    @Deprecated
    public static String i(String str, String str2) {
        return S0(str, str2);
    }

    public static boolean i0(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isDigit(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String i1(String str, char c10) {
        if (str == null) {
            return null;
        }
        String[] strArrO1 = o1(str, c10);
        external.org.apache.commons.lang3.a.A2(strArrO1);
        return q0(strArrO1, c10);
    }

    public static String i2(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i10 = length - 1;
        String strSubstring = str.substring(0, i10);
        if (str.charAt(i10) == '\n') {
            int i11 = i10 - 1;
            if (strSubstring.charAt(i11) == '\r') {
                return strSubstring.substring(0, i11);
            }
        }
        return strSubstring;
    }

    public static boolean j0(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isDigit(charSequence.charAt(i10)) && charSequence.charAt(i10) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String j1(String str, int i10) {
        if (str == null) {
            return null;
        }
        if (i10 < 0) {
            return "";
        }
        return str.length() <= i10 ? str : str.substring(str.length() - i10);
    }

    public static boolean k(CharSequence charSequence, int i10) {
        return !f0(charSequence) && b.a(charSequence, i10, 0) >= 0;
    }

    public static boolean k0(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String k1(String str, int i10) {
        return l1(str, i10, ' ');
    }

    public static boolean l(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 == null || b.b(charSequence, charSequence2, 0) < 0) ? false : true;
    }

    public static String l0(Iterable<?> iterable, char c10) {
        if (iterable == null) {
            return null;
        }
        return n0(iterable.iterator(), c10);
    }

    public static String l1(String str, int i10, char c10) {
        if (str == null) {
            return null;
        }
        int length = i10 - str.length();
        if (length <= 0) {
            return str;
        }
        return length > 8192 ? m1(str, i10, String.valueOf(c10)) : str.concat(W0(c10, length));
    }

    public static boolean m(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2 == null) {
            return false;
        }
        return n(charSequence, b.g(charSequence2));
    }

    public static String m0(Iterable<?> iterable, String str) {
        if (iterable == null) {
            return null;
        }
        return o0(iterable.iterator(), str);
    }

    public static String m1(String str, int i10, String str2) {
        if (str == null) {
            return null;
        }
        if (f0(str2)) {
            str2 = " ";
        }
        int length = str2.length();
        int length2 = i10 - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return l1(str, i10, str2.charAt(0));
        }
        if (length2 == length) {
            return str.concat(str2);
        }
        if (length2 < length) {
            return str.concat(str2.substring(0, length2));
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i11 = 0; i11 < length2; i11++) {
            cArr[i11] = charArray[i11 % length];
        }
        return str.concat(new String(cArr));
    }

    public static boolean n(CharSequence charSequence, char... cArr) {
        if (!f0(charSequence) && !external.org.apache.commons.lang3.a.u0(cArr)) {
            int length = charSequence.length();
            int length2 = cArr.length;
            int i10 = length - 1;
            int i11 = length2 - 1;
            for (int i12 = 0; i12 < length; i12++) {
                char cCharAt = charSequence.charAt(i12);
                for (int i13 = 0; i13 < length2; i13++) {
                    if (cArr[i13] == cCharAt) {
                        if (!Character.isHighSurrogate(cCharAt) || i13 == i11) {
                            return true;
                        }
                        if (i12 < i10 && cArr[i13 + 1] == charSequence.charAt(i12 + 1)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static String n0(Iterator<?> it2, char c10) {
        if (it2 == null) {
            return null;
        }
        if (!it2.hasNext()) {
            return "";
        }
        Object next = it2.next();
        if (!it2.hasNext()) {
            return ObjectUtils.r(next);
        }
        StringBuilder sb2 = new StringBuilder(256);
        if (next != null) {
            sb2.append(next);
        }
        while (it2.hasNext()) {
            sb2.append(c10);
            Object next2 = it2.next();
            if (next2 != null) {
                sb2.append(next2);
            }
        }
        return sb2.toString();
    }

    public static String[] n1(String str) {
        return q1(str, null, -1);
    }

    public static boolean o(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            int length = charSequence2.length();
            int length2 = charSequence.length() - length;
            for (int i10 = 0; i10 <= length2; i10++) {
                if (b.e(charSequence, true, i10, charSequence2, 0, length)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String o0(Iterator<?> it2, String str) {
        if (it2 == null) {
            return null;
        }
        if (!it2.hasNext()) {
            return "";
        }
        Object next = it2.next();
        if (!it2.hasNext()) {
            return ObjectUtils.r(next);
        }
        StringBuilder sb2 = new StringBuilder(256);
        if (next != null) {
            sb2.append(next);
        }
        while (it2.hasNext()) {
            if (str != null) {
                sb2.append(str);
            }
            Object next2 = it2.next();
            if (next2 != null) {
                sb2.append(next2);
            }
        }
        return sb2.toString();
    }

    public static String[] o1(String str, char c10) {
        return D1(str, c10, false);
    }

    public static boolean p(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return true;
        }
        return q(charSequence, str.toCharArray());
    }

    public static <T> String p0(T... tArr) {
        return s0(tArr, null);
    }

    public static String[] p1(String str, String str2) {
        return E1(str, str2, -1, false);
    }

    public static boolean q(CharSequence charSequence, char... cArr) {
        if (charSequence != null && cArr != null) {
            int length = charSequence.length();
            int i10 = length - 1;
            int length2 = cArr.length;
            int i11 = length2 - 1;
            for (int i12 = 0; i12 < length; i12++) {
                char cCharAt = charSequence.charAt(i12);
                for (int i13 = 0; i13 < length2; i13++) {
                    if (cArr[i13] == cCharAt) {
                        if (!Character.isHighSurrogate(cCharAt) || i13 == i11) {
                            return false;
                        }
                        if (i12 < i10 && cArr[i13 + 1] == charSequence.charAt(i12 + 1)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static String q0(Object[] objArr, char c10) {
        if (objArr == null) {
            return null;
        }
        return r0(objArr, c10, 0, objArr.length);
    }

    public static String[] q1(String str, String str2, int i10) {
        return E1(str, str2, i10, false);
    }

    public static boolean r(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return false;
        }
        return s(charSequence, str.toCharArray());
    }

    public static String r0(Object[] objArr, char c10, int i10, int i11) {
        if (objArr == null) {
            return null;
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(i12 * 16);
        for (int i13 = i10; i13 < i11; i13++) {
            if (i13 > i10) {
                sb2.append(c10);
            }
            Object obj = objArr[i13];
            if (obj != null) {
                sb2.append(obj);
            }
        }
        return sb2.toString();
    }

    public static String[] r1(String str) {
        return s1(str, false);
    }

    public static boolean s(CharSequence charSequence, char... cArr) {
        if (cArr == null || charSequence == null) {
            return false;
        }
        if (charSequence.length() == 0) {
            return true;
        }
        return cArr.length != 0 && S(charSequence, cArr) == -1;
    }

    public static String s0(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return t0(objArr, str, 0, objArr.length);
    }

    private static String[] s1(String str, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return external.org.apache.commons.lang3.a.f90904c;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int type = Character.getType(charArray[0]);
        for (int i11 = 1; i11 < charArray.length; i11++) {
            int type2 = Character.getType(charArray[i11]);
            if (type2 != type) {
                if (z10 && type2 == 2 && type == 1) {
                    int i12 = i11 - 1;
                    if (i12 != i10) {
                        arrayList.add(new String(charArray, i10, i12 - i10));
                        i10 = i12;
                    }
                } else {
                    arrayList.add(new String(charArray, i10, i11 - i10));
                    i10 = i11;
                }
                type = type2;
            }
        }
        arrayList.add(new String(charArray, i10, charArray.length - i10));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean t(CharSequence charSequence) {
        if (f0(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.isWhitespace(charSequence.charAt(i10))) {
                return true;
            }
        }
        return false;
    }

    public static String t0(Object[] objArr, String str, int i10, int i11) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(i12 * 16);
        for (int i13 = i10; i13 < i11; i13++) {
            if (i13 > i10) {
                sb2.append(str);
            }
            Object obj = objArr[i13];
            if (obj != null) {
                sb2.append(obj);
            }
        }
        return sb2.toString();
    }

    public static String[] t1(String str) {
        return s1(str, true);
    }

    public static int u(CharSequence charSequence, CharSequence charSequence2) {
        int length = 0;
        if (f0(charSequence) || f0(charSequence2)) {
            return 0;
        }
        int i10 = 0;
        while (true) {
            int iB = b.b(charSequence, charSequence2, length);
            if (iB == -1) {
                return i10;
            }
            i10++;
            length = iB + charSequence2.length();
        }
    }

    public static int u0(CharSequence charSequence, int i10) {
        if (f0(charSequence)) {
            return -1;
        }
        return b.c(charSequence, i10, charSequence.length());
    }

    public static String[] u1(String str, String str2) {
        return y1(str, str2, -1, false);
    }

    public static <T extends CharSequence> T v(T t10, T t11) {
        return e0(t10) ? t11 : t10;
    }

    public static int v0(CharSequence charSequence, int i10, int i11) {
        if (f0(charSequence)) {
            return -1;
        }
        return b.c(charSequence, i10, i11);
    }

    public static String[] v1(String str, String str2, int i10) {
        return y1(str, str2, i10, false);
    }

    public static <T extends CharSequence> T w(T t10, T t11) {
        return f0(t10) ? t11 : t10;
    }

    public static int w0(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return b.d(charSequence, charSequence2, charSequence.length());
    }

    public static String[] w1(String str, String str2) {
        return y1(str, str2, -1, true);
    }

    public static String x(String str) {
        return str == null ? "" : str;
    }

    public static int x0(CharSequence charSequence, CharSequence charSequence2, int i10) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return b.d(charSequence, charSequence2, i10);
    }

    public static String[] x1(String str, String str2, int i10) {
        return y1(str, str2, i10, true);
    }

    public static String y(String str, String str2) {
        return str == null ? str2 : str;
    }

    public static int y0(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iD;
        int i10 = -1;
        if (charSequence != null && charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (charSequence2 != null && (iD = b.d(charSequence, charSequence2, charSequence.length())) > i10) {
                    i10 = iD;
                }
            }
        }
        return i10;
    }

    private static String[] y1(String str, String str2, int i10, boolean z10) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f90904c;
        }
        if (str2 == null || "".equals(str2)) {
            return E1(str, null, i10, z10);
        }
        int length2 = str2.length();
        ArrayList arrayList = new ArrayList();
        int iIndexOf = 0;
        int i11 = 0;
        int i12 = 0;
        while (iIndexOf < length) {
            iIndexOf = str.indexOf(str2, i11);
            if (iIndexOf > -1) {
                if (iIndexOf > i11) {
                    i12++;
                    if (i12 == i10) {
                        arrayList.add(str.substring(i11));
                    } else {
                        arrayList.add(str.substring(i11, iIndexOf));
                    }
                } else if (z10) {
                    i12++;
                    if (i12 == i10) {
                        arrayList.add(str.substring(i11));
                        iIndexOf = length;
                    } else {
                        arrayList.add("");
                    }
                }
                i11 = iIndexOf + length2;
            } else {
                arrayList.add(str.substring(i11));
            }
            iIndexOf = length;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String z(String str) {
        if (f0(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (!Character.isWhitespace(str.charAt(i11))) {
                cArr[i10] = str.charAt(i11);
                i10++;
            }
        }
        return i10 == length ? str : new String(cArr, 0, i10);
    }

    public static int z0(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return A0(charSequence, charSequence2, charSequence.length());
    }

    public static String[] z1(String str) {
        return E1(str, null, -1, true);
    }
}
