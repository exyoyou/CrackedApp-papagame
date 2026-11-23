package com.papa91.pay.core;

import com.join.mgps.Util.p;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes2.dex */
public class PapaCore {
    static {
        System.loadLibrary("papa");
    }

    public static String encode(String data) {
        return t2.i(data) ? p.b(encrypt(p.b(data.getBytes()).getBytes())) : "";
    }

    public static native byte[] encrypt(byte[] plain);

    public static native byte[] nativeDecrypt(byte[] cipher);

    public static native byte[] nativeEncrypt(byte[] plain);
}
