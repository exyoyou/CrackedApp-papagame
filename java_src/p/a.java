package p;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f96174a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f96175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f96176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f96177d;

    private a() {
    }

    public static String a() {
        c0.a.b(f96174a);
        return f96174a;
    }

    public static a b(Context context) {
        if (f96177d == null) {
            synchronized (a.class) {
                if (f96177d == null) {
                    f96177d = new a();
                    f96176c = context;
                }
            }
        }
        return f96177d;
    }

    public static String c() {
        return f96174a;
    }
}
