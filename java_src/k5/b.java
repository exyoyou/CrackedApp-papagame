package k5;

import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f92137a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f92138b = "1.2";

    public static l5.a a(File file) {
        try {
            return m5.a.d(file);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void b(File file) {
        try {
            m5.b.l(file);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void c(File file, String str, Map<String, String> map) {
        try {
            m5.b.m(file, str, map);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
