package com.php25.PDownload;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.p1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.o;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.ext.ToastManager;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78100a = "com.php25.PDownload.d";

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f78101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f78102c;

        a(final DownloadTask val$downloadTask, final Context val$context) {
            this.f78101b = val$downloadTask;
            this.f78102c = val$context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            d.c(this.f78101b, this.f78102c);
        }
    }

    public static void a(DownloadTask downloadTask) {
        try {
            if (!g(MApplication.f3182z)) {
                UtilsMy.h4(MApplication.f3182z);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        UtilsMy.X3(MApplication.f3182z, downloadTask, 7);
        org.greenrobot.eventbus.c.f().q(new o(downloadTask, 16));
    }

    public static void b(DownloadTask downloadTask) {
        org.greenrobot.eventbus.c.f().q(new o(downloadTask, 17));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(DownloadTask downloadTask, Context context) {
        if (t2.h(z.f50164c) || z.f50164c.equals(Environment.getExternalStorageDirectory().getAbsolutePath())) {
            z.e(context);
        }
        TipNew sp_tag_info = downloadTask.getSp_tag_info();
        if (sp_tag_info == null || sp_tag_info.getCoin() == null) {
            e(downloadTask, context);
        } else {
            ((CommonService_.n0) CommonService_.P2(context).extra("checkcoin", downloadTask)).a();
        }
    }

    public static void d(DownloadTask downloadTask, Context context) {
        new a(downloadTask, context);
    }

    public static void e(DownloadTask downloadTask, Context context) {
        float f10;
        h(downloadTask);
        if (m.k(context)) {
            try {
                if (downloadTask.getFileType().equals(Dtype.apk.name())) {
                    UtilsMy.U(context, downloadTask);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            f(downloadTask, context);
            return;
        }
        if (!m.i(context)) {
            if (m.j(context)) {
                f(downloadTask, context);
                return;
            } else {
                f(downloadTask, context);
                ToastManager.show("无网络连接");
                return;
            }
        }
        int iIntValue = new PrefDef_(context).gprsNoticeInfo().d().intValue();
        EMUApkTable eMUApkTableL0 = !Dtype.chajian.name().equals(downloadTask.getFileType()) ? UtilsMy.l0(context, downloadTask.getRomType()) : null;
        try {
            f10 = Float.parseFloat(downloadTask.getShowSize());
            if (eMUApkTableL0 != null) {
                try {
                    f10 += Float.parseFloat(eMUApkTableL0.getSize());
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e = e12;
            f10 = 100.0f;
        }
        if (iIntValue == 0) {
            k(downloadTask, "下载任务将使用数据流量，确认下载吗？", context, eMUApkTableL0);
            return;
        }
        if (iIntValue == 1) {
            if (f10 >= 30.0f) {
                k(downloadTask, "下载内容大于30M，确认使用流量下载吗？", context, eMUApkTableL0);
                return;
            }
            f(downloadTask, context);
            if (eMUApkTableL0 != null) {
                UtilsMy.s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (iIntValue == 2) {
            if (f10 >= 50.0f) {
                k(downloadTask, "下载内容大于50M，确认使用流量下载吗？", context, eMUApkTableL0);
                return;
            }
            f(downloadTask, context);
            if (eMUApkTableL0 != null) {
                UtilsMy.s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (iIntValue != 3) {
            if (iIntValue != 4) {
                return;
            }
            f(downloadTask, context);
            if (eMUApkTableL0 != null) {
                UtilsMy.s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (f10 >= 100.0f) {
            k(downloadTask, "下载内容大于100M，确认使用流量下载吗？", context, eMUApkTableL0);
            return;
        }
        f(downloadTask, context);
        if (eMUApkTableL0 != null) {
            UtilsMy.s1(eMUApkTableL0, context);
        }
    }

    public static void f(DownloadTask downloadTask, Context context) {
        if (!g(context)) {
            UtilsMy.h4(context);
        }
        org.greenrobot.eventbus.c.f().q(new o(downloadTask, 14));
    }

    public static boolean g(Context context) {
        try {
            if (p1.b(context) >= 26 && Build.VERSION.SDK_INT >= 26) {
                return true;
            }
            ArrayList arrayList = (ArrayList) ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(100);
            if (arrayList != null && arrayList.size() > 0) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (((ActivityManager.RunningServiceInfo) arrayList.get(i10)).service.getClassName().toString().equals("com.join.android.app.common.servcie.DownloadService_")) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void h(DownloadTask downloadTask) {
        ModInfoBean modInfoBean;
        try {
            boolean zEquals = false;
            if (((TextUtils.isEmpty(downloadTask.getPlugin_num()) || !t2.j(downloadTask.getPlugin_num())) ? 0 : Integer.parseInt(downloadTask.getPlugin_num())) == ConstantIntEnum.MGAME.value()) {
                if (t2.i(downloadTask.getMod_info()) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) != null && (zEquals = downloadTask.getCrc_link_type_val().equals(modInfoBean.getMod_game_id()))) {
                    downloadTask.setResource_url_remote(modInfoBean.getDown_url());
                    Dtype dtype = Dtype.MOD;
                    downloadTask.setFileType(dtype.name());
                    downloadTask.setRomType(dtype.name());
                }
                if (!zEquals) {
                    SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getSingle_game_mod_info(), SingleGameModInfoBean.class);
                    if (t2.i(downloadTask.getSingle_game_mod_info()) && singleGameModInfoBean != null) {
                        downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                    }
                    Dtype dtype2 = Dtype.android;
                    downloadTask.setFileType(dtype2.name());
                    downloadTask.setRomType(dtype2.name());
                }
            }
            if (downloadTask.getTipBeans() != null) {
                for (TipBean tipBean : downloadTask.getTipBeans()) {
                    if (tipBean.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                        downloadTask.setRomType(Dtype.androiddata.name());
                    } else {
                        if (tipBean.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                            downloadTask.setRomType(Dtype.androidobb.name());
                        }
                    }
                    if (tipBean.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                        downloadTask.setRomType(Dtype.androidobbdata.name());
                        return;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void i(DownloadTask downloadTask) {
        try {
            if (!g(MApplication.f3182z)) {
                UtilsMy.h4(MApplication.f3182z);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        org.greenrobot.eventbus.c.f().q(new o(downloadTask, 15));
    }

    public static double j(String path, long totalSize) {
        File file = new File(path);
        if (!file.exists() || totalSize == 0) {
            return 0.0d;
        }
        return (file.length() * 100) / totalSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void k(DownloadTask downloadTask, String showContent, Context context, EMUApkTable apkTable) {
        ((GprsNoticeDialogAlphActivity_.c) GprsNoticeDialogAlphActivity_.intent(context).b(downloadTask).flags(C.ENCODING_PCM_MU_LAW)).d(showContent).a(apkTable).start();
    }

    public static void l(Context context, DownloadTask downloadTask) {
        if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.apk.name())) {
            j.f().z(context, downloadTask, true);
            return;
        }
        if (downloadTask.getFileType() != null && downloadTask.getDown_type() == 2 && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            j.f().w(context, downloadTask);
        } else if (ConstantIntEnum.PS2.value() == Integer.parseInt(downloadTask.getPlugin_num()) || ConstantIntEnum.N3DS.value() == Integer.parseInt(downloadTask.getPlugin_num())) {
            j.f().w(context, downloadTask);
        } else {
            j.f().z(context, downloadTask, false);
        }
    }
}
