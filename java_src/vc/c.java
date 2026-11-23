package vc;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.Window;
import androidx.annotation.RequiresApi;
import com.uc.crashsdk.export.LogType;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class c extends notchtools.geek.com.notchtools.core.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97538a = "c";

    private int j(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean k(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "force_black", 0) == 1;
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.a(activity, dVar);
        if (Build.VERSION.SDK_INT < 26 || !e(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), 1792);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // notchtools.geek.com.notchtools.core.a, notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public void d(Activity activity, notchtools.geek.com.notchtools.core.d dVar) {
        super.d(activity, dVar);
        if (Build.VERSION.SDK_INT < 26 || !e(activity.getWindow())) {
            return;
        }
        try {
            Method method = Window.class.getMethod("addExtraFlags", Integer.TYPE);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(activity.getWindow(), Integer.valueOf(LogType.UNEXP_ANR));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public boolean e(Window window) {
        return "1".equals(notchtools.geek.com.notchtools.helper.c.c().a("ro.miui.notch"));
    }

    @Override // notchtools.geek.com.notchtools.core.b
    @RequiresApi(api = 26)
    public int f(Window window) {
        if (!e(window) || window == null) {
            return 0;
        }
        Context context = window.getContext();
        return k(window.getContext()) ? notchtools.geek.com.notchtools.helper.b.b(context) : j(context);
    }
}
