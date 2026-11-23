package com.join.mgps.va.overmind;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.os.Bundle;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.LockApkBean;
import com.join.mgps.mod.utils.PluginConfig;
import com.papa91.arc.ext.Log;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.FileUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f73282a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f73283b = m.class.getSimpleName();

    @SourceDebugExtension({"SMAP\nVExtPackageAccessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VExtPackageAccessor.kt\ncom/join/mgps/va/overmind/VExtPackageAccessor$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,593:1\n3829#2:594\n4344#2,2:595\n1869#3,2:597\n*S KotlinDebug\n*F\n+ 1 VExtPackageAccessor.kt\ncom/join/mgps/va/overmind/VExtPackageAccessor$Companion\n*L\n345#1:594\n345#1:595,2\n380#1:597,2\n*E\n"})
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final long c(String str) {
            String strD;
            StringBuilder sb2;
            File file = new File(str);
            long size = 0;
            if (file.exists() && file.isFile()) {
                FileChannel channel = null;
                try {
                    channel = new FileInputStream(file).getChannel();
                    size = channel != null ? channel.size() : 0L;
                    if (channel != null) {
                        try {
                        } catch (Exception unused) {
                            strD = d();
                            sb2 = new StringBuilder();
                            sb2.append("close file channel error: ");
                            sb2.append(str);
                            Log.e(strD, sb2.toString());
                        }
                    }
                } catch (Exception unused2) {
                    Log.e(d(), "read file size error: " + str);
                    if (channel != null) {
                        try {
                        } catch (Exception unused3) {
                            strD = d();
                            sb2 = new StringBuilder();
                            sb2.append("close file channel error: ");
                            sb2.append(str);
                            Log.e(strD, sb2.toString());
                        }
                    }
                } finally {
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Exception unused4) {
                            Log.e(d(), "close file channel error: " + str);
                        }
                    }
                }
            }
            return size;
        }

        private final PackageParser.Package f(String str) throws Throwable {
            try {
                com.xinzhu.haunted.android.content.pm.n nVarK = com.xinzhu.haunted.android.content.pm.n.k();
                Object objL = nVarK.l(new File(str), 0);
                Intrinsics.checkNotNull(objL, "null cannot be cast to non-null type android.content.pm.PackageParser.Package");
                PackageParser.Package r10 = (PackageParser.Package) objL;
                if (com.xinzhu.overmind.utils.e.z()) {
                    nVarK.j(r10, true);
                } else {
                    nVarK.i(r10, 0);
                }
                return r10;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static /* synthetic */ void j(a aVar, String str, String str2, int i10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            aVar.i(str, str2, i10);
        }

        public static /* synthetic */ void m(a aVar, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            aVar.l(str, z10);
        }

        private final void o(Bundle bundle) {
            File parentFile;
            boolean z10 = false;
            int i10 = bundle.getInt("userId", 0);
            String string = bundle.getString("packageName");
            String string2 = bundle.getString("goldSwitch");
            String string3 = bundle.getString("archiveSwitch");
            String string4 = bundle.getString("introductionSwitch");
            String string5 = bundle.getString("channelNum");
            String string6 = bundle.getString("targetVersion");
            String string7 = bundle.getString("androidId");
            String string8 = bundle.getString("platform");
            String string9 = bundle.getString("package_type");
            String string10 = bundle.getString("typeId");
            boolean z11 = bundle.getBoolean("utilsConfigState", false);
            k kVar = k.f73277a;
            String strO = kVar.O(string, i10);
            String strR = kVar.R(string, i10);
            File file = new File(strO);
            File parentFile2 = file.getParentFile();
            if (parentFile2 != null && parentFile2.exists()) {
                z10 = true;
            }
            if (!z10 && (parentFile = file.getParentFile()) != null) {
                parentFile.mkdirs();
            }
            l.j(strO, string2, string3, string4 == null ? "" : string4, string5, string6, string7, string8, string9, string10);
            l.m(strO, z11);
            h1.e("write mod to ext..pre");
            com.xinzhu.overmind.plugin.b.f(strO, strR);
            h1.e("write mod to ext..\n" + strO + " -> " + strR + '\n' + string2 + ", " + string3 + ", " + string5 + ", " + string6);
        }

        public final void a(@NotNull String packageName) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            StringBuilder sb2 = new StringBuilder();
            k kVar = k.f73277a;
            sb2.append(kVar.k(packageName));
            sb2.append("/transfer.lock");
            if (new File(sb2.toString()).exists() || !i.f73262g.d().R(packageName)) {
                return;
            }
            Iterator it2 = CollectionsKt__CollectionsKt.arrayListOf(kVar.V(packageName), k.E(kVar, packageName, 0, 2, null), kVar.h0(packageName)).iterator();
            while (it2.hasNext()) {
                o0.m((String) it2.next());
            }
        }

        @JvmStatic
        public final long b(@Nullable String str) {
            MindShareFileInfo mindShareFileInfoB;
            long jB = 0;
            if ((str == null || str.length() == 0) || (mindShareFileInfoB = com.xinzhu.overmind.plugin.b.b(str)) == null) {
                return 0L;
            }
            if (!mindShareFileInfoB.f89716d.booleanValue()) {
                return mindShareFileInfoB.f89717e;
            }
            try {
                for (MindShareFileInfo mindShareFileInfo : com.xinzhu.overmind.plugin.b.m(str)) {
                    if (mindShareFileInfo.f89715c.booleanValue()) {
                        jB += mindShareFileInfo.f89716d.booleanValue() ? b(mindShareFileInfo.f89714b) : mindShareFileInfo.f89717e;
                    }
                }
            } catch (Exception unused) {
                Log.e(d(), "getExtFileTotalSize error: " + str);
            }
            return jB;
        }

        public final String d() {
            return m.f73283b;
        }

        @JvmStatic
        public final void delete(@Nullable String str) {
            if (str == null || str.length() == 0) {
                return;
            }
            com.xinzhu.overmind.plugin.b.h(str);
        }

        public final boolean e(@Nullable Context context, @NotNull String path) {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            PackageManager packageManager;
            Intrinsics.checkNotNullParameter(path, "path");
            PackageInfo packageArchiveInfo = (context == null || (packageManager = context.getPackageManager()) == null) ? null : packageManager.getPackageArchiveInfo(path, 128);
            if (packageArchiveInfo == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
                return false;
            }
            return bundle.getBoolean(com.join.mgps.mod.utils.d.f71910l);
        }

        public final void g(@Nullable Bundle bundle) {
            if (bundle == null) {
                return;
            }
            try {
                if (Intrinsics.areEqual(bundle.getString("action"), "writeModSwitch")) {
                    o(bundle);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JvmStatic
        public final void h(@NotNull String packageName, long j10, long j11) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            k kVar = k.f73277a;
            String strV = kVar.V(packageName);
            String strE = k.E(kVar, packageName, 0, 2, null);
            String strX = kVar.X(packageName);
            String strH = k.H(kVar, packageName, 0, 2, null);
            long jB = b(strX);
            long jB2 = b(strH);
            if (jB != j10 && jB > 0) {
                List<MindShareFileInfo> listE = ma.d.c().e(strX);
                if (listE != null) {
                    Iterator<MindShareFileInfo> it2 = listE.iterator();
                    while (it2.hasNext()) {
                        o0.m(it2.next().f89714b);
                    }
                }
                com.xinzhu.overmind.plugin.b.e(strX, strV);
            }
            if (jB2 != j11 && jB2 > 0) {
                List<MindShareFileInfo> listE2 = ma.d.c().e(strH);
                if (listE2 != null) {
                    Iterator<MindShareFileInfo> it3 = listE2.iterator();
                    while (it3.hasNext()) {
                        o0.m(it3.next().f89714b);
                    }
                }
                com.xinzhu.overmind.plugin.b.e(strH, strE);
            }
            File file = new File(k.f73277a.k(packageName) + "/obd.lock");
            if (file.exists()) {
                return;
            }
            com.xinzhu.overmind.plugin.b.h(strX);
            com.xinzhu.overmind.plugin.b.h(strH);
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }

        public final void i(@NotNull String packageName, @NotNull String gameId, int i10) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            try {
                k kVar = k.f73277a;
                String strO = kVar.O(packageName, i10);
                String strR = kVar.R(packageName, i10);
                if (!new File(strO).exists()) {
                    PluginConfig.setModGameId(strO, gameId);
                }
                com.xinzhu.overmind.plugin.b.f(strO, strR);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public final void k(@Nullable String str, int i10, @NotNull String packageName, @NotNull Bundle args) {
            File parentFile;
            File parentFile2;
            File parentFile3;
            File parentFile4;
            File parentFile5;
            File parentFile6;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(args, "args");
            try {
                if (i10 == 0) {
                    k kVar = k.f73277a;
                    y.c archiveSection = PluginConfig.getArchiveSection(k.q(kVar, packageName, 0, 2, null));
                    if (archiveSection != null) {
                        String strC = archiveSection.c("archivePath");
                        Intrinsics.checkNotNull(strC);
                        if (StringsKt__StringsJVMKt.startsWith$default(strC, "/Android/data", false, 2, null)) {
                            File file = new File(kVar.k(packageName) + "/archive.lock");
                            if (!file.exists()) {
                                com.xinzhu.overmind.plugin.b.d(kVar.k0() + strC, kVar.l0() + strC);
                                o0.l(kVar.k0() + strC, false);
                                File parentFile7 = file.getParentFile();
                                if (((parentFile7 == null || parentFile7.exists()) ? false : true) && (parentFile6 = file.getParentFile()) != null) {
                                    parentFile6.mkdirs();
                                }
                                file.createNewFile();
                            }
                        } else if (StringsKt__StringsJVMKt.startsWith$default(strC, "/data/data/", false, 2, null)) {
                            String strD = kVar.D(packageName, i10);
                            String strG = kVar.G(packageName, i10);
                            File file2 = new File(kVar.k(packageName) + "/archive.lock");
                            if (!file2.exists()) {
                                com.xinzhu.overmind.plugin.b.d(strD, strG);
                                o0.l(strD, false);
                                File parentFile8 = file2.getParentFile();
                                if (((parentFile8 == null || parentFile8.exists()) ? false : true) && (parentFile5 = file2.getParentFile()) != null) {
                                    parentFile5.mkdirs();
                                }
                                file2.createNewFile();
                            }
                        } else {
                            String str2 = "/user/" + packageName + '/' + strC;
                            File file3 = new File(kVar.k(packageName) + "/archive.lock");
                            if (!file3.exists()) {
                                com.xinzhu.overmind.plugin.b.d(kVar.k0() + str2, kVar.l0() + str2);
                                o0.l(kVar.k0() + str2, false);
                                File parentFile9 = file3.getParentFile();
                                if (((parentFile9 == null || parentFile9.exists()) ? false : true) && (parentFile4 = file3.getParentFile()) != null) {
                                    parentFile4.mkdirs();
                                }
                                file3.createNewFile();
                            }
                        }
                    }
                    File file4 = new File(kVar.e(packageName) + "/archive.lock");
                    if (!file4.exists()) {
                        com.xinzhu.overmind.plugin.b.d(kVar.e(packageName), kVar.h(packageName));
                        o0.l(kVar.e(packageName), false);
                        com.xinzhu.overmind.plugin.b.d(kVar.h0(packageName), kVar.i0(packageName));
                        o0.l(kVar.h0(packageName), false);
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
                            sb2.append("/archive.lock");
                            File file5 = new File(sb2.toString());
                            if (!file5.exists()) {
                                com.xinzhu.overmind.plugin.b.d(kVar2.k0() + strReplace$default, kVar2.l0() + strReplace$default);
                                o0.l(kVar2.k0() + strReplace$default, false);
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
                            File file6 = new File(strD2 + "/archive.lock");
                            if (!file6.exists()) {
                                com.xinzhu.overmind.plugin.b.d(strD2, strG2);
                                o0.l(strD2, false);
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
                            sb3.append("/archive.lock");
                            File file7 = new File(sb3.toString());
                            if (!file7.exists()) {
                                com.xinzhu.overmind.plugin.b.d(kVar4.k0() + str4, kVar4.l0() + str4);
                                o0.l(kVar4.k0() + str4, false);
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
                if (!new File(string).exists()) {
                    return;
                }
                File file8 = new File(kVar5.k0() + "/user/" + i10 + "/archive.lock");
                String str5 = kVar5.l0() + "/user/" + i10 + '/' + packageName;
                long jFileSize = FileUtils.fileSize(string);
                try {
                    long jB = b(str5);
                    if (!file8.exists() || jB < jFileSize) {
                        com.xinzhu.overmind.plugin.b.d(string, str5);
                        o0.l(string, false);
                        File parentFile14 = file8.getParentFile();
                        if ((parentFile14 == null || parentFile14.exists()) ? false : true) {
                            file8.mkdirs();
                        }
                        file8.createNewFile();
                        return;
                    }
                    return;
                } catch (IOException e10) {
                    e = e10;
                }
            } catch (IOException e11) {
                e = e11;
            }
            String message = e.getMessage();
            if (message != null && StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "No space left on device", false, 2, (Object) null)) {
                ToastManager.show("空间不足，请清理后重试");
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x00a9  */
        public final void l(@NotNull String packageName, boolean z10) {
            boolean z11;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            String str = Overmind.is64Bit() ? "arm" : com.join.mgps.mod.utils.d.f71902d;
            String str2 = z10 ? k.f73277a.m(packageName) + '/' + str : com.xinzhu.overmind.a.r(packageName, 0).getAbsolutePath() + "/app_pluginLib";
            String str3 = z10 ? k.f73277a.n(packageName) + '/' + str : k.f73277a.G(packageName, 0) + "/app_pluginLib";
            File[] fileArrListFiles = new File(str2).listFiles();
            ArrayList<File> arrayList = null;
            if (fileArrListFiles != null) {
                ArrayList arrayList2 = new ArrayList();
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        String name = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        if (StringsKt__StringsJVMKt.endsWith$default(name, ".so", false, 2, null)) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        arrayList2.add(file);
                    }
                }
                arrayList = arrayList2;
            }
            ArrayList arrayList3 = arrayList;
            if (arrayList3 == null || arrayList3.isEmpty()) {
                return;
            }
            for (File file2 : arrayList) {
                File file3 = new File(str3, file2.getName());
                try {
                    MindShareFileInfo mindShareFileInfoB = com.xinzhu.overmind.plugin.b.b(file3.getAbsolutePath());
                    String absolutePath = file2.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                    long jC = c(absolutePath);
                    if (mindShareFileInfoB == null || !mindShareFileInfoB.f89715c.booleanValue() || mindShareFileInfoB.f89717e != jC) {
                        com.xinzhu.overmind.plugin.b.f(file2.getAbsolutePath(), file3.getAbsolutePath());
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Exception e10) {
                    Log.e(d(), "syncLibs error: " + e10.getMessage());
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00a9  */
        @JvmStatic
        public final void n(@NotNull String packageName, int i10, @Nullable Bundle bundle) throws Throwable {
            boolean z10;
            String str;
            int i11;
            LockApkBean lockApkBean;
            LockApkBean lockApkBean2;
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            StringBuilder sb2 = new StringBuilder();
            k kVar = k.f73277a;
            sb2.append(kVar.k(packageName));
            sb2.append("/transfer.lock");
            File file = new File(sb2.toString());
            File file2 = new File(kVar.A(packageName));
            File file3 = new File(kVar.B(packageName));
            if (file2.exists()) {
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                long jC = c(absolutePath);
                MindShareFileInfo mindShareFileInfoB = com.xinzhu.overmind.plugin.b.b(file3.getAbsolutePath());
                long j10 = mindShareFileInfoB != null ? mindShareFileInfoB.f89717e : 0L;
                PackageInfo packageInfoL = ma.g.d().l(packageName, 0, i10);
                int i12 = packageInfoL != null ? packageInfoL.versionCode : 0;
                if (file.exists()) {
                    try {
                        String strP = o0.P(new FileInputStream(file));
                        if (t2.i(strP)) {
                            lockApkBean = (LockApkBean) JsonMapper.getInstance().fromJson(strP, LockApkBean.class);
                            if (lockApkBean != null) {
                                try {
                                    z10 = i12 > lockApkBean.getVersionCode();
                                    lockApkBean2 = lockApkBean;
                                } catch (Exception e10) {
                                    e = e10;
                                    e.printStackTrace();
                                    lockApkBean2 = lockApkBean;
                                    z10 = false;
                                }
                            } else {
                                lockApkBean2 = lockApkBean;
                                z10 = false;
                            }
                        } else {
                            lockApkBean2 = null;
                            z10 = false;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        lockApkBean = null;
                    }
                } else {
                    lockApkBean2 = null;
                    z10 = false;
                }
                if (((jC != j10 && jC > 0) || z10) && file2.exists()) {
                    com.xinzhu.overmind.plugin.b.q(packageName, i10);
                    if (lockApkBean2 == null) {
                        lockApkBean2 = new LockApkBean();
                    }
                    lockApkBean2.setVersionCode(i12);
                    try {
                        o0.Z(file.getAbsolutePath(), JsonMapper.toJsonString(lockApkBean2));
                        StringBuilder sb3 = new StringBuilder();
                        k kVar2 = k.f73277a;
                        sb3.append(kVar2.l(packageName));
                        sb3.append("/archive.lock");
                        com.xinzhu.overmind.plugin.b.h(sb3.toString());
                        com.xinzhu.overmind.plugin.b.h(kVar2.l(packageName) + "/transfer.lock");
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
            } else {
                z10 = false;
            }
            k kVar3 = k.f73277a;
            String strV = kVar3.V(packageName);
            String strX = kVar3.X(packageName);
            long j11 = bundle != null ? bundle.getLong("obbSize") : 0L;
            if ((b(strX) != j11 || z10) && j11 > 0) {
                List<MindShareFileInfo> listM = com.xinzhu.overmind.plugin.b.m(strX);
                if (listM != null) {
                    Iterator<MindShareFileInfo> it2 = listM.iterator();
                    while (it2.hasNext()) {
                        delete(it2.next().f89714b);
                    }
                }
                com.xinzhu.overmind.plugin.b.d(strV, strX);
            }
            for (String str2 : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Papa_Stat_SharedPreferences.xml", "PrefDef.xml"})) {
                StringBuilder sb4 = new StringBuilder();
                File parentFile = com.xinzhu.overmind.a.a0().getParentFile();
                sb4.append(parentFile != null ? parentFile.getAbsolutePath() : null);
                sb4.append("/shared_prefs/");
                sb4.append(str2);
                String string = sb4.toString();
                StringBuilder sb5 = new StringBuilder();
                File parentFile2 = com.xinzhu.overmind.a.b0().getParentFile();
                sb5.append(parentFile2 != null ? parentFile2.getAbsolutePath() : null);
                sb5.append("/shared_prefs/");
                sb5.append(str2);
                com.xinzhu.overmind.plugin.b.f(string, sb5.toString());
            }
            if (bundle == null) {
                return;
            }
            String string2 = bundle.getString("modPath");
            if (string2 == null || string2.length() == 0) {
                return;
            }
            File file4 = new File(string2);
            if (file4.exists()) {
                String mainPkg = Overmind.getMainPkg();
                Intrinsics.checkNotNullExpressionValue(mainPkg, "getMainPkg(...)");
                String strSubstring = string2.substring(StringsKt__StringsKt.indexOf$default((CharSequence) string2, mainPkg, 0, false, 6, (Object) null), StringsKt__StringsKt.indexOf$default((CharSequence) string2, "/files/", 0, false, 6, (Object) null));
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String pluginPkg = Overmind.getPluginPkg();
                Intrinsics.checkNotNullExpressionValue(pluginPkg, "getPluginPkg(...)");
                File file5 = new File(StringsKt__StringsJVMKt.replace$default(string2, strSubstring, pluginPkg, false, 4, (Object) null));
                MindShareFileInfo mindShareFileInfoB2 = com.xinzhu.overmind.plugin.b.b(file5.getAbsolutePath());
                long jB = b(file5.getAbsolutePath());
                String absolutePath2 = file4.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                long jC2 = c(absolutePath2);
                if (mindShareFileInfoB2 == null || !mindShareFileInfoB2.f89715c.booleanValue() || jB != jC2) {
                    com.xinzhu.overmind.plugin.b.f(file4.getAbsolutePath(), file5.getAbsolutePath());
                }
                String str3 = com.xinzhu.overmind.a.r(packageName, 0).getAbsolutePath() + "/files/mod_cfg.ini";
                String str4 = k.f73277a.G(packageName, 0) + "/files/mod_cfg.ini";
                String absolutePath3 = file4.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath3, "getAbsolutePath(...)");
                PackageParser.Package packageF = f(absolutePath3);
                if (packageF != null) {
                    str = packageF.mVersionName;
                    i11 = packageF.mVersionCode;
                } else {
                    str = "1.0";
                    i11 = 1;
                }
                l.i(str3, file5.getAbsolutePath(), str, i11, System.currentTimeMillis());
                String string3 = bundle.getString("gameId");
                l.k(str3, string3);
                com.xinzhu.overmind.plugin.b.f(str3, str4);
                k(string3, i10, packageName, bundle);
                l(packageName, e(Overmind.getContext(), string2));
                a(packageName);
            }
        }

        private a() {
        }
    }

    @JvmStatic
    public static final long b(@Nullable String str) {
        return f73282a.b(str);
    }

    @JvmStatic
    public static final void c(@NotNull String str, long j10, long j11) {
        f73282a.h(str, j10, j11);
    }

    @JvmStatic
    public static final void d(@NotNull String str, int i10, @Nullable Bundle bundle) throws Throwable {
        f73282a.n(str, i10, bundle);
    }

    @JvmStatic
    public static final void delete(@Nullable String str) {
        f73282a.delete(str);
    }
}
