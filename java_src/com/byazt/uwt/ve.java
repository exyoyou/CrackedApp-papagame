package com.byazt.uwt;

import android.content.pm.PackageInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import com.byazt.bog.a;
import com.byazt.uk.sl;
import com.byazt.uq.i;
import com.byazt.uq.sp;
import com.byazt.uq.u;
import com.byazt.uq.x;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 273, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final sl f21064c = sl.c();

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(File file, String str, int i10, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                if (!com.byazt.fdg.n.c(file.getAbsolutePath(), str, sb2)) {
                    throw new RuntimeException("安装包签名校验失败[1]:".concat(String.valueOf(sb2)));
                }
                stringBuffer.append("checkSignature cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.rl, str, i10, -1L, Log.getStackTraceString(e10));
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -3, str, i10, e10);
                throw new c(e10.getMessage(), e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("checkSignature cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean da(File file, String str, int i10, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                if (i.sp()) {
                    String strVe = com.byazt.th.ve.ve(str, i10);
                    String strTt = com.byazt.th.ve.tt(str, i10);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strVe);
                    String str2 = File.separator;
                    sb2.append(str2);
                    sb2.append(com.byazt.xe.tt.c(strTt));
                    String string = sb2.toString();
                    if (com.byazt.xe.tt.c(strTt, strVe + str2 + com.byazt.xe.tt.c(strTt)) && com.byazt.xe.tt.c(string)) {
                        stringBuffer.append("dexOpt1 cost:");
                        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                        stringBuffer.append(";");
                        return true;
                    }
                }
                stringBuffer.append("dexOpt1 cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
                return false;
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.yv, str, i10, -1L, null);
                throw new c("dexOpt1失败", e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("dexOpt1 cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String i(File file, String str, int i10, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strTt = com.byazt.th.ve.tt(str, i10);
        try {
            try {
                x.c(file.getAbsolutePath(), strTt);
                stringBuffer.append("copyApk cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
                return strTt;
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gu, str, i10, -1L, null);
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -6, str, i10, e10);
                throw new c("安装包拷贝失败", e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("copyApk cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, List<ZipEntry>> sp(File file, String str, int i10, StringBuffer stringBuffer) throws c {
        String str2 = "插件包包含so不符合宿主ABI类型";
        if (!GlobalParam.getInstance().checkMatchHostAbi()) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                com.byazt.uq.n<Boolean, Map<String, List<ZipEntry>>> nVarC = com.byazt.th.tt.c(file);
                boolean zBooleanValue = nVarC.f20945c.booleanValue();
                Map<String, List<ZipEntry>> map = nVarC.tt;
                if (!zBooleanValue) {
                    throw new c(str2);
                }
                stringBuffer.append("checkMatchHostAbi cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
                return map;
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.f14787p, str, i10, -1L, null);
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -5, str, i10, e10);
                throw new c(str2, e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("checkMatchHostAbi cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
        stringBuffer.append("checkMatchHostAbi cost:");
        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
        stringBuffer.append(";");
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void x(File file, String str, int i10, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                PackageInfo packageInfo = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 4096);
                PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 4096);
                List listAsList = Arrays.asList(packageInfo.requestedPermissions);
                String[] strArr = packageArchiveInfo.requestedPermissions;
                if (strArr != null && strArr.length > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : packageArchiveInfo.requestedPermissions) {
                        if (!listAsList.contains(str2)) {
                            arrayList.add(str2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        ZeusLogger.w("PluginInstaller", "The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
                        if (GlobalParam.getInstance().checkPermission()) {
                            throw new c("The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
                        }
                    }
                }
                stringBuffer.append("checkPermissions cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.qy, str, i10, -1L, null);
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -4, str, i10, e10);
                throw new c("安装包权限校验失败", e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("checkPermissions cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 273, 24})
    public static class c extends IOException {
        private c(String str) {
            super(str);
        }

        private c(String str, Throwable th) {
            super(str, th);
        }
    }

    private static void tt(String str, int i10) {
        int iTt = u.c().tt(str, i10, com.sigmob.sdk.base.n.f79590q);
        int iTt2 = u.c().tt(str, i10, "load");
        int removeApkEntryFlag = GlobalParam.getInstance().getRemoveApkEntryFlag(str);
        if (iTt > 3 || iTt2 > 3) {
            removeApkEntryFlag = 0;
        }
        u.c().c(str, i10, removeApkEntryFlag);
        u.c().ve(str, i10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ve(String str, int i10) throws c {
        try {
            if (i.a() || i.x()) {
                u.c().tt(str, i10, false);
                com.byazt.xe.tt.c(Zeus.getAppApplication()).edit().putInt(str, i10).apply();
                com.byazt.xe.n.c();
            }
        } catch (Exception e10) {
            c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.yv, str, i10, -1L, null);
            throw new c("dexOpt2失败", e10);
        }
    }

    public static boolean c(final File file, final String str, final int i10) {
        final StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("useOpt;");
        final boolean[] zArr = {false};
        try {
            sl slVar = f21064c;
            slVar.c(1000, 0, str, i10, null);
            com.byazt.blh.tt ttVarC = com.byazt.blh.tt.c(ZeusLogger.TAG_INSTALL, "PluginInstaller", "install:".concat(String.valueOf(str)));
            c(com.byazt.gvs.tt.uj, com.byazt.gvs.tt.c.rh, str, i10, -1L, null);
            tt(str, i10);
            sp.c(com.byazt.th.ve.c(str, i10));
            com.byazt.ao.c.c(false, new com.byazt.ao.c.InterfaceC0253c() { // from class: com.byazt.uwt.ve.1
                @Override // com.byazt.ao.c.InterfaceC0253c
                public void c() throws Throwable {
                    ve.a(file, str, i10, stringBuffer);
                }
            }, new com.byazt.ao.c.InterfaceC0253c() { // from class: com.byazt.uwt.ve.2
                @Override // com.byazt.ao.c.InterfaceC0253c
                public void c() throws Throwable {
                    final Map mapSp = ve.sp(file, str, i10, stringBuffer);
                    ve.x(file, str, i10, stringBuffer);
                    ve.tt(ve.i(file, str, i10, stringBuffer), str, i10, stringBuffer);
                    if (i.sp()) {
                        final boolean[] zArr2 = {false};
                        com.byazt.ao.c.c(false, new com.byazt.ao.c.InterfaceC0253c() { // from class: com.byazt.uwt.ve.2.1
                            @Override // com.byazt.ao.c.InterfaceC0253c
                            public void c() throws Throwable {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                ve.tt(str, i10, (Map<String, List<ZipEntry>>) mapSp, stringBuffer);
                            }
                        }, new com.byazt.ao.c.InterfaceC0253c() { // from class: com.byazt.uwt.ve.2.2
                            @Override // com.byazt.ao.c.InterfaceC0253c
                            public void c() throws Throwable {
                                boolean[] zArr3 = zArr2;
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                zArr3[0] = ve.da(file, str, i10, stringBuffer);
                            }
                        });
                        zArr[0] = ve.tt(str, i10, zArr2[0], stringBuffer);
                    } else {
                        ve.tt(str, i10, (Map<String, List<ZipEntry>>) mapSp, stringBuffer);
                        zArr[0] = ve.tt(str, i10, false, stringBuffer);
                        ve.ve(str, i10);
                    }
                }
            });
            sp.c(file);
            c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.my, str, i10, ttVarC.c(), stringBuffer.toString());
            ttVarC.c("success");
            slVar.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, 0, str, i10, null);
            return true;
        } catch (Throwable th) {
            if (th instanceof c) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str + " install failed.", th);
            } else {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str + " install failed unknown error.", th);
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gt, str, i10, -1L, stringBuffer.toString());
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -1, str, i10, th);
            }
            if (zArr[0]) {
                u.c().c(str, i10, com.sigmob.sdk.base.n.f79590q);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tt(String str, int i10, boolean z10, StringBuffer stringBuffer) {
        int iX = u.c().x(str, i10);
        boolean z11 = (iX & 1) != 0;
        boolean z12 = (iX & 2) != 0;
        if (!z11 && !z12) {
            stringBuffer.append("removeEntry skip;");
            return false;
        }
        boolean z13 = z10 && z11;
        String strTt = com.byazt.th.ve.tt(str, i10);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zC = com.byazt.mx.tt.c(strTt, z13, z12, str, i10, 1);
        stringBuffer.append("removeEntry cost:");
        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
        stringBuffer.append(";");
        return zC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(String str, String str2, int i10, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        int iC = new com.byazt.vnu.ve().c(new File(str), false, sb2);
        stringBuffer.append(iC == 100 ? "modifyRes" : "noModifyRes");
        stringBuffer.append(" cost:");
        stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
        stringBuffer.append(";");
        if (iC == 100 || iC == 200) {
            return;
        }
        String string = sb2.toString();
        c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.md, str2, i10, -1L, string);
        f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -2, str2, i10, null);
        throw new c("modifyRes failed. result = " + iC + ", errorLog = " + string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(String str, int i10, Map<String, List<ZipEntry>> map, StringBuffer stringBuffer) throws c {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                com.byazt.th.tt.c(new File(com.byazt.th.ve.tt(str, i10)), new File(com.byazt.th.ve.uj(str, i10)), str, map);
                stringBuffer.append("copySo cost:");
                stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
                stringBuffer.append(";");
            } catch (Exception e10) {
                c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gr, str, i10, -1L, com.byazt.blh.ve.c((Object) e10));
                f21064c.c(AVMDLDataLoader.KeyIsSetAlogFuncPtr, -7, str, i10, e10);
                throw new c("安装包动态库拷贝失败", e10);
            }
        } catch (Throwable th) {
            stringBuffer.append("copySo cost:");
            stringBuffer.append(System.currentTimeMillis() - jCurrentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }

    public static void c(String str, int i10, @NonNull String str2, int i11, long j10, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.byazt.blh.ve.c(Integer.valueOf(i10)));
            jSONObject.putOpt("plugin_package_name", com.byazt.blh.ve.c(str2));
            jSONObject.putOpt("version_code", com.byazt.blh.ve.c(Integer.valueOf(i11)));
            jSONObject3.putOpt("duration", Integer.valueOf(com.byazt.blh.ve.tt(Long.valueOf(j10))));
            jSONObject2.putOpt("message", com.byazt.blh.ve.c(str3));
        } catch (JSONException e10) {
            a.c(e10);
        }
        com.byazt.gvs.tt.c().c(str, jSONObject, jSONObject3, jSONObject2);
    }
}
