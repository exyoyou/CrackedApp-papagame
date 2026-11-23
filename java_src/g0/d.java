package g0;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    private static String a(String str) {
        return System.getProperty(str);
    }

    private static void b(String str, String str2) {
        if (h0.a.b(str2)) {
            return;
        }
        System.setProperty(str, str2);
    }
}
