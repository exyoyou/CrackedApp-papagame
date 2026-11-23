package com.byazt.nit;

import com.byazt.kh.ve;
import com.byazt.mk.da;
import com.byazt.mk.t;
import com.byazt.xb.n;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 510, 20})
public final class c {
    public byte[] sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte[] f17366x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f17363c = {42};
    public static final String[] tt = new String[0];
    public static final String[] ve = {WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD};
    public static final c uj = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f17365n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f17364a = new CountDownLatch(1);

    public static c c() {
        return uj;
    }

    private void tt() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    ve();
                    break;
                } catch (InterruptedIOException unused) {
                    z10 = true;
                } catch (IOException e10) {
                    n.tt().c(5, "Failed to read public suffix list", e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void ve() throws IOException {
        InputStream resourceAsStream = c.class.getResourceAsStream(PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        com.byazt.mk.n nVarC = t.c(new da(t.c(resourceAsStream)));
        try {
            byte[] bArr = new byte[nVarC.da()];
            nVarC.c(bArr);
            byte[] bArr2 = new byte[nVarC.da()];
            nVarC.c(bArr2);
            ve.c(nVarC);
            synchronized (this) {
                this.sp = bArr;
                this.f17366x = bArr2;
            }
            this.f17364a.countDown();
        } catch (Throwable th) {
            ve.c(nVarC);
            throw th;
        }
    }

    public String c(String str) {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrC = c(strArrSplit);
        if (strArrSplit.length == strArrC.length && strArrC[0].charAt(0) != '!') {
            return null;
        }
        if (strArrC[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrC.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrC.length + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i10 = length - length2; i10 < strArrSplit2.length; i10++) {
            sb2.append(strArrSplit2[i10]);
            sb2.append(d.f90941a);
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    private String[] c(String[] strArr) {
        String str;
        String strC;
        String strC2;
        if (!this.f17365n.get() && this.f17365n.compareAndSet(false, true)) {
            tt();
        } else {
            try {
                this.f17364a.await();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this) {
            if (this.sp == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            bArr[i10] = strArr[i10].getBytes(ve.f16267n);
        }
        int i11 = 0;
        while (true) {
            str = null;
            if (i11 >= length) {
                strC = null;
                break;
            }
            strC = c(this.sp, bArr, i11);
            if (strC != null) {
                break;
            }
            i11++;
        }
        if (length <= 1) {
            strC2 = null;
            break;
        }
        byte[][] bArr2 = (byte[][]) bArr.clone();
        int i12 = 0;
        while (true) {
            if (i12 >= bArr2.length - 1) {
                strC2 = null;
                break;
            }
            bArr2[i12] = f17363c;
            strC2 = c(this.sp, bArr2, i12);
            if (strC2 != null) {
                break;
            }
            i12++;
        }
        if (strC2 != null) {
            for (int i13 = 0; i13 < length - 1; i13++) {
                String strC3 = c(this.f17366x, bArr, i13);
                if (strC3 != null) {
                    str = strC3;
                    break;
                }
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (strC == null && strC2 == null) {
            return ve;
        }
        String[] strArrSplit = strC != null ? strC.split("\\.") : tt;
        String[] strArrSplit2 = strC2 != null ? strC2.split("\\.") : tt;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private static String c(byte[] bArr, byte[][] bArr2, int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int length = bArr.length;
        int i14 = 0;
        while (i14 < length) {
            int i15 = (i14 + length) / 2;
            while (i15 >= 0 && bArr[i15] != 10) {
                i15--;
            }
            int i16 = i15 + 1;
            int i17 = 1;
            while (true) {
                i11 = i16 + i17;
                if (bArr[i11] == 10) {
                    break;
                }
                i17++;
            }
            int i18 = i11 - i16;
            int i19 = i10;
            boolean z11 = false;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (z11) {
                    i12 = 46;
                    z10 = false;
                } else {
                    z10 = z11;
                    i12 = bArr2[i19][i20] & 255;
                }
                i13 = i12 - (bArr[i16 + i21] & 255);
                if (i13 != 0) {
                    break;
                }
                i21++;
                i20++;
                if (i21 == i18) {
                    break;
                }
                if (bArr2[i19].length != i20) {
                    z11 = z10;
                } else {
                    if (i19 == bArr2.length - 1) {
                        break;
                    }
                    i19++;
                    z11 = true;
                    i20 = -1;
                }
            }
            if (i13 >= 0) {
                if (i13 <= 0) {
                    int i22 = i18 - i21;
                    int length2 = bArr2[i19].length - i20;
                    while (true) {
                        i19++;
                        if (i19 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i19].length;
                    }
                    if (length2 >= i22) {
                        if (length2 <= i22) {
                            return new String(bArr, i16, i18, ve.f16267n);
                        }
                    }
                }
                i14 = i11 + 1;
            }
            length = i16 - 1;
        }
        return null;
    }
}
