package com.join.mgps.task;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.servcie.q;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.m;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.s3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.x;
import com.join.mgps.Util.z;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.UNZipPathBackBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.e0;
import com.join.mgps.event.p;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.s;
import com.papa.sim.statistic.t;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
import t6.k;
import t6.n;

/* JADX INFO: loaded from: classes3.dex */
public class h extends Thread implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DownloadTask f73234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f73235d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f73236e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f73237f;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f73238b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File f73239c;

        public a(File file) {
            this.f73239c = file;
        }

        public void a(boolean monitor) {
            this.f73238b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (this.f73238b && h.this.f73234c != null) {
                try {
                    File file = this.f73239c;
                    if (file != null) {
                        long jN1 = UtilsMy.N1(file);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("zip currentSize =");
                        sb2.append(jN1);
                        long size = h.this.f73234c.getSize() * 2;
                        try {
                            size = Long.parseLong(h.this.f73234c.getUnzip_size());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        if (size == 0 || jN1 == 0) {
                            h.this.f73234c.setProgress(1L);
                        } else {
                            h.this.f73234c.setProgress((jN1 * 100) / size);
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("totalSize=");
                        sb3.append(size);
                        sb3.append(";zip progress =");
                        sb3.append(h.this.f73234c.getProgress());
                        UtilsMy.T4(h.this.f73234c);
                        if (t2.i(h.this.f73237f)) {
                            org.greenrobot.eventbus.c.f().q(new e0(6, h.this.f73234c.getCrc_link_type_val(), h.this.f73234c.getProgress()));
                        }
                        Thread.sleep(1000L);
                    }
                } catch (InterruptedException e11) {
                    e11.printStackTrace();
                    h.this.a();
                    return;
                }
            }
        }
    }

    public h(DownloadTask downloadTask, Context context) {
        this.f73234c = downloadTask;
        this.f73233b = context;
        if (downloadTask != null && t2.i(downloadTask.getPath()) && t2.i(downloadTask.getExt())) {
            try {
                ExtBean extBean = (ExtBean) JsonMapper.getInstance().fromJson(downloadTask.getExt(), ExtBean.class);
                if (extBean == null || extBean.getDown_from() != 1) {
                    return;
                }
                this.f73237f = z.f50168g + downloadTask.getRomType() + "/roms/";
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.task.c
    public void a() {
        this.f73235d = false;
        this.f73236e.a(false);
        DownloadTask downloadTask = this.f73234c;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    boolean d() {
        try {
            DownloadTask downloadTask = this.f73234c;
            if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getResource_url_remote()) && !TextUtils.isEmpty(this.f73234c.getResource_path()) && (this.f73234c.getResource_path().endsWith(".zip") || this.f73234c.getResource_path().endsWith(".zip/"))) {
                File file = new File(this.f73234c.getResource_path());
                return file.exists() && file.isFile();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        DownloadTask downloadTask = this.f73234c;
        if (downloadTask != null) {
            downloadTask.set_from_type(0);
        }
    }

    @Override // com.join.mgps.task.c
    public boolean isRunning() {
        return this.f73235d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        int i10;
        Throwable th;
        int i11;
        UNZipPathBackBean uNZipPathBackBeanG;
        File file;
        long jCurrentTimeMillis;
        DownloadTask downloadTaskC0;
        String str;
        super.run();
        if (APKUtils.K(this.f73234c)) {
            i10 = 1;
        } else {
            i10 = APKUtils.P(this.f73234c) ? 2 : 0;
        }
        try {
            try {
                File file2 = new File(this.f73234c.getPath());
                try {
                    File file3 = null;
                    if (file2.exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("zip len=");
                        sb2.append(file2.length());
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (this.f73234c.get_from_type() != 1) {
                            t.l(this.f73233b).l1(this.f73234c.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73233b).getUid(), i10);
                        }
                        if (this.f73234c.getSize() >= 104857600) {
                            String strD = this.f73234c.getSize() > 2147483648L ? x.d(file2, file2.getParent(), this.f73234c.getPackageName()) : s3.c(file2, file2.getParent(), this.f73234c.getPackageName());
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("get rom path");
                            sb3.append(strD);
                            a aVar = new a(new File(strD).getParentFile());
                            this.f73236e = aVar;
                            aVar.start();
                        } else {
                            this.f73235d = true;
                        }
                        if (t2.h(this.f73237f)) {
                            uNZipPathBackBeanG = this.f73234c.getSize() > 2147483648L ? x.g(this, file2, file2.getParent(), this.f73234c.getPackageName()) : s3.g(this, file2, file2.getParent(), this.f73234c.getPackageName());
                        } else {
                            File file4 = new File(this.f73237f);
                            if (!file4.exists()) {
                                file4.mkdirs();
                            }
                            uNZipPathBackBeanG = this.f73234c.getSize() > 2147483648L ? x.g(this, file2, this.f73237f, this.f73234c.getPackageName()) : s3.g(this, file2, this.f73237f, this.f73234c.getPackageName());
                        }
                        if (d()) {
                            file = new File(this.f73234c.getResource_path());
                            String parent = file.getParent();
                            if (this.f73237f != null) {
                                if (TextUtils.equals(ConstantIntEnum.N3DS.value() + "", this.f73234c.getPlugin_num())) {
                                    str = this.f73237f;
                                }
                                s3.e(file, str, this.f73234c.getPackageName());
                            }
                            str = parent;
                            s3.e(file, str, this.f73234c.getPackageName());
                        } else {
                            file = null;
                        }
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("romsPath-");
                        sb4.append(uNZipPathBackBeanG.getGameZipPath());
                    } else {
                        uNZipPathBackBeanG = null;
                        file = null;
                        jCurrentTimeMillis = -1;
                    }
                    if (this.f73235d) {
                        a aVar2 = this.f73236e;
                        if (aVar2 != null) {
                            aVar2.a(false);
                        }
                        if (uNZipPathBackBeanG != null && !t2.h(uNZipPathBackBeanG.getGameZipPath())) {
                            file3 = new File(uNZipPathBackBeanG.getGameZipPath());
                        }
                        if (uNZipPathBackBeanG != null && !"".equals(uNZipPathBackBeanG) && file3 != null && file3.exists()) {
                            this.f73234c.setProgress(100L);
                            UtilsMy.T4(this.f73234c);
                            if (this.f73234c.getDownloadType() != 2) {
                                this.f73234c.setGameZipPath(uNZipPathBackBeanG.getGameZipPath());
                                this.f73234c.setSource_down_path(uNZipPathBackBeanG.getSoucePath());
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("romsPath3-");
                                sb5.append(this.f73234c.getGameZipPath());
                            }
                            if (jCurrentTimeMillis != -1) {
                                this.f73234c.setZipCost(file2.length() / (System.currentTimeMillis() - jCurrentTimeMillis));
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("romsPath4-");
                            sb6.append(this.f73234c.getGameZipPath());
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("file-");
                            sb7.append(file2.getAbsolutePath());
                            UtilsMy.delete(file2);
                            if (file != null) {
                                UtilsMy.delete(file);
                            }
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append("romsPath5-");
                            sb8.append(this.f73234c.getGameZipPath());
                            if (this.f73234c.get_from_type() != 1) {
                                DownloadTask downloadTask = this.f73234c;
                                if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getPath()) && this.f73234c.getPath().toLowerCase().contains("/Quark/Download".toLowerCase())) {
                                    String ext = this.f73234c.getExt();
                                    try {
                                        if (!TextUtils.isEmpty(ext)) {
                                            new JSONObject(ext).put("qkPosition", "qk");
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                                q.b(this.f73233b, this.f73234c, Event.gameDownload);
                            }
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append("romsPath6-");
                            sb9.append(this.f73234c.getGameZipPath());
                            int downloadType = this.f73234c.getDownloadType();
                            if (downloadType == 0 || downloadType == 1) {
                                HashMap map = new HashMap();
                                map.put("crc_sign_id", this.f73234c.getCrc_link_type_val());
                                List<EMUUpdateTable> listH = t6.q.o().h(map);
                                if (listH != null && listH.size() > 0) {
                                    EMUUpdateTable eMUUpdateTable = listH.get(0);
                                    this.f73234c.setCfg_ver(eMUUpdateTable.getCfg_ver());
                                    this.f73234c.setCfg_ver_name(eMUUpdateTable.getCfg_ver_name());
                                    this.f73234c.setCfg_down_url(eMUUpdateTable.getCfg_down_url());
                                }
                                this.f73234c.setStatus(5);
                                try {
                                    this.f73234c.setId(q5.f.M().G(this.f73234c.getCrc_link_type_val()).getId());
                                    q5.f.M().update(this.f73234c);
                                    StringBuilder sb10 = new StringBuilder();
                                    sb10.append("mDownloadTask.romwpath=");
                                    sb10.append(this.f73234c.getGameZipPath());
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            } else if (downloadType != 2) {
                                try {
                                    q5.f.M().update(this.f73234c);
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            } else {
                                DownlodTaskCopyTable downlodTaskCopyTableN = n.o().n(this.f73234c.getCrc_link_type_val());
                                JsonMapper jsonMapper = JsonMapper.getInstance();
                                if (downlodTaskCopyTableN != null && downlodTaskCopyTableN.getDownloadTask() != null) {
                                    DownloadTask downloadTask2 = (DownloadTask) jsonMapper.fromJson(downlodTaskCopyTableN.getDownloadTask(), DownloadTask.class);
                                    downloadTask2.setTipBeans((ArrayList) jsonMapper.fromJson(this.f73234c.getTips(), jsonMapper.createCollectionType(ArrayList.class, TipBean.class)));
                                    if (this.f73234c.getId() != 0) {
                                        downloadTask2.setId(this.f73234c.getId());
                                    }
                                    HashMap map2 = new HashMap();
                                    map2.put("crc_sign_id", this.f73234c.getCrc_link_type_val());
                                    List<EMUUpdateTable> listH2 = t6.q.o().h(map2);
                                    if (listH2 != null && listH2.size() > 0) {
                                        EMUUpdateTable eMUUpdateTable2 = listH2.get(0);
                                        downloadTask2.setCfg_ver(eMUUpdateTable2.getCfg_ver());
                                        downloadTask2.setCfg_ver_name(eMUUpdateTable2.getCfg_ver_name());
                                        downloadTask2.setCfg_down_url(eMUUpdateTable2.getCfg_down_url());
                                    }
                                    downloadTask2.setDownloadType(1);
                                    downloadTask2.setStatus(5);
                                    n.o().delete(downlodTaskCopyTableN);
                                    q5.f.M().m(downloadTask2);
                                }
                            }
                            this.f73234c.setStatus(5);
                            q5.f.M().n0(this.f73234c, 5, 100L);
                            UtilsMy.X3(MApplication.f3182z, this.f73234c, 5);
                            if (this.f73234c.getRomType() != null && !this.f73234c.getFileType().equals(Dtype.chajian.name())) {
                                DownloadHistoryTable downloadHistoryTableP = k.n().p(this.f73234c.getCrc_link_type_val());
                                if (downloadHistoryTableP != null) {
                                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                                } else {
                                    downloadHistoryTableP = new DownloadHistoryTable();
                                    downloadHistoryTableP.setCrc_link_type_val(this.f73234c.getCrc_link_type_val());
                                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                                }
                                k.n().m(downloadHistoryTableP);
                            }
                            DownloadTask downloadTask3 = this.f73234c;
                            if (downloadTask3 != null && downloadTask3.getGameZipPath() != null) {
                                try {
                                    o3.E(".downloadTask", new File(this.f73234c.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(this.f73234c));
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            Intent intent = new Intent();
                            intent.putExtra("gameId", this.f73234c.getCrc_link_type_val());
                            intent.setAction(p5.a.f96225v);
                            this.f73233b.sendBroadcast(intent);
                            j.f().o(this.f73234c.getCrc_link_type_val());
                            org.greenrobot.eventbus.c.f().q(new p(this.f73234c.getCrc_link_type_val(), 38));
                            org.greenrobot.eventbus.c.f().q(new r(this.f73234c, 5));
                            s.v(this.f73234c.getCrc_link_type_val());
                            if (!t2.h(this.f73237f)) {
                                org.greenrobot.eventbus.c.f().q(new e0(9, this.f73234c.getCrc_link_type_val()));
                            }
                            if (this.f73234c.get_from() != 120 && (((downloadTaskC0 = q5.f.M().c0(Integer.parseInt(this.f73234c.getPlugin_num()))) != null && downloadTaskC0.getDown_type() == 2) || com.join.android.app.common.utils.g.t0(this.f73233b).e(this.f73233b, t6.p.o().n(this.f73234c.getPlugin_num()).getPackage_name()))) {
                                UtilsMy.d3(this.f73233b, this.f73234c.getCrc_link_type_val());
                            }
                            StringBuilder sb11 = new StringBuilder();
                            sb11.append("mDownloadTask.fina=");
                            sb11.append(this.f73234c.getGameZipPath());
                            this.f73234c.set_from_type(0);
                            return;
                        }
                        this.f73234c.setStatus(13);
                        j.f().t(this.f73234c);
                    }
                } catch (Exception e13) {
                    e13.printStackTrace();
                    t.l(this.f73233b).h2(this.f73234c.getCrc_link_type_val(), AccountUtil_.getInstance_(this.f73233b).getUid(), i10);
                    try {
                        t.l(this.f73233b).N1("zip error[gameId=" + this.f73234c.getCrc_link_type_val() + ",size=" + file2.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + m.c(e13));
                    } catch (Exception unused2) {
                    }
                    a aVar3 = this.f73236e;
                    if (aVar3 != null) {
                        aVar3.a(false);
                    }
                    if (UtilsMy.y2(this.f73233b, this.f73234c, false)) {
                        try {
                            t.l(this.f73233b).N1("zip error[gameId=" + this.f73234c.getCrc_link_type_val() + ",size=" + file2.length() + ",brand=" + Build.BRAND + ",model=" + Build.MODEL + "]::" + m.c(e13));
                        } catch (Exception unused3) {
                        }
                    } else {
                        this.f73233b.sendBroadcast(new Intent(p5.a.f96215q));
                        t.l(this.f73233b).N1("zip...insufficient storage. gameId=" + this.f73234c.getCrc_link_type_val());
                    }
                    j.f().t(this.f73234c);
                }
                this.f73234c.set_from_type(0);
            } catch (Exception e14) {
                try {
                    e14.printStackTrace();
                } catch (Throwable th2) {
                    i11 = 0;
                    th = th2;
                    this.f73234c.set_from_type(i11);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            i11 = 0;
            this.f73234c.set_from_type(i11);
            throw th;
        }
    }

    public h(DownloadTask downloadTask, Context context, String pathRom) {
        this.f73234c = downloadTask;
        this.f73233b = context;
        this.f73237f = pathRom;
    }
}
