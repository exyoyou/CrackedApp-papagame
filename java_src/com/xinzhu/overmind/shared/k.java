package com.xinzhu.overmind.shared;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.h1;
import com.join.mgps.va.overmind.VApp;
import com.xinzhu.overmind.Overmind;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private static WeakReference<Application.ActivityLifecycleCallbacks> f90035c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    public static final String f90037e = "com.join.android.app.mgsim.wufun.virtual.service.dbprovider";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f90038a = k.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final a f90034b = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static WeakReference<Activity> f90036d = new WeakReference<>(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final WeakReference<Application.ActivityLifecycleCallbacks> a() {
            return k.f90035c;
        }

        @NotNull
        public final WeakReference<Activity> b() {
            return k.f90036d;
        }

        public final void c(@Nullable WeakReference<Application.ActivityLifecycleCallbacks> weakReference) {
            k.f90035c = weakReference;
        }

        public final void d(@NotNull WeakReference<Activity> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            k.f90036d = weakReference;
        }

        private a() {
        }
    }

    @SourceDebugExtension({"SMAP\nOvermindLoadCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,375:1\n39#2,12:376\n*S KotlinDebug\n*F\n+ 1 OvermindLoadCallback.kt\ncom/xinzhu/overmind/shared/OvermindLoadCallback$addLifecycleCallback$1\n*L\n189#1:376,12\n*E\n"})
    public static final class b extends com.xinzhu.overmind.client.hook.a {

        public static final class a extends com.xinzhu.overmind.client.hook.delegate.a {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ k f90040c;

            a(k kVar) {
                this.f90040c = kVar;
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                com.xinzhu.overmind.b.a(this.f90040c.f90038a, "onActivityCreated " + activity.getClass().getSimpleName());
                this.f90040c.a(activity, bundle);
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
                Intrinsics.checkNotNullParameter(activity, "activity");
                a aVar = k.f90034b;
                WeakReference<Application.ActivityLifecycleCallbacks> weakReferenceA = aVar.a();
                if (weakReferenceA != null && (activityLifecycleCallbacks = weakReferenceA.get()) != null) {
                    activityLifecycleCallbacks.onActivityDestroyed(activity);
                }
                aVar.d(new WeakReference<>(activity));
                h1.e("onActivityDestroyed " + activity.getClass().getSimpleName());
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
                Intrinsics.checkNotNullParameter(activity, "activity");
                a aVar = k.f90034b;
                WeakReference<Application.ActivityLifecycleCallbacks> weakReferenceA = aVar.a();
                if (weakReferenceA != null && (activityLifecycleCallbacks = weakReferenceA.get()) != null) {
                    activityLifecycleCallbacks.onActivityPaused(activity);
                }
                aVar.d(new WeakReference<>(activity));
                com.xinzhu.overmind.b.a(this.f90040c.f90038a, "onActivityPaused " + activity.getClass().getSimpleName());
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
                Intrinsics.checkNotNullParameter(activity, "activity");
                a aVar = k.f90034b;
                WeakReference<Application.ActivityLifecycleCallbacks> weakReferenceA = aVar.a();
                if (weakReferenceA != null && (activityLifecycleCallbacks = weakReferenceA.get()) != null) {
                    activityLifecycleCallbacks.onActivityResumed(activity);
                }
                aVar.d(new WeakReference<>(activity));
                com.xinzhu.overmind.b.a(this.f90040c.f90038a, "onActivityResumed " + activity.getClass().getSimpleName());
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                Intrinsics.checkNotNullParameter(outState, "outState");
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
                Intrinsics.checkNotNullParameter(activity, "activity");
                a aVar = k.f90034b;
                WeakReference<Application.ActivityLifecycleCallbacks> weakReferenceA = aVar.a();
                if (weakReferenceA != null && (activityLifecycleCallbacks = weakReferenceA.get()) != null) {
                    activityLifecycleCallbacks.onActivityStarted(activity);
                }
                aVar.d(new WeakReference<>(activity));
                com.xinzhu.overmind.b.a(this.f90040c.f90038a, "onActivityStarted " + activity.getClass().getSimpleName());
            }

            @Override // com.xinzhu.overmind.client.hook.delegate.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
                Intrinsics.checkNotNullParameter(activity, "activity");
                a aVar = k.f90034b;
                WeakReference<Application.ActivityLifecycleCallbacks> weakReferenceA = aVar.a();
                if (weakReferenceA != null && (activityLifecycleCallbacks = weakReferenceA.get()) != null) {
                    activityLifecycleCallbacks.onActivityStopped(activity);
                }
                aVar.d(new WeakReference<>(activity));
                com.xinzhu.overmind.b.a(this.f90040c.f90038a, "onActivityStopped " + activity.getClass().getSimpleName());
            }
        }

        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void a(String packageName, String processName, Application application) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(processName, "processName");
            String unused = k.this.f90038a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("afterApplicationOnCreate: pkg ");
            sb2.append(packageName);
            sb2.append(", processName ");
            sb2.append(processName);
            if (application != null) {
                try {
                    SharedPreferences.Editor editor = l.b(application).edit();
                    Intrinsics.checkNotNullExpressionValue(editor, "editor");
                    editor.putString("wfMainPkg", Overmind.getMainPkg());
                    editor.putString("wfExtPkg", Overmind.getPluginPkg());
                    editor.apply();
                } catch (Exception unused2) {
                }
            }
            Overmind.get().setActivityLifecycleCallback(new a(k.this));
            k.this.n(packageName, processName, application);
            try {
                Bundle bundle = new Bundle();
                bundle.putString("packageName", packageName);
                n.a(k.f90037e, "statPoint", null, bundle);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void b(String str, String str2, Application application) {
            String unused = k.this.f90038a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("beforeApplicationOnCreate: pkg ");
            sb2.append(str);
            sb2.append(", processName ");
            sb2.append(str2);
            k.this.k(application);
            k.this.j();
        }

        @Override // com.xinzhu.overmind.client.hook.a
        public void c(String str, String str2, Context context) {
            String unused = k.this.f90038a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("beforeCreateApplication: pkg ");
            sb2.append(str);
            sb2.append(", processName ");
            sb2.append(str2);
        }
    }

    public static final class c extends com.xinzhu.overmind.client.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f90041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ k f90042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f90043c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f90044d;

        c(Context context, k kVar, boolean z10, boolean z11) {
            this.f90041a = context;
            this.f90042b = kVar;
            this.f90043c = z10;
            this.f90044d = z11;
        }

        @Override // com.xinzhu.overmind.client.a
        public String getHostPackageName() {
            String packageName = this.f90041a.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            return packageName;
        }

        @Override // com.xinzhu.overmind.client.a
        public String getMainAuthorityPrefix() {
            return "com.join.android.app.mgsim.wufun";
        }

        @Override // com.xinzhu.overmind.client.a
        public String getMainPackageName() {
            return "com.join.android.app.mgsim.wufun";
        }

        @Override // com.xinzhu.overmind.client.a
        public Bitmap getNotificationLargeIcon() {
            return null;
        }

        @Override // com.xinzhu.overmind.client.a
        public int getNotificationSmallIcon() {
            return 0;
        }

        @Override // com.xinzhu.overmind.client.a
        public String getPluginAuthorityPrefix() {
            return "com.join.android.app.mgsim.wufun.addon";
        }

        @Override // com.xinzhu.overmind.client.a
        public String getPluginPackageName() {
            return "com.join.android.app.mgsim.wufun.addon";
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisableDaemonService() {
            return false;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisablePluginPackageAutoManage() {
            return true;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean ifDisableVirtualDeviceForPackage(String str, int i10) {
            Bundle bundle = new Bundle();
            bundle.putString("packageName", str);
            bundle.putInt("userId", i10);
            Bundle bundleA = null;
            try {
                bundleA = n.a(k.f90037e, "miniGameInfo", null, bundle);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if ((bundleA == null || !bundleA.getBoolean("isMiniGame")) && VApp.INSTANCE.b()) {
                return bundleA != null && bundleA.getInt("vm_device_switch") == 0;
            }
            return true;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isHideRoot() {
            return this.f90043c;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isHideXposed() {
            return this.f90044d;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean isPluginValid() {
            return this.f90042b.m(this.f90041a);
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean use32BitMainPackage() {
            return false;
        }

        @Override // com.xinzhu.overmind.client.a
        public boolean useRandomGeneratedVirtualDevice() {
            return false;
        }
    }

    public static final class d extends XC_MethodHook {
        d() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
            Object[] objArr;
            if (methodHookParam == null || (objArr = methodHookParam.args) == null) {
                return;
            }
            k kVar = k.this;
            Object obj = objArr[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.app.Activity");
            kVar.a((Activity) obj, (Bundle) objArr[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Activity activity, Bundle bundle) {
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        if (activity != null) {
            try {
                if (Intrinsics.areEqual(f90036d.get(), activity)) {
                    return;
                }
                WeakReference<Application.ActivityLifecycleCallbacks> weakReference = f90035c;
                if (weakReference != null && (activityLifecycleCallbacks = weakReference.get()) != null) {
                    activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                }
                f90036d = new WeakReference<>(activity);
                com.xinzhu.overmind.b.a(this.f90038a, "onActivityCreated " + activity.getClass().getSimpleName());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void h() {
        Overmind.get().setAppLifecycleCallback(new b());
    }

    public final void i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Overmind.get().doAttachBaseContext(context, new c(context, this, sharedPreferences.getBoolean("root_hide", true), sharedPreferences.getBoolean("xp_hide", false)));
    }

    public final void j() {
        XposedHelpers.findAndHookMethod(Instrumentation.class, "callActivityOnCreate", Activity.class, Bundle.class, new d());
    }

    public final void k(@Nullable Context context) {
        if (context == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 4);
            if (sharedPreferences.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", -1) == -1) {
                sharedPreferences.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 7).apply();
            }
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 4);
            if (sharedPreferences2.getInt("kitsBitmask", -1) == -1) {
                sharedPreferences2.edit().putInt("kitsBitmask", MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING).apply();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void l(@Nullable Context context) {
        if (context == null) {
            return;
        }
        try {
            context.getSharedPreferences("utils_config", 4).edit().putBoolean("isOldUser", true).putBoolean("isFirstRun", false).apply();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final boolean m(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.join.android.app.mgsim.wufun.addon", 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            int i10 = applicationInfo.metaData.getInt("support_vm_version");
            boolean z10 = applicationInfo.metaData.getBoolean("full_aar_plugin");
            Integer num = com.xinzhu.overmind.shared.a.f90016j;
            return num != null && num.intValue() == i10 && z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public final void n(@NotNull String packageName, @NotNull String processName, @Nullable Application application) {
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(processName, "processName");
        if (application == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                boolean zIsCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                com.xinzhu.overmind.b.a(this.f90038a, "isCleartextTrafficPermitted " + zIsCleartextTrafficPermitted);
            }
            if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(processName)) {
                String strSubstring = "";
                String name = null;
                if (Intrinsics.areEqual(packageName, processName)) {
                    com.xinzhu.overmind.b.a(this.f90038a, "launchMod start:" + processName);
                    Object objF = new com.join.mgps.va.overmind.b().f(packageName, processName, application);
                    if (objF != null && (objF instanceof Application.ActivityLifecycleCallbacks)) {
                        f90035c = new WeakReference<>(objF);
                    }
                    String str = this.f90038a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("launchMod finish:");
                    sb2.append(processName);
                    sb2.append(", activityLifeCallback:");
                    WeakReference<Application.ActivityLifecycleCallbacks> weakReference = f90035c;
                    if (weakReference != null && (activityLifecycleCallbacks = weakReference.get()) != null) {
                        name = activityLifecycleCallbacks.getClass().getName();
                    }
                    sb2.append(name);
                    com.xinzhu.overmind.b.a(str, sb2.toString());
                } else if (StringsKt__StringsKt.contains$default((CharSequence) processName, (CharSequence) ":", false, 2, (Object) null)) {
                    strSubstring = processName.substring(StringsKt__StringsKt.indexOf$default((CharSequence) processName, ":", 0, false, 6, (Object) null) + 1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                }
                String str2 = this.f90038a;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("process->");
                if (TextUtils.isEmpty(strSubstring)) {
                    strSubstring = "main";
                }
                sb3.append(strSubstring);
                com.xinzhu.overmind.b.a(str2, sb3.toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
