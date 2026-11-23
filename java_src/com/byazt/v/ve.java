package com.byazt.v;

import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f21129c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 24})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f21130c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f21131n;
        public int tt;
        public long uj;
        public int ve;

        private c() {
        }
    }

    public static String c(File file) {
        return c(file, 9, 8192L);
    }

    private static String tt(File file, int i10, long j10) throws Exception {
        return c(new com.byazt.v.c(file), i10, j10);
    }

    public static String c(File file, int i10, long j10) {
        if (file != null) {
            try {
                if (file.exists()) {
                    return tt(file, i10, j10);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return "";
    }

    private static long tt(String str) throws RuntimeException {
        try {
            return (Long.parseLong(str, 16) - 31) >> 4;
        } catch (Throwable unused) {
            throw new RuntimeException("ttmd5 decryptNum error, num = ".concat(String.valueOf(str)));
        }
    }

    public static int c(String str, File file) {
        return c(str, file, (tt) null);
    }

    public static int c(String str, File file, tt ttVar) {
        int i10;
        long j10;
        String strTt;
        if (str == null || str.length() == 0) {
            return 2;
        }
        try {
            if (ttVar != null) {
                if (ttVar.c() <= 0) {
                    try {
                        ttVar.tt();
                    } catch (Throwable unused) {
                    }
                    return 5;
                }
            } else if (file == null || !file.exists()) {
                return 5;
            }
            try {
                c cVarC = c(str);
                if (cVarC == null) {
                    i10 = -1;
                    j10 = -1;
                } else {
                    if (cVarC.f21130c > 1) {
                        return 3;
                    }
                    i10 = cVarC.ve;
                    j10 = cVarC.uj;
                }
                c cVarC2 = null;
                try {
                    if (ttVar != null) {
                        strTt = c(ttVar, i10, j10);
                    } else {
                        strTt = tt(file, i10, j10);
                    }
                } catch (Throwable th) {
                    m.c(th);
                    strTt = null;
                }
                if (strTt != null && strTt.length() != 0) {
                    if (cVarC != null && (cVarC.f21130c != 1 || cVarC.tt != 1)) {
                        if (cVarC.f21131n != null) {
                            try {
                                cVarC2 = c(strTt);
                            } catch (Throwable unused2) {
                            }
                            if (cVarC2 != null && cVarC.ve == cVarC2.ve && cVarC.uj == cVarC2.uj && cVarC.f21131n.equals(cVarC2.f21131n)) {
                                return 0;
                            }
                        }
                    } else if (strTt.equals(str)) {
                        return 0;
                    }
                    return 1;
                }
                return 6;
            } catch (Throwable unused3) {
                return 4;
            }
        } catch (Throwable unused4) {
            return 99;
        }
    }

    private static String c(tt ttVar, int i10, long j10) throws Exception {
        long j11;
        int i11 = i10;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        if (messageDigest == null) {
            return "";
        }
        try {
            long jC = ttVar.c();
            long j12 = 0;
            if (i11 <= 0 || j10 <= 0 || ((long) i11) * j10 > (8 * jC) / 10) {
                j11 = jC;
                i11 = 1;
            } else {
                j11 = j10;
            }
            byte[] bArr = new byte[8192];
            c(ttVar, messageDigest, bArr, 0L, j11);
            if (i11 > 2) {
                int i12 = i11 - 1;
                long j13 = (jC - (((long) i11) * j11)) / ((long) i12);
                int i13 = 1;
                while (i13 < i12) {
                    j12 += j11 + j13;
                    c(ttVar, messageDigest, bArr, j12, j11);
                    i13++;
                    i12 = i12;
                }
            }
            if (i11 > 1) {
                c(ttVar, messageDigest, bArr, jC - j11, j11);
            }
            String strC = c(messageDigest.digest());
            if (i11 == 1 && j11 == jC) {
                return strC;
            }
            return c(i11, j11) + ";" + strC;
        } finally {
            try {
                ttVar.tt();
            } catch (Throwable unused) {
            }
        }
    }

    private static void c(tt ttVar, MessageDigest messageDigest, byte[] bArr, long j10, long j11) throws IOException {
        ttVar.c(j10, j11);
        long j12 = 0;
        while (j12 < j11) {
            int iC = ttVar.c(bArr, 0, (int) Math.min(j11 - j12, bArr.length));
            if (iC > 0) {
                messageDigest.update(bArr, 0, iC);
                j12 += (long) iC;
            } else {
                throw new IOException("updateSample unexpected readCount <= 0, readCount = " + iC + ", readTotalCount = " + j12 + ", sampleSize = " + j11);
            }
        }
    }

    private static String c(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int i10 = length * 2;
            char[] cArr = new char[i10];
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                int i13 = bArr[i12 + 0] & 255;
                int i14 = i11 + 1;
                char[] cArr2 = f21129c;
                cArr[i11] = cArr2[i13 >> 4];
                i11 = i14 + 1;
                cArr[i14] = cArr2[i13 & 15];
            }
            return new String(cArr, 0, i10);
        }
        throw new NullPointerException("bytes is null");
    }

    private static String c(int i10, long j10) {
        return "ttmd5:1:1:" + c(i10) + "g" + c(j10);
    }

    private static c c(String str) throws Exception {
        if (!str.startsWith("ttmd5:")) {
            return null;
        }
        String[] strArrSplit = str.split(";");
        String[] strArrSplit2 = strArrSplit[0].split(":");
        c cVar = new c();
        cVar.f21130c = Integer.parseInt(strArrSplit2[1]);
        if (cVar.f21130c > 1) {
            return cVar;
        }
        cVar.tt = Integer.parseInt(strArrSplit2[2]);
        String[] strArrSplit3 = strArrSplit2[3].split("g");
        cVar.ve = (int) tt(strArrSplit3[0]);
        cVar.uj = tt(strArrSplit3[1]);
        cVar.f21131n = strArrSplit[1];
        return cVar;
    }

    private static String c(long j10) {
        return Long.toHexString((j10 << 4) + 31);
    }
}
