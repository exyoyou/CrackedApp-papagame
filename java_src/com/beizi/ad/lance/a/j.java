package com.beizi.ad.lance.a;

import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f9223a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", t.f74887l, "c", t.f74895t, "e", com.xinzhu.overmind.server.os.f.TAG};

    public static String a(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            try {
                DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                try {
                    while (digestInputStream.read(new byte[4096]) != -1) {
                    }
                    String strA = a(digestInputStream.getMessageDigest().digest());
                    digestInputStream.close();
                    fileInputStream.close();
                    return strA;
                } catch (Throwable th) {
                    try {
                        digestInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileInputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }
}
