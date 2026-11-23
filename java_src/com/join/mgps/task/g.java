package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.o;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.m;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.s3;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.event.r;
import com.papa.sim.statistic.t;
import java.io.File;
import java.io.IOException;
import t6.p;

/* JADX INFO: loaded from: classes3.dex */
public class g extends Thread implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f73224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DownloadTask f73225d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f73228g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f73223b = "UNZIPForPluginThread";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f73226e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    a f73227f = null;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73229b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File f73230c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File f73231d;

        public a(File file, File fileApk) {
            this.f73230c = file;
            this.f73231d = fileApk;
        }

        public void a(boolean monitor) {
            this.f73229b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f73229b) {
                try {
                    long jN1 = UtilsMy.N1(this.f73230c);
                    File file = this.f73231d;
                    long length = file != null ? file.length() : 0L;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("zip currentSize =");
                    sb2.append(jN1);
                    sb2.append("   surrentApk= ");
                    sb2.append(length);
                    long size = g.this.f73225d.getSize() * 2;
                    if (size == 0) {
                        size = 1;
                    }
                    g.this.f73225d.setProgress(((jN1 + length) * 100) / size);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("totalSize=");
                    sb3.append(size);
                    sb3.append(";zip progress =");
                    sb3.append(g.this.f73225d.getProgress());
                    UtilsMy.T4(g.this.f73225d);
                    Thread.sleep(1000L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    g.this.a();
                    return;
                }
            }
        }
    }

    public g(DownloadTask downloadTask, Context context) {
        this.f73225d = downloadTask;
        this.f73224c = context;
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f73226e = false;
        this.f73227f.a(false);
        DownloadTask downloadTask = this.f73225d;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        DownloadTask downloadTask = this.f73225d;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f73226e;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis;
        super.run();
        EMUApkTable eMUApkTableN = p.o().n(this.f73225d.getPlugin_num());
        String apkPath = eMUApkTableN.getApkPath();
        if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
            o.delete(eMUApkTableN.getTag_id());
        }
        int i10 = APKUtils.K(this.f73225d) ? 1 : APKUtils.P(this.f73225d) ? 2 : 0;
        try {
            try {
                File file = new File(this.f73225d.getPath());
                try {
                    t.l(this.f73224c).l1(this.f73225d.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73224c).getUid(), i10);
                    t.l(this.f73224c).q1(this.f73225d.getPlugin_num(), this.f73225d.getVer() + "_" + this.f73225d.getVer_name(), AccountUtil_.getInstance_(this.f73224c).getUid());
                    String str = file.getParent() + net.lingala.zip4j.util.e.F0 + this.f73225d.getVer() + "_" + this.f73225d.getVer_name();
                    File file2 = new File(str);
                    if (file2.getName().equals(file.getName())) {
                        String strSubstring = !TextUtils.isEmpty(this.f73225d.getName()) ? this.f73225d.getName().substring(this.f73225d.getName().lastIndexOf(o0.f49827a)) : "";
                        if (TextUtils.isEmpty(strSubstring)) {
                            strSubstring = ".zip";
                        }
                        String str2 = file.getAbsolutePath() + strSubstring;
                        if (file.renameTo(new File(str2))) {
                            File file3 = new File(str2);
                            try {
                                this.f73225d.setPath(str2);
                                q5.f.M().k(this.f73225d);
                                file = file3;
                            } catch (Exception e10) {
                                e = e10;
                                file = file3;
                                e.printStackTrace();
                                a aVar = this.f73227f;
                                if (aVar != null) {
                                    aVar.a(false);
                                }
                                if (UtilsMy.y2(this.f73224c, this.f73225d, false)) {
                                    try {
                                        t.l(this.f73224c).N1("zip error[gameId=" + this.f73225d.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + m.c(e));
                                    } catch (Exception unused) {
                                    }
                                } else {
                                    this.f73224c.sendBroadcast(new Intent(p5.a.f96215q));
                                    t.l(this.f73224c).N1("zip...insufficient storage. gameId=" + this.f73225d.getCrc_link_type_val());
                                }
                                j.f().t(this.f73225d);
                            }
                        }
                    }
                    if (file.exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("zip len=");
                        sb2.append(file.length());
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (this.f73225d.getSize() >= 104857600) {
                            a aVar2 = new a(file, file2);
                            this.f73227f = aVar2;
                            aVar2.start();
                        } else {
                            this.f73226e = true;
                        }
                        s3.f(file, str);
                    } else {
                        jCurrentTimeMillis = -1;
                    }
                    if (this.f73226e) {
                        a aVar3 = this.f73227f;
                        if (aVar3 != null) {
                            aVar3.a(false);
                        }
                        if (str != null && !"".equals(str) && new File(str).exists()) {
                            this.f73225d.setProgress(100L);
                            UtilsMy.T4(this.f73225d);
                            if (jCurrentTimeMillis != -1) {
                                this.f73225d.setZipCost(file.length() / (System.currentTimeMillis() - jCurrentTimeMillis));
                            }
                            String strH = o.h(this.f73225d.getPlugin_num(), new File(str));
                            eMUApkTableN.setApkPath(strH);
                            p.o().update(eMUApkTableN);
                            o.F(eMUApkTableN);
                            EMUApkTable eMUApkTableN2 = t6.o.o().n(this.f73225d.getPlugin_num());
                            if (eMUApkTableN2 != null) {
                                EMUApkArenaTable eMUApkArenaTableG = t6.o.o().g(Integer.valueOf(eMUApkTableN2.getId()));
                                eMUApkArenaTableG.setApkPath(strH);
                                t6.o.o().m(eMUApkArenaTableG);
                                o.E(eMUApkArenaTableG);
                            }
                            UtilsMy.delete(file);
                            this.f73225d.setPath(str);
                            this.f73225d.setGameZipPath(str);
                            q5.f.M().m(this.f73225d);
                            this.f73225d.setStatus(5);
                            q5.f.M().n0(this.f73225d, 5, 100L);
                            j.f().n(this.f73225d.getCrc_link_type_val());
                            UtilsMy.X3(this.f73224c, this.f73225d, 5);
                            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(this.f73225d.getCrc_link_type_val(), 38));
                            org.greenrobot.eventbus.c.f().q(new r(this.f73225d, 5));
                            j.f().o(this.f73225d.getCrc_link_type_val());
                            try {
                                for (DownloadTask downloadTask : q5.f.M().d()) {
                                    String plugin_num = this.f73225d.getPlugin_num();
                                    if (downloadTask.getPlugin_num().equals(plugin_num) && !plugin_num.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                                        break;
                                    }
                                }
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            DownloadTask downloadTask2 = this.f73225d;
                            if (downloadTask2 != null && downloadTask2.getGameZipPath() != null) {
                                try {
                                    o3.E(".downloadTask_chajian", new File(this.f73225d.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(this.f73225d));
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("mDownloadTask.fina=");
                            sb3.append(this.f73225d.getGameZipPath());
                            this.f73225d.set_from_type(0);
                            return;
                        }
                        this.f73225d.setStatus(13);
                        j.f().t(this.f73225d);
                    }
                } catch (Exception e13) {
                    e = e13;
                }
                this.f73225d.set_from_type(0);
            } catch (Exception e14) {
                e14.printStackTrace();
            }
        } catch (Throwable th) {
            this.f73225d.set_from_type(0);
            throw th;
        }
    }

    public g(DownloadTask downloadTask, Context context, String pathRom) {
        this.f73225d = downloadTask;
        this.f73224c = context;
        this.f73228g = pathRom;
    }
}
