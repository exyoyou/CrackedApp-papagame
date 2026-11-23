package com.xinzhu.overmind.shared;

import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.Environment;
import com.join.mgps.Util.y;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.va.overmind.PaCtrl;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.custom.CustomCallback;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@SourceDebugExtension({"SMAP\nCustomCallbackImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCallbackImpl.kt\ncom/xinzhu/overmind/shared/CustomCallbackImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"})
public class b extends CustomCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f90017a = b.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f90018b;

    public final boolean a() {
        return this.f90018b;
    }

    public final void b(boolean z10) {
        this.f90018b = z10;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x02e3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.xinzhu.overmind.server.pm.MindPackageSettings] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v5, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00df -> B:36:0x00e0). Please report as a decompilation issue!!! */
    @Override // com.xinzhu.overmind.custom.CustomCallback
    @Nullable
    public LinkedHashMap<String, String> customIORedirect(@NotNull String pkgName, int i10) {
        String strE;
        String strV;
        String strF0;
        String strK0;
        String strI;
        ?? r10;
        String strI2;
        MindPackageSettings mindPackageSettings;
        pkgName = pkgName;
        String str = "Download/";
        Intrinsics.checkNotNullParameter(pkgName, "pkgName");
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        ?? K = Overmind.getMindPackageManager().k(pkgName);
        boolean zE = K.E();
        if (zE) {
            strE = i10 == 0 ? com.join.mgps.va.overmind.k.f73277a.h(pkgName) : com.join.mgps.va.overmind.k.f73277a.i(pkgName, i10);
            com.join.mgps.va.overmind.k kVar = com.join.mgps.va.overmind.k.f73277a;
            strV = kVar.X(pkgName);
            strF0 = kVar.g0();
            strK0 = kVar.l0();
        } else {
            strE = i10 == 0 ? com.join.mgps.va.overmind.k.f73277a.e(pkgName) : com.join.mgps.va.overmind.k.f73277a.f(pkgName, i10);
            com.join.mgps.va.overmind.k kVar2 = com.join.mgps.va.overmind.k.f73277a;
            strV = kVar2.V(pkgName);
            strF0 = kVar2.f0();
            strK0 = kVar2.k0();
        }
        boolean z10 = false;
        Object obj = null;
        try {
            strI = "games";
            try {
                if (Overmind.get().hostCheckPermission(com.kuaishou.weapon.p0.g.f74785i, zE) && Overmind.get().hostCheckPermission(com.kuaishou.weapon.p0.g.f74786j, zE)) {
                    File externalStorageDirectory = Environment.getExternalStorageDirectory();
                    strI = !new File(externalStorageDirectory, "games").exists() ? com.join.mgps.va.overmind.k.f73277a.I("games", zE) : null;
                    r10 = K;
                    if (new File(externalStorageDirectory, "Download/" + pkgName).exists()) {
                        strI2 = null;
                        mindPackageSettings = r10;
                    } else {
                        strI2 = com.join.mgps.va.overmind.k.f73277a.I("Download/" + pkgName, zE);
                        mindPackageSettings = K;
                    }
                } else {
                    com.join.mgps.va.overmind.k kVar3 = com.join.mgps.va.overmind.k.f73277a;
                    strI = kVar3.I("games", zE);
                    strI2 = kVar3.I("Download/" + pkgName, zE);
                    mindPackageSettings = K;
                }
            } catch (Exception unused) {
                r10 = K;
            }
        } catch (Exception unused2) {
            strI = null;
            r10 = K;
        }
        K = mindPackageSettings.E();
        y.c archiveSection = PluginConfig.getArchiveSection(K != 0 ? com.join.mgps.va.overmind.k.t(com.join.mgps.va.overmind.k.f73277a, pkgName, 0, 2, null) : com.join.mgps.va.overmind.k.q(com.join.mgps.va.overmind.k.f73277a, pkgName, 0, 2, null));
        List<String> listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (archiveSection != null) {
            listEmptyList = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{archiveSection.c("archivePath"), archiveSection.c("archivePath2")});
        }
        ApplicationInfo applicationInfoF = Overmind.getMindPackageManager().f(pkgName, 128, com.xinzhu.overmind.client.f.getUserId());
        if (applicationInfoF != null) {
            linkedHashMap.put("data/data/" + pkgName, applicationInfoF.dataDir);
        }
        Iterator it2 = CollectionsKt___CollectionsKt.sorted(com.join.mgps.va.overmind.k.f73277a.T()).iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            Iterator it3 = it2;
            if (!StringsKt__StringsJVMKt.endsWith$default(str2, net.lingala.zip4j.util.e.F0, z10, 2, obj)) {
                str2 = str2 + '/';
            }
            linkedHashMap.put(str2 + "Android/obb/" + pkgName, strV);
            linkedHashMap.put(str2 + "Android/data/" + pkgName, strE);
            linkedHashMap.put(str2 + "android/data/" + pkgName, strE);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append("save_data/");
            linkedHashMap.put(sb2.toString(), strF0 + '/');
            if (strI != null) {
                linkedHashMap.put(str2 + "games/", strI + '/');
            }
            if (strI2 != null) {
                linkedHashMap.put(str2 + str + pkgName + '/', strI2 + '/');
            }
            if (i10 != 0) {
                for (String strReplaceFirst$default : listEmptyList) {
                    if (strReplaceFirst$default == null || strReplaceFirst$default.length() == 0) {
                        strI2 = strI2;
                    } else {
                        String str3 = str;
                        String str4 = strI2;
                        String str5 = strE;
                        if (!StringsKt__StringsJVMKt.startsWith$default(strReplaceFirst$default, "/data/data", false, 2, null) && !StringsKt__StringsJVMKt.startsWith$default(strReplaceFirst$default, "/Android/data", false, 2, null)) {
                            if (StringsKt__StringsJVMKt.startsWith$default(strReplaceFirst$default, net.lingala.zip4j.util.e.F0, false, 2, null)) {
                                strReplaceFirst$default = StringsKt__StringsJVMKt.replaceFirst$default(strReplaceFirst$default, net.lingala.zip4j.util.e.F0, "", false, 4, (Object) null);
                            }
                            String str6 = strK0 + "/user/" + i10 + '/' + pkgName + '/' + strReplaceFirst$default;
                            if (new File(str6).exists()) {
                                linkedHashMap.put(str2 + strReplaceFirst$default + '/', str6);
                                com.xinzhu.overmind.b.a(this.f90017a, "archiveRedirect: " + str2 + strReplaceFirst$default + "/ => " + str6);
                            }
                        }
                        strI2 = str4;
                        strE = str5;
                        str = str3;
                    }
                }
            }
            pkgName = pkgName;
            strI2 = strI2;
            it2 = it3;
            z10 = false;
            obj = null;
        }
        return linkedHashMap;
    }

    @Override // com.xinzhu.overmind.custom.CustomCallback
    public void customLoadLibgggg(@Nullable String str, int i10) {
        String str2;
        if (str == null || str.length() == 0) {
            return;
        }
        MindPackageSettings mindPackageSettingsK = ma.g.d().k(str);
        Bundle bundleA = null;
        String str3 = (mindPackageSettingsK.E() ? com.join.mgps.va.overmind.k.H(com.join.mgps.va.overmind.k.f73277a, str, 0, 2, null) : com.join.mgps.va.overmind.k.E(com.join.mgps.va.overmind.k.f73277a, str, 0, 2, null)) + "/app_pluginLib";
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("userId", i10);
        try {
            bundleA = n.a(k.f90037e, "isUseNativeLib", null, bundle);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (bundleA != null ? bundleA.getBoolean("isUseNativeLib", false) : false) {
            String strN = mindPackageSettingsK.E() ? com.join.mgps.va.overmind.k.f73277a.n(str) : com.join.mgps.va.overmind.k.f73277a.m(str);
            if (Overmind.is64Bit()) {
                str2 = strN + "/arm64";
            } else {
                str2 = strN + "/arm";
            }
            str3 = str2;
        }
        if (new File(str3).exists()) {
            PaCtrl.f73241a.mountLibGggg(str3);
            this.f90018b = true;
        }
    }

    @Override // com.xinzhu.overmind.custom.CustomCallback
    public void customOnSoLoaded(@NotNull String name, long j10) {
        Intrinsics.checkNotNullParameter(name, "name");
        com.xinzhu.overmind.b.a(this.f90017a, "customOnSoLoaded " + name + ' ' + j10);
        if (this.f90018b) {
            PaCtrl.f73241a.onSoLoaded(name, j10);
        }
    }
}
