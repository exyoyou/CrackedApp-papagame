package com.coremedia.iso;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes9.dex */
public final class b {
    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "us-ascii");
        } catch (UnsupportedEncodingException e10) {
            throw new Error(e10);
        }
    }

    public static byte[] b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes("us-ascii");
        } catch (UnsupportedEncodingException e10) {
            throw new Error(e10);
        }
    }
}
