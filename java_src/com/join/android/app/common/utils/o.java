package com.join.android.app.common.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dto.ApkVersionRemarkBean;
import com.join.mgps.dto.CheckFileBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f34803a = "PluginUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f34804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f34805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static com.github.snowdream.android.app.downloader.b f34806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static com.github.snowdream.android.app.downloader.b.InterfaceC0591b f34807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, com.github.snowdream.android.app.downloader.c> f34808f = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Map<String, EMUApkTable> f34809g = new ConcurrentHashMap(0);

    class a extends AsyncTask<EMUApkTable, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ EMUApkTable f34810a;

        a(final EMUApkTable val$emuApkTable) {
            this.f34810a = val$emuApkTable;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(EMUApkTable... emuApkTables) {
            try {
                EMUApkTable eMUApkTable = this.f34810a;
                if (eMUApkTable != null && eMUApkTable.getDown_type() == 2) {
                    String apkPath = this.f34810a.getApkPath();
                    ApkVersionRemarkBean apkVersionRemarkBean = (ApkVersionRemarkBean) JsonMapper.getInstance().fromJson(this.f34810a.getRemark(), ApkVersionRemarkBean.class);
                    DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(this.f34810a.getTag_id()));
                    if (apkVersionRemarkBean != null && apkVersionRemarkBean.getCheck_files() != null && apkVersionRemarkBean.getCheck_files().size() > 0) {
                        for (CheckFileBean checkFileBean : apkVersionRemarkBean.getCheck_files()) {
                            try {
                                File file = new File(apkPath + net.lingala.zip4j.util.e.F0 + checkFileBean.getFile());
                                if (file.exists()) {
                                    checkFileBean.setPreCalcCheck(i1.c(file));
                                } else {
                                    checkFileBean.setPreCalcCheck("");
                                }
                                if (downloadTaskC0 == null) {
                                    checkFileBean.setPreCalcBak("");
                                } else {
                                    File file2 = new File(downloadTaskC0.getPath() + net.lingala.zip4j.util.e.F0 + checkFileBean.getFile());
                                    if (file2.exists()) {
                                        checkFileBean.setPreCalcBak(i1.c(file2));
                                    } else {
                                        checkFileBean.setPreCalcBak("");
                                    }
                                }
                            } catch (NumberFormatException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    this.f34810a.setRemark(JsonMapper.toJsonString(apkVersionRemarkBean));
                    t6.p.o().m(this.f34810a);
                    return null;
                }
                return null;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class b extends AsyncTask<EMUApkArenaTable, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ EMUApkArenaTable f34811a;

        b(final EMUApkArenaTable val$emuApkTable) {
            this.f34811a = val$emuApkTable;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(EMUApkArenaTable... emuApkTables) {
            try {
                EMUApkArenaTable eMUApkArenaTable = this.f34811a;
                if (eMUApkArenaTable != null && eMUApkArenaTable.getDown_type() == 2) {
                    String apkPath = this.f34811a.getApkPath();
                    ApkVersionRemarkBean apkVersionRemarkBean = (ApkVersionRemarkBean) JsonMapper.getInstance().fromJson(this.f34811a.getRemark(), ApkVersionRemarkBean.class);
                    DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(this.f34811a.getTag_id()));
                    if (apkVersionRemarkBean != null && apkVersionRemarkBean.getCheck_files() != null && apkVersionRemarkBean.getCheck_files().size() > 0) {
                        for (CheckFileBean checkFileBean : apkVersionRemarkBean.getCheck_files()) {
                            try {
                                File file = new File(apkPath + net.lingala.zip4j.util.e.F0 + checkFileBean.getFile());
                                if (file.exists()) {
                                    checkFileBean.setPreCalcCheck(i1.c(file));
                                } else {
                                    checkFileBean.setPreCalcCheck("");
                                }
                                if (downloadTaskC0 == null) {
                                    checkFileBean.setPreCalcBak("");
                                } else {
                                    File file2 = new File(downloadTaskC0.getPath() + net.lingala.zip4j.util.e.F0 + checkFileBean.getFile());
                                    if (file2.exists()) {
                                        checkFileBean.setPreCalcBak(i1.c(file2));
                                    } else {
                                        checkFileBean.setPreCalcBak("");
                                    }
                                }
                            } catch (NumberFormatException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    this.f34811a.setRemark(JsonMapper.toJsonString(apkVersionRemarkBean));
                    t6.o.o().m(this.f34811a);
                    return null;
                }
                return null;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class c extends AsyncTask<String, Integer, String> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strings) {
            try {
                String str = strings[0];
                String str2 = strings[1];
                String str3 = strings[2];
                String str4 = strings[3];
                if (TextUtils.isEmpty(str)) {
                    return "";
                }
                File[] fileArrListFiles = new File(str).listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (file.isDirectory() && file.getName().startsWith("o_")) {
                            file.delete();
                        }
                    }
                }
                File file2 = new File(str, "o_" + str2 + "_s_" + str3 + "_d_" + str4);
                if (!file2.getParentFile().exists()) {
                    file2.mkdirs();
                    return null;
                }
                if (file2.exists()) {
                    return null;
                }
                file2.mkdir();
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    class d implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {
        d() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            int iLastIndexOf;
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) o.f34808f.get(url);
            EMUApkTable eMUApkTable = (EMUApkTable) o.f34809g.get(url);
            if (cVar == null || eMUApkTable == null) {
                return;
            }
            String str = "pre_" + eMUApkTable.getTag_id() + "_" + eMUApkTable.getVer();
            String str2 = z.f50168g + eMUApkTable.getTag_id() + "/roms/";
            File file = new File(str2 + str);
            String strSubstring = str + ".zip";
            try {
                if (!TextUtils.isEmpty(eMUApkTable.getDown_url()) && (iLastIndexOf = eMUApkTable.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0)) != -1 && iLastIndexOf + 1 < eMUApkTable.getDown_url().length()) {
                    strSubstring = eMUApkTable.getDown_url().substring(eMUApkTable.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (file.isFile() && file.exists()) {
                long length = file.length();
                file.renameTo(new File(file.getParent() + net.lingala.zip4j.util.e.F0 + strSubstring));
                DownloadTask downloadTaskG = q5.f.M().G(eMUApkTable.getTag_id());
                if (downloadTaskG != null) {
                    String path = downloadTaskG.getPath();
                    if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                        o0.l(path, true);
                    }
                    downloadTaskG.setPath(str2 + strSubstring);
                    downloadTaskG.setGameZipPath(str2 + strSubstring);
                    downloadTaskG.setStatus(11);
                    downloadTaskG.setSize(length);
                    downloadTaskG.setVer(eMUApkTable.getVerCode() + "");
                    downloadTaskG.setVer_name(eMUApkTable.getVerName() + "");
                    downloadTaskG.setShowSize(((length / 1024) / 1024) + "");
                    q5.f.M().m(downloadTaskG);
                    UtilsMy.i3(downloadTaskG, 11);
                    com.join.android.app.common.servcie.q.b(o.f34805c, downloadTaskG, Event.gameDownload);
                    t.l(o.f34805c).f0(downloadTaskG.getRomType(), downloadTaskG.getVer() + "_" + downloadTaskG.getVer_name(), AccountUtil_.getInstance_(o.f34805c).getUid());
                }
                if (!o.w(eMUApkTable, false) && downloadTaskG != null) {
                    com.join.android.app.common.servcie.j.f().w(o.f34805c, downloadTaskG);
                }
            }
            o.f34808f.remove(url);
            o.f34809g.remove(url);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    public static boolean A(EMUApkTable emuApkTable, boolean event) {
        return B(emuApkTable, event, false);
    }

    public static boolean B(EMUApkTable emuApkTable, boolean event, boolean alreadyInstalled) {
        EMUApkTable eMUApkTableN;
        EMUApkArenaTable eMUApkArenaTableG;
        if (emuApkTable != null) {
            emuApkTable.getApkPath();
            h1.e(f34803a, "isNeedDownloadMust  - 0");
            if (alreadyInstalled || w(emuApkTable, event)) {
                h1.e(f34803a, "isNeedDownloadMust  - 1");
                String apkPath = emuApkTable.getApkPath();
                if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
                    try {
                        if (!TextUtils.isEmpty(apkPath)) {
                            String name = new File(apkPath).getName();
                            String ver_compatible = emuApkTable.getVer_compatible();
                            if (ver_compatible != null) {
                                try {
                                    if (Integer.parseInt(t2.o(name.split("_")[0])) < Integer.parseInt(t2.o(ver_compatible.split("_")[0]))) {
                                        return true;
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    return false;
                }
            } else if (emuApkTable.isArena()) {
                EMUApkTable eMUApkTableN2 = t6.p.o().n(emuApkTable.getTag_id());
                String apkPath2 = eMUApkTableN2.getApkPath();
                if (!TextUtils.isEmpty(apkPath2) && new File(apkPath2).exists() && eMUApkTableN2.getDown_url().equals(emuApkTable.getDown_url()) && !TextUtils.isEmpty(eMUApkTableN2.getVer()) && !TextUtils.isEmpty(emuApkTable.getVer()) && eMUApkTableN2.getVer().equals(emuApkTable.getVer())) {
                    h1.e(f34803a, "isNeedDownloadMust  - 2");
                    if (!k(eMUApkTableN2, event) && (eMUApkArenaTableG = t6.o.o().g(Integer.valueOf(emuApkTable.getId()))) != null) {
                        eMUApkArenaTableG.setApkPath(eMUApkTableN2.getApkPath());
                        t6.o.o().update(eMUApkArenaTableG);
                        return false;
                    }
                }
            } else {
                EMUApkTable eMUApkTableN3 = t6.o.o().n(emuApkTable.getTag_id());
                String apkPath3 = eMUApkTableN3.getApkPath();
                if (!TextUtils.isEmpty(apkPath3) && new File(apkPath3).exists() && eMUApkTableN3.getDown_url().equals(emuApkTable.getDown_url()) && !TextUtils.isEmpty(eMUApkTableN3.getVer()) && !TextUtils.isEmpty(emuApkTable.getVer()) && eMUApkTableN3.getVer().equals(emuApkTable.getVer())) {
                    h1.e(f34803a, "isNeedDownloadMust  - 3");
                    if (!k(eMUApkTableN3, event) && (eMUApkTableN = t6.p.o().n(emuApkTable.getTag_id())) != null) {
                        eMUApkTableN.setApkPath(eMUApkTableN3.getApkPath());
                        t6.p.o().update(eMUApkTableN);
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean C(EMUApkTable table) {
        if (table == null || table.getDown_type() != 2) {
            return false;
        }
        String strM = m(table);
        return !TextUtils.isEmpty(strM) && new File(strM).exists();
    }

    private static boolean D(EMUApkTable table) {
        if (table == null || table.getDown_type() != 2) {
            return false;
        }
        String strN = n(table);
        return !TextUtils.isEmpty(strN) && new File(strN).exists();
    }

    public static void E(final EMUApkArenaTable emuApkTable) {
        new b(emuApkTable).execute(emuApkTable);
    }

    public static void F(final EMUApkTable emuApkTable) {
        new a(emuApkTable).execute(emuApkTable);
    }

    public static void G(Context context, EMUApkTable table) {
        DownloadTask downloadTaskG;
        int iLastIndexOf;
        if (table == null || table.getDown_type() != 2 || !m.k(context) || (downloadTaskG = q5.f.M().G(table.getTag_id())) == null || downloadTaskG.getStatus() == 11) {
            return;
        }
        if (!C(table)) {
            String str = "pre_" + table.getTag_id() + "_" + table.getVer();
            String str2 = z.f50168g + table.getTag_id() + "/roms/";
            if (!new File(str2 + str).exists()) {
                t.l(context).d2(downloadTaskG.getRomType(), table.getVer(), AccountUtil_.getInstance_(context).getUid());
            }
            com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(table.getDown_url(), str, str2, 0L);
            f34806d.b(cVar);
            if (f34808f == null || cVar.i() == null || cVar.i().equals("")) {
                return;
            }
            String strI = cVar.i();
            if (f34808f.get(cVar.i()) != null) {
                return;
            }
            synchronized (f34808f) {
                f34808f.put(strI, cVar);
                f34809g.put(strI, table);
            }
            return;
        }
        String str3 = "pre_" + table.getTag_id() + "_" + table.getVer();
        String str4 = z.f50168g + table.getTag_id() + "/roms/";
        File file = new File(str4 + str3 + ".zip");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        sb2.append(".zip");
        String string = sb2.toString();
        try {
            if (!TextUtils.isEmpty(table.getDown_url()) && (iLastIndexOf = table.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0)) != -1 && iLastIndexOf + 1 < table.getDown_url().length()) {
                string = table.getDown_url().substring(table.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (file.isFile() && file.exists()) {
            long length = file.length();
            file.renameTo(new File(file.getParent() + net.lingala.zip4j.util.e.F0 + string));
            String path = downloadTaskG.getPath();
            if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                o0.l(path, true);
            }
            downloadTaskG.setPath(str4 + string);
            downloadTaskG.setGameZipPath(str4 + string);
            downloadTaskG.setStatus(11);
            downloadTaskG.setSize(length);
            downloadTaskG.setVer(table.getVerCode() + "");
            downloadTaskG.setVer_name(table.getVerName() + "");
            downloadTaskG.setShowSize(((length / 1024) / 1024) + "");
            q5.f.M().m(downloadTaskG);
        }
    }

    public static boolean H(DownloadTask downloadTask, EMUApkArenaTable emuApkArenaTable) {
        if (downloadTask == null) {
            return false;
        }
        if (emuApkArenaTable == null) {
            emuApkArenaTable = t6.o.o().g(Integer.valueOf(t6.p.o().n(downloadTask.getPlugin_num()).getId()));
        }
        if (TextUtils.isEmpty(downloadTask.getGameZipPath()) || !new File(downloadTask.getGameZipPath()).exists() || downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name()) || downloadTask.getDown_type() != 2 || emuApkArenaTable.getDown_type() != 2 || (!TextUtils.isEmpty(emuApkArenaTable.getApkPath()) && new File(emuApkArenaTable.getApkPath()).exists())) {
            return false;
        }
        if (!new File(downloadTask.getGameZipPath()).isDirectory()) {
            return true;
        }
        emuApkArenaTable.setApkPath(h(downloadTask.getPlugin_num(), new File(downloadTask.getGameZipPath())));
        t6.o.o().update(emuApkArenaTable);
        return true;
    }

    public static boolean I(Context context, DownloadTask downloadTask, EMUApkTable emuApkTable) {
        if (downloadTask == null) {
            return false;
        }
        h1.e(f34803a, "restoreEmuApkSo called " + downloadTask.getPlugin_num() + " " + downloadTask.getShowName());
        if (emuApkTable == null) {
            emuApkTable = t6.p.o().n(downloadTask.getPlugin_num());
        }
        if (TextUtils.isEmpty(downloadTask.getGameZipPath()) || !new File(downloadTask.getGameZipPath()).exists() || downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.chajian.name()) || downloadTask.getDown_type() != 2 || emuApkTable.getDown_type() != 2) {
            h1.e(f34803a, "restoreEmuApkSo don't need restore");
            return false;
        }
        if (downloadTask.getStatus() == 5 && new File(downloadTask.getGameZipPath()).isDirectory() && (TextUtils.isEmpty(emuApkTable.getApkPath()) || !new File(emuApkTable.getApkPath()).exists())) {
            emuApkTable.setApkPath(h(downloadTask.getPlugin_num(), new File(downloadTask.getGameZipPath())));
            t6.p.o().update(emuApkTable);
        } else if (downloadTask.getStatus() == 11) {
            if (!TextUtils.isEmpty(emuApkTable.getApkPath()) && new File(emuApkTable.getApkPath()).exists()) {
                PlugInstallDialog_.intent(context).c(emuApkTable).start();
            }
            com.join.android.app.common.servcie.j.f().w(context, downloadTask);
        }
        h1.e(f34803a, "restoreEmuApkSo finished");
        return true;
    }

    public static void delete(String pluginNum) {
        o0.l(f34804b + pluginNum + net.lingala.zip4j.util.e.F0, false);
    }

    public static void e(EMUApkTable table, DownloadTask downloadTask) {
        int iLastIndexOf;
        if (!C(table)) {
            if (D(table)) {
                f(table, downloadTask);
                return;
            }
            g(table);
            String strM = m(table);
            if (TextUtils.isEmpty(strM)) {
                return;
            }
            File file = new File(strM);
            if (file.exists()) {
                file.delete();
                return;
            } else {
                if (strM.endsWith(".zip")) {
                    File file2 = new File(strM.substring(0, strM.lastIndexOf(".zip")));
                    if (file2.exists()) {
                        file2.delete();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        String str = "pre_" + table.getTag_id() + "_" + table.getVer();
        String str2 = z.f50168g + table.getTag_id() + "/roms/";
        File file3 = new File(str2 + str + ".zip");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(".zip");
        String string = sb2.toString();
        try {
            if (!TextUtils.isEmpty(table.getDown_url()) && (iLastIndexOf = table.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0)) != -1 && iLastIndexOf + 1 < table.getDown_url().length()) {
                string = table.getDown_url().substring(table.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (file3.isFile() && file3.exists()) {
            f34806d.c(table.getDown_url());
            f34806d.l(table.getDown_url());
            f34808f.remove(table.getDown_url());
            f34809g.remove(table.getDown_url());
            long length = file3.length();
            file3.renameTo(new File(file3.getParent() + net.lingala.zip4j.util.e.F0 + string));
            if (downloadTask != null) {
                String path = downloadTask.getPath();
                if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                    o0.l(path, true);
                }
                downloadTask.setPath(str2 + string);
                downloadTask.setGameZipPath(str2 + string);
                downloadTask.setStatus(11);
                downloadTask.setSize(length);
                downloadTask.setVer(table.getVerCode() + "");
                downloadTask.setVer_name(table.getVerName() + "");
                downloadTask.setShowSize(((length / 1024) / 1024) + "");
                q5.f.M().m(downloadTask);
                g(table);
                if (t(f34805c, table, false, new String[0])) {
                    return;
                }
                com.join.android.app.common.servcie.j.f().w(f34805c, downloadTask);
            }
        }
    }

    private static boolean f(EMUApkTable table, DownloadTask downloadTask) {
        String strSubstring = "pre_" + table.getTag_id() + "_" + table.getVer();
        String str = z.f50168g + table.getTag_id() + "/roms/";
        File file = new File(str + strSubstring);
        if (!file.isFile()) {
            return false;
        }
        long length = file.length();
        com.github.snowdream.android.app.downloader.c cVar = f34808f.get(table.getDown_url());
        if (cVar != null) {
            length = cVar.c();
        }
        f34806d.c(table.getDown_url());
        f34806d.l(table.getDown_url());
        f34808f.remove(table.getDown_url());
        f34809g.remove(table.getDown_url());
        try {
            if (!TextUtils.isEmpty(table.getDown_url())) {
                strSubstring = table.getDown_url().substring(table.getDown_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        file.renameTo(new File(file.getParent() + net.lingala.zip4j.util.e.F0 + strSubstring));
        if (downloadTask != null) {
            String path = downloadTask.getPath();
            if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                o0.l(path, true);
            }
            downloadTask.setPath(str + strSubstring);
            downloadTask.setGameZipPath(str + strSubstring);
            downloadTask.setStatus(2);
            downloadTask.setSize(0L);
            downloadTask.setProgress(0L);
            downloadTask.setVer(table.getVerCode() + "");
            downloadTask.setVer_name(table.getVerName() + "");
            downloadTask.setShowSize(((length / 1024) / 1024) + "");
            q5.f.M().m(downloadTask);
            g(table);
        }
        return true;
    }

    private static void g(EMUApkTable table) {
        com.github.snowdream.android.app.downloader.b bVar = f34806d;
        if (bVar == null || table == null) {
            return;
        }
        bVar.c(table.getDown_url());
        f34806d.l(table.getDown_url());
        f34808f.remove(table.getDown_url());
        f34809g.remove(table.getDown_url());
    }

    public static String h(String pluginNum, File pluginFoler) throws Throwable {
        String str = f34804b + pluginNum + net.lingala.zip4j.util.e.F0;
        if (pluginFoler == null || !pluginFoler.exists()) {
            return str;
        }
        o0.l(str, false);
        o0.h(pluginFoler.getPath(), str);
        return str + pluginFoler.getName().replace(".zip", "");
    }

    public static boolean i(EMUApkTable table) {
        try {
            if (C(table)) {
                e(table, q5.f.M().c0(Integer.parseInt(table.getTag_id())));
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        return D(table) || C(table);
    }

    public static boolean j(EMUApkTable emuApkTable) {
        return k(emuApkTable, true);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x02a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02a2 A[Catch: NumberFormatException -> 0x0315, TRY_ENTER, TryCatch #7 {NumberFormatException -> 0x0315, blocks: (B:106:0x0264, B:116:0x028d, B:121:0x02a2, B:123:0x02ac), top: B:216:0x0264 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:132:0x02df A[Catch: NumberFormatException -> 0x0287, TryCatch #2 {NumberFormatException -> 0x0287, blocks: (B:108:0x027c, B:110:0x0282, B:118:0x0296, B:130:0x02d9, B:132:0x02df, B:134:0x02e5, B:136:0x02eb, B:139:0x02f3, B:141:0x02f8, B:143:0x0302, B:144:0x030f), top: B:206:0x027c }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:141:0x02f8 A[Catch: NumberFormatException -> 0x0287, TryCatch #2 {NumberFormatException -> 0x0287, blocks: (B:108:0x027c, B:110:0x0282, B:118:0x0296, B:130:0x02d9, B:132:0x02df, B:134:0x02e5, B:136:0x02eb, B:139:0x02f3, B:141:0x02f8, B:143:0x0302, B:144:0x030f), top: B:206:0x027c }] */
    /* JADX WARN: Code duplicated, block: B:144:0x030f A[Catch: NumberFormatException -> 0x0287, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0287, blocks: (B:108:0x027c, B:110:0x0282, B:118:0x0296, B:130:0x02d9, B:132:0x02df, B:134:0x02e5, B:136:0x02eb, B:139:0x02f3, B:141:0x02f8, B:143:0x0302, B:144:0x030f), top: B:206:0x027c }] */
    /* JADX WARN: Code duplicated, block: B:157:0x032e  */
    /* JADX WARN: Code duplicated, block: B:159:0x0332  */
    /* JADX WARN: Code duplicated, block: B:164:0x034a A[Catch: Exception -> 0x03e4, TryCatch #14 {Exception -> 0x03e4, blocks: (B:162:0x0346, B:164:0x034a, B:165:0x0369, B:167:0x037b, B:169:0x0382, B:171:0x0389, B:173:0x0391, B:175:0x039b, B:177:0x03aa, B:179:0x03b9), top: B:230:0x0346 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x037b A[Catch: Exception -> 0x03e4, TryCatch #14 {Exception -> 0x03e4, blocks: (B:162:0x0346, B:164:0x034a, B:165:0x0369, B:167:0x037b, B:169:0x0382, B:171:0x0389, B:173:0x0391, B:175:0x039b, B:177:0x03aa, B:179:0x03b9), top: B:230:0x0346 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:190:0x0426 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x0433 A[Catch: Exception -> 0x0442, TRY_LEAVE, TryCatch #16 {Exception -> 0x0442, blocks: (B:191:0x0428, B:193:0x0433), top: B:234:0x0428 }] */
    /* JADX WARN: Code duplicated, block: B:230:0x0346 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x0428 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x022d  */
    public static boolean k(EMUApkTable emuApkTable, boolean event) throws Throwable {
        int iR;
        int iR2;
        boolean z10;
        Context context;
        DownloadTask downloadTaskC0;
        Iterator<CheckFileBean> it2;
        String preCalcBak;
        int i10;
        if (emuApkTable == null || TextUtils.isEmpty(emuApkTable.getRemark()) || TextUtils.isEmpty(emuApkTable.getApkPath())) {
            return false;
        }
        File file = new File(emuApkTable.getApkPath());
        if (!file.exists()) {
            return true;
        }
        String name = file.getName();
        String ver = emuApkTable.getVer();
        if (TextUtils.isEmpty(name) || TextUtils.isEmpty(ver) || !name.equals(ver)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        String apkPath = emuApkTable.getApkPath();
        String tag_id = emuApkTable.getTag_id();
        ApkVersionRemarkBean apkVersionRemarkBean = (ApkVersionRemarkBean) JsonMapper.getInstance().fromJson(emuApkTable.getRemark(), ApkVersionRemarkBean.class);
        DownloadTask downloadTaskC1 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()));
        String path = new File(m(emuApkTable)).getParentFile().getAbsolutePath() + net.lingala.zip4j.util.e.F0 + emuApkTable.getVer();
        if (downloadTaskC1 != null && !TextUtils.isEmpty(downloadTaskC1.getPath())) {
            path = downloadTaskC1.getPath();
        }
        try {
            File file2 = new File(path);
            int so_file_count = apkVersionRemarkBean != null ? apkVersionRemarkBean.getSo_file_count() : 0;
            if (file2.exists()) {
                iR2 = o0.r(path);
                try {
                    int iR3 = o0.r(apkPath);
                    if (iR3 < iR2) {
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            i10 = iR3;
                            try {
                                sb2.append(f34804b);
                                sb2.append(tag_id);
                                sb2.append(net.lingala.zip4j.util.e.F0);
                                o0.h(file2.getAbsolutePath(), sb2.toString());
                            } catch (Exception e10) {
                                e = e10;
                                try {
                                    e.printStackTrace();
                                } catch (Exception e11) {
                                    e = e11;
                                    iR = i10;
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            i10 = iR3;
                        }
                    } else {
                        i10 = iR3;
                    }
                    iR = i10;
                } catch (Exception e13) {
                    e = e13;
                    iR = 0;
                }
            } else {
                iR = 0;
                iR2 = 0;
            }
            try {
                iR2 = o0.r(path);
                try {
                    iR = o0.r(apkPath);
                    try {
                        new c().execute(path, so_file_count + "", iR2 + "", iR + "");
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                    File file3 = new File(path);
                    try {
                        if (iR < iR2) {
                            if (downloadTaskC1 == null || downloadTaskC1.getStatus() != 5 || !event) {
                                return true;
                            }
                            HashMap map = new HashMap();
                            map.put("name", downloadTaskC1.getShowName());
                            map.put(DeviceInfo.TAG_VERSION, downloadTaskC1.getVer());
                            MobclickAgentKt.onEvent(f34805c, "filenumerror4.2.4.2", map);
                            i10 = iR2;
                            try {
                                t.l(f34805c).Z1(Event.filenumerror, downloadTaskC1.getVer(), downloadTaskC1.getCrc_link_type_val(), "" + file3.getName());
                                return true;
                            } catch (Exception e15) {
                                e = e15;
                                iR2 = i10;
                                e.printStackTrace();
                                if (apkVersionRemarkBean != null) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    emuApkTable.setRemark(JsonMapper.toJsonString(apkVersionRemarkBean));
                                    t6.p.o().m(emuApkTable);
                                }
                                if (arrayList.size() <= 0) {
                                    if (iR2 >= iR) {
                                        return false;
                                    }
                                    try {
                                        if (!new File(apkPath).exists()) {
                                            return false;
                                        }
                                        o0.h(apkPath, new File(path).getParent());
                                        return false;
                                    } catch (Exception e16) {
                                        e16.printStackTrace();
                                        return false;
                                    }
                                }
                                try {
                                    context = f34805c;
                                    if (context != null) {
                                        MobclickAgentKt.onEvent(context, "onSoMd5Failed", String.format("%s_%s_%s", emuApkTable.getTag_id(), JsonMapper.toJsonString(arrayList), ""));
                                    }
                                    downloadTaskC0 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()));
                                    if (downloadTaskC0 != null) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("plug file corrupted ! ");
                                        sb3.append(emuApkTable.getTag_id());
                                        new File(downloadTaskC0.getGameZipPath()).delete();
                                        downloadTaskC0.setGameZipPath("");
                                        downloadTaskC0.setPath("");
                                        q5.f.M().m(downloadTaskC0);
                                    }
                                } catch (Exception e17) {
                                    e17.printStackTrace();
                                }
                                if (downloadTaskC1 != null) {
                                    return true;
                                }
                                return true;
                            }
                        }
                        path = path;
                        if (so_file_count != 0 && iR < so_file_count) {
                            if (downloadTaskC1 == null || downloadTaskC1.getStatus() != 5 || !event) {
                                return true;
                            }
                            HashMap map2 = new HashMap();
                            map2.put("name", downloadTaskC1.getShowName());
                            map2.put(DeviceInfo.TAG_VERSION, downloadTaskC1.getVer());
                            MobclickAgentKt.onEvent(f34805c, "filenumerror4.2.4.2", map2);
                            t.l(f34805c).Z1(Event.filenumerror, downloadTaskC1.getVer(), downloadTaskC1.getCrc_link_type_val(), "" + file3.getName());
                            return true;
                        }
                        iR2 = iR2;
                        if (apkVersionRemarkBean != null || apkVersionRemarkBean.getCheck_files() == null || apkVersionRemarkBean.getCheck_files().size() <= 0) {
                            z10 = false;
                        } else {
                            boolean z11 = false;
                            File file4 = null;
                            for (Iterator<CheckFileBean> it3 = apkVersionRemarkBean.getCheck_files().iterator(); it3.hasNext(); it3 = it2) {
                                CheckFileBean next = it3.next();
                                try {
                                    it2 = it3;
                                    try {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(apkPath);
                                        sb4.append(net.lingala.zip4j.util.e.F0);
                                        boolean z12 = z11;
                                        try {
                                            sb4.append(next.getFile());
                                            File file5 = new File(sb4.toString());
                                            String preCalcCheck = next.getPreCalcCheck();
                                            if (file5.exists()) {
                                                try {
                                                    preCalcCheck = TextUtils.isEmpty(preCalcCheck) ? i1.c(file5) : "";
                                                    next.setPreCalcCheck(preCalcCheck);
                                                    if (file5.exists() || !preCalcCheck.equalsIgnoreCase(next.getCheck())) {
                                                        if (downloadTaskC1 != null || TextUtils.isEmpty(downloadTaskC1.getPath())) {
                                                            file4 = file4;
                                                        } else {
                                                            StringBuilder sb5 = new StringBuilder();
                                                            File file6 = file4;
                                                            try {
                                                                sb5.append(downloadTaskC1.getPath());
                                                                sb5.append(net.lingala.zip4j.util.e.F0);
                                                                sb5.append(next.getFile());
                                                                file4 = new File(sb5.toString());
                                                            } catch (NumberFormatException e18) {
                                                                e = e18;
                                                                z11 = z12;
                                                                file4 = file6;
                                                                e.printStackTrace();
                                                            }
                                                        }
                                                        preCalcBak = next.getPreCalcBak();
                                                        if (file4 != null || !file4.exists()) {
                                                            preCalcBak = "";
                                                        } else if (TextUtils.isEmpty(preCalcBak)) {
                                                            preCalcBak = i1.c(file4);
                                                        } else {
                                                            next.setPreCalcBak(preCalcBak);
                                                            if (file4 == null && preCalcBak.equalsIgnoreCase(next.getCheck())) {
                                                                o0.f(file4.getPath(), file5.getAbsolutePath());
                                                                file4 = null;
                                                            } else {
                                                                arrayList.add(next);
                                                            }
                                                        }
                                                        z12 = true;
                                                        next.setPreCalcBak(preCalcBak);
                                                        if (file4 == null) {
                                                            arrayList.add(next);
                                                        } else {
                                                            arrayList.add(next);
                                                        }
                                                    }
                                                    z11 = z12;
                                                } catch (NumberFormatException e19) {
                                                    e = e19;
                                                    z11 = z12;
                                                    e.printStackTrace();
                                                }
                                            }
                                            z12 = true;
                                            next.setPreCalcCheck(preCalcCheck);
                                            if (file5.exists()) {
                                                if (downloadTaskC1 != null) {
                                                    file4 = file4;
                                                } else {
                                                    file4 = file4;
                                                }
                                                preCalcBak = next.getPreCalcBak();
                                                if (file4 != null) {
                                                    preCalcBak = "";
                                                    z12 = true;
                                                } else {
                                                    preCalcBak = "";
                                                    z12 = true;
                                                }
                                                next.setPreCalcBak(preCalcBak);
                                                if (file4 == null) {
                                                    arrayList.add(next);
                                                } else {
                                                    arrayList.add(next);
                                                }
                                            } else {
                                                if (downloadTaskC1 != null) {
                                                    file4 = file4;
                                                } else {
                                                    file4 = file4;
                                                }
                                                preCalcBak = next.getPreCalcBak();
                                                if (file4 != null) {
                                                    preCalcBak = "";
                                                    z12 = true;
                                                } else {
                                                    preCalcBak = "";
                                                    z12 = true;
                                                }
                                                next.setPreCalcBak(preCalcBak);
                                                if (file4 == null) {
                                                    arrayList.add(next);
                                                } else {
                                                    arrayList.add(next);
                                                }
                                            }
                                            z11 = z12;
                                        } catch (NumberFormatException e20) {
                                            e = e20;
                                        }
                                    } catch (NumberFormatException e21) {
                                        e = e21;
                                        e.printStackTrace();
                                    }
                                } catch (NumberFormatException e22) {
                                    e = e22;
                                    it2 = it3;
                                }
                            }
                            z10 = z11;
                        }
                        if (z10) {
                            emuApkTable.setRemark(JsonMapper.toJsonString(apkVersionRemarkBean));
                            t6.p.o().m(emuApkTable);
                        }
                        if (arrayList.size() <= 0) {
                            if (iR2 >= iR) {
                                return false;
                            }
                            if (!new File(apkPath).exists()) {
                                return false;
                            }
                            o0.h(apkPath, new File(path).getParent());
                            return false;
                        }
                        context = f34805c;
                        if (context != null) {
                            MobclickAgentKt.onEvent(context, "onSoMd5Failed", String.format("%s_%s_%s", emuApkTable.getTag_id(), JsonMapper.toJsonString(arrayList), ""));
                        }
                        downloadTaskC0 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()));
                        if (downloadTaskC0 != null && downloadTaskC0.getDown_type() == 2 && ((downloadTaskC0.getStatus() == 5 || downloadTaskC0.getStatus() == 9) && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath()) && new File(downloadTaskC0.getGameZipPath()).exists() && new File(downloadTaskC0.getGameZipPath()).isDirectory())) {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("plug file corrupted ! ");
                            sb6.append(emuApkTable.getTag_id());
                            new File(downloadTaskC0.getGameZipPath()).delete();
                            downloadTaskC0.setGameZipPath("");
                            downloadTaskC0.setPath("");
                            q5.f.M().m(downloadTaskC0);
                        }
                        if (downloadTaskC1 != null || downloadTaskC1.getStatus() != 5 || !event) {
                            return true;
                        }
                        HashMap map3 = new HashMap();
                        map3.put("name", downloadTaskC1.getShowName());
                        map3.put(DeviceInfo.TAG_VERSION, downloadTaskC1.getVer());
                        MobclickAgentKt.onEvent(f34805c, "md5error4.2.4.2", map3);
                        t.l(f34805c).Z1(Event.md5error, downloadTaskC1.getVer(), downloadTaskC1.getCrc_link_type_val(), arrayList.toString());
                        return true;
                    } catch (Exception e23) {
                        e = e23;
                    }
                } catch (Exception e24) {
                    e = e24;
                }
            } catch (Exception e25) {
                e = e25;
            }
        } catch (Exception e26) {
            e = e26;
            iR = 0;
            iR2 = 0;
        }
        e.printStackTrace();
        if (apkVersionRemarkBean != null) {
            z10 = false;
        } else {
            z10 = false;
        }
        if (z10) {
            emuApkTable.setRemark(JsonMapper.toJsonString(apkVersionRemarkBean));
            t6.p.o().m(emuApkTable);
        }
        if (arrayList.size() <= 0) {
            if (iR2 >= iR) {
                return false;
            }
            if (!new File(apkPath).exists()) {
                return false;
            }
            o0.h(apkPath, new File(path).getParent());
            return false;
        }
        context = f34805c;
        if (context != null) {
            MobclickAgentKt.onEvent(context, "onSoMd5Failed", String.format("%s_%s_%s", emuApkTable.getTag_id(), JsonMapper.toJsonString(arrayList), ""));
        }
        downloadTaskC0 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()));
        if (downloadTaskC0 != null) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("plug file corrupted ! ");
            sb7.append(emuApkTable.getTag_id());
            new File(downloadTaskC0.getGameZipPath()).delete();
            downloadTaskC0.setGameZipPath("");
            downloadTaskC0.setPath("");
            q5.f.M().m(downloadTaskC0);
        }
        if (downloadTaskC1 != null) {
            return true;
        }
        return true;
    }

    public static int l(String plugId, int down_type) {
        if (TextUtils.isEmpty(plugId) && (plugId.equals("35") || plugId.equals("31") || plugId.equals("33"))) {
            return 2;
        }
        return down_type;
    }

    private static String m(EMUApkTable table) {
        return n(table) + ".zip";
    }

    private static String n(EMUApkTable table) {
        if (table == null) {
            return "";
        }
        String str = "pre_" + table.getTag_id() + "_" + table.getVer();
        return (z.f50168g + table.getTag_id() + "/roms/") + str;
    }

    public static void o(Context context) {
        f34805c = context;
        f34804b = context.getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
        if (!new File(f34804b).exists()) {
            new File(f34804b).mkdir();
        }
        p();
    }

    public static void p() {
        f34806d = com.github.snowdream.android.app.downloader.b.e();
        d dVar = new d();
        f34807e = dVar;
        f34806d.m(dVar);
    }

    public static boolean q(EMUApkTable emuApkTable) {
        if (emuApkTable != null) {
            if (!v(emuApkTable)) {
                return true;
            }
            String apkPath = emuApkTable.getApkPath();
            if (!TextUtils.isEmpty(apkPath)) {
                File file = new File(apkPath);
                if (file.exists()) {
                    String name = file.getName();
                    String ver = emuApkTable.getVer();
                    if (ver != null) {
                        try {
                            if (Integer.parseInt(name.split("_")[0]) < Integer.parseInt(ver.split("_")[0])) {
                                return true;
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean r(Context context, DownloadTask downloadTask, boolean event, String... pkg) {
        String package_name;
        EMUApkTable eMUApkTableN = (downloadTask == null || !downloadTask.getFileType().equals(Dtype.chajian.name())) ? null : t6.p.o().n(downloadTask.getPlugin_num());
        if (eMUApkTableN == null) {
            package_name = "";
        } else {
            if (eMUApkTableN.getDown_type() == 2) {
                return v(eMUApkTableN);
            }
            package_name = eMUApkTableN.getPackage_name();
        }
        if (TextUtils.isEmpty(package_name) && pkg != null && pkg.length > 0) {
            package_name = pkg[0];
        }
        return g.t0(context).e(context, package_name);
    }

    public static boolean s(Context context, DownloadTask downloadTask, String... pkg) {
        return r(context, downloadTask, true, pkg);
    }

    public static boolean t(Context context, EMUApkTable emuApkTable, boolean event, String... pkg) {
        String package_name;
        if (emuApkTable == null) {
            package_name = "";
        } else {
            if (emuApkTable.getDown_type() == 2) {
                return w(emuApkTable, event);
            }
            package_name = emuApkTable.getPackage_name();
        }
        if (TextUtils.isEmpty(package_name) && pkg != null && pkg.length > 0) {
            package_name = pkg[0];
        }
        return g.t0(context).e(context, package_name);
    }

    public static boolean u(Context context, EMUApkTable emuApkTable, String... pkg) {
        return t(context, emuApkTable, true, pkg);
    }

    private static boolean v(EMUApkTable emuApkTable) {
        return w(emuApkTable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean w(EMUApkTable emuApkTable, boolean event) {
        EMUApkTable eMUApkTableN;
        EMUApkArenaTable eMUApkArenaTableG;
        h1.e(f34803a, "isInstalled  called");
        if (emuApkTable != null) {
            String apkPath = emuApkTable.getApkPath();
            if (TextUtils.isEmpty(apkPath) || !new File(apkPath).exists()) {
                DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()));
                if (downloadTaskC0 != null && downloadTaskC0.getDown_type() == 2 && ConstantIntEnum.PS2.value() != Integer.parseInt(downloadTaskC0.getPlugin_num()) && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath()) && new File(downloadTaskC0.getGameZipPath()).exists()) {
                    I(f34805c, downloadTaskC0, emuApkTable);
                }
                apkPath = emuApkTable.getApkPath();
            }
            if (TextUtils.isEmpty(apkPath)) {
                File file = new File(f34804b + emuApkTable.getTag_id());
                if (file.exists() && file.list() != null && file.list().length > 0) {
                    apkPath = file.getAbsolutePath() + net.lingala.zip4j.util.e.F0 + file.list()[0];
                    EMUApkTable eMUApkTableN2 = t6.p.o().n(emuApkTable.getTag_id());
                    h1.e(f34803a, "isInstalled  - retrieve path " + apkPath);
                    if (eMUApkTableN2 != null) {
                        eMUApkTableN2.setApkPath(apkPath);
                        t6.p.o().update(eMUApkTableN2);
                    }
                    emuApkTable.setApkPath(apkPath);
                }
            }
            if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
                h1.e(f34803a, "isInstalled  - checking file corrupt");
                if (k(emuApkTable, event)) {
                    return false;
                }
                if (TextUtils.isEmpty(emuApkTable.getApkPath())) {
                    emuApkTable.setApkPath(apkPath);
                }
                return true;
            }
            if (emuApkTable.isArena()) {
                EMUApkTable eMUApkTableN3 = t6.p.o().n(emuApkTable.getTag_id());
                if (eMUApkTableN3 != null) {
                    apkPath = eMUApkTableN3.getApkPath();
                }
                if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists() && eMUApkTableN3.getDown_url().equals(emuApkTable.getDown_url())) {
                    h1.e(f34803a, "isInstalled  - recovery from arena, checking file");
                    if (!k(emuApkTable, event) && (eMUApkArenaTableG = t6.o.o().g(Integer.valueOf(emuApkTable.getId()))) != null) {
                        eMUApkArenaTableG.setApkPath(eMUApkTableN3.getApkPath());
                        t6.o.o().update(eMUApkArenaTableG);
                        emuApkTable.setApkPath(eMUApkTableN3.getApkPath());
                        h1.e(f34803a, "isInstalled  - recovery from arena");
                        return true;
                    }
                }
            } else {
                EMUApkTable eMUApkTableN4 = t6.o.o().n(emuApkTable.getTag_id());
                if (eMUApkTableN4 != null) {
                    apkPath = eMUApkTableN4.getApkPath();
                }
                if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists() && eMUApkTableN4.getDown_url().equals(emuApkTable.getDown_url())) {
                    h1.e(f34803a, "isInstalled  - recovery from emu, checking file");
                    if (!k(emuApkTable, event) && (eMUApkTableN = t6.p.o().n(emuApkTable.getTag_id())) != null) {
                        eMUApkTableN.setApkPath(eMUApkTableN4.getApkPath());
                        t6.p.o().update(eMUApkTableN);
                        emuApkTable.setApkPath(eMUApkTableN4.getApkPath());
                        h1.e(f34803a, "isInstalled  - recovery from emu");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean x(EMUApkTable emuApkTable) {
        return y(emuApkTable, true);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0047  */
    public static boolean y(EMUApkTable emuApkTable, boolean event) {
        EMUApkTable eMUApkTableN;
        EMUApkArenaTable eMUApkArenaTableG;
        int i10;
        if (emuApkTable == null || !w(emuApkTable, event)) {
            return true;
        }
        String apkPath = emuApkTable.getApkPath();
        if (!TextUtils.isEmpty(apkPath)) {
            File file = new File(apkPath);
            if (file.exists()) {
                String name = file.getName();
                String ver = emuApkTable.getVer();
                if (ver != null) {
                    try {
                        if (t2.i(name)) {
                            String str = name.split("_")[0];
                            if (t2.i(str)) {
                                i10 = Integer.parseInt(str.trim());
                            } else {
                                i10 = 0;
                            }
                        } else {
                            i10 = 0;
                        }
                        if (i10 < ((t2.i(ver) && t2.i(ver.split("_")[0])) ? Integer.parseInt(ver.split("_")[0]) : 0)) {
                            return true;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                return false;
            }
        }
        if (emuApkTable.isArena()) {
            EMUApkTable eMUApkTableN2 = t6.p.o().n(emuApkTable.getTag_id());
            String apkPath2 = eMUApkTableN2.getApkPath();
            if (!TextUtils.isEmpty(apkPath2) && new File(apkPath2).exists() && eMUApkTableN2.getDown_url().equals(emuApkTable.getDown_url()) && !TextUtils.isEmpty(eMUApkTableN2.getVer()) && !TextUtils.isEmpty(emuApkTable.getVer()) && eMUApkTableN2.getVer().equals(emuApkTable.getVer()) && (eMUApkArenaTableG = t6.o.o().g(Integer.valueOf(emuApkTable.getId()))) != null) {
                eMUApkArenaTableG.setApkPath(eMUApkTableN2.getApkPath());
                t6.o.o().update(eMUApkArenaTableG);
                return false;
            }
        } else {
            EMUApkTable eMUApkTableN3 = t6.o.o().n(emuApkTable.getTag_id());
            String apkPath3 = eMUApkTableN3.getApkPath();
            if (!TextUtils.isEmpty(apkPath3) && new File(apkPath3).exists() && eMUApkTableN3.getDown_url().equals(emuApkTable.getDown_url()) && !TextUtils.isEmpty(eMUApkTableN3.getVer()) && !TextUtils.isEmpty(emuApkTable.getVer()) && eMUApkTableN3.getVer().equals(emuApkTable.getVer()) && (eMUApkTableN = t6.p.o().n(emuApkTable.getTag_id())) != null) {
                eMUApkTableN.setApkPath(eMUApkTableN3.getApkPath());
                t6.p.o().update(eMUApkTableN);
                return false;
            }
        }
        return true;
    }

    public static boolean z(EMUApkTable emuApkTable) {
        return A(emuApkTable, true);
    }
}
