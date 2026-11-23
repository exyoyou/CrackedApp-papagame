package com.byazt.cda;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.bog.a;
import com.byazt.th.ve;
import com.byazt.uk.sl;
import com.byazt.uk.t;
import com.byazt.uq.i;
import com.byazt.uq.sp;
import com.byazt.uq.u;
import com.byazt.uq.x;
import com.byazt.uwt.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_PROBESIZE, 13})
public class tt {
    public static int c(String str) {
        String strC;
        File[] fileArrDa;
        int i10 = -1;
        if (TextUtils.isEmpty(str) || (strC = ve.c(str)) == null) {
            return -1;
        }
        File[] fileArrListFiles = new File(strC).listFiles(new FileFilter() { // from class: com.byazt.cda.tt.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                int i11 = Integer.parseInt(file.getName().split("-")[1]);
                if (i11 > i10 && u.c().uj(str, i11) && (fileArrDa = ve.da(str, i11)) != null && fileArrDa.length > 0) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    private static String tt(String str) {
        return (str == null || !str.endsWith(":")) ? str : str.substring(0, str.length() - 1);
    }

    public static void c(final String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strC = ve.c(str);
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        final String strConcat = "version-".concat(String.valueOf(i10));
        new File(strC).listFiles(new FileFilter() { // from class: com.byazt.cda.tt.2
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (file != null && !strConcat.equals(file.getName())) {
                    sp.c(file.getAbsolutePath());
                    if (file.getName().matches("^version-(\\d+)$")) {
                        u.c().c(str, Integer.parseInt(file.getName().split("-")[1]), false);
                    }
                }
                return false;
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0088 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:36:0x008d A[DONT_GENERATE] */
    /* JADX WARN: Multi-variable type inference failed */
    public static c c(File file, List<File> list) throws JSONException, IOException {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        if (file != null && list != null && list.size() > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                fileInputStream = new FileInputStream(file);
                try {
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line);
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail throw error ".concat(String.valueOf(th)));
                                    return null;
                                } finally {
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                    if (bufferedReader != 0) {
                                        bufferedReader.close();
                                    }
                                }
                            }
                        }
                        t tVarUj = sl.c().uj();
                        if (tVarUj != null) {
                            String strC = tVarUj.c(sb2.toString());
                            if (!TextUtils.isEmpty(strC)) {
                                JSONObject jSONObject = new JSONObject(strC);
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config json success");
                                c cVarC = c.c(jSONObject, file, list);
                                fileInputStream.close();
                                inputStreamReader.close();
                                bufferedReader.close();
                                return cVarC;
                            }
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail decode content is empty");
                        } else {
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail decode callback is null");
                        }
                        fileInputStream.close();
                        inputStreamReader.close();
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = 0;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = null;
                    bufferedReader = inputStreamReader;
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail throw error ".concat(String.valueOf(th)));
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                inputStreamReader = null;
            }
        }
        return null;
    }

    public static boolean c(c cVar, long j10) {
        List<File> listUj;
        File fileN;
        if (cVar != null) {
            listUj = cVar.uj();
            fileN = cVar.n();
        } else {
            listUj = null;
            fileN = null;
        }
        if (fileN != null && listUj != null && listUj.size() > 0) {
            int iVe = cVar.ve();
            String strTt = cVar.tt();
            ZeusPluginStateListener.postStateChange(strTt, 11, new Object[0]);
            com.byazt.uwt.ve.c(com.byazt.gvs.tt.uj, com.byazt.gvs.tt.c.rh, strTt, iVe, -1L, null);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex start packageName = " + strTt + " version is " + iVe);
            String strSl = u.c().sl(strTt);
            if (!TextUtils.isEmpty(strSl) && c(strSl) >= iVe) {
                com.byazt.uwt.ve.c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gt, strTt, iVe, -1L, "dex installed version more than download version can no install new dex zip");
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("dex installed version more than download version can no install new dex zip"));
                return false;
            }
            String strSp = TextUtils.isEmpty(cVar.sp()) ? strTt : cVar.sp();
            if (!ve.i(strSp, iVe)) {
                try {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex no dir need install packageName=" + strTt + " version=" + iVe);
                    for (File file : listUj) {
                        if (file.getName().endsWith(".dex")) {
                            String strC = ve.c(strSp, iVe, file.getName());
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex = " + file.getName());
                            x.c(file.getAbsolutePath(), strC);
                        }
                    }
                    if (fileN.getName().endsWith(".json")) {
                        String strSl2 = ve.sl(strSp, iVe);
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex config = " + fileN.getName());
                        x.c(fileN.getAbsolutePath(), strSl2);
                    }
                    if (ve.i(strSp, iVe)) {
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex success packageName = " + strTt + " version = " + iVe);
                        ZeusPluginStateListener.postStateChange(strTt, 12, new Object[0]);
                        com.byazt.uwt.ve.c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.my, strTt, iVe, SystemClock.elapsedRealtime() - j10, "install success");
                        u.c().c(strSp, iVe, true);
                        if (!TextUtils.isEmpty(cVar.sp())) {
                            u.c().ve(strTt, strSp);
                            u.c().uj(strTt, strSl);
                        }
                        return true;
                    }
                    com.byazt.uwt.ve.c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gt, strTt, iVe, -1L, "install dir not exists");
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("install dir not exists"));
                } catch (Exception e10) {
                    com.byazt.uwt.ve.c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.gt, strTt, iVe, -1L, "throw exception: ".concat(String.valueOf(e10)));
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail throw exception");
                    a.c(e10);
                }
            } else {
                com.byazt.uwt.ve.c(com.byazt.gvs.tt.f14775n, com.byazt.gvs.tt.c.my, strTt, iVe, SystemClock.elapsedRealtime() - j10, "install success 已经安装完成");
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex already install packageName = " + strTt + " version = " + iVe);
                return true;
            }
        } else {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail config is null");
        }
        return false;
    }

    public static boolean c(Plugin plugin, StringBuilder sb2) {
        try {
            if (plugin == null) {
                sb2.append("loadDexPlugin fail, plugin == null;");
                return false;
            }
            if (!plugin.isInstalled()) {
                sb2.append("loadDexPlugin fail, plugin is not installed");
                return false;
            }
            if (!(plugin instanceof com.byazt.uwt.c)) {
                sb2.append("loadDexPlugin fail, plugin must be dexPlugin");
                return false;
            }
            String strSl = u.c().sl(plugin.mPkgName);
            if (TextUtils.isEmpty(strSl)) {
                strSl = plugin.mPkgName;
            }
            int iC = c(strSl);
            if (iC == -1) {
                sb2.append("loadDexPlugin fail, get Plugin version is -1");
                return false;
            }
            File[] fileArrDa = ve.da(strSl, iC);
            if (fileArrDa != null && fileArrDa.length != 0) {
                String strSl2 = ve.sl(strSl, iC);
                if (TextUtils.isEmpty(strSl2)) {
                    sb2.append("loadDexPlugin fail, configFileString is empty");
                    return false;
                }
                File file = new File(strSl2);
                if (file.exists() && file.isFile()) {
                    c cVarC = c(file, (List<File>) Arrays.asList(fileArrDa));
                    ((com.byazt.uwt.c) plugin).c(cVarC);
                    if (cVarC == null) {
                        sb2.append("loadDexPlugin fail, config is null");
                        return false;
                    }
                    if (!cVarC.c()) {
                        sb2.append("loadDexPlugin fail, check dex fail");
                        return false;
                    }
                    StringBuilder sb3 = new StringBuilder();
                    for (File file2 : fileArrDa) {
                        if (file2.isFile()) {
                            sb3.append(file2.getAbsolutePath());
                            sb3.append(":");
                        }
                    }
                    String strTt = tt(sb3.toString());
                    if (TextUtils.isEmpty(strTt)) {
                        sb2.append("loadDexPlugin fail, dexPath is empty");
                        return false;
                    }
                    sb2.append("loadDexPlugin dexpath: ".concat(String.valueOf(strTt)));
                    PluginClassLoader pluginClassLoaderC = plugin.mClassLoader;
                    if (pluginClassLoaderC == null) {
                        pluginClassLoaderC = uj.c(plugin, strSl, sb2);
                    }
                    if (pluginClassLoaderC != null) {
                        if (i.da()) {
                            sb2.append("loadDexPlugin addDexPath success dexPath=".concat(String.valueOf(strTt)));
                            return uj.c(pluginClassLoaderC, strTt);
                        }
                    } else {
                        sb2.append("loadDexPlugin makeDexPluginClassLoader fail: classLoader is null");
                    }
                    return false;
                }
                sb2.append("loadDexPlugin fail, config file is not exists or is not file");
                return false;
            }
            sb2.append("loadDexPlugin fail, get dex files is null or length is 0");
            return false;
        } catch (Throwable th) {
            sb2.append("loadDexPlugin fail, throw error ");
            sb2.append(th);
            return false;
        }
    }
}
