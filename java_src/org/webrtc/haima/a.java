package org.webrtc.haima;

import java.util.Locale;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class a {
    public static int a(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public static String b(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (int i11 = 0; i11 < 1024 && i11 < bArr.length; i11++) {
            String upperCase = Integer.toHexString(bArr[i11] & 255).toUpperCase(Locale.getDefault());
            if (1 == upperCase.length()) {
                sb2.append("0");
            }
            sb2.append(upperCase);
            sb2.append(" ");
            i10++;
        }
        return i10 != 0 ? sb2.toString() : "";
    }

    public static byte[] c(int i10) {
        return new byte[]{(byte) (i10 & 255), (byte) ((i10 >> 8) & 255), (byte) ((i10 >> 16) & 255), (byte) ((i10 >> 24) & 255)};
    }
}
