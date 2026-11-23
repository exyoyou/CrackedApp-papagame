package com.join.mgps.va.overmind;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.annotation.RequiresApi;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.q;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.y;
import com.join.mgps.Util.z;
import com.join.mgps.activity.MiniGameLoadingActivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.TipBean;
import com.join.mgps.mod.activity.ModLoadingActivity;
import com.join.mgps.mod.activity.ModLoadingLandActivity;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.va.service.MessengerService;
import com.papa91.arc.util.FileUtils;
import com.sigmob.sdk.base.mta.PointCategory;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.server.user.MindUserInfo;
import com.xinzhu.overmind.shared.PermissionRequestActivity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nVAUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VAUtils.kt\ncom/join/mgps/va/overmind/VAUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1508:1\n1869#2,2:1509\n1869#2,2:1511\n1869#2,2:1513\n1869#2,2:1516\n1869#2,2:1518\n1761#2,3:1528\n1#3:1515\n37#4:1520\n36#4,3:1521\n37#4:1524\n36#4,3:1525\n*S KotlinDebug\n*F\n+ 1 VAUtils.kt\ncom/join/mgps/va/overmind/VAUtils\n*L\n202#1:1509,2\n236#1:1511,2\n269#1:1513,2\n722#1:1516,2\n734#1:1518,2\n1324#1:1528,3\n838#1:1520\n838#1:1521,3\n989#1:1524\n989#1:1525,3\n*E\n"})
public final class i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f73263h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f73264i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    public static final String f73266k = "com.join.android.app.mgsim.wufun";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NotNull
    public static final String f73267l = "com.join.android.app.mgsim.wufun.addon";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NotNull
    public static final String f73268m = "com.join.android.app.mgsim.wufun";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NotNull
    public static final String f73269n = "com.join.android.app.mgsim.wufun.addon";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73274e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    public static final a f73262g = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static i f73265j = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f73270a = i.class.getCanonicalName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final ThreadPoolExecutor f73271b = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private String f73272c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private String f73273d = "0";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Handler f73275f = new Handler(new b());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ContentProviderClient a(Context context, Uri uri) {
            try {
                return context.getContentResolver().acquireUnstableContentProviderClient(uri);
            } catch (SecurityException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        @JvmStatic
        public static /* synthetic */ void h() {
        }

        private final void j(ContentProviderClient contentProviderClient) {
            if (contentProviderClient != null) {
                try {
                    if (Build.VERSION.SDK_INT >= 24) {
                        contentProviderClient.release();
                    } else {
                        contentProviderClient.release();
                    }
                } catch (Exception unused) {
                }
            }
        }

        public static /* synthetic */ void n(a aVar, Intent intent, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            aVar.m(intent, i10);
        }

        @JvmStatic
        @Nullable
        public Bundle b(@NotNull Context context, @NotNull Uri uri, @Nullable String str, @Nullable String str2, @Nullable Bundle bundle) throws IllegalAccessException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(uri, "uri");
            ContentProviderClient contentProviderClientA = a(context, uri);
            try {
                try {
                    if (contentProviderClientA == null) {
                        throw new IllegalAccessException();
                    }
                    Intrinsics.checkNotNull(str);
                    Bundle bundleCall = contentProviderClientA.call(str, str2, bundle);
                    j(contentProviderClientA);
                    return bundleCall;
                } catch (RemoteException e10) {
                    throw new IllegalAccessException(e10.getMessage());
                }
            } catch (Throwable th) {
                j(contentProviderClientA);
                throw th;
            }
        }

        public final void c(@Nullable Context context) {
            if (d().S() && context != null) {
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
        }

        @JvmStatic
        @NotNull
        public final i d() {
            return i.f73265j;
        }

        @NotNull
        public final String e() {
            return "content://com.join.android.app.mgsim.wufun.addon.virtual.service.fileprovider";
        }

        public final boolean f() {
            return i.f73264i;
        }

        public final boolean g() {
            if (d().S()) {
                return Overmind.is64Bit();
            }
            return false;
        }

        @JvmStatic
        public final void i(@Nullable String str, @Nullable String str2) {
            MindPackageSettings mindPackageSettingsK;
            if (str == null || !d().S() || (mindPackageSettingsK = Overmind.getMindPackageManager().k(str)) == null) {
                return;
            }
            c.a aVar = c.f73257a;
            Set<String> setE = aVar.e(str2);
            HashSet<String> supportAbis = mindPackageSettingsK.f89832e;
            Intrinsics.checkNotNullExpressionValue(supportAbis, "supportAbis");
            HashSet hashSet = new HashSet();
            hashSet.addAll(supportAbis);
            hashSet.retainAll(setE);
            boolean z10 = true;
            boolean z11 = !Overmind.is64Bit();
            mindPackageSettingsK.E();
            if (hashSet.isEmpty()) {
                if (supportAbis.isEmpty()) {
                    return;
                }
                if ((z11 && aVar.a(supportAbis)) || (!z11 && aVar.b(supportAbis))) {
                    z10 = false;
                }
                if (mindPackageSettingsK.E() != z10) {
                    Overmind.getMindPackageManager().D(str, z10);
                    return;
                }
                return;
            }
            if (setE.isEmpty()) {
                return;
            }
            if ((z11 && aVar.a(hashSet)) || (!z11 && aVar.b(hashSet))) {
                z10 = false;
            }
            if (mindPackageSettingsK.E() != z10) {
                Overmind.getMindPackageManager().D(str, z10);
            }
        }

        @NotNull
        public final String k(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                String strSubstring = "com.join.android.app.mgsim.wufun";
                int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) path, "com.join.android.app.mgsim.wufun", 0, false, 6, (Object) null);
                int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) path, net.lingala.zip4j.util.e.F0, iIndexOf$default, false, 4, (Object) null);
                if (iIndexOf$default != -1 && iIndexOf$default < iIndexOf$default2) {
                    strSubstring = path.substring(iIndexOf$default, iIndexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                }
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(path, strSubstring, "com.join.android.app.mgsim.wufun.addon", false, 4, (Object) null);
                try {
                    h1.e("replace " + path + " → " + strReplace$default);
                    return strReplace$default;
                } catch (Exception e10) {
                    e = e10;
                    path = strReplace$default;
                    e.printStackTrace();
                    return path;
                }
            } catch (Exception e11) {
                e = e11;
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void l(@NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            n(this, intent, 0, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void m(@NotNull Intent intent, int i10) {
            Intrinsics.checkNotNullParameter(intent, "intent");
        }

        public final void o(boolean z10) {
            i.f73264i = z10;
        }

        private a() {
        }
    }

    public static final class b implements Handler.Callback {
        b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            return false;
        }
    }

    public static /* synthetic */ int A(i iVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = f73263h;
        }
        return iVar.z(str, i10);
    }

    private final int B(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 128);
            h1.e(this.f73270a, "loadApk packageInfo");
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.versionCode;
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static /* synthetic */ void B0(i iVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        iVar.A0(str, str2, z10);
    }

    private final String C(Context context, String str) {
        String str2;
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 128);
            return (packageArchiveInfo == null || (str2 = packageArchiveInfo.versionName) == null) ? "0" : str2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "0";
        }
    }

    private final boolean D(String str) {
        List<TipBean> tipBeans;
        boolean z10 = true;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            List<DownloadTask> listI = q5.f.M().I(str);
            List<DownloadTask> list = listI;
            if ((list == null || list.isEmpty()) || (tipBeans = listI.get(0).getTipBeans()) == null) {
                return false;
            }
            List<TipBean> list2 = tipBeans;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                z10 = false;
            } else {
                for (TipBean tipBean : list2) {
                    if (Intrinsics.areEqual(tipBean != null ? tipBean.getId() : null, "276")) {
                    }
                }
                z10 = false;
            }
            return z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ void D0(i iVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, int i10, Object obj) {
        iVar.C0(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, (i10 & 1024) != 0 ? false : z10);
    }

    public static final boolean H() {
        return f73262g.g();
    }

    private final boolean J(String str) {
        return com.xinzhu.overmind.a.d(str).exists();
    }

    public static /* synthetic */ boolean M(i iVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = f73263h;
        }
        return iVar.L(str, i10);
    }

    public static /* synthetic */ boolean O(i iVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return iVar.N(str, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        f73262g.d().U(str);
        h1.e("killModApp:" + f73263h + ' ' + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(Intent intent, int i10) {
        Overmind.get().startActivity(intent, i10);
    }

    public static /* synthetic */ void e0(i iVar, Context context, ModMeta modMeta, int i10, String str, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = f73263h;
        }
        if ((i11 & 8) != 0) {
            str = null;
        }
        iVar.b0(context, modMeta, i10, str);
    }

    private final String g0(Context context, ApplicationInfo applicationInfo) {
        String string = "";
        if (context != null && applicationInfo != null) {
            try {
                String packageName = applicationInfo.packageName;
                Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
                d7.a aVarW = w(this, packageName, 0, 2, null);
                if (aVarW != null) {
                    CharSequence charSequence = aVarW.f90712e;
                    if (charSequence == null) {
                        charSequence = "";
                    }
                    string = charSequence.toString();
                } else {
                    CharSequence charSequenceLoadLabel = applicationInfo.loadLabel(context.getPackageManager());
                    if (charSequenceLoadLabel == null) {
                        charSequenceLoadLabel = "";
                    }
                    string = charSequenceLoadLabel.toString();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return string;
    }

    @JvmStatic
    public static final void h0(@Nullable String str, @Nullable String str2) {
        f73262g.i(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(Context context) {
        try {
            Object systemService = context.getSystemService(TTDownloadField.TT_ACTIVITY);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            Iterator<ActivityManager.RunningServiceInfo> it2 = ((ActivityManager) systemService).getRunningServices(Integer.MAX_VALUE).iterator();
            while (it2.hasNext()) {
                if (Intrinsics.areEqual(it2.next().service.getClassName(), MessengerService.class.getName())) {
                    h1.a("messenger service is running", new Object[0]);
                    return;
                }
            }
            h1.a("start messenger service", new Object[0]);
            context.startService(new Intent(context, (Class<?>) MessengerService.class));
        } catch (SecurityException e10) {
            e10.printStackTrace();
        }
    }

    private final void m(String str, int i10) {
        if (S()) {
            MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str);
            k kVar = k.f73277a;
            String strD = kVar.D(str, i10);
            Iterator it2 = (i10 == 0 ? CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{strD, kVar.k(str), kVar.V(str), kVar.e(str), kVar.h0(str)}) : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{strD, kVar.W(str, i10), kVar.f(str, i10), kVar.L(str, i10)})).iterator();
            while (it2.hasNext()) {
                FileUtils.deleteDirs((String) it2.next());
            }
            if (mindPackageSettingsK.E()) {
                k kVar2 = k.f73277a;
                String strG = kVar2.G(str, i10);
                String strL = kVar2.l(str);
                Iterator it3 = (i10 == 0 ? CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{strG, strL, kVar2.X(str), kVar2.h(str), kVar2.i0(str)}) : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{strG, strL, kVar2.Y(str, i10), kVar2.i(str, i10), kVar2.J(str, i10)})).iterator();
                while (it3.hasNext()) {
                    com.xinzhu.overmind.plugin.b.h((String) it3.next());
                }
            }
        }
    }

    static /* synthetic */ void n(i iVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        iVar.m(str, i10);
    }

    @JvmStatic
    @Nullable
    public static Bundle p(@NotNull Context context, @NotNull Uri uri, @Nullable String str, @Nullable String str2, @Nullable Bundle bundle) throws IllegalAccessException {
        return f73262g.b(context, uri, str, str2, bundle);
    }

    @JvmStatic
    @NotNull
    public static final i q() {
        return f73262g.d();
    }

    public static /* synthetic */ void r0(i iVar, String str, int i10, int i11, Object obj) throws IOException {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        iVar.q0(str, i10);
    }

    private final void s0() {
        if (S()) {
            Overmind overmind = Overmind.get();
            List<MindUserInfo> users = overmind.getUsers();
            List<MindUserInfo> list = users;
            if (list == null || list.isEmpty()) {
                return;
            }
            int i10 = ((MindUserInfo) CollectionsKt___CollectionsKt.last((List) users)).f89950b;
            if (overmind.getInstalledApplications(0, i10).isEmpty()) {
                overmind.deleteUser(i10);
                s0();
            }
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void t0(@NotNull Intent intent) {
        f73262g.l(intent);
    }

    @JvmStatic
    @JvmOverloads
    public static final void u0(@NotNull Intent intent, int i10) {
        f73262g.m(intent, i10);
    }

    public static /* synthetic */ d7.a w(i iVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return iVar.v(str, i10);
    }

    public static /* synthetic */ void x0(i iVar, String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        iVar.w0(str, str2, i10);
    }

    public final void A0(@Nullable String str, @Nullable String str2, boolean z10) {
        boolean z11;
        if (S()) {
            boolean z12 = true;
            if (str != null) {
                try {
                    z11 = str.length() == 0;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (z11) {
                return;
            }
            if (str2 != null && str2.length() != 0) {
                z12 = false;
            }
            if (z12) {
                return;
            }
            boolean zR = f73262g.d().R(str);
            PluginConfig.setModGameId(k.P(k.f73277a, str, 0, 2, null), str2);
            if (zR && z10) {
                m.a.j(m.f73282a, str, str2, 0, 4, null);
            }
        }
    }

    public final void C0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, boolean z10) {
        if (S()) {
            try {
                boolean zD = D(str);
                if (!f73262g.d().R(str)) {
                    File file = new File(k.P(k.f73277a, str, 0, 2, null));
                    PluginConfig.setModConfig(file.getAbsolutePath(), str2, str3, str4, str5, str6, str7, str8, str9, str10);
                    PluginConfig.setUtilsConfigState(file.getAbsolutePath(), zD);
                    return;
                }
                h1.e("syncWriteModSwitch", "start");
                Bundle bundle = new Bundle();
                bundle.putString("action", "writeModSwitch");
                bundle.putInt("userId", com.xinzhu.overmind.client.f.getUserId());
                bundle.putString("packageName", str);
                bundle.putString("goldSwitch", str2);
                bundle.putString("archiveSwitch", str3);
                bundle.putString("introductionSwitch", str4);
                bundle.putString("channelNum", str5);
                bundle.putString("targetVersion", str6);
                bundle.putString("androidId", str7);
                bundle.putString("platform", str8);
                bundle.putString("package_type", str9);
                bundle.putString("typeId", str10);
                bundle.putBoolean("utilsConfigState", zD);
                if (z10) {
                    m.f73282a.g(bundle);
                }
                h1.e("syncWriteModSwitch", PointCategory.END);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void E(@NotNull String packageName, int i10, @NotNull String archivePath, @Nullable String str, @NotNull String archiveId) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(archivePath, "archivePath");
        Intrinsics.checkNotNullParameter(archiveId, "archiveId");
        String strQ = k.q(k.f73277a, packageName, 0, 2, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(packageName);
        sb2.append(" \n ");
        sb2.append(archivePath);
        sb2.append("\n ");
        sb2.append(archiveId);
        sb2.append('\n');
        sb2.append(strQ);
        sb2.append("  ");
        PluginConfig.setArchivePath(strQ, archivePath, str, archiveId);
    }

    @Nullable
    public final InstallResult F(@NotNull String source) {
        String str;
        Intrinsics.checkNotNullParameter(source, "source");
        if (!S()) {
            return null;
        }
        if (StringsKt__StringsJVMKt.startsWith$default(source, net.lingala.zip4j.util.e.F0, false, 2, null)) {
            source = "file://" + source;
        }
        Overmind overmind = Overmind.get();
        InstallResult installResultInstallPackageAsUser_Storage = URLUtil.isValidUrl(source) ? overmind.installPackageAsUser_Storage(Uri.parse(source), f73263h) : overmind.installPackageAsUser_System(source, f73263h);
        if (installResultInstallPackageAsUser_Storage != null) {
            String[] strArr = new String[1];
            if (installResultInstallPackageAsUser_Storage.f89488b) {
                str = "安装成功";
            } else {
                str = "安装失败： " + installResultInstallPackageAsUser_Storage.f89490d;
            }
            strArr[0] = str;
            h1.e(strArr);
        }
        s0();
        return installResultInstallPackageAsUser_Storage;
    }

    public final boolean G(@Nullable String str, int i10) {
        String str2;
        if ((str == null || str.length() == 0) || !S()) {
            return false;
        }
        Overmind overmind = Overmind.get();
        InstallResult installResultInstallPackageAsUser_Exist = Overmind.getMindPackageManager().k(str) != null ? overmind.installPackageAsUser_Exist(str, i10) : overmind.installPackageAsUser_System(str, i10);
        if (installResultInstallPackageAsUser_Exist == null) {
            h1.e("安装失败： " + installResultInstallPackageAsUser_Exist + " is Null");
            return false;
        }
        String[] strArr = new String[1];
        if (installResultInstallPackageAsUser_Exist.f89488b) {
            str2 = "安装成功";
        } else {
            str2 = "安装失败： " + installResultInstallPackageAsUser_Exist.f89490d;
        }
        strArr[0] = str2;
        h1.e(strArr);
        s0();
        return installResultInstallPackageAsUser_Exist.f89488b;
    }

    public final boolean I(@Nullable ApplicationInfo applicationInfo) {
        if (!S() || Overmind.getContext() == null || applicationInfo == null) {
            return false;
        }
        return Build.VERSION.SDK_INT >= 23 && Overmind.getContext().getApplicationInfo().targetSdkVersion >= 23 && applicationInfo.targetSdkVersion > 23;
    }

    @JvmOverloads
    public final boolean K(@Nullable String str) {
        return M(this, str, 0, 2, null);
    }

    @JvmOverloads
    public final boolean L(@Nullable String str, int i10) {
        boolean zT;
        if ((str == null || str.length() == 0) || !S()) {
            return false;
        }
        if (Overmind.getMindPackageManager() == null) {
            return J(str);
        }
        try {
            zT = Overmind.getMindPackageManager().t(str, i10);
        } catch (Exception e10) {
            e10.printStackTrace();
            zT = false;
        }
        return zT || J(str);
    }

    public final boolean N(@Nullable String str, int i10) {
        if (!S()) {
            return false;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcessesContainPlugin = Overmind.get().getRunningAppProcessesContainPlugin();
            Intrinsics.checkNotNull(runningAppProcessesContainPlugin);
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcessesContainPlugin) {
                if (Intrinsics.areEqual(runningAppProcessInfo.processName, str) && i10 == runningAppProcessInfo.uid) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public final boolean P() {
        if (S()) {
            return Overmind.isPluginPkgInstalled();
        }
        return false;
    }

    public final boolean Q() {
        if (!S()) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = Overmind.getContext().getPackageManager().getApplicationInfo(Overmind.getPluginPkg(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            return bundle != null && Intrinsics.areEqual(bundle.get("vmengine"), "overmind");
        } catch (Exception unused) {
        }
    }

    public final boolean R(@Nullable String str) {
        if (!S()) {
            return false;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str);
        if (mindPackageSettingsK != null) {
            return mindPackageSettingsK.E();
        }
        File fileD = com.xinzhu.overmind.a.d(str);
        return fileD != null && fileD.exists();
    }

    public final boolean S() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public final boolean T(@Nullable Context context, @Nullable String str) {
        boolean z10;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageManager packageManager;
        if (str != null) {
            try {
                z10 = str.length() == 0;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        if (z10) {
            return false;
        }
        PackageInfo packageArchiveInfo = (context == null || (packageManager = context.getPackageManager()) == null) ? null : packageManager.getPackageArchiveInfo(str, 128);
        if (packageArchiveInfo == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return false;
        }
        return bundle.getBoolean(com.join.mgps.mod.utils.d.f71910l);
    }

    public final void U(@Nullable String str) {
        if (S()) {
            if (str == null || str.length() == 0) {
                return;
            }
            Overmind.get().stopApk(str, f73263h);
        }
    }

    public final void V() {
    }

    public final void W(@Nullable Intent intent) {
        if (intent != null) {
            try {
                final String stringExtra = intent.getStringExtra("exitGamePackage");
                if (stringExtra == null || stringExtra.length() == 0) {
                    return;
                }
                this.f73271b.execute(new Runnable() { // from class: com.join.mgps.va.overmind.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.X(stringExtra);
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final boolean Y(@Nullable String str, final int i10, @Nullable Bundle bundle) {
        final Intent intentJ;
        if ((Overmind.getMindPackageManager().k(str).E() && !com.xinzhu.overmind.plugin.b.i()) || (intentJ = Overmind.getMindPackageManager().j(str, i10)) == null) {
            return false;
        }
        if (bundle != null) {
            intentJ.putExtras(bundle);
        }
        new Thread(new Runnable() { // from class: com.join.mgps.va.overmind.h
            @Override // java.lang.Runnable
            public final void run() {
                i.Z(intentJ, i10);
            }
        }).start();
        return true;
    }

    public final void a0(@NotNull Context context, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (S()) {
            if (str == null || str.length() == 0) {
                return;
            }
            try {
                PluginConfig.setLastLaunchPkg(context, str);
                Overmind.get().launchApk(str, i10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0157  */
    public final void b0(@NotNull Context context, @Nullable ModMeta modMeta, int i10, @Nullable String str) {
        DownloadTask downloadTaskG;
        Intrinsics.checkNotNullParameter(context, "context");
        if (S()) {
            try {
                h1.e("WF", "launch mod game \n" + i10 + " \n" + modMeta);
                if (modMeta != null && !TextUtils.isEmpty(modMeta.getPackageName()) && Overmind.get() != null) {
                    this.f73272c = modMeta.getModPath();
                    modMeta.setChannelNum(com.papa.sim.statistic.m.a(context));
                    modMeta.setTarget_version(a0.c(context));
                    modMeta.setAndroidId(q.n(context).e(context));
                    modMeta.setPlatform("wufun");
                    modMeta.setPackage_type("wufun");
                    boolean zR = R(modMeta.getPackageName());
                    D0(this, modMeta.getPackageName(), modMeta.getGoldFingerSwitch(), modMeta.getArchiveCloudSwitch(), modMeta.getIntroductionSwitch(), modMeta.getChannelNum(), modMeta.getTarget_version() + "", modMeta.getAndroidId(), modMeta.getPlatform(), modMeta.getPackage_type(), modMeta.getTypeId(), false, 1024, null);
                    B0(this, modMeta.getPackageName(), modMeta.getGameId(), false, 4, null);
                    if (Build.VERSION.SDK_INT >= 23 && (downloadTaskG = q5.f.M().G(modMeta.getGameId())) != null && downloadTaskG.getPermissionList() != null) {
                        List<String> permissionList = downloadTaskG.getPermissionList();
                        Intrinsics.checkNotNullExpressionValue(permissionList, "getPermissionList(...)");
                        if (!permissionList.isEmpty()) {
                            ApplicationInfo applicationInfoF = Overmind.getMindPackageManager().f(modMeta.getPackageName(), 0, i10);
                            if (applicationInfoF != null && I(applicationInfoF)) {
                                List<String> permissionList2 = downloadTaskG.getPermissionList();
                                Intrinsics.checkNotNullExpressionValue(permissionList2, "getPermissionList(...)");
                                String[] strArr = (String[]) permissionList2.toArray(new String[0]);
                                if (!j(strArr, zR)) {
                                    PermissionRequestActivity.b(context, strArr, g0(context, applicationInfoF), i10, modMeta.getPackageName(), 1000);
                                    return;
                                }
                            }
                        }
                    }
                    m0(context, modMeta, i10, str);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void c0(@NotNull Context context, @Nullable ModMeta modMeta, @NotNull DownloadTask task) {
        String gameId;
        ApplicationInfo applicationInfoF;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(task, "task");
        if (S()) {
            if (modMeta != null) {
                try {
                    gameId = modMeta.getGameId();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            } else {
                gameId = null;
            }
            UtilsMy.Q4(context, gameId);
            h1.e("WF", "launch mod game\n" + modMeta);
            if (modMeta != null) {
                String packageName = modMeta.getPackageName();
                if (!(packageName == null || packageName.length() == 0) && Overmind.get() != null) {
                    this.f73272c = modMeta.getModPath();
                    modMeta.setChannelNum(com.papa.sim.statistic.m.a(context));
                    modMeta.setTarget_version(a0.c(context));
                    modMeta.setAndroidId(q.n(context).e(context));
                    modMeta.setPlatform("wufun");
                    modMeta.setPackage_type("wufun");
                    D0(this, modMeta.getPackageName(), modMeta.getGoldFingerSwitch(), modMeta.getArchiveCloudSwitch(), modMeta.getIntroductionSwitch(), modMeta.getChannelNum(), modMeta.getTarget_version() + "", modMeta.getAndroidId(), modMeta.getPlatform(), modMeta.getPackage_type(), modMeta.getTypeId(), false, 1024, null);
                    if (N(modMeta.getPackageName(), f73263h)) {
                        a0(context, f73263h, modMeta.getPackageName());
                        return;
                    }
                    B0(this, modMeta.getPackageName(), modMeta.getGameId(), false, 4, null);
                    if (Build.VERSION.SDK_INT >= 23 && task.getPermissionList() != null) {
                        List<String> permissionList = task.getPermissionList();
                        Intrinsics.checkNotNullExpressionValue(permissionList, "getPermissionList(...)");
                        if ((!permissionList.isEmpty()) && (applicationInfoF = Overmind.getMindPackageManager().f(modMeta.getPackageName(), 0, f73263h)) != null && I(applicationInfoF)) {
                            List<String> permissionList2 = task.getPermissionList();
                            Intrinsics.checkNotNullExpressionValue(permissionList2, "getPermissionList(...)");
                            String[] strArr = (String[]) permissionList2.toArray(new String[0]);
                            if (!j(strArr, P() && R(modMeta.getPackageName()))) {
                                String strG0 = g0(context, applicationInfoF);
                                Activity activity = context instanceof Activity ? (Activity) context : null;
                                Activity activity2 = activity == null ? MApplication.f3182z.getActivity() : activity;
                                Intrinsics.checkNotNull(activity2);
                                PermissionRequestActivity.b(activity2, strArr, strG0, f73263h, modMeta.getPackageName(), 1000);
                                return;
                            }
                        }
                    }
                    l0(context, modMeta, task);
                }
            }
        }
    }

    public final void d0(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (S()) {
            h1.e("launchApp " + f73263h + ' ' + packageName);
            a0(context, f73263h, packageName);
        }
    }

    public final void f0(@NotNull Context context, int i10, @Nullable String str, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (S()) {
            if (str == null || str.length() == 0) {
                return;
            }
            try {
                PluginConfig.setLastLaunchPkg(context, str);
                Y(str, i10, bundle);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void g() {
    }

    public final boolean h(@Nullable String str, int i10) {
        boolean z10 = false;
        if ((str == null || str.length() == 0) || !S()) {
            return false;
        }
        Overmind overmind = Overmind.get();
        MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str);
        if (mindPackageSettingsK == null) {
            return false;
        }
        for (Integer num : mindPackageSettingsK.y()) {
            if (num != null && num.intValue() == i10) {
                z10 = true;
            }
        }
        if (!z10) {
            MindUserInfo mindUserInfo = null;
            for (MindUserInfo mindUserInfo2 : overmind.getUsers()) {
                if (mindUserInfo2.f89950b == i10) {
                    mindUserInfo = mindUserInfo2;
                }
            }
            if (mindUserInfo == null && overmind.createUser(i10) == null) {
                throw new IllegalStateException();
            }
            if (overmind.installPackageAsUser_Exist(str, i10).f89488b) {
                return true;
            }
        }
        return z10;
    }

    @RequiresApi(api = 23)
    public final boolean i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!S() || !Overmind.isPluginPkgInstalled() || com.xinzhu.overmind.plugin.b.i()) {
            return false;
        }
        Intent intentA = com.xinzhu.overmind.virtual.oem.a.a(context);
        if (intentA == null) {
            return true;
        }
        try {
            context.startActivity(intentA);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public final void i0(int i10) {
        if (S()) {
            Overmind overmind = Overmind.get();
            MindUserInfo mindUserInfo = null;
            for (MindUserInfo mindUserInfo2 : overmind.getUsers()) {
                if (mindUserInfo2.f89950b == i10) {
                    mindUserInfo = mindUserInfo2;
                }
            }
            if (mindUserInfo == null && overmind.createUser(i10) == null) {
                throw new IllegalStateException();
            }
        }
    }

    public final boolean j(@Nullable String[] strArr, boolean z10) {
        if (strArr == null) {
            return true;
        }
        Iterator it2 = ArrayIteratorKt.iterator(strArr);
        while (it2.hasNext()) {
            if (!k((String) it2.next(), z10)) {
                return false;
            }
        }
        return true;
    }

    public final void j0(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f73271b.execute(new Runnable() { // from class: com.join.mgps.va.overmind.g
            @Override // java.lang.Runnable
            public final void run() {
                i.k0(context);
            }
        });
    }

    public final boolean k(@Nullable String str, boolean z10) {
        if (!S() || Overmind.getContext() == null) {
            return false;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        PackageManager packageManager = Overmind.getContext().getPackageManager();
        if (z10) {
            if (packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun.addon") != 0) {
                return false;
            }
        } else if (packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun") != 0) {
            return false;
        }
        return true;
    }

    public final boolean l(@Nullable String str) {
        try {
            if (new File(str).exists()) {
                Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(str).entries();
                while (enumerationEntries.hasMoreElements()) {
                    String name = enumerationEntries.nextElement().getName();
                    Intrinsics.checkNotNull(name);
                    if (!StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) null) && (StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "lib/armeabi-v7a/libctrl.so", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "lib/armeabi-v7a/libGGGG.so", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "lib/armeabi-v7a/libpgod.so", false, 2, (Object) null))) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public final void l0(@NotNull Context context, @NotNull ModMeta meta, @NotNull DownloadTask task) {
        Intent intent;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(meta, "meta");
        Intrinsics.checkNotNullParameter(task, "task");
        int iZ = z(meta.getPackageName(), f73263h);
        if (task.isMiniGame() || task.isH5VmGame()) {
            intent = new Intent(context, (Class<?>) MiniGameLoadingActivity_.class);
        } else {
            intent = (7 == iZ || 1 == iZ) ? new Intent(context, (Class<?>) ModLoadingActivity.class) : new Intent(context, (Class<?>) ModLoadingLandActivity.class);
        }
        intent.putExtra("gameId", meta.getGameId());
        intent.putExtra("packageName", meta.getPackageName());
        intent.putExtra("modPath", this.f73272c);
        intent.putExtra("modVersion", meta.getModVersion());
        intent.putExtra("modCode", meta.getModCode());
        intent.putExtra("modType", meta.getModType());
        intent.putExtra("typeId", meta.getTypeId());
        intent.putExtra("modMeta", JsonMapper.getInstance().toJson(meta));
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (task.isMiniGame() || task.isH5VmGame()) {
            intent.putExtra("_mod_info", task.getMod_info());
            intent.putExtra("isLaunchApp", true);
        } else {
            APKUtils.b bVar = APKUtils.f34739a;
            if (bVar.G(task)) {
                intent.putExtra("_mod_info", task.getSingle_game_mod_info());
            } else if (bVar.C(task)) {
                intent.putExtra("_mod_info", task.getMod_info());
            }
        }
        context.startActivity(intent);
        UtilsMy.Z1(context, 12, task.getCrc_link_type_val());
    }

    public final void m0(@NotNull Context context, @NotNull ModMeta meta, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(meta, "meta");
        int iZ = z(meta.getPackageName(), i10);
        boolean z10 = true;
        Intent intent = (7 == iZ || 1 == iZ) ? new Intent(context, (Class<?>) ModLoadingActivity.class) : new Intent(context, (Class<?>) ModLoadingLandActivity.class);
        intent.putExtra("gameId", meta.getGameId());
        intent.putExtra("packageName", meta.getPackageName());
        intent.putExtra("modPath", this.f73272c);
        intent.putExtra("modVersion", meta.getModVersion());
        intent.putExtra("modCode", meta.getModCode());
        intent.putExtra("modType", meta.getModType());
        intent.putExtra("modMeta", JsonMapper.getInstance().toJson(meta));
        intent.putExtra("userId", i10);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (str != null && str.length() != 0) {
            z10 = false;
        }
        if (!z10) {
            intent.putExtra("_mod_info", str);
        }
        context.startActivity(intent);
    }

    public final void n0() {
        try {
            if (S() && com.xinzhu.datatransfer.b.a().exists()) {
                boolean zIsPkgInstalledOutside = Overmind.isPkgInstalledOutside(Overmind.getPluginPkg());
                if (!P() && !zIsPkgInstalledOutside) {
                    Overmind.get().doTransferInstalls();
                    return;
                }
                if (!Q()) {
                    Overmind.get().doTransferInstallsOnlyForMainPackage();
                    return;
                }
                com.xinzhu.overmind.plugin.b.e(com.xinzhu.overmind.a.i().getAbsolutePath(), com.xinzhu.overmind.a.h().getAbsolutePath());
                k kVar = k.f73277a;
                com.xinzhu.overmind.plugin.b.e(kVar.c(), kVar.d());
                Overmind.get().doTransferInstalls();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void o(@NotNull Context context, @NotNull String cfgPath, @NotNull String packageName, @NotNull String modPath, @Nullable String str, int i10, boolean z10, boolean z11) throws Throwable {
        StringBuilder sb2;
        int i11;
        boolean z12;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cfgPath, "cfgPath");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(modPath, "modPath");
        try {
            try {
                k kVar = k.f73277a;
                File file = new File(kVar.m(packageName));
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (!Overmind.is64Bit() || z11) {
                    sb2 = new StringBuilder();
                    sb2.append(file.getAbsolutePath());
                    sb2.append("/arm");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(file.getAbsolutePath());
                    sb2.append("/arm64");
                }
                String string = sb2.toString();
                File file2 = new File(k.b0(kVar, packageName, 0, 2, null));
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                try {
                    f73264i = T(context, modPath);
                    File file3 = new File(string, "soloaded.txt");
                    if (file3.exists()) {
                        file3.delete();
                    }
                    if (new File(modPath).exists()) {
                        String str2 = (!Overmind.is64Bit() || z11) ? "arm" : com.join.mgps.mod.utils.d.f71902d;
                        List<String> listJ = com.join.mgps.mod.utils.f.f().j(modPath, str2);
                        File file4 = new File(f73264i ? string : file2.getAbsolutePath());
                        List<String> list = listJ;
                        if ((list == null || list.isEmpty()) && file4.exists()) {
                            file4.delete();
                        }
                        int size = listJ.size();
                        while (true) {
                            if (i11 >= size) {
                                z12 = false;
                                break;
                            }
                            File file5 = new File(f73264i ? string : file2.getAbsolutePath(), listJ.get(i11));
                            i11 = (file5.exists() && file5.isFile()) ? i11 + 1 : 0;
                            z12 = true;
                            break;
                        }
                        int soCode = PluginConfig.getSoCode(cfgPath + "");
                        h1.e("mod info: localCode=" + soCode, "srvCode=" + i10, "lackSo=" + z12);
                        if (soCode != 0 && soCode == i10 && !z12) {
                            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                            return;
                        } else if (f73264i) {
                            com.join.mgps.mod.utils.f.f().e(null, modPath, string, file2.getAbsolutePath(), listJ, str2);
                        } else {
                            com.join.mgps.mod.utils.f.f().c(null, modPath, file2.getAbsolutePath(), str2);
                        }
                    }
                    Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                    Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71920v));
                }
            } catch (Throwable th) {
                th = th;
                Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
        } catch (Throwable th2) {
            th = th2;
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71919u));
            throw th;
        }
    }

    public final void o0(@NotNull String targetPkg) {
        Intrinsics.checkNotNullParameter(targetPkg, "targetPkg");
        try {
            if (S() && com.xinzhu.datatransfer.b.a().exists()) {
                if (!P()) {
                    Overmind.get().doTransferInstalls();
                } else {
                    if (!Q()) {
                        Overmind.get().doTransferInstallsOnlyForMainPackage();
                        return;
                    }
                    com.xinzhu.overmind.plugin.b.e(com.xinzhu.overmind.a.e(targetPkg).getAbsolutePath(), com.xinzhu.overmind.a.d(targetPkg).getAbsolutePath());
                    Overmind.get().doTransferInstalls();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void p0(@Nullable String str, int i10, @NotNull String packageName) throws IOException {
        File parentFile;
        File parentFile2;
        File parentFile3;
        File parentFile4;
        File parentFile5;
        File parentFile6;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (i10 == 0) {
            k kVar = k.f73277a;
            y.c archiveSection = PluginConfig.getArchiveSection(k.q(kVar, packageName, 0, 2, null));
            if (archiveSection != null) {
                String strC = archiveSection.c("archivePath");
                Intrinsics.checkNotNull(strC);
                if (StringsKt__StringsJVMKt.startsWith$default(strC, "/Android/data", false, 2, null)) {
                    File file = new File(kVar.k(packageName) + "/retArchive.lock");
                    MindShareFileInfo mindShareFileInfoB = com.xinzhu.overmind.plugin.b.b(kVar.l0() + strC);
                    if (!file.exists() && mindShareFileInfoB != null && mindShareFileInfoB.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(kVar.l0() + strC, kVar.k0() + strC);
                        com.xinzhu.overmind.plugin.b.h(kVar.l0() + strC);
                        File parentFile7 = file.getParentFile();
                        if (((parentFile7 == null || parentFile7.exists()) ? false : true) && (parentFile6 = file.getParentFile()) != null) {
                            parentFile6.mkdirs();
                        }
                        file.createNewFile();
                    }
                } else if (StringsKt__StringsJVMKt.startsWith$default(strC, "/data/data/", false, 2, null)) {
                    String strD = kVar.D(packageName, i10);
                    String strG = kVar.G(packageName, i10);
                    File file2 = new File(kVar.k(packageName) + "/retArchive.lock");
                    MindShareFileInfo mindShareFileInfoB2 = com.xinzhu.overmind.plugin.b.b(strG);
                    if (!file2.exists() && mindShareFileInfoB2 != null && mindShareFileInfoB2.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(strG, strD);
                        com.xinzhu.overmind.plugin.b.h(strG);
                        File parentFile8 = file2.getParentFile();
                        if (((parentFile8 == null || parentFile8.exists()) ? false : true) && (parentFile5 = file2.getParentFile()) != null) {
                            parentFile5.mkdirs();
                        }
                        file2.createNewFile();
                    }
                } else {
                    String str2 = "/user/" + packageName + '/' + strC;
                    File file3 = new File(kVar.k(packageName) + "/retArchive.lock");
                    MindShareFileInfo mindShareFileInfoB3 = com.xinzhu.overmind.plugin.b.b(kVar.k0() + str2);
                    if (!file3.exists() && mindShareFileInfoB3 != null && mindShareFileInfoB3.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(kVar.k0() + str2, kVar.l0() + str2);
                        com.xinzhu.overmind.plugin.b.h(kVar.l0() + str2);
                        File parentFile9 = file3.getParentFile();
                        if (((parentFile9 == null || parentFile9.exists()) ? false : true) && (parentFile4 = file3.getParentFile()) != null) {
                            parentFile4.mkdirs();
                        }
                        file3.createNewFile();
                    }
                }
            }
            File file4 = new File(kVar.e(packageName) + "/retArchive.lock");
            if (!file4.exists()) {
                com.xinzhu.overmind.plugin.b.e(kVar.h(packageName), kVar.e(packageName));
                com.xinzhu.overmind.plugin.b.h(kVar.h(packageName));
                com.xinzhu.overmind.plugin.b.e(kVar.i0(packageName), kVar.h0(packageName));
                com.xinzhu.overmind.plugin.b.h(kVar.i0(packageName));
                File parentFile10 = file4.getParentFile();
                if (((parentFile10 == null || parentFile10.exists()) ? false : true) && (parentFile3 = file4.getParentFile()) != null) {
                    parentFile3.mkdirs();
                }
                file4.createNewFile();
            }
        } else {
            CloudArchiveTable cloudArchiveTableS = t6.g.t().s(str, i10);
            if (cloudArchiveTableS != null) {
                String archiveFolder = cloudArchiveTableS.getArchiveFolder();
                Intrinsics.checkNotNull(archiveFolder);
                if (StringsKt__StringsJVMKt.startsWith$default(archiveFolder, "/Android/data", false, 2, null)) {
                    String str3 = "/Android/data/" + cloudArchiveTableS.getPackageName();
                    String strReplace$default = StringsKt__StringsJVMKt.replace$default(archiveFolder, str3, "/Android/data" + ("/user/" + i10) + File.separator + cloudArchiveTableS.getPackageName(), false, 4, (Object) null);
                    StringBuilder sb2 = new StringBuilder();
                    k kVar2 = k.f73277a;
                    sb2.append(kVar2.k0());
                    sb2.append(strReplace$default);
                    sb2.append("/retArchive.lock");
                    File file5 = new File(sb2.toString());
                    MindShareFileInfo mindShareFileInfoB4 = com.xinzhu.overmind.plugin.b.b(kVar2.l0() + strReplace$default);
                    if (!file5.exists() && mindShareFileInfoB4 != null && mindShareFileInfoB4.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(kVar2.l0() + strReplace$default, kVar2.k0() + strReplace$default);
                        com.xinzhu.overmind.plugin.b.h(kVar2.l0() + strReplace$default);
                        File parentFile11 = file5.getParentFile();
                        if (((parentFile11 == null || parentFile11.exists()) ? false : true) && (parentFile2 = file5.getParentFile()) != null) {
                            parentFile2.mkdirs();
                        }
                        file5.createNewFile();
                    }
                } else if (StringsKt__StringsJVMKt.startsWith$default(archiveFolder, "/data/data/", false, 2, null)) {
                    k kVar3 = k.f73277a;
                    String packageName2 = cloudArchiveTableS.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName2, "getPackageName(...)");
                    String strD2 = kVar3.D(packageName2, i10);
                    String packageName3 = cloudArchiveTableS.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName3, "getPackageName(...)");
                    String strG2 = kVar3.G(packageName3, i10);
                    File file6 = new File(strD2 + "/retArchive.lock");
                    MindShareFileInfo mindShareFileInfoB5 = com.xinzhu.overmind.plugin.b.b(strG2);
                    if (!file6.exists() && mindShareFileInfoB5 != null && mindShareFileInfoB5.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(strG2, strD2);
                        com.xinzhu.overmind.plugin.b.h(strD2);
                        File parentFile12 = file6.getParentFile();
                        if (((parentFile12 == null || parentFile12.exists()) ? false : true) && (parentFile = file6.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        file6.createNewFile();
                    }
                } else {
                    String str4 = "/user/" + cloudArchiveTableS.getUserId() + '/' + cloudArchiveTableS.getPackageName() + '/' + archiveFolder;
                    StringBuilder sb3 = new StringBuilder();
                    k kVar4 = k.f73277a;
                    sb3.append(kVar4.k0());
                    sb3.append(str4);
                    sb3.append("/retArchive.lock");
                    File file7 = new File(sb3.toString());
                    MindShareFileInfo mindShareFileInfoB6 = com.xinzhu.overmind.plugin.b.b(kVar4.l0() + str4);
                    if (!file7.exists() && mindShareFileInfoB6 != null && mindShareFileInfoB6.f89715c.booleanValue()) {
                        com.xinzhu.overmind.plugin.b.e(kVar4.l0() + str4, kVar4.k0() + str4);
                        com.xinzhu.overmind.plugin.b.h(kVar4.k0() + str4);
                        File parentFile13 = file7.getParentFile();
                        if ((parentFile13 == null || parentFile13.exists()) ? false : true) {
                            file7.mkdirs();
                        }
                        file7.createNewFile();
                    }
                }
            }
        }
        StringBuilder sb4 = new StringBuilder();
        k kVar5 = k.f73277a;
        sb4.append(kVar5.k0());
        sb4.append("/user/");
        sb4.append(i10);
        sb4.append('/');
        sb4.append(packageName);
        String string = sb4.toString();
        if (new File(string).exists()) {
            File file8 = new File(kVar5.k0() + "/user/" + i10 + "/retArchive.lock");
            String str5 = kVar5.l0() + "/user/" + i10 + '/' + packageName;
            long jFileSize = FileUtils.fileSize(string);
            long jB = m.f73282a.b(str5);
            MindShareFileInfo mindShareFileInfoB7 = com.xinzhu.overmind.plugin.b.b(str5);
            if (!file8.exists() || (jB < jFileSize && mindShareFileInfoB7 != null && mindShareFileInfoB7.f89715c.booleanValue())) {
                com.xinzhu.overmind.plugin.b.e(str5, string);
                com.xinzhu.overmind.plugin.b.h(string);
                File parentFile14 = file8.getParentFile();
                if ((parentFile14 == null || parentFile14.exists()) ? false : true) {
                    file8.mkdirs();
                }
                file8.createNewFile();
            }
        }
    }

    public final void q0(@NotNull String targetPkg, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(targetPkg, "targetPkg");
        StringBuilder sb2 = new StringBuilder();
        k kVar = k.f73277a;
        sb2.append(kVar.k(targetPkg));
        sb2.append("/retrieve.lock");
        File file = new File(sb2.toString());
        File parentFile = file.getParentFile();
        boolean z10 = false;
        if (parentFile != null && parentFile.exists()) {
            z10 = true;
        }
        if (!z10 || file.exists()) {
            return;
        }
        com.xinzhu.overmind.plugin.b.e(kVar.h(targetPkg), kVar.e(targetPkg));
        com.xinzhu.overmind.plugin.b.e(kVar.G(targetPkg, i10) + "/shared_prefs", kVar.D(targetPkg, i10) + "/shared_prefs");
        file.createNewFile();
    }

    @NotNull
    public final String r(boolean z10) {
        if (!S() || !z10) {
            String PATH_ANDROID_DATA = z.f50179r;
            Intrinsics.checkNotNullExpressionValue(PATH_ANDROID_DATA, "PATH_ANDROID_DATA");
            return PATH_ANDROID_DATA;
        }
        return k.f73277a.j0() + "/data";
    }

    @NotNull
    public final String s(boolean z10) {
        if (S() && z10) {
            return k.f73277a.j0();
        }
        String PATH_ANDROID = z.f50180s;
        Intrinsics.checkNotNullExpressionValue(PATH_ANDROID, "PATH_ANDROID");
        return PATH_ANDROID;
    }

    @NotNull
    public final String t(boolean z10) {
        if (!S() || !z10) {
            String PATH_ANDROID_OBB = z.f50178q;
            Intrinsics.checkNotNullExpressionValue(PATH_ANDROID_OBB, "PATH_ANDROID_OBB");
            return PATH_ANDROID_OBB;
        }
        return k.f73277a.j0() + "/obb";
    }

    @JvmOverloads
    @Nullable
    public final d7.a u(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return w(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final d7.a v(@NotNull String packageName, int i10) {
        PackageInfo next;
        String str;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        d7.a aVar = new d7.a();
        boolean z10 = true;
        if (!S()) {
            List<DownloadTask> listI = q5.f.M().I(packageName);
            List<DownloadTask> list = listI;
            if (!(list == null || list.isEmpty())) {
                for (DownloadTask downloadTask : listI) {
                    if (APKUtils.f34739a.H(downloadTask)) {
                        aVar.f90712e = downloadTask.getShowName();
                        aVar.f90718k = downloadTask.getVerCode();
                        aVar.f90719l = downloadTask.getVer_name();
                        aVar.f90708a = downloadTask.getPackageName();
                        return aVar;
                    }
                }
            }
        }
        Iterator<PackageInfo> it2 = Overmind.get().getInstalledPackages(0, i10).iterator();
        do {
            if (!it2.hasNext()) {
                if (R(packageName) && P() && !Q()) {
                    d7.a aVar2 = new d7.a();
                    List<DownloadTask> listI2 = q5.f.M().I(packageName);
                    List<DownloadTask> list2 = listI2;
                    if (list2 != null && !list2.isEmpty()) {
                        z10 = false;
                    }
                    if (!z10) {
                        for (DownloadTask downloadTask2 : listI2) {
                            if (APKUtils.f34739a.H(downloadTask2)) {
                                aVar2.f90712e = downloadTask2.getShowName();
                                aVar2.f90718k = downloadTask2.getVerCode();
                                aVar2.f90719l = downloadTask2.getVer_name();
                                aVar2.f90708a = downloadTask2.getPackageName();
                                return aVar2;
                            }
                        }
                    }
                }
                return null;
            }
            next = it2.next();
            str = next.packageName;
        } while ((str == null || str.length() == 0) | (!Intrinsics.areEqual(next.packageName, packageName)));
        aVar.f90719l = next.versionName;
        aVar.f90718k = next.versionCode;
        aVar.f90708a = next.packageName;
        try {
            if (!Overmind.getMindPackageManager().k(next.packageName).E()) {
                ApplicationInfo applicationInfo = next.applicationInfo;
                aVar.f90712e = String.valueOf(applicationInfo != null ? applicationInfo.loadLabel(Overmind.getPackageManager()) : null);
                ApplicationInfo applicationInfo2 = next.applicationInfo;
                aVar.f90711d = applicationInfo2 != null ? applicationInfo2.loadIcon(Overmind.getPackageManager()) : null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }

    @JvmOverloads
    public final void v0(@NotNull String packageName, @NotNull String abi) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(abi, "abi");
        x0(this, packageName, abi, 0, 4, null);
    }

    @JvmOverloads
    public final void w0(@NotNull String packageName, @NotNull String abi, int i10) {
        MindPackageSettings mindPackageSettingsK;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(abi, "abi");
        if (S() && (mindPackageSettingsK = Overmind.getMindPackageManager().k(packageName)) != null) {
            mindPackageSettingsK.E();
            boolean z10 = c.f73257a.h(abi) != Overmind.is64Bit();
            if (z10 != mindPackageSettingsK.E()) {
                Overmind.getMindPackageManager().D(packageName, z10);
            }
        }
    }

    @NotNull
    public final List<d7.a> x() {
        if (!S()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<ApplicationInfo> installedApplications = Overmind.get().getInstalledApplications(0, f73263h);
        List<PackageInfo> installedPackages = Overmind.get().getInstalledPackages(0, f73263h);
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 31) {
            Intrinsics.checkNotNull(installedApplications);
            for (ApplicationInfo applicationInfo : installedApplications) {
                d7.a aVar = new d7.a();
                aVar.f90719l = applicationInfo.compileSdkVersionCodename;
                aVar.f90718k = applicationInfo.compileSdkVersion;
                aVar.f90708a = applicationInfo.packageName;
                aVar.f90712e = applicationInfo.loadLabel(Overmind.getPackageManager()).toString();
                aVar.f90711d = applicationInfo.loadIcon(Overmind.getPackageManager());
                arrayList.add(aVar);
            }
        } else {
            Intrinsics.checkNotNull(installedPackages);
            for (PackageInfo packageInfo : installedPackages) {
                d7.a aVar2 = new d7.a();
                aVar2.f90719l = packageInfo.versionName;
                aVar2.f90718k = packageInfo.versionCode;
                aVar2.f90708a = packageInfo.packageName;
                ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                Drawable drawableLoadIcon = null;
                aVar2.f90712e = String.valueOf(applicationInfo2 != null ? applicationInfo2.loadLabel(Overmind.getPackageManager()) : null);
                ApplicationInfo applicationInfo3 = packageInfo.applicationInfo;
                if (applicationInfo3 != null) {
                    drawableLoadIcon = applicationInfo3.loadIcon(Overmind.getPackageManager());
                }
                aVar2.f90711d = drawableLoadIcon;
                arrayList.add(aVar2);
            }
        }
        return arrayList;
    }

    @NotNull
    public final Handler y() {
        return this.f73275f;
    }

    public final void y0(@Nullable String str) {
        boolean z10;
        if (S()) {
            if (str != null) {
                try {
                    z10 = str.length() == 0;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (z10) {
                return;
            }
            MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str);
            if (mindPackageSettingsK != null) {
                for (Integer num : mindPackageSettingsK.y()) {
                    Intrinsics.checkNotNull(num);
                    m(str, num.intValue());
                }
            }
            t6.g.t().n(str);
            Overmind.get().uninstallPackage(str);
            s0();
        }
    }

    public final int z(@Nullable String str, int i10) {
        Intent intentJ;
        ComponentName component;
        if (!(str == null || str.length() == 0) && (intentJ = Overmind.getMindPackageManager().j(str, i10)) != null && (component = intentJ.getComponent()) != null) {
            ActivityInfo activityInfoE = Overmind.getMindPackageManager().e(component, intentJ.getFlags(), i10);
            if (activityInfoE != null) {
                return activityInfoE.screenOrientation;
            }
        }
        return 6;
    }

    public final boolean z0(@Nullable String str, int i10) {
        boolean z10;
        if (!S()) {
            return false;
        }
        if (str != null) {
            try {
                z10 = str.length() == 0;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        if (z10) {
            return false;
        }
        Overmind.get().uninstallPackageAsUser(str, i10);
        s0();
        m(str, i10);
        return true;
    }
}
