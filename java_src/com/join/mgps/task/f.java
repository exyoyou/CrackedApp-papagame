package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.o;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.m;
import com.join.mgps.Util.s3;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.event.r;
import com.papa.sim.statistic.t;
import java.io.File;
import t6.p;

/* JADX INFO: loaded from: classes3.dex */
public class f extends Thread implements c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f73211h = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DownloadTask f73213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f73214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f73215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    a f73216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f73217g;

    public f(DownloadTask downloadTask, Context context, String pathRom) {
        this.f73214d = true;
        this.f73215e = false;
        this.f73216f = null;
        this.f73213c = downloadTask;
        this.f73212b = context;
        this.f73217g = pathRom;
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f73214d = false;
        this.f73216f.a(false);
        DownloadTask downloadTask = this.f73213c;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f73214d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String tag_id;
        String apkPath;
        long jCurrentTimeMillis;
        super.run();
        EMUApkTable eMUApkTableN = p.o().n(this.f73213c.getPlugin_num());
        if (eMUApkTableN != null) {
            apkPath = eMUApkTableN.getApkPath();
            tag_id = eMUApkTableN.getTag_id();
        } else {
            tag_id = "";
            apkPath = tag_id;
        }
        if (!TextUtils.isEmpty(apkPath) && new File(apkPath).exists()) {
            o.delete(tag_id);
        }
        int i10 = APKUtils.K(this.f73213c) ? 1 : APKUtils.P(this.f73213c) ? 2 : 0;
        try {
            try {
                File file = new File(this.f73213c.getPath());
                try {
                    t.l(this.f73212b).l1(this.f73213c.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73212b).getUid(), i10);
                    t.l(this.f73212b).q1(this.f73213c.getPlugin_num(), this.f73213c.getVer() + "_" + this.f73213c.getVer_name(), AccountUtil_.getInstance_(this.f73212b).getUid());
                    String str = this.f73217g + net.lingala.zip4j.util.e.F0 + this.f73213c.getVer() + "_" + this.f73213c.getVer_name();
                    if (!t2.h(str)) {
                        File file2 = new File(str);
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                    }
                    if (file.exists()) {
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (this.f73213c.getSize() >= 104857600) {
                            a aVar = new a(file, new File(str));
                            this.f73216f = aVar;
                            aVar.start();
                        } else {
                            this.f73214d = true;
                        }
                        s3.f(file, str);
                    } else {
                        jCurrentTimeMillis = -1;
                    }
                    if (this.f73214d) {
                        a aVar2 = this.f73216f;
                        if (aVar2 != null) {
                            aVar2.a(false);
                        }
                        if (str != null && !"".equals(str) && new File(str).exists()) {
                            this.f73213c.setProgress(100L);
                            UtilsMy.T4(this.f73213c);
                            if (jCurrentTimeMillis != -1) {
                                this.f73213c.setZipCost(file.length() / (System.currentTimeMillis() - jCurrentTimeMillis));
                            }
                            for (File file3 : new File(str).listFiles()) {
                                if (file3.getName().endsWith(".BIN")) {
                                    this.f73213c.setResource_path(file3.getAbsolutePath());
                                }
                                if (file3.getName().endsWith(".apk")) {
                                    this.f73213c.setPath(file3.getAbsolutePath());
                                    this.f73213c.setGameZipPath(file3.getAbsolutePath());
                                }
                            }
                            q5.f.M().m(this.f73213c);
                            Intent intent = new Intent();
                            intent.setAction(p5.a.f96209n);
                            intent.putExtra("apkpath", this.f73213c.getGameZipPath());
                            this.f73212b.sendBroadcast(intent);
                            this.f73213c.setStatus(11);
                            q5.f.M().n0(this.f73213c, 11, 100L);
                            j.f().n(this.f73213c.getCrc_link_type_val());
                            UtilsMy.X3(this.f73212b, this.f73213c, 11);
                            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(this.f73213c.getCrc_link_type_val(), 38));
                            org.greenrobot.eventbus.c.f().q(new r(this.f73213c, 11));
                            j.f().o(this.f73213c.getCrc_link_type_val());
                            try {
                                for (DownloadTask downloadTask : q5.f.M().d()) {
                                    String plugin_num = this.f73213c.getPlugin_num();
                                    if (downloadTask.getPlugin_num().equals(plugin_num) && !plugin_num.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                                        break;
                                    }
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            this.f73213c.set_from_type(0);
                            return;
                        }
                        this.f73213c.setStatus(13);
                        j.f().t(this.f73213c);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    a aVar3 = this.f73216f;
                    if (aVar3 != null) {
                        aVar3.a(false);
                    }
                    if (UtilsMy.y2(this.f73212b, this.f73213c, false)) {
                        try {
                            t.l(this.f73212b).N1("zip error[gameId=" + this.f73213c.getCrc_link_type_val() + ",size=" + file.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + m.c(e11));
                        } catch (Exception unused) {
                        }
                    } else {
                        this.f73212b.sendBroadcast(new Intent(p5.a.f96215q));
                        t.l(this.f73212b).N1("zip...insufficient storage. gameId=" + this.f73213c.getCrc_link_type_val());
                    }
                    j.f().t(this.f73213c);
                }
                this.f73213c.set_from_type(0);
            } catch (Throwable th) {
                this.f73213c.set_from_type(0);
                throw th;
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73218b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File f73219c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File f73220d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        File f73221e;

        public a(File file, File fileApk) {
            this.f73219c = file;
            this.f73221e = fileApk;
        }

        public void a(boolean monitor) {
            this.f73218b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f73218b) {
                try {
                    long jN1 = UtilsMy.N1(this.f73219c);
                    File file = this.f73221e;
                    long length = file != null ? file.length() : 0L;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("zip currentSize =");
                    sb2.append(jN1);
                    sb2.append("   surrentApk= ");
                    sb2.append(length);
                    long size = f.this.f73213c.getSize() * 2;
                    if (size == 0) {
                        size = 1;
                    }
                    f.this.f73213c.setProgress(((jN1 + length) * 100) / size);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("totalSize=");
                    sb3.append(size);
                    sb3.append(";zip progress =");
                    sb3.append(f.this.f73213c.getProgress());
                    UtilsMy.T4(f.this.f73213c);
                    Thread.sleep(1000L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    f.this.a();
                    return;
                }
            }
        }

        public a(File file, File fileData, File fileApk) {
            this.f73219c = file;
            this.f73220d = fileData;
            this.f73221e = fileApk;
        }
    }

    public f(DownloadTask downoadTask, Context mContext, boolean isTransfer) {
        this.f73214d = true;
        this.f73216f = null;
        this.f73213c = downoadTask;
        this.f73212b = mContext;
        this.f73215e = isTransfer;
    }
}
