package com.join.android.app.common.servcie;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.papa.sim.statistic.Where;
import com.papa.sim.statistic.t;
import com.windmill.sdk.point.PointType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f34737b;

        a(final Context val$context) {
            this.f34737b = val$context;
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.b(this.f34737b).d("当前版本不支持该类游戏\n升级后即可体验");
        }
    }

    class b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f34738b;

        b(final Context val$context) {
            this.f34738b = val$context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f34738b.sendBroadcast(new Intent(p5.a.f96205l));
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0213 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0211 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0217 A[Catch: Exception -> 0x0223, TRY_LEAVE, TryCatch #2 {Exception -> 0x0223, blocks: (B:83:0x0213, B:85:0x0217), top: B:101:0x0213 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0230  */
    /* JADX WARN: Code duplicated, block: B:93:0x0237 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:94:0x0238  */
    /* JADX WARN: Code duplicated, block: B:96:0x0242  */
    public static boolean a(final Context context, DownloadTask downloadTask) {
        int i10;
        String romType;
        Boolean bool;
        boolean zEquals;
        ModInfoBean modInfoBean;
        try {
            i10 = Integer.parseInt(downloadTask.getPlugin_num());
        } catch (Exception unused) {
            i10 = 0;
        }
        Boolean bool2 = Boolean.TRUE;
        try {
            if (i10 != ConstantIntEnum.FBA.value() && i10 != ConstantIntEnum.PSP.value() && i10 != ConstantIntEnum.FC.value() && i10 != ConstantIntEnum.GBA.value() && i10 != ConstantIntEnum.MGAME.value() && i10 != ConstantIntEnum.MD.value() && i10 != ConstantIntEnum.PS.value() && i10 != ConstantIntEnum.VA32.value() && i10 != ConstantIntEnum.VA64.value() && i10 != ConstantIntEnum.N3DS.value()) {
                if (i10 != ConstantIntEnum.PC.value()) {
                    bool = Boolean.FALSE;
                }
                if (!bool2.booleanValue() && downloadTask.getRomType() != null) {
                    romType = downloadTask.getRomType();
                    if (t2.i(romType) && UtilsMy.w2(Integer.parseInt(romType))) {
                        bool2 = Boolean.TRUE;
                    }
                }
                if (bool2.booleanValue()) {
                    if (!UtilsMy.y2(context, downloadTask, true)) {
                        return false;
                    }
                    if (t2.h(downloadTask.getFileType())) {
                        downloadTask.setFileType(Dtype.apk.name());
                    }
                    return true;
                }
                if (context != null) {
                    try {
                        if (context instanceof Activity) {
                            ((Activity) context).runOnUiThread(new a(context));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                new b(context).start();
                return false;
            }
            if (i10 == ConstantIntEnum.MGAME.value()) {
                if (t2.i(downloadTask.getMod_info()) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) != null) {
                    zEquals = downloadTask.getCrc_link_type_val().equals(modInfoBean.getMod_game_id());
                    if (zEquals) {
                        downloadTask.setResource_url_remote(modInfoBean.getDown_url());
                        Dtype dtype = Dtype.MOD;
                        downloadTask.setFileType(dtype.name());
                        downloadTask.setRomType(dtype.name());
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
                                break;
                            }
                        }
                    }
                } else {
                    zEquals = false;
                }
                if (!zEquals) {
                    downloadTask.setFileType(Dtype.android.name());
                    downloadTask.setRomType("");
                    for (TipBean tipBean2 : downloadTask.getTipBeans()) {
                        if (tipBean2.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                            downloadTask.setRomType(Dtype.androiddata.name());
                        } else {
                            if (tipBean2.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                downloadTask.setRomType(Dtype.androidobb.name());
                            }
                        }
                        if (tipBean2.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                            downloadTask.setRomType(Dtype.androidobbdata.name());
                            break;
                        }
                    }
                }
            }
            bool = Boolean.TRUE;
            bool2 = bool;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (!bool2.booleanValue()) {
            romType = downloadTask.getRomType();
            if (t2.i(romType)) {
                bool2 = Boolean.TRUE;
            }
        }
        if (bool2.booleanValue()) {
            if (context != null) {
                if (context instanceof Activity) {
                    ((Activity) context).runOnUiThread(new a(context));
                }
            }
            new b(context).start();
            return false;
        }
        if (!UtilsMy.y2(context, downloadTask, true)) {
            return false;
        }
        if (t2.h(downloadTask.getFileType())) {
            downloadTask.setFileType(Dtype.apk.name());
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0077  */
    public static void b(Context context, DownloadTask downloadTask, Event event) {
        int i10;
        String string;
        String string2;
        String string3;
        if (APKUtils.K(downloadTask)) {
            i10 = 1;
        } else {
            i10 = APKUtils.P(downloadTask) ? 2 : 0;
        }
        Ext ext = null;
        if (downloadTask != null) {
            try {
                String ext2 = downloadTask.getExt();
                if (TextUtils.isEmpty(ext2)) {
                    string = "";
                    string2 = string;
                    string3 = string2;
                } else {
                    JSONObject jSONObject = new JSONObject(ext2);
                    string2 = jSONObject.has("dataFlag") ? jSONObject.getString("dataFlag") : "";
                    try {
                        string = jSONObject.has("where") ? jSONObject.getString("where") : "";
                        try {
                            string3 = jSONObject.has("qkPosition") ? jSONObject.getString("qkPosition") : "";
                            try {
                                ext = (Ext) JsonMapper.getInstance().fromJson(ext2, Ext.class);
                            } catch (Exception e10) {
                                try {
                                    e10.printStackTrace();
                                } catch (Exception e11) {
                                    e = e11;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            string3 = "";
                        }
                    } catch (Exception e13) {
                        e = e13;
                        string = "";
                        string3 = string;
                    }
                }
            } catch (Exception e14) {
                e = e14;
                string = "";
                string2 = string;
                string3 = string2;
            }
        } else {
            string = "";
            string2 = string;
            string3 = string2;
        }
        String str = string;
        Ext ext3 = ext;
        String str2 = string3;
        if (event.name().equals(Event.gameDownloadCompleted.name())) {
            if (Dtype.MOD.name().equals(downloadTask.getFileType()) && downloadTask.getTask_down_type() == 1) {
                return;
            }
            if (downloadTask.getKeyword() == null || !downloadTask.getKeyword().equals(Where.article.name())) {
                t.l(context).G0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.get_from(), downloadTask.get_from_type(), i10, string2);
                return;
            } else {
                t.l(context).H0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.getExt1(), downloadTask.get_from(), downloadTask.get_from_type(), i10, string2);
                return;
            }
        }
        if (event.name().equals(Event.gameDownload.name())) {
            if (Dtype.MOD.name().equals(downloadTask.getFileType()) && downloadTask.getTask_down_type() == 1) {
                return;
            }
            if (downloadTask.get_from_type() == 1) {
                q5.f.M().g0(downloadTask.getCrc_link_type_val());
                return;
            }
            String strName = String.valueOf(downloadTask.get_from()).startsWith(PointType.WIND_ADAPTER) ? ExtFrom.home.name() : "";
            if (downloadTask.getKeyword() == null || !downloadTask.getKeyword().equals(Where.article.name())) {
                t.l(context).D0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), 0L, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), i10, strName, str2, ext3);
                return;
            } else {
                t.l(context).F0(downloadTask.getCrc_link_type_val(), downloadTask.getKeyword(), downloadTask.getDuration(), downloadTask.getInterrupt(), AccountUtil_.getInstance_(context).getUid(), downloadTask.getExt1(), 0L, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), i10, strName, str2, ext3);
                return;
            }
        }
        if (event.name().equals(Event.downloadPlugCompleted.name())) {
            t.l(context).f0(downloadTask.getRomType(), downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
            return;
        }
        if (event.name().equals(Event.installAndroidCompleted.name())) {
            if (downloadTask.get_from_type() == 1) {
                q5.f.M().g0(downloadTask.getCrc_link_type_val());
                return;
            }
            if (ext3 != null && t2.h(ext3.getFrom())) {
                ext3.setFrom(downloadTask.get_from() + "");
            }
            t.l(context).p1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid(), i10, string2, str2, ext3);
            if (downloadTask.getFileType().equals(Dtype.chajian.name())) {
                t.l(context).q1(downloadTask.getPlugin_num(), downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
                return;
            }
            return;
        }
        if (event.name().equals(Event.gameRemove.name())) {
            t.l(context).c1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid());
            return;
        }
        if (!event.name().equals(Event.gameRequest.name())) {
            if (!event.name().equals(Event.startDownloadPlug.name())) {
                if (event.name().equals(Event.downloadStop.name())) {
                    t.l(context).g0(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid());
                    return;
                }
                return;
            }
            t.l(context).d2(downloadTask.getRomType(), downloadTask.getVer() + "_" + downloadTask.getVer_name(), AccountUtil_.getInstance_(context).getUid());
            return;
        }
        if (t2.h(downloadTask.getStarNumber())) {
            if (downloadTask.get_from() == 1) {
                t.l(context).f1(downloadTask.getCrc_link_type_val(), downloadTask.get_from(), downloadTask.getKeyword(), AccountUtil_.getInstance_(context).getUid(), downloadTask.get_from_type() + "", i10, string2, str, ext3);
            } else {
                t.l(context).f1(downloadTask.getCrc_link_type_val(), downloadTask.get_from(), downloadTask.getKeyword(), AccountUtil_.getInstance_(context).getUid(), downloadTask.get_from_type() + "", i10, string2, str, ext3);
            }
            downloadTask.setStarNumber("downloadRequest");
            q5.f.M().update(downloadTask);
        }
    }
}
