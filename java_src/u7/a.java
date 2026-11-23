package u7;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static String a(byte[] bArr) {
        return b(bArr, false);
    }

    public static String b(byte[] bArr, boolean z10) {
        StringBuilder sb2 = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return "";
        }
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() < 2) {
                sb2.append(0);
            }
            sb2.append(hexString);
            if (z10) {
                sb2.append(" ");
            }
        }
        return sb2.toString();
    }
}
