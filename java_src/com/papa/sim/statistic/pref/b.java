package com.papa.sim.statistic.pref;

import android.content.Context;
import android.content.SharedPreferences;
import com.papa.sim.statistic.JsonMapper;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static b f77313d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SharedPreferences f77314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f77315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f77316c;

    private b(Context context) {
        this.f77315b = context;
        this.f77314a = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
    }

    public static b k(Context context) {
        if (f77313d == null) {
            f77313d = new b(context);
        }
        return f77313d;
    }

    public void A(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("firstSetUserCenter", z10);
        editorEdit.commit();
    }

    public void B(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("firstSetUserIcon", z10);
        editorEdit.commit();
    }

    public void C(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("statisticGameList", str);
        editorEdit.commit();
    }

    public void D(int i10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putInt("_home_ab_page_type", i10);
        editorEdit.commit();
    }

    public void E(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("wufun_idfinal", str);
        editorEdit.commit();
    }

    public void F(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("getIsShowDiviceDialog", z10);
        editorEdit.commit();
    }

    public void G(a aVar) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        if (aVar == null) {
            editorEdit.putString("liveStat", "");
        } else {
            editorEdit.putString("liveStat", JsonMapper.getInstance().toJson(aVar));
        }
        editorEdit.commit();
    }

    public void H(int i10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putInt("NewGBAPlugType", i10);
        editorEdit.commit();
    }

    public void I(int i10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putInt("OldDatabaseVersion", i10);
        editorEdit.commit();
    }

    public void J(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("ShowDialogNewGBAPlug", z10);
        editorEdit.commit();
    }

    public void K(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("statisticVisit", str);
        editorEdit.commit();
    }

    public void L(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("firstShowUserPermiss", z10);
        editorEdit.commit();
    }

    public String a() {
        return this.f77314a.getString("dailyReward", "0");
    }

    public int b() {
        return this.f77314a.getInt("_detail_ab_page_type", 0);
    }

    public String c() {
        return this.f77314a.getString("EmuApkTableList", "");
    }

    public String d() {
        return this.f77314a.getString("first_screen_ad_interaction", "");
    }

    public boolean e() {
        return this.f77314a.getBoolean("firstSetUserBg", true);
    }

    public boolean f() {
        return this.f77314a.getBoolean("firstSetUserCenter", true);
    }

    public boolean g() {
        return this.f77314a.getBoolean("firstSetUserIcon", true);
    }

    public String h() {
        return this.f77314a.getString("statisticGameList", "0");
    }

    public int i() {
        return this.f77314a.getInt("_home_ab_page_type", 0);
    }

    public String j() {
        return this.f77314a.getString("wufun_idfinal", "");
    }

    public boolean l() {
        return this.f77314a.getBoolean("getIsShowDiviceDialog", false);
    }

    public a m() {
        String string = this.f77314a.getString("liveStat", "");
        if (string == null) {
            return null;
        }
        try {
            if (string.equals("")) {
                return null;
            }
            return (a) JsonMapper.getInstance().fromJson(string, a.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public int n() {
        return this.f77314a.getInt("NewGBAPlugType", 0);
    }

    public int o() {
        return this.f77314a.getInt("OldDatabaseVersion", 13);
    }

    public boolean p() {
        return this.f77314a.getBoolean("ShowDialogNewGBAPlug", false);
    }

    public String q() {
        return this.f77314a.getString("statisticVisit", "0");
    }

    public String r() {
        return this.f77314a.getString("papauuidkey", "");
    }

    public boolean s() {
        return this.f77314a.getBoolean("firstShowUserPermiss", true);
    }

    public boolean t() {
        return this.f77314a.getBoolean("actived", false);
    }

    public void u(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("actived", z10);
        editorEdit.commit();
    }

    public void v(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("dailyReward", str);
        editorEdit.commit();
    }

    public void w(int i10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putInt("_detail_ab_page_type", i10);
        editorEdit.commit();
    }

    public void x(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("EmuApkTableList", str);
        editorEdit.commit();
    }

    public void y(String str) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putString("first_screen_ad_interaction", str);
        editorEdit.commit();
    }

    public void z(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f77314a.edit();
        editorEdit.putBoolean("firstSetUserBg", z10);
        editorEdit.commit();
    }
}
