package com.xinzhu.overmind.client.hook.fixer;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.xinzhu.haunted.android.app.a;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.utils.e;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class ActivityFixer {
    public static void fix(Activity activity) {
        new a(activity).h();
        Context baseContext = activity.getBaseContext();
        try {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(q9.a.e.R());
            if (typedArrayObtainStyledAttributes != null) {
                if (typedArrayObtainStyledAttributes.getBoolean(q9.a.e.Y(), false)) {
                    try {
                        activity.getWindow().setBackgroundDrawable(WallpaperManager.getInstance(activity).getDrawable());
                    } catch (SecurityException e10) {
                        e10.printStackTrace();
                    }
                }
                if (typedArrayObtainStyledAttributes.getBoolean(q9.a.e.V(), false)) {
                    activity.getWindow().addFlags(1024);
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (e.a()) {
            Intent intent = activity.getIntent();
            ApplicationInfo applicationInfo = baseContext.getApplicationInfo();
            PackageManager packageManager = activity.getPackageManager();
            if (intent == null || !activity.isTaskRoot()) {
                return;
            }
            try {
                String str = String.format(Locale.CHINA, "[B%d]%s", Integer.valueOf(f.getUserId()), applicationInfo.loadLabel(packageManager));
                Drawable drawableLoadIcon = applicationInfo.loadIcon(packageManager);
                activity.setTaskDescription(new ActivityManager.TaskDescription(str, drawableLoadIcon instanceof BitmapDrawable ? ((BitmapDrawable) drawableLoadIcon).getBitmap() : null));
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }
}
