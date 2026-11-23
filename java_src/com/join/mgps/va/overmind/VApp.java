package com.join.mgps.va.overmind;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import com.join.android.app.common.utils.p;
import com.join.mgps.Util.t2;
import com.papa91.arc.MApplication;
import com.xinzhu.overmind.Overmind;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u0010J\u0006\u0010\u0018\u001a\u00020\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/join/mgps/va/overmind/VApp;", "Lcom/papa91/arc/MApplication;", "<init>", "()V", "sp", "Landroid/content/SharedPreferences;", "getSp", "()Landroid/content/SharedPreferences;", "setSp", "(Landroid/content/SharedPreferences;)V", "attachBaseContext", "", "base", "Landroid/content/Context;", "onCreate", "virtualDeviceStatus", "", "readStringFromFile", "", "path", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "isMindProcess", "isEmulator", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VApp.kt\ncom/join/mgps/va/overmind/VApp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1#2:177\n1869#3,2:178\n*S KotlinDebug\n*F\n+ 1 VApp.kt\ncom/join/mgps/va/overmind/VApp\n*L\n170#1:178,2\n*E\n"})
public class VApp extends MApplication {

    @NotNull
    public static final String TAG = "VApp";
    private static Context context;
    protected SharedPreferences sp;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static boolean virtualDeviceStatus = true;

    /* JADX INFO: renamed from: com.join.mgps.va.overmind.VApp$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Context a() {
            Context context = VApp.context;
            if (context != null) {
                return context;
            }
            Intrinsics.throwUninitializedPropertyAccessException("context");
            return null;
        }

        public final boolean b() {
            return VApp.virtualDeviceStatus;
        }

        public final void c(boolean z10) {
            VApp.virtualDeviceStatus = z10;
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(VApp vApp) {
        virtualDeviceStatus = vApp.virtualDeviceStatus();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(@Nullable Context base) {
        super.attachBaseContext(base);
        Intrinsics.checkNotNull(base);
        context = base;
        if (isEmulator()) {
            return;
        }
        setSp(getSharedPreferences("PrefDef", 4));
        if (getSp().getBoolean("firstShowUserPermiss", true)) {
            return;
        }
        try {
            com.xinzhu.overmind.shared.k kVar = new com.xinzhu.overmind.shared.k();
            Context context2 = context;
            if (context2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
                context2 = null;
            }
            kVar.i(context2);
            kVar.h();
            if (com.xinzhu.overmind.utils.e.g()) {
                Overmind.get().setXPEnable(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @NotNull
    protected final SharedPreferences getSp() {
        SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sp");
        return null;
    }

    public final boolean isEmulator() {
        String strA = p.a(this);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("emulator check: [");
        sb2.append(getPackageName());
        sb2.append(' ');
        sb2.append(strA);
        sb2.append(']');
        Iterator it2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{":fba", ":fc", ":gba", ":sfc", ":md", ":gbc", ":ps", ":wsc", ":psp", ":y"}).iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(strA, getPackageName() + ((String) it2.next()))) {
                return true;
            }
        }
        return false;
    }

    public final boolean isMindProcess() {
        return Overmind.get().isMonitorProcess() || Overmind.get().isServerProcess() || Overmind.get().isVirtualProcess();
    }

    @Override // com.papa91.arc.MApplication, android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        if (isMindProcess()) {
            return;
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        if (isEmulator()) {
            super.onCreate();
            return;
        }
        new Thread(new Runnable() { // from class: com.join.mgps.va.overmind.j
            @Override // java.lang.Runnable
            public final void run() {
                VApp.b(this.f73276b);
            }
        }).start();
        if (!getSp().getBoolean("firstShowUserPermiss", true)) {
            Overmind.get().doCreate();
            if (Overmind.get().isVirtualProcess()) {
                Overmind.get().setCustomCallback(new com.xinzhu.overmind.shared.b());
            }
            if (isMindProcess()) {
                return;
            }
        }
        super.onCreate();
    }

    @Nullable
    public String readStringFromFile(@Nullable String path) throws Throwable {
        String str = "";
        if (!new File(path).exists()) {
            return "";
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(path), "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return str;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader2.close();
                } catch (IOException e12) {
                    e = e12;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
        return str;
    }

    protected final void setSp(@NotNull SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<set-?>");
        this.sp = sharedPreferences;
    }

    public boolean virtualDeviceStatus() throws Throwable {
        try {
            int i10 = getSp().getInt("virtualDeviceState", -1);
            if (i10 == -1) {
                List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"294_4.8.8.8", "284_4.8.6.6", "260_4.8.2"});
                StringBuilder sb2 = new StringBuilder();
                Context context2 = context;
                if (context2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("context");
                    context2 = null;
                }
                sb2.append(context2.getFilesDir().getPath());
                sb2.append(File.separator);
                sb2.append("host_app.inf");
                String stringFromFile = readStringFromFile(sb2.toString());
                if (t2.i(stringFromFile)) {
                    try {
                        JSONObject jSONObject = new JSONObject(stringFromFile);
                        if (listListOf.contains(jSONObject.getInt("mainHostVersionCode") + '_' + jSONObject.getString("mainHostVersionName"))) {
                            getSp().edit().putInt("virtualDeviceState", 0).commit();
                            return false;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        getSp().edit().putInt("virtualDeviceState", 1).commit();
                        return true;
                    }
                }
                getSp().edit().putInt("virtualDeviceState", 1).commit();
                return true;
            }
            if (i10 == 0) {
                return false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return true;
    }
}
