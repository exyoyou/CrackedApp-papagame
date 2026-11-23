package com.byazt.kh;

import com.byazt.eg.d;
import com.byazt.eg.p;
import com.byazt.eg.rl;
import com.byazt.mk.a;
import com.byazt.mk.my;
import com.byazt.mk.n;
import com.join.mgps.Util.o0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 432, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f16263c;
    public static final p uj;
    public static final d ve;
    public static final String[] tt = new String[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f16265i = a.tt("efbbbf");

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final a f16264da = a.tt("feff");
    public static final a sl = a.tt("fffe");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final a f16268t = a.tt("0000ffff");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f16269u = a.tt("ffff0000");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Charset f16267n = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f16262a = Charset.forName("ISO-8859-1");
    public static final Charset yp = Charset.forName("UTF-16BE");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Charset f16271z = Charset.forName("UTF-16LE");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Charset f16266m = Charset.forName("UTF-32BE");
    public static final Charset nu = Charset.forName("UTF-32LE");
    public static final TimeZone sp = TimeZone.getTimeZone("GMT");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Comparator<String> f16270x = new Comparator<String>() { // from class: com.byazt.kh.ve.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };
    public static final Pattern rh = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    static {
        byte[] bArr = new byte[0];
        f16263c = bArr;
        ve = d.c(null, bArr);
        uj = p.c((rl) null, bArr);
    }

    public static int c(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (c10 < 'a' || c10 > 'f') {
            c11 = 'A';
            if (c10 < 'A' || c10 > 'F') {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    public static boolean tt(my myVar, int i10, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jO_ = myVar.c().ve() ? myVar.c().o_() - jNanoTime : Long.MAX_VALUE;
        myVar.c().c(Math.min(jO_, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            com.byazt.mk.ve veVar = new com.byazt.mk.ve();
            while (myVar.c(veVar, 8192L) != -1) {
                veVar.rh();
            }
            if (jO_ == Long.MAX_VALUE) {
                myVar.c().a();
                return true;
            }
            myVar.c().c(jNanoTime + jO_);
            return true;
        } catch (InterruptedIOException unused) {
            if (jO_ == Long.MAX_VALUE) {
                myVar.c().a();
                return false;
            }
            myVar.c().c(jNanoTime + jO_);
            return false;
        } catch (Throwable th) {
            if (jO_ == Long.MAX_VALUE) {
                myVar.c().a();
            } else {
                myVar.c().c(jNanoTime + jO_);
            }
            throw th;
        }
    }

    private static boolean uj(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static String ve(String str, int i10, int i11) {
        int iC = c(str, i10, i11);
        return str.substring(iC, tt(str, iC, i11));
    }

    public static void c(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x004f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059 A[LOOP:1: B:30:0x004d->B:33:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x005f A[EDGE_INSN: B:58:0x005f->B:34:0x005f BREAK  A[LOOP:1: B:30:0x004d->B:33:0x0059], SYNTHETIC] */
    private static InetAddress uj(String str, int i10, int i11) {
        int i12;
        int i13;
        int iC;
        byte[] bArr = new byte[16];
        int i14 = 0;
        int i15 = -1;
        int i16 = -1;
        while (i10 < i11) {
            if (i14 == 16) {
                return null;
            }
            int i17 = i10 + 2;
            if (i17 <= i11 && str.regionMatches(i10, "::", 0, 2)) {
                if (i15 != -1) {
                    return null;
                }
                i14 += 2;
                i15 = i14;
                if (i17 == i11) {
                    break;
                }
                i16 = i17;
                i10 = i16;
                i12 = 0;
                while (i10 < i11) {
                    iC = c(str.charAt(i10));
                    if (iC != -1) {
                        break;
                        break;
                    }
                    i12 = (i12 << 4) + iC;
                    i10++;
                }
                i13 = i10 - i16;
                if (i13 != 0) {
                }
                return null;
            }
            if (i14 != 0) {
                if (!str.regionMatches(i10, ":", 0, 1)) {
                    if (!str.regionMatches(i10, o0.f49827a, 0, 1) || !c(str, i16, i11, bArr, i14 - 2)) {
                        return null;
                    }
                    i14 += 2;
                    break;
                }
                i10++;
            }
            i16 = i10;
            i10 = i16;
            i12 = 0;
            while (i10 < i11) {
                iC = c(str.charAt(i10));
                if (iC != -1) {
                    break;
                }
                i12 = (i12 << 4) + iC;
                i10++;
            }
            i13 = i10 - i16;
            if (i13 != 0 || i13 > 4) {
                return null;
            }
            int i18 = i14 + 1;
            bArr[i14] = (byte) ((i12 >>> 8) & 255);
            i14 = i18 + 1;
            bArr[i18] = (byte) (i12 & 255);
        }
        if (i14 != 16) {
            if (i15 == -1) {
                return null;
            }
            int i19 = i14 - i15;
            System.arraycopy(bArr, i15, bArr, 16 - i19, i19);
            Arrays.fill(bArr, i15, (16 - i14) + i15, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public static boolean ve(String str) {
        return rh.matcher(str).matches();
    }

    public static void c(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e10) {
                if (!c(e10)) {
                    throw e10;
                }
            } catch (RuntimeException unused) {
            } catch (Exception unused2) {
            }
        }
    }

    public static boolean c(my myVar, int i10, TimeUnit timeUnit) {
        try {
            return tt(myVar, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static <T> List<T> c(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> c(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory c(final String str, final boolean z10) {
        return new ThreadFactory() { // from class: com.byazt.kh.ve.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(runnable, "csj_" + str);
                veVar.setDaemon(z10);
                veVar.setPriority(10);
                return veVar;
            }
        };
    }

    public static String[] c(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean tt(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String c(com.byazt.eg.my myVar, boolean z10) {
        String strSp;
        if (myVar.sp().contains(":")) {
            strSp = "[" + myVar.sp() + "]";
        } else {
            strSp = myVar.sp();
        }
        if (!z10 && myVar.x() == com.byazt.eg.my.c(myVar.ve())) {
            return strSp;
        }
        return strSp + ":" + myVar.x();
    }

    public static int tt(String str, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            char cCharAt = str.charAt(i12);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i12 + 1;
            }
        }
        return i10;
    }

    public static int tt(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i10;
            }
        }
        return -1;
    }

    public static boolean c(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static int c(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], str) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static String[] c(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    public static int c(String str, int i10, int i11) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int c(String str, int i10, int i11, String str2) {
        while (i10 < i11) {
            if (str2.indexOf(str.charAt(i10)) != -1) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int c(String str, int i10, int i11, char c10) {
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static String c(String str) {
        InetAddress inetAddressUj;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                inetAddressUj = uj(str, 1, str.length() - 1);
            } else {
                inetAddressUj = uj(str, 0, str.length());
            }
            if (inetAddressUj == null) {
                return null;
            }
            byte[] address = inetAddressUj.getAddress();
            if (address.length == 16) {
                return c(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            if (!str.contains("toutiao") && !str.contains("bytedance")) {
                str = IDN.toASCII(str);
            }
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.isEmpty() || uj(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String c(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset c(n nVar, Charset charset) throws IOException {
        a aVar = f16265i;
        if (nVar.c(0L, aVar)) {
            nVar.x(aVar.sp());
            return f16267n;
        }
        a aVar2 = f16264da;
        if (nVar.c(0L, aVar2)) {
            nVar.x(aVar2.sp());
            return yp;
        }
        a aVar3 = sl;
        if (nVar.c(0L, aVar3)) {
            nVar.x(aVar3.sp());
            return f16271z;
        }
        a aVar4 = f16268t;
        if (nVar.c(0L, aVar4)) {
            nVar.x(aVar4.sp());
            return f16266m;
        }
        a aVar5 = f16269u;
        if (!nVar.c(0L, aVar5)) {
            return charset;
        }
        nVar.x(aVar5.sp());
        return nu;
    }

    public static AssertionError c(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    private static boolean c(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char cCharAt = str.charAt(i14);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i14++;
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    private static String c(byte[] bArr) {
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i10 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        com.byazt.mk.ve veVar = new com.byazt.mk.ve();
        while (i11 < bArr.length) {
            if (i11 == i10) {
                veVar.i(58);
                i11 += i13;
                if (i11 == 16) {
                    veVar.i(58);
                }
            } else {
                if (i11 > 0) {
                    veVar.i(58);
                }
                veVar.sl(((bArr[i11] & 255) << 8) | (bArr[i11 + 1] & 255));
                i11 += 2;
            }
        }
        return veVar.z();
    }
}
