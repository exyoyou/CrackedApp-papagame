package org.hmwebrtc.log;

/* JADX INFO: loaded from: classes10.dex */
public class JNILogCompress {
    public static int LibzipCompress(byte[] bArr, int i10, byte[] bArr2) {
        return nativeLZCompress(bArr, i10, bArr2);
    }

    private static native int nativeLZCompress(byte[] bArr, int i10, byte[] bArr2);
}
