package com.byazt.vx;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 67})
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f21413c = true;

    static {
        try {
            com.byazt.bzd.sp.c("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError unused) {
            f21413c = false;
        }
    }

    public static byte[] c(byte[] bArr, int i10) {
        com.byazt.dna.ve veVar = (com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog");
        return veVar != null ? veVar.encrypt(bArr, i10) : new byte[0];
    }

    public static boolean c() {
        com.byazt.eu.tt.tt("TMe", "applogSOLoadSuccess = " + f21413c);
        return f21413c;
    }
}
