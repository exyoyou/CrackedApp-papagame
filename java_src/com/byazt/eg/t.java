package com.byazt.eg;

import com.join.mgps.Util.o0;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 66})
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13393a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f13394da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f13395i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f13396n;
    public final boolean sl;
    public final long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f13397t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f13398u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f13399x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f13392c = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern tt = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern ve = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern uj = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    private t(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f13396n = str;
        this.f13393a = str2;
        this.sp = j10;
        this.f13399x = str3;
        this.f13395i = str4;
        this.f13394da = z10;
        this.sl = z11;
        this.f13398u = z12;
        this.f13397t = z13;
    }

    public String c() {
        return this.f13396n;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return tVar.f13396n.equals(this.f13396n) && tVar.f13393a.equals(this.f13393a) && tVar.f13399x.equals(this.f13399x) && tVar.f13395i.equals(this.f13395i) && tVar.sp == this.sp && tVar.f13394da == this.f13394da && tVar.sl == this.sl && tVar.f13397t == this.f13397t && tVar.f13398u == this.f13398u;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f13396n.hashCode() + 527) * 31) + this.f13393a.hashCode()) * 31) + this.f13399x.hashCode()) * 31) + this.f13395i.hashCode()) * 31;
        long j10 = this.sp;
        return ((((((((iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.f13394da ? 1 : 0)) * 31) + (!this.sl ? 1 : 0)) * 31) + (!this.f13397t ? 1 : 0)) * 31) + (!this.f13398u ? 1 : 0);
    }

    public String toString() {
        return c(false);
    }

    public String tt() {
        return this.f13393a;
    }

    private static boolean c(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.byazt.kh.ve.ve(str);
    }

    private static String tt(String str) {
        if (str.endsWith(o0.f49827a)) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(o0.f49827a)) {
            str = str.substring(1);
        }
        String strC = com.byazt.kh.ve.c(str);
        if (strC != null) {
            return strC;
        }
        throw new IllegalArgumentException();
    }

    public static t c(my myVar, String str) {
        return c(System.currentTimeMillis(), myVar, str);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00c0 A[PHI: r0
      0x00c0: PHI (r0v15 long) = (r0v2 long), (r0v5 long) binds: [B:42:0x00be, B:53:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    public static t c(long j10, my myVar, String str) {
        long j11;
        t tVar;
        String str2;
        String str3;
        int length = str.length();
        char c10 = ';';
        int iC = com.byazt.kh.ve.c(str, 0, length, ';');
        char c11 = '=';
        int iC2 = com.byazt.kh.ve.c(str, 0, iC, '=');
        if (iC2 == iC) {
            return null;
        }
        String strVe = com.byazt.kh.ve.ve(str, 0, iC2);
        if (strVe.isEmpty() || com.byazt.kh.ve.tt(strVe) != -1) {
            return null;
        }
        String strVe2 = com.byazt.kh.ve.ve(str, iC2 + 1, iC);
        if (com.byazt.kh.ve.tt(strVe2) != -1) {
            return null;
        }
        int i10 = iC + 1;
        String str4 = null;
        String strTt = null;
        long jC = -1;
        long jC2 = 253402300799999L;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = true;
        boolean z13 = false;
        while (i10 < length) {
            int iC3 = com.byazt.kh.ve.c(str, i10, length, c10);
            int iC4 = com.byazt.kh.ve.c(str, i10, iC3, c11);
            String strVe3 = com.byazt.kh.ve.ve(str, i10, iC4);
            String strVe4 = iC4 < iC3 ? com.byazt.kh.ve.ve(str, iC4 + 1, iC3) : "";
            if ("expires".equalsIgnoreCase(strVe3)) {
                try {
                    jC2 = c(strVe4, 0, strVe4.length());
                    z13 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if ("max-age".equalsIgnoreCase(strVe3)) {
                jC = c(strVe4);
                z13 = true;
            } else if ("domain".equalsIgnoreCase(strVe3)) {
                strTt = tt(strVe4);
                z12 = false;
            } else if ("path".equalsIgnoreCase(strVe3)) {
                str4 = strVe4;
            } else if ("secure".equalsIgnoreCase(strVe3)) {
                z10 = true;
            } else if ("httponly".equalsIgnoreCase(strVe3)) {
                z11 = true;
            }
            i10 = iC3 + 1;
            c10 = ';';
            c11 = '=';
        }
        long j12 = Long.MIN_VALUE;
        if (jC == Long.MIN_VALUE) {
            j11 = j12;
        } else if (jC != -1) {
            j12 = j10 + (jC <= 9223372036854775L ? jC * 1000 : Long.MAX_VALUE);
            if (j12 < j10 || j12 > DatesKt.MAX_DATE) {
                j11 = 253402300799999L;
            } else {
                j11 = j12;
            }
        } else {
            j11 = jC2;
        }
        String strSp = myVar.sp();
        if (strTt == null) {
            str2 = strSp;
            tVar = null;
        } else {
            if (!c(strSp, strTt)) {
                return null;
            }
            tVar = null;
            str2 = strTt;
        }
        if (strSp.length() != str2.length() && com.byazt.nit.c.c().c(str2) == null) {
            return tVar;
        }
        String strSubstring = e.F0;
        if (str4 == null || !str4.startsWith(e.F0)) {
            String strI = myVar.i();
            int iLastIndexOf = strI.lastIndexOf(47);
            if (iLastIndexOf != 0) {
                strSubstring = strI.substring(0, iLastIndexOf);
            }
            str3 = strSubstring;
        } else {
            str3 = str4;
        }
        return new t(strVe, strVe2, j11, str2, str3, z10, z11, z12, z13);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    private static long c(String str, int i10, int i11) {
        int iC = c(str, i10, i11, false);
        Matcher matcher = uj.matcher(str);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int iIndexOf = -1;
        int i15 = -1;
        int i16 = -1;
        while (iC < i11) {
            int iC2 = c(str, iC + 1, i11, true);
            matcher.region(iC, iC2);
            if (i13 == -1 && matcher.usePattern(uj).matches()) {
                i13 = Integer.parseInt(matcher.group(1));
                i15 = Integer.parseInt(matcher.group(2));
                i16 = Integer.parseInt(matcher.group(3));
            } else if (i14 == -1 && matcher.usePattern(ve).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                Pattern pattern = tt;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                } else if (i12 != -1 && matcher.usePattern(f13392c).matches()) {
                    i12 = Integer.parseInt(matcher.group(1));
                }
            } else if (i12 != -1) {
            }
            iC = c(str, iC2 + 1, i11, false);
        }
        if (i12 >= 70 && i12 <= 99) {
            i12 += 1900;
        }
        if (i12 >= 0 && i12 <= 69) {
            i12 += 2000;
        }
        if (i12 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i14 <= 0 || i14 > 31) {
            throw new IllegalArgumentException();
        }
        if (i13 < 0 || i13 > 23) {
            throw new IllegalArgumentException();
        }
        if (i15 < 0 || i15 > 59) {
            throw new IllegalArgumentException();
        }
        if (i16 >= 0 && i16 <= 59) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(com.byazt.kh.ve.sp);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i12);
            gregorianCalendar.set(2, iIndexOf - 1);
            gregorianCalendar.set(5, i14);
            gregorianCalendar.set(11, i13);
            gregorianCalendar.set(12, i15);
            gregorianCalendar.set(13, i16);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    private static int c(String str, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z10)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static long c(String str) {
        try {
            long j10 = Long.parseLong(str);
            if (j10 <= 0) {
                return Long.MIN_VALUE;
            }
            return j10;
        } catch (NumberFormatException e10) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e10;
        }
    }

    public static List<t> c(my myVar, rh rhVar) {
        List<String> listTt = rhVar.tt(HttpHeaders.Names.SET_COOKIE);
        int size = listTt.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            t tVarC = c(myVar, listTt.get(i10));
            if (tVarC != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(tVarC);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public String c(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f13396n);
        sb2.append('=');
        sb2.append(this.f13393a);
        if (this.f13397t) {
            if (this.sp == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(com.byazt.yx.uj.c(new Date(this.sp)));
            }
        }
        if (!this.f13398u) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(o0.f49827a);
            }
            sb2.append(this.f13399x);
        }
        sb2.append("; path=");
        sb2.append(this.f13395i);
        if (this.f13394da) {
            sb2.append("; secure");
        }
        if (this.sl) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }
}
