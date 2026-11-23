package com.join.android.app.common.servcie;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a2;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w1;
import com.join.mgps.Util.z;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.StoreUtils;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f34719a = "DownloadFactory";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<String, DownloadTask> f34720b = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadPoolExecutor f34721c = new com.join.android.app.common.utils.k(1, 1, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<String, Runnable> f34722d = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static j f34723e;

    class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadTask f34724a;

        a(final DownloadTask val$downloadTask) {
            this.f34724a = val$downloadTask;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            org.greenrobot.eventbus.c.f().q(new r(this.f34724a, 3));
        }
    }

    class b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f34726b;

        b(final DownloadTask val$task) {
            this.f34726b = val$task;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            File parentFile;
            g1.c("删除文件开始时间 " + System.currentTimeMillis());
            q5.f.M().delete(this.f34726b);
            File file = new File(this.f34726b.getPath());
            String gameZipPath = this.f34726b.getGameZipPath();
            if (gameZipPath == null || gameZipPath.equals("")) {
                File file2 = new File(this.f34726b.getPath().replace(".zip", ""));
                if (file2.exists()) {
                    UtilsMy.delete(file2);
                }
            } else if (this.f34726b.getFileType().equals(Dtype.android.name()) || APKUtils.K(this.f34726b)) {
                UtilsMy.delete(new File(gameZipPath));
            } else if (!this.f34726b.getFileType().equals(Dtype.chajian.name())) {
                File parentFile2 = new File(gameZipPath).getParentFile();
                if (parentFile2 != null) {
                    UtilsMy.delete(parentFile2);
                }
                if (!TextUtils.isEmpty(this.f34726b.getPlugin_num()) && (TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(this.f34726b.getPlugin_num(), String.valueOf(ConstantIntEnum.GBC.value())))) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(StoreUtils.getEmuRoot(MApplication.f3182z));
                    String str = File.separator;
                    sb2.append(str);
                    sb2.append(UtilsMy.d2(Integer.parseInt(this.f34726b.getPlugin_num())));
                    sb2.append(str);
                    sb2.append(this.f34726b.getPackageName());
                    File file3 = new File(sb2.toString());
                    if (file3.exists()) {
                        UtilsMy.delete(file3);
                    }
                    File file4 = new File(MApplication.f3182z.getFilesDir() + "/emus/" + UtilsMy.d2(Integer.parseInt(this.f34726b.getPlugin_num())) + str + this.f34726b.getPackageName());
                    if (file4.exists()) {
                        UtilsMy.delete(file4);
                    }
                }
            } else if (TextUtils.equals(this.f34726b.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.PS2.value())) && (parentFile = new File(gameZipPath).getParentFile()) != null) {
                UtilsMy.delete(parentFile);
            }
            if (file.exists()) {
                UtilsMy.delete(file);
            }
            g1.c("删除文件结束时间 " + System.currentTimeMillis());
        }
    }

    private boolean b(DownloadTask downloadTask) {
        if (downloadTask.getFileType().equals(Dtype.apk.name())) {
            List<RomArchived> listN = o3.n(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            if (downloadTask.getPlugin_num().equals("31")) {
                Iterator<RomArchived> it2 = listN.iterator();
                boolean z10 = false;
                boolean z11 = false;
                while (it2.hasNext()) {
                    if (it2.next().getFileName().contains("_v2")) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                }
                Iterator<RomArchived> it3 = listN.iterator();
                while (it3.hasNext()) {
                    RomArchived next = it3.next();
                    if (!z11 || z10) {
                        if (z11 && z10) {
                            if (w1.a(downloadTask.getPackageName())) {
                                if (next.getFileName().contains("_v2")) {
                                    it3.remove();
                                }
                            } else if (!next.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        }
                    } else if (!w1.a(downloadTask.getPackageName())) {
                        it3.remove();
                    }
                }
            }
            if (downloadTask.getPlugin_num().equals("31")) {
                Iterator<RomArchived> it4 = listN.iterator();
                boolean z12 = false;
                boolean z13 = false;
                while (it4.hasNext()) {
                    if (it4.next().getFileName().contains("_v2")) {
                        z12 = true;
                    } else {
                        z13 = true;
                    }
                }
                Iterator<RomArchived> it5 = listN.iterator();
                while (it5.hasNext()) {
                    RomArchived next2 = it5.next();
                    if (!z13 || z12) {
                        if (z13 && z12) {
                            if (w1.a(downloadTask.getPackageName())) {
                                if (next2.getFileName().contains("_v2")) {
                                    it5.remove();
                                }
                            } else if (!next2.getFileName().contains("_v2")) {
                                it5.remove();
                            }
                        }
                    } else if (!w1.a(downloadTask.getPackageName())) {
                        it5.remove();
                    }
                }
            }
            if (listN != null && listN.size() > 0) {
                return true;
            }
        }
        return false;
    }

    public static j f() {
        if (f34723e == null) {
            synchronized (j.class) {
                if (f34723e == null) {
                    f34723e = new j();
                }
            }
        }
        return f34723e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean i(int i10, int i11) {
        return i11 == i10;
    }

    private DownloadTask k(DownloadTask downloadTask) {
        if (downloadTask.getSize() >= 104857600) {
            downloadTask.setProgress(1L);
            q5.f.M().n0(downloadTask, 12, 1L);
        } else {
            downloadTask.setProgress(100L);
            q5.f.M().n0(downloadTask, 12, 100L);
        }
        DownloadTask downloadTaskG = f().g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG == null) {
            f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
        } else {
            downloadTaskG.setProgress(downloadTask.getProgress());
            downloadTaskG.setVer(downloadTask.getVer());
            downloadTaskG.setVer_name(downloadTask.getVer_name());
            downloadTask = downloadTaskG;
        }
        downloadTask.setStatus(12);
        downloadTask.setRuntimeStatus(new AtomicInteger(36));
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 12));
        return downloadTask;
    }

    private void s(Context context, DownloadTask task) {
        com.join.mgps.task.c cVar = (com.join.mgps.task.c) f34722d.get(task.getCrc_link_type_val());
        if (cVar == null || !cVar.isRunning()) {
            com.join.mgps.task.e eVar = new com.join.mgps.task.e(task, context);
            if (task.getSize() <= 104857600) {
                eVar.start();
            } else {
                f34722d.put(task.getCrc_link_type_val(), eVar);
                f34721c.execute(eVar);
            }
        }
    }

    private void x(Context context, DownloadTask task) {
        com.join.mgps.task.c cVar = (com.join.mgps.task.c) f34722d.get(task.getCrc_link_type_val());
        if (cVar == null || !cVar.isRunning()) {
            if (ConstantIntEnum.PS2.value() != Integer.parseInt(task.getPlugin_num()) && ConstantIntEnum.N3DS.value() != Integer.parseInt(task.getPlugin_num())) {
                com.join.mgps.task.g gVar = new com.join.mgps.task.g(task, context);
                if (task.getSize() > 104857600) {
                    f34722d.put(task.getCrc_link_type_val(), gVar);
                    f34721c.execute(gVar);
                    return;
                }
                File file = new File(task.getPath());
                EMUApkTable eMUApkTableN = t6.o.o().n(task.getPlugin_num());
                if (file.exists()) {
                    f34722d.put(task.getCrc_link_type_val(), gVar);
                    gVar.start();
                    return;
                } else {
                    t(task);
                    MobclickAgentKt.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", eMUApkTableN.getTag_id(), ""));
                    return;
                }
            }
            String strH = com.join.mgps.pref.h.n(context).h();
            if (t2.h(strH)) {
                UtilsMy.l3(new PrefDef_(context), context, true);
                strH = com.join.mgps.pref.h.n(context).h();
            }
            File file2 = new File(strH + task.getPlugin_num());
            String str = z.f50167f + task.getPlugin_num();
            File file3 = new File(str);
            if (file2.exists()) {
                if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
                    Intent intent = new Intent(p5.a.f96210n0);
                    intent.putExtra("gameId", task.getCrc_link_type_val());
                    context.sendBroadcast(intent);
                    return;
                }
                o0.M(file2, file3);
            }
            try {
                if (!file3.exists()) {
                    file3.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            com.join.mgps.task.f fVar = new com.join.mgps.task.f(task, context, str);
            if (task.getSize() > 104857600) {
                f34722d.put(task.getCrc_link_type_val(), fVar);
                f34721c.execute(fVar);
                return;
            }
            File file4 = new File(task.getPath());
            EMUApkTable eMUApkTableN2 = t6.o.o().n(task.getPlugin_num());
            if (file4.exists()) {
                f34722d.put(task.getCrc_link_type_val(), fVar);
                fVar.start();
            } else {
                t(task);
                MobclickAgentKt.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", eMUApkTableN2.getTag_id(), ""));
            }
        }
    }

    private void y(Context context, DownloadTask task) {
        String plugin_num = task.getPlugin_num();
        String crc_link_type_val = task.getCrc_link_type_val();
        int i10 = (TextUtils.isEmpty(plugin_num) || !t2.j(plugin_num)) ? 0 : Integer.parseInt(plugin_num);
        ConstantIntEnum constantIntEnum = ConstantIntEnum.PS2;
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.N3DS;
        if (!Arrays.asList(Integer.valueOf(ConstantIntEnum.DC.value()), Integer.valueOf(ConstantIntEnum.N64.value()), Integer.valueOf(ConstantIntEnum.NDS.value()), Integer.valueOf(ConstantIntEnum.ONS.value()), Integer.valueOf(ConstantIntEnum.VA32.value()), Integer.valueOf(ConstantIntEnum.VA64.value()), Integer.valueOf(constantIntEnum.value()), Integer.valueOf(constantIntEnum2.value())).contains(Integer.valueOf(i10))) {
            com.join.mgps.task.c cVar = (com.join.mgps.task.c) f34722d.get(crc_link_type_val);
            if (cVar == null || !cVar.isRunning()) {
                com.join.mgps.task.h hVar = new com.join.mgps.task.h(task, context);
                if (task.getSize() <= 104857600) {
                    hVar.start();
                    return;
                } else {
                    f34722d.put(crc_link_type_val, hVar);
                    f34721c.execute(hVar);
                    return;
                }
            }
            return;
        }
        com.join.mgps.task.c cVar2 = (com.join.mgps.task.c) f34722d.get(crc_link_type_val);
        if (cVar2 == null || !cVar2.isRunning()) {
            String strH = com.join.mgps.pref.h.n(context).h();
            if (t2.h(strH)) {
                UtilsMy.l3(new PrefDef_(context), context, i10 == constantIntEnum.value() || i10 == constantIntEnum2.value());
                strH = com.join.mgps.pref.h.n(context).h();
            }
            File file = new File(strH + plugin_num);
            String str = z.f50167f + plugin_num;
            File file2 = new File(str);
            if (file.exists()) {
                if (a2.f(context)) {
                    v(task);
                    Intent intent = new Intent(p5.a.f96210n0);
                    intent.putExtra("gameId", crc_link_type_val);
                    context.sendBroadcast(intent);
                    return;
                }
                o0.M(file, file2);
            }
            try {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Thread fVar = (TextUtils.equals(crc_link_type_val, String.valueOf(ConstantIntEnum.PS2.value())) || TextUtils.equals(crc_link_type_val, String.valueOf(ConstantIntEnum.N3DS.value()))) ? new com.join.mgps.task.f(task, context, str) : new com.join.mgps.task.h(task, context, str);
            if (task.getSize() <= 104857600) {
                fVar.start();
            } else {
                f34722d.put(crc_link_type_val, fVar);
                f34721c.execute(fVar);
            }
        }
    }

    public void c(String id2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("del removeTask  ");
        sb2.append(id2);
        e(f34720b.remove(id2));
    }

    public void d(Context context, DownloadTask downloadTask) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method delTask() called.");
        sb2.append(downloadTask.getShowName());
        sb2.append(";status=");
        sb2.append(downloadTask.getStatus());
        sb2.append(";runtimeStatus=");
        sb2.append(downloadTask.getRuntimeStatus().get());
        q.b(context, downloadTask, Event.gameRemove);
        try {
            ((com.join.mgps.task.c) f34722d.get(downloadTask.getCrc_link_type_val())).a();
        } catch (Exception unused) {
        }
        f34722d.remove(downloadTask);
        DownloadTask downloadTask2 = f34720b.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("status=");
            sb3.append(downloadTask2.getStatus());
            sb3.append(";runtimestatus=");
            sb3.append(downloadTask2.getRuntimeStatus().get());
            f34720b.remove(downloadTask2.getCrc_link_type_val());
            if (downloadTask2.getRuntimeStatus().get() == 29) {
                com.join.android.app.common.utils.r.c(downloadTask2);
                e(downloadTask);
                org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 7));
            } else if (downloadTask2.getStatus() == 9 || downloadTask2.getStatus() == 3 || downloadTask2.getStatus() == 27 || downloadTask2.getRuntimeStatus().get() == 35 || downloadTask2.getRuntimeStatus().get() == 36 || downloadTask2.getRuntimeStatus().get() == 37 || downloadTask2.getRuntimeStatus().get() == 31 || downloadTask2.getStatus() == 5 || downloadTask2.getStatus() == 13 || downloadTask2.getStatus() == 11) {
                q5.f.M().delete(downloadTask);
                e(downloadTask);
                org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 7));
            } else {
                downloadTask2.setStatus(7);
                org.greenrobot.eventbus.c.f().q(new r(downloadTask2, 7));
            }
        } else {
            q5.f.M().delete(downloadTask);
            e(downloadTask);
            downloadTask.setStatus(7);
            org.greenrobot.eventbus.c.f().q(new r(downloadTask, 7));
        }
        if (b(downloadTask)) {
            Intent intent = new Intent(p5.a.N);
            intent.putExtra("plugNumber", downloadTask.getPlugin_num());
            intent.putExtra("gameZipPath", downloadTask.getGameZipPath());
            intent.putExtra("PackageName", downloadTask.getPackageName());
            intent.putExtra("romType", downloadTask.getRomType());
            intent.putExtra("gameName", downloadTask.getShowName());
            context.sendBroadcast(intent);
        }
    }

    public void e(final DownloadTask task) {
        new b(task).start();
    }

    public DownloadTask g(String id2) {
        return f34720b.get(id2);
    }

    public boolean h(DownloadTask downloadTask) {
        DownloadTask downloadTask2 = f34720b.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            return downloadTask2.getRuntimeStatus().get() == 29 || downloadTask.getRuntimeStatus().get() == 31 || downloadTask.getRuntimeStatus().get() == 36 || downloadTask2.getStatus() == 5 || downloadTask2.getStatus() == 1 || downloadTask2.getRuntimeStatus().get() != 38;
        }
        return false;
    }

    public DownloadTask j(DownloadTask downloadTask) {
        f34720b.remove(downloadTask.getCrc_link_type_val());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onFinish removeTask  ");
        sb2.append(downloadTask.getCrc_link_type_val());
        return downloadTask;
    }

    public void l(DownloadTask downloadTask) {
        f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
    }

    public void m() {
        try {
            Iterator<String> it2 = f34720b.keySet().iterator();
            while (it2.hasNext()) {
                DownloadTask downloadTask = f34720b.get(it2.next());
                if (downloadTask.getRuntimeStatus().get() == 29 || downloadTask.getStatus() == 10) {
                    com.join.android.app.common.utils.r.d(downloadTask);
                    q5.f.M().m0(downloadTask, 3);
                    downloadTask.setStatus(3);
                    org.greenrobot.eventbus.c.f().q(new r(downloadTask, 3));
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
                } else {
                    downloadTask.setStatus(3);
                    org.greenrobot.eventbus.c.f().q(new r(downloadTask, 3));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("del removeAllTask  ");
                sb2.append(downloadTask.getCrc_link_type_val());
                f34720b.remove(downloadTask.getCrc_link_type_val());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public DownloadTask n(String id2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("removeTask 1 ");
        sb2.append(id2);
        return f34720b.remove(id2);
    }

    public void o(String id2) {
        f34722d.remove(id2);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0153 A[Catch: all -> 0x0278, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x015c A[Catch: all -> 0x0278, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x017d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x017f A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x018a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x018c A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0196 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01a0 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a6 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01bf A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x01c3 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e7 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0209 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0250 A[Catch: all -> 0x0278, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003d, B:7:0x005a, B:9:0x0066, B:11:0x0072, B:13:0x0078, B:15:0x007e, B:18:0x008b, B:19:0x0096, B:22:0x00b5, B:24:0x00c4, B:28:0x00e3, B:46:0x013f, B:48:0x0153, B:51:0x015c, B:53:0x0165, B:56:0x0177, B:59:0x0184, B:62:0x018c, B:78:0x0209, B:80:0x0237, B:89:0x0270, B:82:0x023f, B:84:0x0245, B:86:0x024b, B:88:0x0250, B:63:0x0196, B:65:0x01a0, B:67:0x01a6, B:68:0x01bf, B:70:0x01c3, B:74:0x01e7, B:76:0x01ef, B:58:0x017f, B:29:0x00ea, B:31:0x00f2, B:33:0x00f8, B:40:0x010d, B:41:0x011c, B:43:0x0122), top: B:95:0x0001 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x01a6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x01c3, please report this as an issue */
    public synchronized void p(Context context, DownloadTask downloadTask, boolean showTip) {
        boolean z10;
        boolean z11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method start() called.");
        sb2.append(downloadTask.getShowName());
        sb2.append(";");
        sb2.append(downloadTask.getStatus());
        sb2.append("   downloadTaskPool .size=");
        sb2.append(f34720b.size());
        DownloadTask downloadTask2 = f34720b.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            downloadTask2.setDownType(downloadTask.isDownType());
            downloadTask2.setDownLimit(downloadTask.getDownLimit());
            downloadTask2.setMobleNetNeedStop(0);
            if (downloadTask2.getRuntimeStatus().get() != 29 && downloadTask.getRuntimeStatus().get() != 31 && downloadTask.getRuntimeStatus().get() != 36 && downloadTask2.getStatus() != 5 && downloadTask2.getStatus() != 1 && downloadTask2.getRuntimeStatus().get() == 38) {
                downloadTask2.setRuntimeStatus(new AtomicInteger(19));
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("method start() called. return");
            sb3.append(downloadTask.getShowName());
            sb3.append(";");
            sb3.append(downloadTask.getStatus());
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            if (downloadTaskG.getStatus() != 9) {
                if (downloadTaskG.getStatus() != 5) {
                    z10 = true;
                } else if (downloadTask.getUrl().equals(downloadTaskG.getUrl())) {
                    return;
                } else {
                    z10 = false;
                }
                if (z10) {
                    downloadTaskG.setDownLimit(downloadTask.getDownLimit());
                    downloadTaskG.setDownType(downloadTask.isDownType());
                    downloadTask = downloadTaskG;
                }
                if (downloadTask.getStatus() == 9) {
                    UtilsMy.P0(downloadTask, false, false);
                    downloadTask.setGameZipPath("");
                    downloadTask.setResource_path("");
                    downloadTask.setPath("");
                    downloadTask.setTask_down_type(2);
                    downloadTask.setProgress(0L);
                }
                z11 = true;
            }
            downloadTask.setStatus(0);
            q5.f.M().update(downloadTask);
            if (t2.h(downloadTask.getCrc_link_type_val())) {
                q5.f.M().delete(downloadTask);
                return;
            }
            downloadTask.setStatus(1);
            if (downloadTask.getFileType() == null && downloadTask.getFileType().equals(Dtype.chajian.name())) {
                if (!z11) {
                    q.b(context, downloadTask, Event.startDownloadPlug);
                }
            } else if (!z11) {
                q.b(context, downloadTask, Event.gameRequest);
            }
            if (com.join.android.app.common.utils.m.j(context)) {
                if (d2.g(downloadTask.getPackageName())) {
                    if (!d2.d(context, downloadTask)) {
                        ToastManager.show(downloadTask.getShowName() + "开始下载");
                    }
                } else if (MApplication.f3169b2) {
                    if ((ConstantIntEnum.VA32.value() + "").equals(downloadTask.getPlugin_num())) {
                        if (showTip && !(com.join.android.app.common.utils.q.x() instanceof EndGameLaunchActivity_)) {
                            ToastManager.show(downloadTask.getShowName() + "开始下载");
                        }
                    }
                } else if (showTip) {
                    ToastManager.show(downloadTask.getShowName() + "开始下载");
                }
            } else if (showTip) {
                a3.b(context).d("无网络连接");
            }
            if (downloadTask2 == null) {
                f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
                StringBuilder sb4 = new StringBuilder();
                sb4.append("检测不在任务池中  ");
                sb4.append(downloadTask.getShowName());
                sb4.append(";");
                sb4.append(downloadTask.getStatus());
                if ((downloadTask.getCpu_type() != 32 || downloadTask.getCpu_type() == 96) && (APKUtils.P(downloadTask) || APKUtils.K(downloadTask))) {
                    APKUtils.m0(downloadTask);
                }
                downloadTask2 = downloadTask;
            } else {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("检测已经在任务池中 ");
                sb5.append(downloadTask.getShowName());
                sb5.append(";");
                sb5.append(downloadTask.getStatus());
                downloadTask2.setStatus(1);
            }
            com.join.android.app.common.utils.r.e(downloadTask2);
            UtilsMy.X3(context, downloadTask2, 2);
        }
        q5.f.M().k(downloadTask);
        boolean zIsDownType = downloadTask.isDownType();
        int downLimit = downloadTask.getDownLimit();
        downloadTask = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTask == null) {
            return;
        }
        downloadTask.setDownLimit(downLimit);
        downloadTask.setDownType(zIsDownType);
        z11 = false;
        downloadTask.setStatus(0);
        q5.f.M().update(downloadTask);
        if (t2.h(downloadTask.getCrc_link_type_val())) {
            q5.f.M().delete(downloadTask);
            return;
        }
        downloadTask.setStatus(1);
        if (downloadTask.getFileType() == null) {
            if (!z11) {
                q.b(context, downloadTask, Event.gameRequest);
            }
        } else if (!z11) {
            q.b(context, downloadTask, Event.gameRequest);
        }
        if (com.join.android.app.common.utils.m.j(context)) {
            if (showTip) {
                a3.b(context).d("无网络连接");
            }
        } else if (d2.g(downloadTask.getPackageName())) {
            if (!d2.d(context, downloadTask)) {
                ToastManager.show(downloadTask.getShowName() + "开始下载");
            }
        } else if (MApplication.f3169b2) {
            if ((ConstantIntEnum.VA32.value() + "").equals(downloadTask.getPlugin_num())) {
                if (showTip) {
                    ToastManager.show(downloadTask.getShowName() + "开始下载");
                }
            }
        } else if (showTip) {
            ToastManager.show(downloadTask.getShowName() + "开始下载");
        }
        if (downloadTask2 == null) {
            f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
            StringBuilder sb6 = new StringBuilder();
            sb6.append("检测不在任务池中  ");
            sb6.append(downloadTask.getShowName());
            sb6.append(";");
            sb6.append(downloadTask.getStatus());
            if (downloadTask.getCpu_type() != 32) {
                APKUtils.m0(downloadTask);
            } else {
                APKUtils.m0(downloadTask);
            }
            downloadTask2 = downloadTask;
        } else {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("检测已经在任务池中 ");
            sb7.append(downloadTask.getShowName());
            sb7.append(";");
            sb7.append(downloadTask.getStatus());
            downloadTask2.setStatus(1);
        }
        com.join.android.app.common.utils.r.e(downloadTask2);
        UtilsMy.X3(context, downloadTask2, 2);
    }

    public void q(DownloadTask downloadTaskx) {
        DownloadTask downloadTaskG = g(downloadTaskx.getCrc_link_type_val());
        if (downloadTaskG == null) {
            downloadTaskx.setStatus(3);
            org.greenrobot.eventbus.c.f().q(new r(downloadTaskx, 3));
        }
        if (downloadTaskG == null || downloadTaskG.getStatus() == 5 || downloadTaskG.getRuntimeStatus().get() == 31 || downloadTaskG.getStatus() == 7 || downloadTaskG.getStatus() == 12 || downloadTaskG.getStatus() == 13 || downloadTaskG.getRuntimeStatus().get() == 35 || downloadTaskG.getStatus() == 3) {
            return;
        }
        if (downloadTaskG.getRuntimeStatus().get() != 29 && downloadTaskG.getStatus() != 10) {
            downloadTaskG.setStatus(27);
            org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 27));
            new a(downloadTaskG).sendEmptyMessageDelayed(1, 200L);
        } else {
            com.join.android.app.common.utils.r.d(downloadTaskG);
            q5.f.M().m0(downloadTaskG, 3);
            downloadTaskG.setStatus(3);
            org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 3));
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTaskG.getCrc_link_type_val(), 38));
        }
    }

    public void r(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadTask downloadTaskK = k(downloadTask);
        String fileType = downloadTaskK.getFileType();
        if (!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.apk.name())) {
            y(context, downloadTaskK);
            return;
        }
        if (!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.chajian.name()) && downloadTaskK.getDown_type() == 2) {
            w(context, downloadTaskK);
            return;
        }
        try {
            if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTaskK.getPlugin_num())) {
                x(context, downloadTaskK);
                return;
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        s(context, downloadTaskK);
    }

    public void t(DownloadTask downloadTask) {
        u(downloadTask, true);
    }

    public void u(DownloadTask downloadTask, boolean explicit) {
        f34722d.remove(downloadTask.getCrc_link_type_val());
        downloadTask.setStatus(13);
        if (downloadTask.getSize() >= 104857600) {
            downloadTask.setProgress(1L);
            q5.f.M().n0(downloadTask, 13, 1L);
        } else {
            downloadTask.setProgress(100L);
            q5.f.M().n0(downloadTask, 13, 100L);
        }
        DownloadTask downloadTaskG = g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTaskG.setStatus(downloadTask.getStatus());
            downloadTaskG.setProgress(downloadTask.getProgress());
        } else {
            f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        if (explicit) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 46));
        }
        org.greenrobot.eventbus.c.f().q(new r(downloadTask, 13));
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(downloadTask.getCrc_link_type_val(), 38));
    }

    public void v(DownloadTask downloadTask) {
        u(downloadTask, false);
    }

    public void w(Context context, DownloadTask downloadTask) {
        if (downloadTask.getSize() >= 104857600) {
            downloadTask.setProgress(1L);
            q5.f.M().n0(downloadTask, 12, 1L);
        } else {
            downloadTask.setProgress(100L);
            q5.f.M().n0(downloadTask, 12, 100L);
        }
        DownloadTask downloadTaskG = f().g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTaskG.setStatus(12);
            downloadTaskG.setProgress(downloadTask.getProgress());
            downloadTaskG.setVer(downloadTask.getVer());
            downloadTaskG.setVer_name(downloadTask.getVer_name());
        } else {
            f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
            downloadTaskG = downloadTask;
        }
        downloadTaskG.setStatus(12);
        downloadTaskG.setRuntimeStatus(new AtomicInteger(36));
        org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 12));
        com.join.mgps.task.c cVar = (com.join.mgps.task.c) f34722d.get(downloadTaskG.getCrc_link_type_val());
        if (cVar == null || !cVar.isRunning()) {
            if (ConstantIntEnum.PS2.value() != Integer.parseInt(downloadTask.getPlugin_num()) && ConstantIntEnum.N3DS.value() != Integer.parseInt(downloadTask.getPlugin_num())) {
                com.join.mgps.task.g gVar = new com.join.mgps.task.g(downloadTaskG, context);
                if (downloadTaskG.getSize() > 104857600) {
                    f34722d.put(downloadTaskG.getCrc_link_type_val(), gVar);
                    f34721c.execute(gVar);
                    return;
                }
                File file = new File(downloadTask.getPath());
                EMUApkTable eMUApkTableN = t6.o.o().n(downloadTask.getPlugin_num());
                if (file.exists()) {
                    f34722d.put(downloadTaskG.getCrc_link_type_val(), gVar);
                    gVar.start();
                    return;
                } else {
                    t(downloadTask);
                    MobclickAgentKt.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", eMUApkTableN.getTag_id(), ""));
                    return;
                }
            }
            String strH = com.join.mgps.pref.h.n(context).h();
            if (t2.h(strH)) {
                UtilsMy.l3(new PrefDef_(context), context, true);
                strH = com.join.mgps.pref.h.n(context).h();
            }
            File file2 = new File(strH + downloadTaskG.getPlugin_num());
            String str = z.f50167f + downloadTaskG.getPlugin_num();
            File file3 = new File(str);
            if (file2.exists()) {
                if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
                    Intent intent = new Intent(p5.a.f96210n0);
                    intent.putExtra("gameId", downloadTask.getCrc_link_type_val());
                    context.sendBroadcast(intent);
                    return;
                }
                o0.M(file2, file3);
            }
            try {
                if (!file3.exists()) {
                    file3.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            com.join.mgps.task.f fVar = new com.join.mgps.task.f(downloadTaskG, context, str);
            if (downloadTaskG.getSize() > 104857600) {
                f34722d.put(downloadTaskG.getCrc_link_type_val(), fVar);
                f34721c.execute(fVar);
                return;
            }
            File file4 = new File(downloadTask.getPath());
            EMUApkTable eMUApkTableN2 = t6.o.o().n(downloadTask.getPlugin_num());
            if (file4.exists()) {
                f34722d.put(downloadTaskG.getCrc_link_type_val(), fVar);
                fVar.start();
            } else {
                t(downloadTask);
                MobclickAgentKt.onEvent(context, "onZIPMd5Failed", String.format("%s_%s", eMUApkTableN2.getTag_id(), ""));
            }
        }
    }

    public void z(Context context, DownloadTask downloadTask, boolean rom) {
        if (downloadTask.getSize() >= 104857600) {
            downloadTask.setProgress(1L);
            q5.f.M().n0(downloadTask, 12, 1L);
        } else {
            downloadTask.setProgress(100L);
            q5.f.M().n0(downloadTask, 12, 100L);
        }
        DownloadTask downloadTaskG = f().g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTaskG.setStatus(12);
            downloadTaskG.setProgress(downloadTask.getProgress());
        } else {
            f34720b.put(downloadTask.getCrc_link_type_val(), downloadTask);
            downloadTaskG = downloadTask;
        }
        downloadTaskG.setStatus(12);
        downloadTaskG.setRuntimeStatus(new AtomicInteger(36));
        org.greenrobot.eventbus.c.f().q(new r(downloadTaskG, 12));
        if (!rom) {
            if (Build.VERSION.SDK_INT <= 30 && APKUtils.f34739a.D(context, downloadTaskG)) {
                v(downloadTask);
                Intent intent = new Intent(p5.a.f96210n0);
                intent.putExtra("gameId", downloadTask.getCrc_link_type_val());
                context.sendBroadcast(intent);
                return;
            }
            com.join.mgps.task.c cVar = (com.join.mgps.task.c) f34722d.get(downloadTask.getCrc_link_type_val());
            if (cVar == null || !cVar.isRunning()) {
                com.join.mgps.task.e eVar = new com.join.mgps.task.e(downloadTaskG, context);
                if (downloadTask.getSize() <= 104857600) {
                    eVar.start();
                    return;
                } else {
                    f34722d.put(downloadTaskG.getCrc_link_type_val(), eVar);
                    f34721c.execute(eVar);
                    return;
                }
            }
            return;
        }
        final int i10 = Integer.parseInt(downloadTaskG.getPlugin_num());
        ConstantIntEnum constantIntEnum = ConstantIntEnum.PS2;
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.N3DS;
        int[] iArr = {ConstantIntEnum.DC.value(), ConstantIntEnum.N64.value(), ConstantIntEnum.NDS.value(), ConstantIntEnum.ONS.value(), ConstantIntEnum.VA32.value(), ConstantIntEnum.VA64.value(), constantIntEnum.value(), constantIntEnum2.value()};
        if (Build.VERSION.SDK_INT <= 29 || !Arrays.stream(iArr).anyMatch(new IntPredicate() { // from class: com.join.android.app.common.servcie.i
            @Override // java.util.function.IntPredicate
            public final boolean test(int i11) {
                return j.i(i10, i11);
            }
        })) {
            com.join.mgps.task.c cVar2 = (com.join.mgps.task.c) f34722d.get(downloadTaskG.getCrc_link_type_val());
            String str = z.f50167f + downloadTaskG.getPlugin_num();
            if (cVar2 == null || !cVar2.isRunning()) {
                Runnable fVar = (TextUtils.equals(downloadTaskG.getCrc_link_type_val(), String.valueOf(constantIntEnum.value())) || TextUtils.equals(downloadTaskG.getCrc_link_type_val(), String.valueOf(constantIntEnum2.value()))) ? new com.join.mgps.task.f(downloadTaskG, context, str) : new com.join.mgps.task.h(downloadTaskG, context);
                if (downloadTaskG.getSize() > 104857600) {
                    f34722d.put(downloadTaskG.getCrc_link_type_val(), fVar);
                    f34721c.execute(fVar);
                    return;
                } else if (fVar instanceof com.join.mgps.task.f) {
                    ((com.join.mgps.task.f) fVar).start();
                    return;
                } else {
                    ((com.join.mgps.task.h) fVar).start();
                    return;
                }
            }
            return;
        }
        com.join.mgps.task.c cVar3 = (com.join.mgps.task.c) f34722d.get(downloadTaskG.getCrc_link_type_val());
        if (cVar3 == null || !cVar3.isRunning()) {
            String strH = com.join.mgps.pref.h.n(context).h();
            if (t2.h(strH)) {
                UtilsMy.l3(new PrefDef_(context), context, i10 == constantIntEnum.value() || i10 == constantIntEnum2.value());
                strH = com.join.mgps.pref.h.n(context).h();
            }
            File file = new File(strH + downloadTaskG.getPlugin_num());
            String str2 = z.f50167f + downloadTaskG.getPlugin_num();
            File file2 = new File(str2);
            if (file.exists()) {
                if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
                    v(downloadTask);
                    Intent intent2 = new Intent(p5.a.f96210n0);
                    intent2.putExtra("gameId", downloadTask.getCrc_link_type_val());
                    context.sendBroadcast(intent2);
                    return;
                }
                o0.M(file, file2);
            }
            try {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Runnable fVar2 = (TextUtils.equals(downloadTaskG.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.PS2.value())) || TextUtils.equals(downloadTaskG.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.N3DS.value()))) ? new com.join.mgps.task.f(downloadTaskG, context, str2) : new com.join.mgps.task.h(downloadTaskG, context, str2);
            if (downloadTaskG.getSize() > 104857600) {
                f34722d.put(downloadTaskG.getCrc_link_type_val(), fVar2);
                f34721c.execute(fVar2);
            } else if (fVar2 instanceof com.join.mgps.task.f) {
                ((com.join.mgps.task.f) fVar2).start();
            } else {
                ((com.join.mgps.task.h) fVar2).start();
            }
        }
    }
}
