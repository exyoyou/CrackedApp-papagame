package cn.sharesdk.framework.authorize;

import android.app.Activity;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f2613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f2614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2615c;

    public static a c() {
        synchronized (a.class) {
            if (f2613a == null) {
                synchronized (a.class) {
                    if (f2613a == null) {
                        f2613a = new a();
                    }
                }
            }
        }
        return f2613a;
    }

    public boolean a() {
        return this.f2615c;
    }

    public Activity b() {
        return this.f2614b;
    }

    public void a(boolean z10) {
        this.f2615c = z10;
    }

    public void a(Activity activity) {
        this.f2614b = activity;
    }
}
