package com.join.mgps.pref;

import android.content.Context;
import android.content.SharedPreferences;
import com.efs.sdk.base.core.util.PackageUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.HomeViewSwich;
import com.papa.sim.statistic.JsonMapper;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static h f71936c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SharedPreferences f71937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f71938b;

    private h(Context context) {
        this.f71938b = context;
        this.f71937a = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
    }

    public static h n(Context context) {
        if (f71936c == null) {
            f71936c = new h(context);
        }
        return f71936c;
    }

    public boolean A() {
        return this.f71937a.getBoolean("refreshForumIndexWhenResume", false);
    }

    public String B() {
        return this.f71937a.getString("RequestHeaders", "");
    }

    public boolean C() {
        return this.f71937a.getBoolean("ShowDialogNewGBAPlug", false);
    }

    public boolean D() {
        return this.f71937a.getBoolean("showForumLabelTip", true);
    }

    public boolean E() {
        return this.f71937a.getBoolean("showPostHelpCoastTip", true);
    }

    public String F() {
        return this.f71937a.getString("StartGameGuessLikeNoDataList", "");
    }

    public String G() {
        return this.f71937a.getString("statisticVisit", "0");
    }

    public String H() {
        return this.f71937a.getString("papauuidkey", "");
    }

    public long I() {
        return this.f71937a.getLong("firstInstall36Time", 0L);
    }

    public LoginCfgsBean J() {
        LoginCfgsBean loginCfgsBean = new LoginCfgsBean();
        try {
            String string = this.f71937a.getString("loginCfgs", "");
            return t2.i(string) ? (LoginCfgsBean) JsonMapper.getInstance().fromJson(string, LoginCfgsBean.class) : loginCfgsBean;
        } catch (Exception e10) {
            e10.printStackTrace();
            return loginCfgsBean;
        }
    }

    public String K() {
        return this.f71937a.getString("shareGameTimeAndTimes", "");
    }

    public boolean L() {
        return this.f71937a.getBoolean("actived", false);
    }

    public void M(LoginCfgsBean plugs) {
        if (plugs != null) {
            String json = JsonMapper.getInstance().toJson(plugs);
            SharedPreferences.Editor editorEdit = this.f71937a.edit();
            editorEdit.putString("loginCfgs", json);
            editorEdit.commit();
        }
    }

    public void N(HomeViewSwich plugs) {
        if (plugs != null) {
            String json = JsonMapper.getInstance().toJson(plugs);
            SharedPreferences.Editor editorEdit = this.f71937a.edit();
            editorEdit.putString("wufunPlugsdata", json);
            editorEdit.commit();
        }
    }

    public void O(boolean f10) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("actived", f10);
        editorEdit.commit();
    }

    public void P(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("autoPlayVideoOnWifi", show);
        editorEdit.commit();
    }

    public void Q(String baiduAdData) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("baiduAdData", baiduAdData);
        editorEdit.commit();
    }

    public void R(String listStr) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("DNSHttpUrl", listStr);
        editorEdit.commit();
    }

    public void S(String time) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("dailyReward", time);
        editorEdit.commit();
    }

    public void T(int DefautVideoPlayType) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putInt("DefautVideoPlayType", DefautVideoPlayType);
        editorEdit.commit();
    }

    public void U(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("DownZipNoticeIsShow", show);
        editorEdit.commit();
    }

    public void V(String downloadpath) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("downloadPath", downloadpath);
        editorEdit.commit();
        z.f50166e = downloadpath;
    }

    public void W(String downloadpath) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("downloadPathAPKROM", downloadpath);
        editorEdit.commit();
    }

    public void X(String listStr) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("EmuApkTableList", listStr);
        editorEdit.commit();
    }

    public void Y(String everdayLogin) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("everdayLogin", everdayLogin);
        editorEdit.commit();
    }

    public void Z(boolean isFirst) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("firstSetUserIcon", isFirst);
        editorEdit.commit();
    }

    public boolean a() {
        return this.f71937a.getBoolean("autoPlayVideoOnWifi", true);
    }

    public void a0(boolean isFirst) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("firstSetUserIcon", isFirst);
        editorEdit.commit();
    }

    public String b() {
        return this.f71937a.getString("baiduAdData", "");
    }

    public void b0(String time) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("statisticGameList", time);
        editorEdit.commit();
    }

    public String c() {
        return this.f71937a.getString("DNSHttpUrl", "");
    }

    public void c0(com.papa.sim.statistic.pref.a liveStat) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        if (liveStat == null) {
            editorEdit.putString("liveStat", "");
        } else {
            editorEdit.putString("liveStat", JsonMapper.getInstance().toJson(liveStat));
        }
        editorEdit.commit();
    }

    public String d() {
        return this.f71937a.getString("dailyReward", "0");
    }

    public void d0(int NewGBAPlugType) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putInt("NewGBAPlugType", NewGBAPlugType);
        editorEdit.commit();
    }

    public int e() {
        return this.f71937a.getInt("DefautVideoPlayType", 0);
    }

    public void e0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("isGet", show);
        editorEdit.commit();
    }

    public boolean f() {
        return this.f71937a.getBoolean("DownZipNoticeIsShow", true);
    }

    public void f0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("isGetLike", show);
        editorEdit.commit();
    }

    public String g() {
        return this.f71937a.getString("downloadPath", "");
    }

    public void g0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("isGetReplay", show);
        editorEdit.commit();
    }

    public String h() {
        return this.f71937a.getString("downloadPathAPKROM", "");
    }

    public void h0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("NoticeIsRemind", show);
        editorEdit.commit();
    }

    public String i() {
        return this.f71937a.getString("EmuApkTableList", "");
    }

    public void i0(int OldDatabaseVersion) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putInt("OldDatabaseVersion", OldDatabaseVersion);
        editorEdit.commit();
    }

    public String j() {
        return this.f71937a.getString("everdayLogin", "");
    }

    public void j0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("PlugUpdateNoticeShow", show);
        editorEdit.commit();
    }

    public boolean k() {
        return this.f71937a.getBoolean("firstSetUserIcon", true);
    }

    public void k0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("PushAdSwitch", show);
        editorEdit.commit();
    }

    public boolean l() {
        return this.f71937a.getBoolean("firstSetUserIcon", true);
    }

    public void l0(String baiduAdData) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("QdAdIdConfig" + PackageUtil.getAppVersionName(this.f71938b), baiduAdData);
        editorEdit.commit();
    }

    public String m() {
        return this.f71937a.getString("statisticGameList", "0");
    }

    public void m0(String baiduAdData) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("QdAdIdData" + PackageUtil.getAppVersionName(this.f71938b), baiduAdData);
        editorEdit.commit();
    }

    public void n0(int DefautVideoPlayType) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putInt("RecomendVideoPlayType", DefautVideoPlayType);
        editorEdit.commit();
    }

    public com.papa.sim.statistic.pref.a o() {
        String string = this.f71937a.getString("liveStat", "");
        if (string == null) {
            return null;
        }
        try {
            if (string.equals("")) {
                return null;
            }
            return (com.papa.sim.statistic.pref.a) JsonMapper.getInstance().fromJson(string, com.papa.sim.statistic.pref.a.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public void o0(boolean refresh) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("refreshForumIndexWhenResume", refresh);
        editorEdit.commit();
    }

    public int p() {
        return this.f71937a.getInt("NewGBAPlugType", 0);
    }

    public void p0(String listStr) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("RequestHeaders", listStr);
        editorEdit.commit();
    }

    public boolean q() {
        return this.f71937a.getBoolean("isGet", true);
    }

    public void q0(boolean ShowDialog) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("ShowDialogNewGBAPlug", ShowDialog);
        editorEdit.commit();
    }

    public boolean r() {
        return this.f71937a.getBoolean("isGetLike", true);
    }

    public void r0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("showForumLabelTip", show);
        editorEdit.commit();
    }

    public boolean s() {
        return this.f71937a.getBoolean("isGetReplay", true);
    }

    public void s0(boolean showInstall) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("showInstallAppTotice", showInstall);
        editorEdit.commit();
    }

    public boolean t() {
        return this.f71937a.getBoolean("NoticeIsRemind", true);
    }

    public void t0(boolean show) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putBoolean("showPostHelpCoastTip", show);
        editorEdit.commit();
    }

    public int u() {
        return this.f71937a.getInt("OldDatabaseVersion", 13);
    }

    public void u0(String listStr) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("StartGameGuessLikeNoDataList", listStr);
        editorEdit.commit();
    }

    public boolean v() {
        return this.f71937a.getBoolean("PlugUpdateNoticeShow", true);
    }

    public void v0(String time) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("statisticVisit", time);
        editorEdit.commit();
    }

    public HomeViewSwich w() {
        HomeViewSwich homeViewSwich = new HomeViewSwich();
        homeViewSwich.setDown_load_cfg_net_game_speed_limit(new DownloadCfg("0", "0"));
        homeViewSwich.setDown_load_cfg_simulator_speed_limit(new DownloadCfg("1", "0"));
        homeViewSwich.setDown_load_cfg_stand_alone_speed_limit(new DownloadCfg("1", "0"));
        homeViewSwich.setDown_load_size(new DownloadCfg("0", "500"));
        homeViewSwich.setDown_load_speed_limit(new DownloadCfg("0", "300"));
        homeViewSwich.setDown_load_unrestricted_speed(new DownloadCfg("0", "1"));
        try {
            String string = this.f71937a.getString("wufunPlugsdata", "");
            return t2.i(string) ? (HomeViewSwich) JsonMapper.getInstance().fromJson(string, HomeViewSwich.class) : homeViewSwich;
        } catch (Exception e10) {
            e10.printStackTrace();
            return homeViewSwich;
        }
    }

    public void w0(String uuid) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("papauuidkey", uuid);
        editorEdit.commit();
    }

    public boolean x() {
        return this.f71937a.getBoolean("PushAdSwitch", true);
    }

    public void x0(long time) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putLong("firstInstall36Time", time);
        editorEdit.commit();
    }

    public String y() {
        return this.f71937a.getString("QdAdIdData" + PackageUtil.getAppVersionName(this.f71938b), "");
    }

    public void y0(String listStr) {
        SharedPreferences.Editor editorEdit = this.f71937a.edit();
        editorEdit.putString("shareGameTimeAndTimes", listStr);
        editorEdit.commit();
    }

    public int z() {
        return this.f71937a.getInt("RecomendVideoPlayType", 1);
    }

    public boolean z0() {
        return this.f71937a.getBoolean("showInstallAppTotice", false);
    }
}
