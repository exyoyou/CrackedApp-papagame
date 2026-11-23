package vc;

import android.app.Activity;
import android.view.Window;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
public class d extends notchtools.geek.com.notchtools.core.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97539a = "d";

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void b(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        d(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void c(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.c(activity, dVar);
        if (e(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.c(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void d(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.d(activity, dVar);
        if (e(activity.getWindow())) {
            notchtools.geek.com.notchtools.helper.b.d(activity.getWindow());
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean e(Window window) {
        if (window == null) {
            return false;
        }
        return window.getContext().getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int f(Window window) {
        if (e(window)) {
            return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
        }
        return 0;
    }
}
