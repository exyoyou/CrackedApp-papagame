package cn.com.chinatelecom.account.api;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public final class Helper {
    static {
        System.loadLibrary("CtaApiLib");
    }

    public static native String cepahsul(boolean z10);

    public static native String dnepah(Context context, String str, String str2, String str3, long j10, boolean z10, boolean z11, String str4);

    public static native byte[] dnepmret(byte[] bArr, String str);

    public static native byte[] dneulret(byte[] bArr);

    public static native String dnprecobjs(Context context, long j10, String str);

    public static native String dnprecohdjs();

    public static native String eneulret(String str);

    public static native String gscret(Context context, String str);

    public static native String guulam(Context context, String str);

    public static native String sgwret(String str);

    public static native String testEncrypt(String str, String str2);
}
