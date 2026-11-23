package com.join.mgps.mod.utils;

import android.content.Context;
import android.os.Looper;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.servcie.q;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.g;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.overmind.i;
import com.papa.sim.statistic.Event;
import com.xinzhu.overmind.entity.pm.InstallResult;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import t6.k;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f71880b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ExecutorService f71881a;

    /* JADX INFO: renamed from: com.join.mgps.mod.utils.a$a, reason: collision with other inner class name */
    private class RunnableC0738a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        DownloadTask f71882b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f71883c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Context f71884d;

        public RunnableC0738a(Context ctx, DownloadTask t10, boolean local) {
            this.f71884d = ctx;
            this.f71882b = t10;
            this.f71883c = local;
        }

        private void a(DownloadTask task) throws Throwable {
            if (task.getFileType().equals(Dtype.MOD.name())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z.f50179r);
                String str = File.separator;
                sb2.append(str);
                sb2.append(task.getPackageName());
                File file = new File(sb2.toString());
                if (file.exists()) {
                    File file2 = new File(i.q().s(true) + str + "data" + str + task.getPackageName());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    o0.g(file.getPath(), file2.getPath());
                }
            }
        }

        private void b(DownloadTask task) throws Throwable {
            if (task.getFileType().equals(Dtype.MOD.name())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z.f50178q);
                String str = File.separator;
                sb2.append(str);
                sb2.append(task.getPackageName());
                File file = new File(sb2.toString());
                if (file.exists()) {
                    File file2 = new File(i.q().s(true) + str + "obb" + str + task.getPackageName());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    o0.g(file.getPath(), file2.getPath());
                }
            }
        }

        private void c(Context context, DownloadTask downloadTask) {
            downloadTask.setStatus(11);
            q5.f.M().m0(downloadTask, downloadTask.getStatus());
            org.greenrobot.eventbus.c.f().q(new r(downloadTask, 11));
        }

        private void d(Context context, DownloadTask downloadTask) {
            downloadTask.setStatus(5);
            if (downloadTask.getRomType() == null || downloadTask.getFileType().equals(Dtype.chajian.name())) {
                try {
                    APKUtils.a aVarN = g.t0(context).n(context, downloadTask.getPackageName());
                    if (aVarN != null) {
                        downloadTask.setVer(aVarN.d() + "");
                        downloadTask.setVer_name(aVarN.e());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                DownloadHistoryTable downloadHistoryTableP = k.n().p(downloadTask.getCrc_link_type_val());
                if (downloadHistoryTableP != null) {
                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                } else {
                    downloadHistoryTableP = new DownloadHistoryTable();
                    downloadHistoryTableP.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                }
                k.n().m(downloadHistoryTableP);
                UtilsMy.d3(context, downloadTask.getCrc_link_type_val());
                new PrefDef_(context).lastInstallApp().g("");
            }
            try {
                DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
                if (downloadTaskG != null) {
                    downloadTaskG.setStatus(5);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            q5.f.M().m0(downloadTask, downloadTask.getStatus());
            downloadTask.setStatus(5);
            q.b(context, downloadTask, Event.installAndroidCompleted);
            org.greenrobot.eventbus.c.f().q(new r(downloadTask, 5));
            APKUtils.j(downloadTask);
        }

        @Override // java.lang.Runnable
        public void run() {
            InstallResult installResultF;
            DownloadTask downloadTask = this.f71882b;
            if (downloadTask == null) {
                return;
            }
            try {
                try {
                    downloadTask.setStatus(48);
                    q5.f.M().m0(this.f71882b, 48);
                    org.greenrobot.eventbus.c.f().q(new r(this.f71882b, 48));
                    if (this.f71883c) {
                        if (this.f71882b.getRomType().equals(Dtype.androidobb.name())) {
                            b(this.f71882b);
                        } else if (this.f71882b.getRomType().equals(Dtype.androiddata.name())) {
                            a(this.f71882b);
                        } else if (this.f71882b.getRomType().equals(Dtype.androidobbdata.name())) {
                            b(this.f71882b);
                            a(this.f71882b);
                        }
                        installResultF = i.q().F(this.f71882b.getPackageName());
                    } else {
                        installResultF = i.q().F(this.f71882b.getGameZipPath());
                    }
                    if (installResultF != null && installResultF.f89488b) {
                        d(this.f71884d, this.f71882b);
                        return;
                    }
                    c(this.f71884d, this.f71882b);
                    Looper.prepare();
                    if (installResultF != null) {
                        String str = installResultF.f89490d;
                        if (t2.i(str)) {
                            a3.b(this.f71884d).d("安装失败:" + str);
                        } else {
                            a3.b(this.f71884d).d("安装失败");
                        }
                    } else {
                        a3.b(this.f71884d).d("安装失败");
                    }
                    Looper.loop();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    c(this.f71884d, this.f71882b);
                    Looper.prepare();
                }
            } catch (Throwable th) {
                c(this.f71884d, this.f71882b);
                Looper.prepare();
                a3.b(this.f71884d).d("安装失败");
                Looper.loop();
                throw th;
            }
        }
    }

    private a() {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(3);
        this.f71881a = executorServiceNewFixedThreadPool;
        if (executorServiceNewFixedThreadPool == null || executorServiceNewFixedThreadPool.isTerminated() || this.f71881a.isShutdown()) {
            this.f71881a = Executors.newFixedThreadPool(3);
        }
    }

    public static a a() {
        if (f71880b == null) {
            synchronized (a.class) {
                f71880b = new a();
            }
        }
        return f71880b;
    }

    public void b(Context ctx, DownloadTask t10, boolean local) {
        if (t10 != null) {
            this.f71881a.submit(new RunnableC0738a(ctx, t10, local));
        }
    }
}
