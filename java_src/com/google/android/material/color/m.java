package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.os.BuildCompat;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.material.R;
import com.google.android.material.color.utilities.e6;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f30120a = {R.attr.dynamicColorThemeOverlay};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f30121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"PrivateApi"})
    private static final c f30122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, c> f30123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, c> f30124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f30125f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f30126g;

    class a implements c {
        a() {
        }

        @Override // com.google.android.material.color.m.c
        public boolean isSupported() {
            return true;
        }
    }

    class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f30127a;

        b() {
        }

        @Override // com.google.android.material.color.m.c
        public boolean isSupported() {
            if (this.f30127a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    this.f30127a = Long.valueOf(((Long) declaredMethod.invoke(null, "ro.build.version.oneui")).longValue());
                } catch (Exception unused) {
                    this.f30127a = -1L;
                }
            }
            return this.f30127a.longValue() >= 40100;
        }
    }

    private interface c {
        boolean isSupported();
    }

    private static class d implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final n f30128b;

        d(@NonNull n nVar) {
            this.f30128b = nVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            m.j(activity, this.f30128b);
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

    public interface e {
        void a(@NonNull Activity activity);
    }

    public interface f {
        boolean a(@NonNull Activity activity, @StyleRes int i10);
    }

    static {
        a aVar = new a();
        f30121b = aVar;
        b bVar = new b();
        f30122c = bVar;
        HashMap map = new HashMap();
        map.put("fcnt", aVar);
        map.put("google", aVar);
        map.put("hmd global", aVar);
        map.put("infinix", aVar);
        map.put("infinix mobility limited", aVar);
        map.put("itel", aVar);
        map.put("kyocera", aVar);
        map.put("lenovo", aVar);
        map.put("lge", aVar);
        map.put("meizu", aVar);
        map.put("motorola", aVar);
        map.put("nothing", aVar);
        map.put("oneplus", aVar);
        map.put("oppo", aVar);
        map.put("realme", aVar);
        map.put("robolectric", aVar);
        map.put("samsung", bVar);
        map.put("sharp", aVar);
        map.put("shift", aVar);
        map.put("sony", aVar);
        map.put("tcl", aVar);
        map.put("tecno", aVar);
        map.put("tecno mobile limited", aVar);
        map.put("vivo", aVar);
        map.put("wingtech", aVar);
        map.put(MediationConstant.ADN_XIAOMI, aVar);
        f30123d = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("asus", aVar);
        map2.put("jio", aVar);
        f30124e = Collections.unmodifiableMap(map2);
        f30126g = m.class.getSimpleName();
    }

    private m() {
    }

    @Deprecated
    public static void a(@NonNull Activity activity) {
        i(activity);
    }

    @Deprecated
    public static void b(@NonNull Activity activity, @StyleRes int i10) {
        j(activity, new n.c().k(i10).f());
    }

    @Deprecated
    public static void c(@NonNull Activity activity, @NonNull f fVar) {
        j(activity, new n.c().j(fVar).f());
    }

    public static void d(@NonNull Application application) {
        h(application, new n.c().f());
    }

    @Deprecated
    public static void e(@NonNull Application application, @StyleRes int i10) {
        h(application, new n.c().k(i10).f());
    }

    @Deprecated
    public static void f(@NonNull Application application, @StyleRes int i10, @NonNull f fVar) {
        h(application, new n.c().k(i10).j(fVar).f());
    }

    @Deprecated
    public static void g(@NonNull Application application, @NonNull f fVar) {
        h(application, new n.c().j(fVar).f());
    }

    public static void h(@NonNull Application application, @NonNull n nVar) {
        application.registerActivityLifecycleCallbacks(new d(nVar));
    }

    public static void i(@NonNull Activity activity) {
        j(activity, new n.c().f());
    }

    public static void j(@NonNull Activity activity, @NonNull n nVar) {
        int iK;
        if (m()) {
            if (nVar.d() == null) {
                iK = nVar.g() == 0 ? k(activity, f30120a) : nVar.g();
            } else {
                iK = 0;
            }
            if (nVar.f().a(activity, iK)) {
                if (nVar.d() != null) {
                    e6 e6Var = new e6(com.google.android.material.color.utilities.l.b(nVar.d().intValue()), !s.r(activity), l(activity));
                    j jVarA = i.a();
                    if (jVarA == null || !jVarA.b(activity, r.a(e6Var))) {
                        return;
                    }
                } else {
                    w.a(activity, iK);
                }
                nVar.e().a(activity);
            }
        }
    }

    private static int k(@NonNull Context context, int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private static float l(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (uiModeManager == null || Build.VERSION.SDK_INT < 34) {
            return 0.0f;
        }
        return uiModeManager.getContrast();
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean m() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        if (BuildCompat.isAtLeastT()) {
            return true;
        }
        Map<String, c> map = f30123d;
        String str = Build.MANUFACTURER;
        Locale locale = Locale.ROOT;
        c cVar = map.get(str.toLowerCase(locale));
        if (cVar == null) {
            cVar = f30124e.get(Build.BRAND.toLowerCase(locale));
        }
        return cVar != null && cVar.isSupported();
    }

    @NonNull
    public static Context n(@NonNull Context context) {
        return o(context, 0);
    }

    @NonNull
    public static Context o(@NonNull Context context, @StyleRes int i10) {
        return p(context, new n.c().k(i10).f());
    }

    @NonNull
    public static Context p(@NonNull Context context, @NonNull n nVar) {
        if (!m()) {
            return context;
        }
        int iG = nVar.g();
        if (iG == 0) {
            iG = k(context, f30120a);
        }
        if (iG == 0) {
            return context;
        }
        if (nVar.d() != null) {
            e6 e6Var = new e6(com.google.android.material.color.utilities.l.b(nVar.d().intValue()), !s.r(context), l(context));
            j jVarA = i.a();
            if (jVarA != null) {
                return jVarA.a(context, r.a(e6Var));
            }
        }
        return new ContextThemeWrapper(context, iG);
    }
}
