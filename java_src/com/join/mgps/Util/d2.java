package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.WebDiskCfg;
import com.join.mgps.dto.WebDiskCfgDownLoadStateBean;
import com.join.mgps.dto.WebDiskCfgSetupModelEnumBean;
import com.join.mgps.dto.WebDiskPositionBean;
import com.papa.sim.statistic.Event;
import com.xinzhu.overmind.Overmind;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WebDiskPositionBean f49543a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f49544b = "com.quark.browser";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f49545c = "3875871586";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f49546d = "2057111073";

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f49547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f49548c;

        a(final Intent val$launchIntentForPackage, final int val$userId) {
            this.f49547b = val$launchIntentForPackage;
            this.f49548c = val$userId;
        }

        @Override // java.lang.Runnable
        public void run() {
            Overmind.get().startActivity(this.f49547b, this.f49548c);
        }
    }

    private static void a() {
        if (f49543a == null) {
            String strD = MApplication.f3182z.p().web_disk_position().d();
            if (t2.i(strD)) {
                f49543a = (WebDiskPositionBean) JsonMapper.getInstance().fromJson(strD, WebDiskPositionBean.class);
            }
        }
    }

    public static WebDiskCfg b() {
        if (t2.i(MApplication.f3182z.p().web_disk_cfg().d())) {
            return (WebDiskCfg) JsonMapper.getInstance().fromJson(MApplication.f3182z.p().web_disk_cfg().d(), WebDiskCfg.class);
        }
        return null;
    }

    public static boolean c() {
        return MApplication.f3182z.p().ab_side().d().intValue() == 1;
    }

    public static boolean d(Context context, DownloadTask task) {
        if (task == null) {
            return false;
        }
        try {
            if (g(task.getPackageName())) {
                return MApplication.f3182z.p().isQuarkSilentDownload().d().booleanValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static boolean e(int type) {
        return 134 == type;
    }

    public static boolean f(List<TipBean> tags) {
        if (tags == null || tags.size() <= 0) {
            return false;
        }
        Iterator<TipBean> it2 = tags.iterator();
        while (it2.hasNext()) {
            if ("134".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(String pkgName) {
        return !TextUtils.isEmpty(pkgName) && pkgName.equals(f49544b);
    }

    public static boolean h() {
        return !c() || MApplication.f3182z.p().isBsideInt().d().intValue() == 2;
    }

    private static boolean i() {
        try {
            return MApplication.f3182z.p().isQuarkEnable().d().booleanValue() && h();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean j(ArrayList<TipBean> tags) {
        if (tags == null || tags.size() <= 0) {
            return false;
        }
        for (TipBean tipBean : tags) {
            if ("134".equals(tipBean.getId()) || "23".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean k() {
        if (MApplication.f3182z.p().quark_display_mode().d().intValue() == 0) {
            return false;
        }
        if (MApplication.f3182z.p().quark_display_mode().d().intValue() == 1) {
            return true;
        }
        DownloadTask downloadTaskG = q5.f.M().G(f49545c);
        if (downloadTaskG != null) {
            if (System.currentTimeMillis() - downloadTaskG.getOpenTime() > MApplication.f3182z.p().quark_display_mode().d().intValue() * 3600 * 1000) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(String packageName, int userId) {
        if (Overmind.getMindPackageManager().k(packageName).E() && !com.xinzhu.overmind.plugin.b.i()) {
            return false;
        }
        Overmind.get();
        Intent intentJ = Overmind.getMindPackageManager().j(packageName, userId);
        intentJ.setPackage(f49544b);
        intentJ.setFlags(C.ENCODING_PCM_MU_LAW);
        MApplication.f3182z.p().has_launch_quark().g(Boolean.TRUE);
        new Thread(new a(intentJ, userId)).start();
        return true;
    }

    public static boolean m(String gameId) {
        return f49545c.equals(gameId) && com.join.mgps.va.overmind.i.q().S() && !MApplication.f3182z.p().has_launch_quark().d().booleanValue();
    }

    public static boolean n() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return webDiskPositionBean != null && webDiskPositionBean.getPc_game().getDownload_mode() == WebDiskCfgDownLoadStateBean.PRIVATE_DOMAIN;
    }

    public static boolean o() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return (webDiskPositionBean != null && webDiskPositionBean.getSimulator_game().getDownload_mode() == WebDiskCfgDownLoadStateBean.COMPLEX) && i();
    }

    public static boolean p() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return webDiskPositionBean != null && webDiskPositionBean.getSimulator_game().getSetup_mode() == WebDiskCfgSetupModelEnumBean.VM && com.join.mgps.va.overmind.i.q().S();
    }

    public static boolean q() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return webDiskPositionBean != null && webDiskPositionBean.getPc_game().getSetup_mode() == WebDiskCfgSetupModelEnumBean.VM && com.join.mgps.va.overmind.i.q().S();
    }

    public static boolean r() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return (webDiskPositionBean != null && webDiskPositionBean.getSingle_game().getDownload_mode() == WebDiskCfgDownLoadStateBean.COMPLEX) && i();
    }

    public static boolean s() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return webDiskPositionBean != null && webDiskPositionBean.getSingle_game().getSetup_mode() == WebDiskCfgSetupModelEnumBean.VM && com.join.mgps.va.overmind.i.q().S();
    }

    public static boolean t() {
        a();
        WebDiskPositionBean webDiskPositionBean = f49543a;
        return webDiskPositionBean != null && webDiskPositionBean.getPc_game().getDownload_mode() == WebDiskCfgDownLoadStateBean.WEB_DISK;
    }

    public static void u(Context context, Event event, String gameId, String qkPosition) {
        com.papa.sim.statistic.t.l(context).V1(event, gameId, AccountUtil_.getInstance_(context).getAccountData().getUid(), qkPosition, c() ? MApplication.f3182z.p().isBsideInt().d().intValue() : 0);
    }

    public static boolean v() {
        try {
            long jLongValue = MApplication.f3182z.p().quark_first_launch_time().d().longValue();
            int iIntValue = MApplication.f3182z.p().home_common_quark_ad_times().d().intValue();
            WebDiskCfg webDiskCfgB = b();
            return (webDiskCfgB == null || webDiskCfgB.getCommon_cfg() == null || jLongValue <= 0 || e0.z(jLongValue) || iIntValue >= webDiskCfgB.getCommon_cfg().getAd_count()) ? false : true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static boolean w(String gameId) {
        if (f49546d.equals(gameId)) {
            return false;
        }
        return !(f49545c.equals(gameId) && m(gameId)) && f49545c.equals(gameId) && k();
    }

    public static boolean x() {
        return h();
    }
}
