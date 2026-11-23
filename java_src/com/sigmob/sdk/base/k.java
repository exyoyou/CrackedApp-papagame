package com.sigmob.sdk.base;

import com.czhj.sdk.common.ClientMetadata;

/* JADX INFO: loaded from: classes5.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79465a = "sig_ad";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79466b = "sig_close";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f79467c = "sig_back";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f79468d = "sig_skip_args_1";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f79469e = "sig_skip_args_2";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f79470f = "sig_skip_ad_args";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f79471g = "sig_close_args";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f79472h = "sig_close_ad_title";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f79473i = "sig_close_ad_message";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f79474j = "sig_close_ad_cancel";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f79475k = "sig_close_ad_ok";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f79476l = "sig_custom_dialog";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f79477m = "sig_dialog_window_anim";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f79478n = "sig_transparent_style";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f79479o = "sig_base_theme";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f79480p = "sig_land_theme";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f79481q = "sig_transparent_lang";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f79482r = "sig_custom_fullscreen_dialog";

    public static int a() {
        return ClientMetadata.getInstance().getStyleResources(f79481q);
    }

    public static int b() {
        return ClientMetadata.getInstance().getStyleResources(f79479o);
    }

    public static int c() {
        return ClientMetadata.getInstance().getStyleResources(f79480p);
    }

    public static int d() {
        return ClientMetadata.getInstance().getStyleResources(f79478n);
    }

    public static int e() {
        return ClientMetadata.getInstance().getStyleResources(f79476l);
    }

    public static int f() {
        ClientMetadata clientMetadata = ClientMetadata.getInstance();
        return clientMetadata.getStyleResources(clientMetadata.getDisplayMetrics().widthPixels > clientMetadata.getDisplayMetrics().heightPixels ? f79482r : f79476l);
    }

    public static int g() {
        return ClientMetadata.getInstance().getStyleResources(f79477m);
    }

    public static String h() {
        return ClientMetadata.getInstance().getStringResources(f79465a, "广告");
    }

    public static String i() {
        return ClientMetadata.getInstance().getStringResources(f79466b, "跳过");
    }

    public static String j() {
        return ClientMetadata.getInstance().getStringResources(f79467c, "返回");
    }

    public static String k() {
        return ClientMetadata.getInstance().getStringResources(f79473i, "仅需再浏览 _SEC_ 秒广告，即可领取奖励");
    }

    public static String l() {
        return ClientMetadata.getInstance().getStringResources(f79472h, "要放弃领取奖励吗?");
    }

    public static String m() {
        return ClientMetadata.getInstance().getStringResources(f79474j, "继续观看");
    }

    public static String n() {
        return ClientMetadata.getInstance().getStringResources(f79475k, "关闭广告");
    }

    public static String a(Object... formatArgs) {
        return ClientMetadata.getInstance().getStringResources(f79468d, "跳过 %d", formatArgs);
    }

    public static String b(Object... formatArgs) {
        return ClientMetadata.getInstance().getStringResources(f79469e, "%d 跳过", formatArgs);
    }

    public static String c(Object... formatArgs) {
        return ClientMetadata.getInstance().getStringResources(f79470f, "跳过广告 %d", formatArgs);
    }

    public static String d(Object... formatArgs) {
        return ClientMetadata.getInstance().getStringResources(f79471g, "%s 跳过", formatArgs);
    }
}
