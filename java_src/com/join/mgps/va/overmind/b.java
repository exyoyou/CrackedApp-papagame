package com.join.mgps.va.overmind;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.mod.utils.PluginConfig;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import dalvik.system.DexClassLoader;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    public static final a f73248g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    public static final String f73249h = "com.join.android.app.mgsim.wufun";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public static final String f73250i = "com.join.android.app.mgsim.wufun.addon";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private String f73251a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private String f73252b = "0";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private com.join.mgps.mod.utils.b f73254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73256f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final boolean a() {
        return this.f73256f;
    }

    public final boolean b() {
        if (d()) {
            return Overmind.isPluginPkgInstalled();
        }
        return false;
    }

    public final boolean c(@Nullable String str) {
        if (!d()) {
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

    public final boolean d() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public final boolean e(@Nullable Context context, @NotNull String path) {
        PackageInfo packageArchiveInfo;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Intrinsics.checkNotNullParameter(path, "path");
        if (!new File(path).exists() || context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(path, 128)) == null) {
                return false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            packageArchiveInfo = null;
        }
        if (packageArchiveInfo == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return false;
        }
        return bundle.getBoolean(com.join.mgps.mod.utils.d.f71910l);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0169  */
    /* JADX WARN: Code duplicated, block: B:55:0x0176 A[Catch: Exception -> 0x0165, TryCatch #2 {Exception -> 0x0165, blocks: (B:33:0x00d8, B:35:0x00e3, B:37:0x00ff, B:39:0x0116, B:41:0x011c, B:48:0x013f, B:55:0x0176, B:57:0x017a, B:63:0x01a1, B:65:0x01b6, B:69:0x01df, B:73:0x0221, B:75:0x022f, B:46:0x013b, B:43:0x012c), top: B:94:0x00d8, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x017a A[Catch: Exception -> 0x0165, TryCatch #2 {Exception -> 0x0165, blocks: (B:33:0x00d8, B:35:0x00e3, B:37:0x00ff, B:39:0x0116, B:41:0x011c, B:48:0x013f, B:55:0x0176, B:57:0x017a, B:63:0x01a1, B:65:0x01b6, B:69:0x01df, B:73:0x0221, B:75:0x022f, B:46:0x013b, B:43:0x012c), top: B:94:0x00d8, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0194  */
    /* JADX WARN: Code duplicated, block: B:60:0x0196  */
    /* JADX WARN: Code duplicated, block: B:63:0x01a1 A[Catch: Exception -> 0x0165, TryCatch #2 {Exception -> 0x0165, blocks: (B:33:0x00d8, B:35:0x00e3, B:37:0x00ff, B:39:0x0116, B:41:0x011c, B:48:0x013f, B:55:0x0176, B:57:0x017a, B:63:0x01a1, B:65:0x01b6, B:69:0x01df, B:73:0x0221, B:75:0x022f, B:46:0x013b, B:43:0x012c), top: B:94:0x00d8, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x01dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x01df A[Catch: Exception -> 0x0165, TryCatch #2 {Exception -> 0x0165, blocks: (B:33:0x00d8, B:35:0x00e3, B:37:0x00ff, B:39:0x0116, B:41:0x011c, B:48:0x013f, B:55:0x0176, B:57:0x017a, B:63:0x01a1, B:65:0x01b6, B:69:0x01df, B:73:0x0221, B:75:0x022f, B:46:0x013b, B:43:0x012c), top: B:94:0x00d8, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x021e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0220  */
    /* JADX WARN: Code duplicated, block: B:75:0x022f A[Catch: Exception -> 0x0165, TRY_LEAVE, TryCatch #2 {Exception -> 0x0165, blocks: (B:33:0x00d8, B:35:0x00e3, B:37:0x00ff, B:39:0x0116, B:41:0x011c, B:48:0x013f, B:55:0x0176, B:57:0x017a, B:63:0x01a1, B:65:0x01b6, B:69:0x01df, B:73:0x0221, B:75:0x022f, B:46:0x013b, B:43:0x012c), top: B:94:0x00d8, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0244 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0246  */
    /* JADX WARN: Code duplicated, block: B:84:0x02f0  */
    /* JADX WARN: Instruction removed from duplicated block: B:69:0x01df, please report this as an issue */
    @Nullable
    public final Object f(@NotNull String packageName, @Nullable String str, @Nullable Application application) {
        Object obj;
        String str2;
        String strO;
        String strA0;
        String strC;
        String strC2;
        String strC3;
        String str3;
        int i10;
        String strC4;
        String strC5;
        String str4;
        int i11;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        com.join.mgps.mod.utils.b bVar;
        String str10;
        com.join.mgps.mod.utils.b bVar2;
        String str11;
        boolean z10;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (!d()) {
            return null;
        }
        try {
            String lastLaunchPkg = PluginConfig.getLastLaunchPkg(VApp.INSTANCE.a());
            if (!TextUtils.isEmpty(lastLaunchPkg) && !Intrinsics.areEqual(lastLaunchPkg, packageName)) {
                return null;
            }
            Overmind.getContext().sendBroadcast(new Intent(com.join.mgps.mod.utils.d.f71921w));
            boolean z11 = b() && c(packageName);
            h1.e("load mod", "packageName=" + packageName + ", lastLaunchPackage=" + lastLaunchPkg + ' ' + z11);
            if (!Overmind.is64Bit() || z11) {
                str2 = k.f73277a.n(packageName) + "/arm";
            } else {
                str2 = k.f73277a.m(packageName) + "/arm64";
            }
            if (z11) {
                k kVar = k.f73277a;
                strO = kVar.R(packageName, 0);
                strA0 = kVar.d0(packageName, 0);
            } else {
                k kVar2 = k.f73277a;
                strO = kVar2.O(packageName, 0);
                strA0 = kVar2.a0(packageName, 0);
            }
            String modGameId = "";
            if (strO == null || strO.length() == 0) {
                strC = "0";
                strC2 = strC;
                strC3 = strC2;
                str3 = strC3;
                str5 = str3;
                str4 = str5;
                strC4 = str4;
                strC5 = strC4;
                i11 = 0;
                if (z11) {
                    str11 = this.f73251a;
                    if (str11 != null) {
                        str8 = str4;
                        String pluginPkg = Overmind.getPluginPkg();
                        str7 = str5;
                        Intrinsics.checkNotNullExpressionValue(pluginPkg, "getPluginPkg(...)");
                        str6 = str3;
                        str9 = strC4;
                        if (StringsKt__StringsKt.contains$default((CharSequence) str11, (CharSequence) pluginPkg, false, 2, (Object) null)) {
                        }
                        if (z10) {
                            this.f73251a = g(String.valueOf(this.f73251a));
                        }
                    } else {
                        str6 = str3;
                        str7 = str5;
                        str8 = str4;
                        str9 = strC4;
                    }
                    if (z10) {
                        this.f73251a = g(String.valueOf(this.f73251a));
                    }
                } else {
                    str6 = str3;
                    str7 = str5;
                    str8 = str4;
                    str9 = strC4;
                }
                h1.e("load mod", "modPath=" + this.f73251a);
                if (TextUtils.isEmpty(this.f73251a)) {
                    return null;
                }
                this.f73256f = e(application, String.valueOf(this.f73251a));
                h1.e("load mod", "ApkLoader " + this.f73256f + ' ' + str2 + ' ' + strA0);
                if (this.f73256f) {
                    str10 = str2;
                } else {
                    str10 = strA0;
                }
                bVar = new com.join.mgps.mod.utils.b(application, str10);
                this.f73254d = bVar;
                Intrinsics.checkNotNull(bVar);
                if (!bVar.j()) {
                    com.join.mgps.mod.utils.b bVar3 = this.f73254d;
                    Intrinsics.checkNotNull(bVar3);
                    bVar3.k(this.f73251a);
                    bVar2 = this.f73254d;
                    Intrinsics.checkNotNull(bVar2);
                    if (!bVar2.j()) {
                        return null;
                    }
                    obj = null;
                    ModMeta modMeta = new ModMeta();
                    Context applicationContext = VApp.INSTANCE.a().getApplicationContext();
                    Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
                    modMeta.bind((Application) applicationContext, packageName, str, application);
                    String str12 = this.f73251a;
                    com.join.mgps.mod.utils.b bVar4 = this.f73254d;
                    Intrinsics.checkNotNull(bVar4);
                    PackageInfo packageInfoH = bVar4.h();
                    com.join.mgps.mod.utils.b bVar5 = this.f73254d;
                    Intrinsics.checkNotNull(bVar5);
                    DexClassLoader dexClassLoaderE = bVar5.e();
                    com.join.mgps.mod.utils.b bVar6 = this.f73254d;
                    Intrinsics.checkNotNull(bVar6);
                    Resources resources = bVar6.getResources();
                    com.join.mgps.mod.utils.b bVar7 = this.f73254d;
                    Intrinsics.checkNotNull(bVar7);
                    modMeta.setModInfo(str12, packageInfoH, dexClassLoaderE, resources, bVar7.f());
                    com.join.mgps.mod.utils.b bVar8 = this.f73254d;
                    Intrinsics.checkNotNull(bVar8);
                    modMeta.setEntryDataClass(bVar8.g());
                    modMeta.setGameId(modGameId);
                    modMeta.setUseNativeLibDir(this.f73256f);
                    modMeta.setNativeLibDir(str2);
                    modMeta.setPluginLibDir(strA0);
                    modMeta.setModVersion(this.f73252b);
                    modMeta.setModCode(this.f73253c);
                    modMeta.setHostPackage(Overmind.getMainPkg());
                    modMeta.setUserId(this.f73255e);
                    modMeta.setGoldFingerSwitch(strC);
                    modMeta.setArchiveCloudSwitch(strC3);
                    modMeta.setIntroductionSwitch(strC2);
                    modMeta.setChannelNum(str6);
                    modMeta.setTarget_version(i11);
                    modMeta.setAndroidId(str9);
                    modMeta.setPlatform(str7);
                    modMeta.setPackage_type(str8);
                    modMeta.setTypeId(strC5);
                    com.join.mgps.mod.utils.b bVar9 = this.f73254d;
                    Intrinsics.checkNotNull(bVar9);
                    return bVar9.n(modMeta);
                }
                obj = null;
            } else {
                try {
                    if (new File(strO).exists()) {
                        this.f73251a = PluginConfig.getModPath(strO);
                        this.f73252b = PluginConfig.getSoVersion(strO);
                        this.f73253c = PluginConfig.getSoCode(strO);
                        modGameId = PluginConfig.getModGameId(strO);
                        y.c modMenuSwitch = PluginConfig.getModMenuSwitch(strO);
                        if (modMenuSwitch != null) {
                            strC = modMenuSwitch.c(HMCloudMainActivity_.GOLD_FINGER_SWITCH_EXTRA);
                            strC3 = modMenuSwitch.c("archiveCloudSwitch");
                            strC2 = modMenuSwitch.c("introductionSwitch");
                        } else {
                            strC = "0";
                            strC2 = strC;
                            strC3 = strC2;
                        }
                        y.c modConfig = PluginConfig.getModConfig(strO);
                        if (modConfig != null) {
                            String strC6 = modConfig.c("channelNum");
                            if (t2.i(modConfig.c("targetVersion"))) {
                                try {
                                    String strC7 = modConfig.c("targetVersion");
                                    Intrinsics.checkNotNullExpressionValue(strC7, "get(...)");
                                    i10 = Integer.parseInt(strC7);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                    i10 = 0;
                                }
                                strC4 = modConfig.c("androidId");
                                String strC8 = modConfig.c("platform");
                                String strC9 = modConfig.c("package_type");
                                strC5 = modConfig.c("typeId");
                                str4 = strC9;
                                i11 = i10;
                                str5 = strC8;
                                str3 = strC6;
                                if (z11) {
                                    str11 = this.f73251a;
                                    if (str11 != null) {
                                        str8 = str4;
                                        String pluginPkg2 = Overmind.getPluginPkg();
                                        str7 = str5;
                                        Intrinsics.checkNotNullExpressionValue(pluginPkg2, "getPluginPkg(...)");
                                        str6 = str3;
                                        str9 = strC4;
                                        z10 = StringsKt__StringsKt.contains$default((CharSequence) str11, (CharSequence) pluginPkg2, false, 2, (Object) null) ? false : true;
                                        if (z10) {
                                            this.f73251a = g(String.valueOf(this.f73251a));
                                        }
                                    } else {
                                        str6 = str3;
                                        str7 = str5;
                                        str8 = str4;
                                        str9 = strC4;
                                    }
                                    if (z10) {
                                        this.f73251a = g(String.valueOf(this.f73251a));
                                    }
                                } else {
                                    str6 = str3;
                                    str7 = str5;
                                    str8 = str4;
                                    str9 = strC4;
                                }
                                h1.e("load mod", "modPath=" + this.f73251a);
                                if (TextUtils.isEmpty(this.f73251a)) {
                                    return null;
                                }
                                this.f73256f = e(application, String.valueOf(this.f73251a));
                                h1.e("load mod", "ApkLoader " + this.f73256f + ' ' + str2 + ' ' + strA0);
                                if (this.f73256f) {
                                    str10 = str2;
                                } else {
                                    str10 = strA0;
                                }
                                bVar = new com.join.mgps.mod.utils.b(application, str10);
                                this.f73254d = bVar;
                                Intrinsics.checkNotNull(bVar);
                                if (!bVar.j()) {
                                    com.join.mgps.mod.utils.b bVar10 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar10);
                                    bVar10.k(this.f73251a);
                                    bVar2 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar2);
                                    if (!bVar2.j()) {
                                        return null;
                                    }
                                    obj = null;
                                    try {
                                        ModMeta modMeta2 = new ModMeta();
                                        Context applicationContext2 = VApp.INSTANCE.a().getApplicationContext();
                                        Intrinsics.checkNotNull(applicationContext2, "null cannot be cast to non-null type android.app.Application");
                                        modMeta2.bind((Application) applicationContext2, packageName, str, application);
                                        String str13 = this.f73251a;
                                        com.join.mgps.mod.utils.b bVar11 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar11);
                                        PackageInfo packageInfoH2 = bVar11.h();
                                        com.join.mgps.mod.utils.b bVar12 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar12);
                                        DexClassLoader dexClassLoaderE2 = bVar12.e();
                                        com.join.mgps.mod.utils.b bVar13 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar13);
                                        Resources resources2 = bVar13.getResources();
                                        com.join.mgps.mod.utils.b bVar14 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar14);
                                        modMeta2.setModInfo(str13, packageInfoH2, dexClassLoaderE2, resources2, bVar14.f());
                                        com.join.mgps.mod.utils.b bVar15 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar15);
                                        modMeta2.setEntryDataClass(bVar15.g());
                                        modMeta2.setGameId(modGameId);
                                        modMeta2.setUseNativeLibDir(this.f73256f);
                                        modMeta2.setNativeLibDir(str2);
                                        modMeta2.setPluginLibDir(strA0);
                                        modMeta2.setModVersion(this.f73252b);
                                        modMeta2.setModCode(this.f73253c);
                                        modMeta2.setHostPackage(Overmind.getMainPkg());
                                        modMeta2.setUserId(this.f73255e);
                                        modMeta2.setGoldFingerSwitch(strC);
                                        modMeta2.setArchiveCloudSwitch(strC3);
                                        modMeta2.setIntroductionSwitch(strC2);
                                        modMeta2.setChannelNum(str6);
                                        modMeta2.setTarget_version(i11);
                                        modMeta2.setAndroidId(str9);
                                        modMeta2.setPlatform(str7);
                                        modMeta2.setPackage_type(str8);
                                        modMeta2.setTypeId(strC5);
                                        com.join.mgps.mod.utils.b bVar16 = this.f73254d;
                                        Intrinsics.checkNotNull(bVar16);
                                        return bVar16.n(modMeta2);
                                    } catch (Exception e11) {
                                        e = e11;
                                    }
                                } else {
                                    obj = null;
                                }
                            } else {
                                i10 = 0;
                                strC4 = modConfig.c("androidId");
                                String strC10 = modConfig.c("platform");
                                String strC11 = modConfig.c("package_type");
                                strC5 = modConfig.c("typeId");
                                str4 = strC11;
                                i11 = i10;
                                str5 = strC10;
                                str3 = strC6;
                                if (z11) {
                                    str11 = this.f73251a;
                                    if (str11 != null) {
                                        str8 = str4;
                                        String pluginPkg3 = Overmind.getPluginPkg();
                                        str7 = str5;
                                        Intrinsics.checkNotNullExpressionValue(pluginPkg3, "getPluginPkg(...)");
                                        str6 = str3;
                                        str9 = strC4;
                                        if (StringsKt__StringsKt.contains$default((CharSequence) str11, (CharSequence) pluginPkg3, false, 2, (Object) null)) {
                                        }
                                        if (z10) {
                                            this.f73251a = g(String.valueOf(this.f73251a));
                                        }
                                    } else {
                                        str6 = str3;
                                        str7 = str5;
                                        str8 = str4;
                                        str9 = strC4;
                                    }
                                    if (z10) {
                                        this.f73251a = g(String.valueOf(this.f73251a));
                                    }
                                } else {
                                    str6 = str3;
                                    str7 = str5;
                                    str8 = str4;
                                    str9 = strC4;
                                }
                                h1.e("load mod", "modPath=" + this.f73251a);
                                if (TextUtils.isEmpty(this.f73251a)) {
                                    return null;
                                }
                                this.f73256f = e(application, String.valueOf(this.f73251a));
                                h1.e("load mod", "ApkLoader " + this.f73256f + ' ' + str2 + ' ' + strA0);
                                if (this.f73256f) {
                                    str10 = str2;
                                } else {
                                    str10 = strA0;
                                }
                                bVar = new com.join.mgps.mod.utils.b(application, str10);
                                this.f73254d = bVar;
                                Intrinsics.checkNotNull(bVar);
                                if (!bVar.j()) {
                                    com.join.mgps.mod.utils.b bVar17 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar17);
                                    bVar17.k(this.f73251a);
                                    bVar2 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar2);
                                    if (!bVar2.j()) {
                                        return null;
                                    }
                                    obj = null;
                                    ModMeta modMeta3 = new ModMeta();
                                    Context applicationContext3 = VApp.INSTANCE.a().getApplicationContext();
                                    Intrinsics.checkNotNull(applicationContext3, "null cannot be cast to non-null type android.app.Application");
                                    modMeta3.bind((Application) applicationContext3, packageName, str, application);
                                    String str14 = this.f73251a;
                                    com.join.mgps.mod.utils.b bVar18 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar18);
                                    PackageInfo packageInfoH3 = bVar18.h();
                                    com.join.mgps.mod.utils.b bVar19 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar19);
                                    DexClassLoader dexClassLoaderE3 = bVar19.e();
                                    com.join.mgps.mod.utils.b bVar110 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar110);
                                    Resources resources3 = bVar110.getResources();
                                    com.join.mgps.mod.utils.b bVar111 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar111);
                                    modMeta3.setModInfo(str14, packageInfoH3, dexClassLoaderE3, resources3, bVar111.f());
                                    com.join.mgps.mod.utils.b bVar112 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar112);
                                    modMeta3.setEntryDataClass(bVar112.g());
                                    modMeta3.setGameId(modGameId);
                                    modMeta3.setUseNativeLibDir(this.f73256f);
                                    modMeta3.setNativeLibDir(str2);
                                    modMeta3.setPluginLibDir(strA0);
                                    modMeta3.setModVersion(this.f73252b);
                                    modMeta3.setModCode(this.f73253c);
                                    modMeta3.setHostPackage(Overmind.getMainPkg());
                                    modMeta3.setUserId(this.f73255e);
                                    modMeta3.setGoldFingerSwitch(strC);
                                    modMeta3.setArchiveCloudSwitch(strC3);
                                    modMeta3.setIntroductionSwitch(strC2);
                                    modMeta3.setChannelNum(str6);
                                    modMeta3.setTarget_version(i11);
                                    modMeta3.setAndroidId(str9);
                                    modMeta3.setPlatform(str7);
                                    modMeta3.setPackage_type(str8);
                                    modMeta3.setTypeId(strC5);
                                    com.join.mgps.mod.utils.b bVar113 = this.f73254d;
                                    Intrinsics.checkNotNull(bVar113);
                                    return bVar113.n(modMeta3);
                                }
                                obj = null;
                            }
                        } else {
                            str3 = "0";
                        }
                    } else {
                        strC = "0";
                        strC2 = strC;
                        strC3 = strC2;
                        str3 = strC3;
                    }
                    str5 = str3;
                    str4 = str5;
                    strC4 = str4;
                    strC5 = strC4;
                    i11 = 0;
                    if (z11) {
                        str11 = this.f73251a;
                        if (str11 != null) {
                            str8 = str4;
                            String pluginPkg4 = Overmind.getPluginPkg();
                            str7 = str5;
                            Intrinsics.checkNotNullExpressionValue(pluginPkg4, "getPluginPkg(...)");
                            str6 = str3;
                            str9 = strC4;
                            if (StringsKt__StringsKt.contains$default((CharSequence) str11, (CharSequence) pluginPkg4, false, 2, (Object) null)) {
                            }
                            if (z10) {
                                this.f73251a = g(String.valueOf(this.f73251a));
                            }
                        } else {
                            str6 = str3;
                            str7 = str5;
                            str8 = str4;
                            str9 = strC4;
                        }
                        if (z10) {
                            this.f73251a = g(String.valueOf(this.f73251a));
                        }
                    } else {
                        str6 = str3;
                        str7 = str5;
                        str8 = str4;
                        str9 = strC4;
                    }
                    h1.e("load mod", "modPath=" + this.f73251a);
                    if (TextUtils.isEmpty(this.f73251a)) {
                        return null;
                    }
                    this.f73256f = e(application, String.valueOf(this.f73251a));
                    h1.e("load mod", "ApkLoader " + this.f73256f + ' ' + str2 + ' ' + strA0);
                    if (this.f73256f) {
                        str10 = str2;
                    } else {
                        str10 = strA0;
                    }
                    bVar = new com.join.mgps.mod.utils.b(application, str10);
                    this.f73254d = bVar;
                    Intrinsics.checkNotNull(bVar);
                    if (!bVar.j()) {
                        com.join.mgps.mod.utils.b bVar114 = this.f73254d;
                        Intrinsics.checkNotNull(bVar114);
                        bVar114.k(this.f73251a);
                        bVar2 = this.f73254d;
                        Intrinsics.checkNotNull(bVar2);
                        if (!bVar2.j()) {
                            return null;
                        }
                        obj = null;
                        ModMeta modMeta4 = new ModMeta();
                        Context applicationContext4 = VApp.INSTANCE.a().getApplicationContext();
                        Intrinsics.checkNotNull(applicationContext4, "null cannot be cast to non-null type android.app.Application");
                        modMeta4.bind((Application) applicationContext4, packageName, str, application);
                        String str15 = this.f73251a;
                        com.join.mgps.mod.utils.b bVar115 = this.f73254d;
                        Intrinsics.checkNotNull(bVar115);
                        PackageInfo packageInfoH4 = bVar115.h();
                        com.join.mgps.mod.utils.b bVar116 = this.f73254d;
                        Intrinsics.checkNotNull(bVar116);
                        DexClassLoader dexClassLoaderE4 = bVar116.e();
                        com.join.mgps.mod.utils.b bVar117 = this.f73254d;
                        Intrinsics.checkNotNull(bVar117);
                        Resources resources4 = bVar117.getResources();
                        com.join.mgps.mod.utils.b bVar118 = this.f73254d;
                        Intrinsics.checkNotNull(bVar118);
                        modMeta4.setModInfo(str15, packageInfoH4, dexClassLoaderE4, resources4, bVar118.f());
                        com.join.mgps.mod.utils.b bVar119 = this.f73254d;
                        Intrinsics.checkNotNull(bVar119);
                        modMeta4.setEntryDataClass(bVar119.g());
                        modMeta4.setGameId(modGameId);
                        modMeta4.setUseNativeLibDir(this.f73256f);
                        modMeta4.setNativeLibDir(str2);
                        modMeta4.setPluginLibDir(strA0);
                        modMeta4.setModVersion(this.f73252b);
                        modMeta4.setModCode(this.f73253c);
                        modMeta4.setHostPackage(Overmind.getMainPkg());
                        modMeta4.setUserId(this.f73255e);
                        modMeta4.setGoldFingerSwitch(strC);
                        modMeta4.setArchiveCloudSwitch(strC3);
                        modMeta4.setIntroductionSwitch(strC2);
                        modMeta4.setChannelNum(str6);
                        modMeta4.setTarget_version(i11);
                        modMeta4.setAndroidId(str9);
                        modMeta4.setPlatform(str7);
                        modMeta4.setPackage_type(str8);
                        modMeta4.setTypeId(strC5);
                        com.join.mgps.mod.utils.b bVar1110 = this.f73254d;
                        Intrinsics.checkNotNull(bVar1110);
                        return bVar1110.n(modMeta4);
                    }
                    obj = null;
                } catch (Exception e12) {
                    e = e12;
                    obj = null;
                }
            }
            return obj;
        } catch (Exception e13) {
            e = e13;
            obj = null;
        }
        e.printStackTrace();
        return obj;
    }

    @NotNull
    public final String g(@NotNull String path) {
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

    public final void h(boolean z10) {
        this.f73256f = z10;
    }
}
