package com.xinzhu.overmind.server.pm;

import android.annotation.SuppressLint;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Parcel;
import android.util.ArrayMap;
import androidx.annotation.RequiresApi;
import com.xinzhu.haunted.android.content.pm.v;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.IOManager;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89919a = "q";

    private static boolean a(int i10, MindPackageUserState mindPackageUserState, ApplicationInfo applicationInfo) {
        return (na.c.c(applicationInfo.packageName) || !mindPackageUserState.f89844b || mindPackageUserState.f89846d) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ce  */
    @SuppressLint({"NewApi"})
    public static ApplicationInfo b(ApplicationInfo applicationInfo) {
        boolean z10;
        if (applicationInfo == null) {
            return null;
        }
        boolean zIsVirtualProcess = Overmind.get().isVirtualProcess();
        if (zIsVirtualProcess && Overmind.get().isUseGlobalFakePath()) {
            ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
            applicationInfo2.dataDir = IOManager.get().restoreRedirectPath(applicationInfo2.dataDir);
            applicationInfo2.nativeLibraryDir = IOManager.get().restoreRedirectPath(applicationInfo2.nativeLibraryDir);
            applicationInfo2.publicSourceDir = IOManager.get().restoreRedirectPath(applicationInfo2.publicSourceDir);
            applicationInfo2.sourceDir = IOManager.get().restoreRedirectPath(applicationInfo2.sourceDir);
            if (com.xinzhu.overmind.utils.e.d()) {
                applicationInfo2.deviceProtectedDataDir = IOManager.get().restoreRedirectPath(applicationInfo2.deviceProtectedDataDir);
                try {
                    com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo2);
                    if (bVar.g()) {
                        bVar.M0(applicationInfo2.deviceProtectedDataDir);
                    }
                    if (bVar.c()) {
                        bVar.I0(applicationInfo2.dataDir);
                    }
                    if (bVar.h()) {
                        bVar.N0(applicationInfo2.deviceProtectedDataDir);
                    }
                    if (bVar.d()) {
                        bVar.J0(applicationInfo2.dataDir);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return applicationInfo2;
        }
        if (!zIsVirtualProcess) {
            MindPackageSettings mindPackageSettings = Overmind.get().isServerProcess() ? MindPackageManagerService.get().getMindPackageSettings(applicationInfo.packageName) : ma.g.d().k(applicationInfo.packageName);
            if (mindPackageSettings == null) {
                return applicationInfo;
            }
            InstallOption installOption = mindPackageSettings.f89831d;
            if (installOption != null) {
                z10 = installOption.f(1);
            }
            if (mindPackageSettings.E() && !z10) {
                com.xinzhu.overmind.b.l(f89919a, "transformApplicationInfo " + applicationInfo.packageName);
                int iX = MindUserHandle.x(applicationInfo.uid);
                ApplicationInfo applicationInfo3 = new ApplicationInfo(applicationInfo);
                applicationInfo3.dataDir = com.xinzhu.overmind.a.r(applicationInfo3.packageName, iX).getAbsolutePath();
                applicationInfo3.nativeLibraryDir = new File(com.xinzhu.overmind.a.f(applicationInfo3.packageName), com.xinzhu.overmind.a.K(mindPackageSettings.w())).getAbsolutePath();
                applicationInfo3.publicSourceDir = com.xinzhu.overmind.a.j(applicationInfo3.packageName).getAbsolutePath();
                applicationInfo3.sourceDir = com.xinzhu.overmind.a.j(applicationInfo3.packageName).getAbsolutePath();
                if (!com.xinzhu.overmind.utils.d.o(applicationInfo3.splitNames)) {
                    ArrayList arrayList = new ArrayList();
                    for (String str : applicationInfo3.splitNames) {
                        arrayList.add(com.xinzhu.overmind.a.S(applicationInfo3.packageName, str).getAbsolutePath());
                    }
                    applicationInfo3.splitPublicSourceDirs = (String[]) arrayList.toArray(new String[0]);
                    applicationInfo3.splitSourceDirs = (String[]) arrayList.toArray(new String[0]);
                }
                if (com.xinzhu.overmind.utils.e.d()) {
                    applicationInfo3.deviceProtectedDataDir = com.xinzhu.overmind.a.x(applicationInfo3.packageName, iX).getAbsolutePath();
                    try {
                        com.xinzhu.haunted.android.content.pm.b bVar2 = new com.xinzhu.haunted.android.content.pm.b(applicationInfo3);
                        if (bVar2.g()) {
                            bVar2.M0(applicationInfo3.deviceProtectedDataDir);
                        }
                        if (bVar2.c()) {
                            bVar2.I0(applicationInfo3.dataDir);
                        }
                        if (bVar2.h()) {
                            bVar2.N0(applicationInfo3.deviceProtectedDataDir);
                        }
                        if (bVar2.d()) {
                            bVar2.J0(applicationInfo3.dataDir);
                        }
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                return applicationInfo3;
            }
        }
        return applicationInfo;
    }

    @SuppressLint({"NewApi"})
    private static void c(ApplicationInfo applicationInfo) {
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo);
        if (com.xinzhu.overmind.utils.e.g()) {
            com.xinzhu.overmind.server.j.b bVarM = m("android.test.base");
            if (bVarM != null) {
                hashSet.add(bVarM.f89685b);
                if (com.xinzhu.overmind.utils.e.h()) {
                    com.xinzhu.haunted.android.content.pm.s sVarD = com.xinzhu.haunted.android.content.pm.s.d(bVarM.f89685b, null, null, bVarM.f89684a, 0L, 0, null, null, null, false);
                    Objects.requireNonNull(sVarD);
                    arrayList.add(o.a(sVarD.f88878a));
                }
            } else {
                com.xinzhu.overmind.b.c(f89919a, "sharedLibraryFiles skip library android.test.base");
            }
        }
        if (com.xinzhu.overmind.utils.e.h()) {
            com.xinzhu.overmind.server.j.b bVarM2 = m("org.apache.http.legacy");
            if (bVarM2 != null) {
                com.xinzhu.haunted.android.content.pm.s sVarD2 = com.xinzhu.haunted.android.content.pm.s.d(bVarM2.f89685b, null, null, bVarM2.f89684a, 0L, 0, null, null, null, false);
                Objects.requireNonNull(sVarD2);
                arrayList.add(o.a(sVarD2.f88878a));
            } else {
                com.xinzhu.overmind.b.c(f89919a, "sharedLibraryFiles skip library org.apache.http.legacy");
            }
        }
        bVar.o1(arrayList);
        if (com.xinzhu.overmind.utils.e.f() && com.xinzhu.overmind.utils.l.m("/system/framework/org.apache.http.legacy.jar")) {
            hashSet.add("/system/framework/org.apache.http.legacy.jar");
        } else {
            hashSet.add("/system/framework/org.apache.http.legacy.boot.jar");
        }
        hashSet.add(com.xinzhu.overmind.a.f89172h.getAbsolutePath());
        applicationInfo.sharedLibraryFiles = (String[]) hashSet.toArray(new String[0]);
        if (na.d.f(applicationInfo.packageName)) {
            applicationInfo.flags |= 9;
        }
    }

    public static PackageInfo d(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        packageInfo.applicationInfo = b(packageInfo.applicationInfo);
        if (!com.xinzhu.overmind.utils.d.o(packageInfo.activities)) {
            for (ActivityInfo activityInfo : packageInfo.activities) {
                activityInfo.applicationInfo = b(activityInfo.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(packageInfo.receivers)) {
            for (ActivityInfo activityInfo2 : packageInfo.receivers) {
                activityInfo2.applicationInfo = b(activityInfo2.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(packageInfo.services)) {
            for (ServiceInfo serviceInfo : packageInfo.services) {
                serviceInfo.applicationInfo = b(serviceInfo.applicationInfo);
            }
        }
        if (!com.xinzhu.overmind.utils.d.o(packageInfo.providers)) {
            for (ProviderInfo providerInfo : packageInfo.providers) {
                providerInfo.applicationInfo = b(providerInfo.applicationInfo);
            }
        }
        return packageInfo;
    }

    public static ActivityInfo e(MindPackage.b bVar, int i10, MindPackageUserState mindPackageUserState, int i11) {
        Bundle bundle;
        if (!a(i10, mindPackageUserState, bVar.f89768f.applicationInfo)) {
            return null;
        }
        ActivityInfo activityInfo = new ActivityInfo(bVar.f89768f);
        if ((i10 & 128) != 0 && (bundle = bVar.f89772d) != null) {
            activityInfo.metaData = bundle;
        }
        activityInfo.processName = MindPackageManagerService.fixProcessName(activityInfo.packageName, activityInfo.processName);
        activityInfo.applicationInfo = f(bVar.f89769a, i10, mindPackageUserState, i11);
        activityInfo.enabled = MindPackageManagerService.get().isComponentEnabled(activityInfo, i11);
        return activityInfo;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    @SuppressLint({"NewApi"})
    public static ApplicationInfo f(MindPackage mindPackage, int i10, MindPackageUserState mindPackageUserState, int i11) {
        boolean z10;
        if (!a(i10, mindPackageUserState, mindPackage.f89749s)) {
            return null;
        }
        MindPackageSettings mindPackageSettingsInternal = MindPackageManagerService.get().getMindPackageSettingsInternal(mindPackage.f89743m);
        boolean zE = mindPackageSettingsInternal.E();
        ApplicationInfo applicationInfo = new ApplicationInfo(mindPackage.f89749s);
        InstallOption installOption = mindPackageSettingsInternal.f89831d;
        if (installOption != null) {
            z10 = installOption.f(1);
        }
        String absolutePath = z10 ? mindPackage.f89752v : zE ? com.xinzhu.overmind.a.k(mindPackage.f89743m).getAbsolutePath() : com.xinzhu.overmind.a.j(mindPackage.f89743m).getAbsolutePath();
        if (mindPackage.f89749s == null) {
            mindPackage.f89749s = Overmind.getContext().getPackageManager().getPackageArchiveInfo(absolutePath, 0).applicationInfo;
        }
        ApplicationInfo applicationInfo2 = new ApplicationInfo(mindPackage.f89749s);
        if ((i10 & 128) != 0) {
            applicationInfo2.metaData = mindPackage.f89742l;
        }
        if (zE) {
            applicationInfo2.dataDir = com.xinzhu.overmind.a.s(applicationInfo2.packageName, i11).getAbsolutePath();
            applicationInfo2.nativeLibraryDir = new File(com.xinzhu.overmind.a.g(applicationInfo2.packageName), com.xinzhu.overmind.a.K(mindPackageSettingsInternal.w())).getAbsolutePath();
        } else {
            applicationInfo2.dataDir = com.xinzhu.overmind.a.r(applicationInfo2.packageName, i11).getAbsolutePath();
            applicationInfo2.nativeLibraryDir = new File(com.xinzhu.overmind.a.f(applicationInfo2.packageName), com.xinzhu.overmind.a.K(mindPackageSettingsInternal.w())).getAbsolutePath();
        }
        applicationInfo2.processName = MindPackageManagerService.fixProcessName(mindPackage.f89743m, applicationInfo2.packageName);
        applicationInfo2.publicSourceDir = absolutePath;
        applicationInfo2.sourceDir = absolutePath;
        if (!z10 && !com.xinzhu.overmind.utils.d.o(mindPackage.f89751u)) {
            applicationInfo2.splitNames = mindPackage.f89751u;
            ArrayList arrayList = new ArrayList();
            for (String str : mindPackage.f89751u) {
                arrayList.add((zE ? com.xinzhu.overmind.a.T(mindPackage.f89743m, str) : com.xinzhu.overmind.a.S(mindPackage.f89743m, str)).getAbsolutePath());
            }
            applicationInfo2.splitPublicSourceDirs = (String[]) arrayList.toArray(new String[0]);
            applicationInfo2.splitSourceDirs = (String[]) arrayList.toArray(new String[0]);
        }
        applicationInfo2.uid = MindUserHandle.t(i11, mindPackageSettingsInternal.f89830c);
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo2);
        com.xinzhu.haunted.android.content.pm.b bVar2 = new com.xinzhu.haunted.android.content.pm.b(applicationInfo);
        if (com.xinzhu.overmind.utils.e.a()) {
            bVar.b1(mindPackageSettingsInternal.w());
            bVar.i1(bVar2.s0());
            bVar.j1(bVar2.t0());
        }
        if (com.xinzhu.overmind.utils.e.d()) {
            if (zE) {
                applicationInfo2.deviceProtectedDataDir = com.xinzhu.overmind.a.y(mindPackage.f89743m, i11).getAbsolutePath();
            } else {
                applicationInfo2.deviceProtectedDataDir = com.xinzhu.overmind.a.x(mindPackage.f89743m, i11).getAbsolutePath();
            }
            try {
                if (bVar.g()) {
                    bVar.M0(applicationInfo2.deviceProtectedDataDir);
                }
                if (bVar.c()) {
                    bVar.I0(applicationInfo2.dataDir);
                }
                if (bVar.h()) {
                    bVar.N0(applicationInfo2.deviceProtectedDataDir);
                }
                if (bVar.d()) {
                    bVar.J0(applicationInfo2.dataDir);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        c(applicationInfo2);
        return applicationInfo2;
    }

    public static final InstrumentationInfo g(MindPackage.d dVar, int i10) {
        Bundle bundle;
        if (dVar == null) {
            return null;
        }
        int i11 = i10 & 128;
        if (i11 == 0) {
            return dVar.f89774f;
        }
        InstrumentationInfo instrumentationInfo = new InstrumentationInfo(dVar.f89774f);
        if (i11 != 0 && (bundle = dVar.f89772d) != null) {
            instrumentationInfo.metaData = bundle;
        }
        return instrumentationInfo;
    }

    @SuppressLint({"NewApi"})
    public static PackageInfo h(MindPackage mindPackage, int i10, long j10, long j11, MindPackageUserState mindPackageUserState, int i11) {
        ServiceInfo serviceInfoL;
        ActivityInfo activityInfoE;
        ActivityInfo activityInfoE2;
        if (!a(i10, mindPackageUserState, mindPackage.f89749s)) {
            return null;
        }
        PackageInfo packageInfo = new PackageInfo();
        Parcel parcelObtain = Parcel.obtain();
        packageInfo.writeToParcel(parcelObtain, 0);
        PackageInfo packageInfo2 = (PackageInfo) PackageInfo.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        packageInfo2.packageName = mindPackage.f89743m;
        packageInfo2.versionCode = mindPackage.f89748r;
        packageInfo2.versionName = mindPackage.f89750t;
        packageInfo2.sharedUserId = mindPackage.f89745o;
        packageInfo2.sharedUserLabel = mindPackage.f89753w;
        packageInfo2.applicationInfo = f(mindPackage, i10, mindPackageUserState, i11);
        packageInfo2.firstInstallTime = j10;
        packageInfo2.lastUpdateTime = j11;
        if (!mindPackage.f89739i.isEmpty()) {
            String[] strArr = new String[mindPackage.f89739i.size()];
            mindPackage.f89739i.toArray(strArr);
            packageInfo2.requestedPermissions = strArr;
        }
        if ((i10 & 256) != 0) {
            packageInfo2.gids = new int[0];
        }
        if ((i10 & 16384) != 0) {
            ArrayList<ConfigurationInfo> arrayList = mindPackage.f89754x;
            int size = arrayList != null ? arrayList.size() : 0;
            if (size > 0) {
                ConfigurationInfo[] configurationInfoArr = new ConfigurationInfo[size];
                packageInfo2.configPreferences = configurationInfoArr;
                mindPackage.f89754x.toArray(configurationInfoArr);
            }
            ArrayList<FeatureInfo> arrayList2 = mindPackage.f89755y;
            int size2 = arrayList2 != null ? arrayList2.size() : 0;
            if (size2 > 0) {
                FeatureInfo[] featureInfoArr = new FeatureInfo[size2];
                packageInfo2.reqFeatures = featureInfoArr;
                mindPackage.f89755y.toArray(featureInfoArr);
            }
        }
        if ((i10 & 1) != 0) {
            packageInfo2.activities = null;
            int size3 = mindPackage.f89732b.size();
            if (size3 > 0) {
                ActivityInfo[] activityInfoArr = new ActivityInfo[size3];
                int i12 = 0;
                for (int i13 = 0; i13 < size3; i13++) {
                    MindPackage.b bVar = mindPackage.f89732b.get(i13);
                    if (MindPackageManagerService.get().isEnabledAndMatchLPr(bVar.f89768f, i10, i11) && (activityInfoE2 = e(bVar, i10, mindPackageUserState, i11)) != null) {
                        activityInfoE2.applicationInfo = packageInfo2.applicationInfo;
                        activityInfoArr[i12] = activityInfoE2;
                        i12++;
                    }
                }
                packageInfo2.activities = (ActivityInfo[]) com.xinzhu.overmind.utils.d.p(activityInfoArr, i12);
            }
        }
        if ((i10 & 2) != 0) {
            packageInfo2.receivers = null;
            int size4 = mindPackage.f89733c.size();
            if (size4 > 0) {
                ActivityInfo[] activityInfoArr2 = new ActivityInfo[size4];
                int i14 = 0;
                for (int i15 = 0; i15 < size4; i15++) {
                    MindPackage.b bVar2 = mindPackage.f89733c.get(i15);
                    if (MindPackageManagerService.get().isEnabledAndMatchLPr(bVar2.f89768f, i10, i11) && (activityInfoE = e(bVar2, i10, mindPackageUserState, i11)) != null) {
                        activityInfoE.applicationInfo = packageInfo2.applicationInfo;
                        activityInfoArr2[i14] = activityInfoE;
                        i14++;
                    }
                }
                packageInfo2.receivers = (ActivityInfo[]) com.xinzhu.overmind.utils.d.p(activityInfoArr2, i14);
            }
        }
        if ((i10 & 4) != 0) {
            packageInfo2.services = null;
            int size5 = mindPackage.f89735e.size();
            if (size5 > 0) {
                ServiceInfo[] serviceInfoArr = new ServiceInfo[size5];
                int i16 = 0;
                for (int i17 = 0; i17 < size5; i17++) {
                    MindPackage.h hVar = mindPackage.f89735e.get(i17);
                    if (MindPackageManagerService.get().isEnabledAndMatchLPr(hVar.f89778f, i10, i11) && (serviceInfoL = l(hVar, i10, mindPackageUserState, i11)) != null) {
                        serviceInfoL.applicationInfo = packageInfo2.applicationInfo;
                        serviceInfoArr[i16] = serviceInfoL;
                        i16++;
                    }
                }
                packageInfo2.services = (ServiceInfo[]) com.xinzhu.overmind.utils.d.p(serviceInfoArr, i16);
            }
        }
        if ((i10 & 8) != 0) {
            packageInfo2.providers = null;
            int size6 = mindPackage.f89734d.size();
            if (size6 > 0) {
                ProviderInfo[] providerInfoArr = new ProviderInfo[size6];
                int i18 = 0;
                for (int i19 = 0; i19 < size6; i19++) {
                    MindPackage.g gVar = mindPackage.f89734d.get(i19);
                    ProviderInfo providerInfoK = k(gVar, i10, mindPackageUserState, i11);
                    if (providerInfoK != null && MindPackageManagerService.get().isEnabledAndMatchLPr(gVar.f89777f, i10, i11)) {
                        providerInfoK.applicationInfo = packageInfo2.applicationInfo;
                        providerInfoArr[i18] = providerInfoK;
                        i18++;
                    }
                }
                packageInfo2.providers = (ProviderInfo[]) com.xinzhu.overmind.utils.d.p(providerInfoArr, i18);
            }
        }
        if ((i10 & 16) != 0) {
            packageInfo2.instrumentation = null;
            int size7 = mindPackage.f89736f.size();
            if (size7 > 0) {
                packageInfo2.instrumentation = new InstrumentationInfo[size7];
                for (int i20 = 0; i20 < size7; i20++) {
                    packageInfo2.instrumentation[i20] = g(mindPackage.f89736f.get(i20), i10);
                }
            }
        }
        if ((i10 & 4096) != 0) {
            packageInfo2.permissions = null;
            int size8 = mindPackage.f89737g.size();
            if (size8 > 0) {
                packageInfo2.permissions = new PermissionInfo[size8];
                for (int i21 = 0; i21 < size8; i21++) {
                    packageInfo2.permissions[i21] = j(mindPackage.f89737g.get(i21), i10);
                }
            }
            packageInfo2.requestedPermissions = null;
            int size9 = mindPackage.f89739i.size();
            if (size9 > 0) {
                packageInfo2.requestedPermissions = new String[size9];
                packageInfo2.requestedPermissionsFlags = new int[size9];
                for (int i22 = 0; i22 < size9; i22++) {
                    packageInfo2.requestedPermissions[i22] = mindPackage.f89739i.get(i22);
                }
            }
        }
        if ((i10 & 64) != 0) {
            if (com.xinzhu.overmind.utils.e.v()) {
                com.xinzhu.haunted.android.content.pm.n.a aVar = new com.xinzhu.haunted.android.content.pm.n.a(mindPackage.f89741k);
                if (aVar.w()) {
                    packageInfo2.signatures = new Signature[]{signatureArrR[0]};
                    Signature[] signatureArrR = aVar.r();
                    Objects.requireNonNull(signatureArrR);
                } else if (aVar.x()) {
                    packageInfo2.signatures = (Signature[]) mindPackage.f89741k.signatures.clone();
                }
            } else {
                packageInfo2.signatures = mindPackage.f89740j;
            }
        }
        if (com.xinzhu.overmind.utils.e.v() && (i10 & 134217728) != 0 && mindPackage.f89741k != null) {
            if (com.xinzhu.overmind.utils.e.j()) {
                com.xinzhu.haunted.android.content.pm.n.a aVar2 = new com.xinzhu.haunted.android.content.pm.n.a(mindPackage.f89741k);
                Signature[] signatureArr = aVar2.v() != null ? (Signature[]) aVar2.v().clone() : null;
                int iU = aVar2.u();
                v0.e.a();
                com.xinzhu.haunted.android.content.pm.t tVarL = com.xinzhu.haunted.android.content.pm.t.l(signatureArr, iU, p.a(aVar2.t()), aVar2.r() != null ? (Signature[]) aVar2.r().clone() : null);
                Objects.requireNonNull(tVarL);
                Object obj = tVarL.f88899a;
                try {
                    Constructor declaredConstructor = com.xinzhu.haunted.android.content.pm.u.a().getDeclaredConstructor(com.xinzhu.haunted.android.content.pm.t.f88880c);
                    declaredConstructor.setAccessible(true);
                    packageInfo2.signingInfo = j.a(declaredConstructor.newInstance(obj));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                v vVarE = v.e(mindPackage.f89741k);
                Objects.requireNonNull(vVarE);
                packageInfo2.signingInfo = j.a(vVarE.f88908a);
            }
        }
        return packageInfo2;
    }

    public static PackageInfo i(MindPackageSettings mindPackageSettings, int i10, MindPackageUserState mindPackageUserState, int i11) {
        MindPackage mindPackage;
        if (mindPackageSettings == null || (mindPackage = mindPackageSettings.f89829b) == null) {
            return null;
        }
        try {
            return h(mindPackage, i10, 0L, 0L, mindPackageUserState, i11);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static final PermissionInfo j(MindPackage.e eVar, int i10) {
        Bundle bundle;
        if (eVar == null) {
            return null;
        }
        int i11 = i10 & 128;
        if (i11 == 0) {
            return eVar.f89775f;
        }
        PermissionInfo permissionInfo = new PermissionInfo(eVar.f89775f);
        if (i11 != 0 && (bundle = eVar.f89772d) != null) {
            permissionInfo.metaData = bundle;
        }
        return permissionInfo;
    }

    public static final ProviderInfo k(MindPackage.g gVar, int i10, MindPackageUserState mindPackageUserState, int i11) {
        Bundle bundle;
        if (!a(i10, mindPackageUserState, gVar.f89777f.applicationInfo)) {
            return null;
        }
        ProviderInfo providerInfo = new ProviderInfo(gVar.f89777f);
        if (providerInfo.authority == null) {
            return null;
        }
        if ((i10 & 128) != 0 && (bundle = gVar.f89772d) != null) {
            providerInfo.metaData = bundle;
        }
        providerInfo.processName = MindPackageManagerService.fixProcessName(providerInfo.packageName, providerInfo.processName);
        if ((i10 & 2048) == 0) {
            providerInfo.uriPermissionPatterns = null;
        }
        providerInfo.applicationInfo = f(gVar.f89769a, i10, mindPackageUserState, i11);
        providerInfo.enabled = MindPackageManagerService.get().isComponentEnabled(providerInfo, i11);
        return providerInfo;
    }

    public static final ServiceInfo l(MindPackage.h hVar, int i10, MindPackageUserState mindPackageUserState, int i11) {
        Bundle bundle;
        if (!a(i10, mindPackageUserState, hVar.f89778f.applicationInfo)) {
            return null;
        }
        ServiceInfo serviceInfo = new ServiceInfo(hVar.f89778f);
        if ((i10 & 128) != 0 && (bundle = hVar.f89772d) != null) {
            serviceInfo.metaData = bundle;
        }
        serviceInfo.processName = MindPackageManagerService.fixProcessName(serviceInfo.packageName, serviceInfo.processName);
        serviceInfo.applicationInfo = f(hVar.f89769a, i10, mindPackageUserState, i11);
        serviceInfo.enabled = MindPackageManagerService.get().isComponentEnabled(serviceInfo, i11);
        return serviceInfo;
    }

    @RequiresApi(api = 26)
    @SuppressLint({"BlockedPrivateApi", "PrivateApi"})
    private static com.xinzhu.overmind.server.j.b m(String str) {
        try {
            ArrayMap<String, com.xinzhu.overmind.server.j.b> arrayMapB = com.xinzhu.overmind.server.j.a().b();
            if (arrayMapB == null) {
                return null;
            }
            return arrayMapB.get(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
