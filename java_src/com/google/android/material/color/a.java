package com.google.android.material.color;

import android.app.Activity;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f30032a = 0.33333334f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f30033b = 0.6666667f;

    /* JADX INFO: renamed from: com.google.android.material.color.a$a, reason: collision with other inner class name */
    @RequiresApi(34)
    private static class C0597a implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<Activity> f30034b = new LinkedHashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b f30035c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private UiModeManager.ContrastChangeListener f30036d;

        /* JADX INFO: renamed from: com.google.android.material.color.a$a$a, reason: collision with other inner class name */
        class C0598a implements UiModeManager.ContrastChangeListener {
            C0598a() {
            }

            @Override // android.app.UiModeManager.ContrastChangeListener
            public void onContrastChanged(float f10) {
                Iterator it2 = C0597a.this.f30034b.iterator();
                while (it2.hasNext()) {
                    ((Activity) it2.next()).recreate();
                }
            }
        }

        C0597a(b bVar) {
            this.f30035c = bVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
            this.f30034b.remove(activity);
            UiModeManager uiModeManager = (UiModeManager) activity.getSystemService("uimode");
            if (uiModeManager == null || this.f30036d == null || !this.f30034b.isEmpty()) {
                return;
            }
            uiModeManager.removeContrastChangeListener(this.f30036d);
            this.f30036d = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            UiModeManager uiModeManager = (UiModeManager) activity.getSystemService("uimode");
            if (uiModeManager != null && this.f30034b.isEmpty() && this.f30036d == null) {
                this.f30036d = new C0598a();
                uiModeManager.addContrastChangeListener(ContextCompat.getMainExecutor(activity.getApplicationContext()), this.f30036d);
            }
            this.f30034b.add(activity);
            if (uiModeManager != null) {
                a.b(activity, this.f30035c);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    private a() {
    }

    public static void a(@NonNull Application application, @NonNull b bVar) {
        if (d()) {
            application.registerActivityLifecycleCallbacks(new C0597a(bVar));
        }
    }

    public static void b(@NonNull Activity activity, @NonNull b bVar) {
        int iC;
        if (d() && (iC = c(activity, bVar)) != 0) {
            w.a(activity, iC);
        }
    }

    private static int c(Context context, b bVar) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (d() && uiModeManager != null) {
            float contrast = uiModeManager.getContrast();
            int iB = bVar.b();
            int iA = bVar.a();
            if (contrast >= 0.6666667f) {
                return iA == 0 ? iB : iA;
            }
            if (contrast >= f30032a) {
                return iB == 0 ? iA : iB;
            }
        }
        return 0;
    }

    @ChecksSdkIntAtLeast(api = 34)
    public static boolean d() {
        return Build.VERSION.SDK_INT >= 34;
    }

    @NonNull
    public static Context e(@NonNull Context context, @NonNull b bVar) {
        int iC;
        return (d() && (iC = c(context, bVar)) != 0) ? new ContextThemeWrapper(context, iC) : context;
    }
}
