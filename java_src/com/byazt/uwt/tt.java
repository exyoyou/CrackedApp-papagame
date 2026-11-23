package com.byazt.uwt;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.byazt.bog.a;
import com.byazt.uq.sp;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.io.File;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 273, 13})
public class tt implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public File f21054c;
    public final String tt;

    public tt(String str, File file) {
        this.f21054c = file;
        this.tt = str;
    }

    private File c(File file) {
        if (file.exists() || file.getParent() == null) {
            return file;
        }
        File[] fileArrListFiles = new File(file.getParent()).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.exists() && file2.getName().endsWith(".apk")) {
                return file2;
            }
        }
        return file;
    }

    private void tt() {
        int i10 = 3;
        while (i10 > 0) {
            i10--;
            try {
                File file = new File(this.f21054c.getAbsolutePath() + "_unzip");
                if (file.exists()) {
                    file.delete();
                    file.mkdirs();
                }
                sp.tt(this.f21054c.getAbsolutePath(), file.getAbsolutePath());
                File[] fileArrListFiles = file.listFiles();
                File file2 = this.f21054c;
                if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                    file2 = fileArrListFiles[0];
                }
                File fileC = c(file2);
                if (fileC != null && fileC.exists() && fileC.isFile()) {
                    this.f21054c = fileC;
                    ZeusLogger.d("Plugin install : unZip count : " + (3 - i10));
                    return;
                }
            } catch (Exception e10) {
                ZeusLogger.errReport(ZeusLogger.TAG_INIT, "Plugin install : unZip file failed !!!", e10);
                a.c(e10);
            }
        }
    }

    private com.byazt.gy.n ve() {
        com.byazt.cda.c cVarC;
        if (this.f21054c == null) {
            return null;
        }
        try {
            File file = new File(this.f21054c.getAbsolutePath() + "_unzip");
            if (file.exists()) {
                sp.c(file);
                file.mkdirs();
            }
            sp.tt(this.f21054c.getAbsolutePath(), file.getAbsolutePath());
            File[] fileArrListFiles = file.listFiles();
            LinkedList linkedList = new LinkedList();
            File file2 = null;
            for (File file3 : fileArrListFiles) {
                if (file3.getName().equals("config.json")) {
                    file2 = file3;
                } else if (file3.getName().endsWith(".dex")) {
                    linkedList.add(file3);
                }
            }
            sp.c(this.f21054c);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable Dex deleting downloadFile apkFile=" + this.f21054c);
            this.f21054c = file;
            if (linkedList.size() > 0 && file2 != null && file2.isFile() && (cVarC = com.byazt.cda.tt.c(file2, linkedList)) != null) {
                return new com.byazt.gy.n(cVarC);
            }
        } catch (Exception e10) {
            a.c(e10);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        c();
    }

    private static void c(String str, int i10, @NonNull String str2, int i11, long j10, String str3) {
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

    public boolean c() {
        com.byazt.gy.n nVarC;
        File file = this.f21054c;
        if (file != null && file.getName().endsWith(".dex.zip")) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ZeusLogger.d("Plugin install : start unDexZip file ~~~~");
            nVarC = ve();
            if (nVarC != null) {
                c(com.byazt.gvs.tt.sp, com.byazt.gvs.tt.c.my, this.tt, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, "");
                ZeusLogger.d("Plugin install : finish install from unDexZip success ~~~~");
            } else {
                ZeusLogger.d("Plugin install : finish install from unDexZip fail ~~~~");
            }
        } else {
            if (sp.tt(this.f21054c)) {
                ZeusLogger.d("Plugin install : start unZip file ~~~~");
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                tt();
                c(com.byazt.gvs.tt.sp, com.byazt.gvs.tt.c.or, this.tt, 0, SystemClock.elapsedRealtime() - jElapsedRealtime2, "");
                ZeusLogger.d("Plugin install : start install from unZip ~~~~");
            } else {
                ZeusLogger.d("Plugin install : start install without unZip ~~~~");
            }
            nVarC = com.byazt.gy.uj.c(this.f21054c);
        }
        if (nVarC == null) {
            ZeusPluginStateListener.postStateChange(this.tt, 7, " read local file package info failed !!! pluginPkg = " + this.tt + " mApkFile.exists = " + this.f21054c.exists());
            StringBuilder sb2 = new StringBuilder("PluginInstallRunnable read local file package info failed !!! pluginPkg = ");
            sb2.append(this.tt);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb2.toString());
            return false;
        }
        Plugin plugin = PluginManager.getInstance().getPlugin(nVarC.f14803c);
        if (plugin == null) {
            ZeusPluginStateListener.postStateChange(this.tt, 7, " plugin == null !!! pluginPkg = " + this.tt);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable cannot query valid plugin !!! packageName = " + nVarC.f14803c);
            return false;
        }
        boolean zInstall = plugin.install(this.f21054c, nVarC);
        if (zInstall) {
            ZeusPluginStateListener.postStateChange(nVarC.f14803c, 6, new Object[0]);
        } else {
            ZeusPluginStateListener.postStateChange(nVarC.f14803c, 7, "Internal error.");
        }
        return zInstall;
    }
}
