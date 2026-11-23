package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.util.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    @TargetApi(8)
    public static String a(byte[] bArr, int i10) {
        return Base64.encodeToString(bArr, i10);
    }
}
