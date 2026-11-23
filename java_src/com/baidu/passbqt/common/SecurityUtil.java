package com.baidu.passbqt.common;

import android.util.Base64;
import com.baidu.passbqt.NoProguard;

/* JADX INFO: loaded from: classes6.dex */
public class SecurityUtil implements NoProguard {
    public static String a(byte[] bArr, boolean z10) {
        return new Security().a(bArr, z10);
    }

    public static byte[] b(byte[] bArr) {
        return Base64.decode(bArr, 0);
    }

    public static String a(byte[] bArr) {
        return new Security().a(bArr);
    }

    public static byte[] a(String str, String str2, String str3) throws Exception {
        return new Security.AES().a(str, str2, str3);
    }

    public static byte[] a(byte[] bArr, String str, String str2) throws Exception {
        return new Security.AES().a(bArr, str, str2);
    }
}
