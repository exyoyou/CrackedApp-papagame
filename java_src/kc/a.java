package kc;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f92165a = "KS_LOG";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f92166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f92167c;

    public static void a(String str, String str2) {
        if (f92166b) {
            String.format("[%s]", f92165a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.format("[%s]: ", str));
            sb2.append(str2);
        }
    }

    public static void b(String str, String str2) {
        if (f92166b) {
            String.format("[%s]", f92165a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.format("[%s]: ", str));
            sb2.append(str2);
        }
    }

    public static void c(String str, String str2) {
        if (f92167c) {
            String.format("[%s]", f92165a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(String.format("[%s]: ", str));
            sb2.append(str2);
        }
    }
}
