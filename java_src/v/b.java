package v;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static String a(int i10, String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "DES");
            Cipher cipher = Cipher.getInstance("DES");
            cipher.init(i10, secretKeySpec);
            byte[] bArrDoFinal = cipher.doFinal(i10 == 2 ? a.d(str) : str.getBytes("UTF-8"));
            return i10 == 2 ? new String(bArrDoFinal) : a.b(bArrDoFinal);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String b(String str, String str2) {
        return a(1, str, str2);
    }

    private static String c(String str, String str2) {
        return a(2, str, str2);
    }
}
