package com.baidu.mobads.sdk.internal.b;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.proxy.R;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class a implements IOAdEventListener {

    /* JADX INFO: renamed from: com.baidu.mobads.sdk.internal.b.a$a, reason: collision with other inner class name */
    public static class C0208a {
        public static final String A = "ic_white_cross";
        public static final String B = "ic_gray_complaints";
        public static final String C = "ic_gray_low_quality";
        public static final String D = "ic_gray_repeat";
        public static final String E = "ic_gray_unlike";
        public static final String F = "ic_white_ad_logo_gray_bg";
        public static final String G = "ic_white_bqt_logo_gray_bg";
        public static final String H = "ic_white_shake_gesture";
        public static final String I = "ic_arrow_up";
        public static final String J = "ic_blue_no_ad";
        public static final String K = "ic_fallback_gray";
        public static final String L = "ic_gift_box";
        public static final String M = "ic_gift_ribbon";
        public static final String N = "ic_gold_star";
        public static final String O = "ic_gray_left_quot";
        public static final String P = "ic_gray_right_quot";
        public static final String Q = "ic_gray_star";
        public static final String R = "ic_half_gold_star";
        public static final String S = "ic_orange_cross";
        public static final String T = "ic_twist_phone";
        public static final String U = "ic_white_answer_error";
        public static final String V = "ic_white_answer_right";
        public static final String W = "ic_white_ad_logo";
        public static final String X = "ic_white_cross_in_circle";
        public static final String Y = "ic_black_arrow_left";
        public static final String Z = "ic_black_three_points";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f7508a = "rsp_big_red_heart";
        public static final String aA = "ic_white_three_points";
        public static final String aB = "ic_white_voice";
        public static final String aC = "ic_white_voice_mute";
        public static final String aD = "ic_white_pause_gray_round";
        public static final String aE = "ic_yellow_dl_black_bg";
        public static final String aF = "ic_yellow_lp_black_bg";
        public static final String aG = "ic_live";
        public static final String aH = "ic_rmb";
        public static final String aI = "ic_highest";
        public static final String aJ = "bg_magnetic_sticker_center";
        public static final String aK = "bg_magnetic_sticker_right";
        public static final String aL = "ic_bookmark_line";
        public static final String aM = "ic_fb_img_splash";
        public static final String aN = "ic_entry_guidance_default_icon";
        public static final String aO = "ic_entry_guidance_arrow";
        public static final String aP = "splash_noti_bg";
        public static final String aQ = "tpl_discount_bg";

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        public static final String f7509aa = "ic_gray_ad";

        /* JADX INFO: renamed from: ab, reason: collision with root package name */
        public static final String f7510ab = "ic_gray_ad_logo";

        /* JADX INFO: renamed from: ac, reason: collision with root package name */
        public static final String f7511ac = "ic_gray_bqt_logo";

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        public static final String f7512ad = "ic_gray_cross_black_round";
        public static final String ae = "ic_gray_cross_white_oval";
        public static final String af = "ic_gray_logo";
        public static final String ag = "ic_slide_arrow_duplicate";
        public static final String ah = "ic_slide_arrow_point";
        public static final String ai = "ic_white_ad_gray_bg";
        public static final String aj = "ic_white_arrow_left";
        public static final String ak = "ic_white_arrow_right";
        public static final String al = "ic_white_bqt_gray_bg";
        public static final String am = "ic_white_bqt_logo";
        public static final String an = "ic_white_comments";
        public static final String ao = "ic_white_cross_circle_shadow";
        public static final String ap = "ic_white_finger_shadow";
        public static final String aq = "ic_white_logo";
        public static final String ar = "ic_white_logo_gray_bg";
        public static final String as = "ic_white_replay";
        public static final String at = "ic_white_replay_gray_round";
        public static final String au = "ic_white_speed075";
        public static final String av = "ic_white_speed100";
        public static final String aw = "ic_white_speed125";
        public static final String ax = "ic_white_speed150";
        public static final String ay = "ic_white_speed175";
        public static final String az = "ic_white_speed200";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f7513b = "rsp_small_red_heart";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f7514c = "bg_blur_white";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f7515d = "bg_app_icon";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f7516e = "bg_hot_recommendation";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f7517f = "bg_black_round_rectangle";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final String f7518g = "bg_red_rectangle";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f7519h = "bg_red_circle";

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f7520i = "bg_red_ribbon_rectangle";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f7521j = "bg_red_ribbon_circle";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f7522k = "ic_video_play";

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final String f7523l = "ic_stars";

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final String f7524m = "ic_fallback";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final String f7525n = "ic_guide_circle";

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final String f7526o = "ic_guide_finger";

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final String f7527p = "ic_white_play";

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final String f7528q = "ic_white_pause";

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final String f7529r = "ic_white_apo";

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final String f7530s = "ic_white_dl";

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final String f7531t = "ic_white_link";

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final String f7532u = "ic_white_fullscreen_shrink";

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final String f7533v = "ic_white_fullscreen_stretch";

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final String f7534w = "ic_black_cross";

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final String f7535x = "ic_white_cross_dark_round";

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final String f7536y = "ic_gray_cross";

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final String f7537z = "ic_light_gray_cross";
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f7538a = "layout_bd_oauth_sdk_webview_with_title";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f7539b = "layout_bd_oauth_sdk_network_unavailable";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f7540c = "layout_bd_oauth_sdk_loading_timeout";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f7541d = "oauth_title_back";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f7542e = "oauth_webview_container";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f7543f = "oauth_title";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final String f7544g = "btn_network_settings";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f7545h = "btn_retry";
    }

    public static Integer a(String str) {
        if (b.f7538a.equals(str)) {
            return Integer.valueOf(R.layout.layout_bd_oauth_sdk_webview_with_title);
        }
        if (b.f7539b.equals(str)) {
            return Integer.valueOf(R.layout.layout_bd_oauth_sdk_network_unavailable);
        }
        if (b.f7540c.equals(str)) {
            return Integer.valueOf(R.layout.layout_bd_oauth_sdk_loading_timeout);
        }
        if (b.f7543f.equals(str)) {
            return Integer.valueOf(R.id.oauth_title);
        }
        if (b.f7541d.equals(str)) {
            return Integer.valueOf(R.id.oauth_title_back);
        }
        if (b.f7542e.equals(str)) {
            return Integer.valueOf(R.id.oauth_webview_container);
        }
        if (b.f7544g.equals(str)) {
            return Integer.valueOf(R.id.btn_network_settings);
        }
        if (b.f7545h.equals(str)) {
            return Integer.valueOf(R.id.btn_retry);
        }
        return null;
    }

    private Integer b(String str) {
        if (C0208a.f7514c.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_blur_white);
        }
        if (C0208a.f7515d.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_app_icon);
        }
        if (C0208a.f7516e.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_hot_recommendation);
        }
        if (C0208a.f7517f.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_black_round_rectangle);
        }
        if (C0208a.f7518g.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_red_rect);
        }
        if (C0208a.f7519h.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_red_circle);
        }
        if (C0208a.f7520i.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_red_ribbon_rect);
        }
        if (C0208a.f7521j.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_red_ribbon_circle);
        }
        if (C0208a.f7522k.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_video_play);
        }
        if (C0208a.f7523l.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_stars);
        }
        if (C0208a.f7524m.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_fallback);
        }
        if (C0208a.f7525n.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_guide_circle);
        }
        if (C0208a.f7526o.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_guide_finger);
        }
        if (C0208a.f7527p.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_play);
        }
        if (C0208a.f7528q.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_pause);
        }
        if (C0208a.f7529r.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_apo);
        }
        if (C0208a.f7530s.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_dl);
        }
        if (C0208a.f7531t.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_link);
        }
        if (C0208a.f7532u.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_fullscreen_shrink);
        }
        if (C0208a.f7533v.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_fullscreen_stretch);
        }
        if (C0208a.f7534w.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_black_cross);
        }
        if (C0208a.f7535x.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_cross_dark_round);
        }
        if (C0208a.f7508a.equals(str)) {
            return Integer.valueOf(R.drawable.bd_rsp_big_red_heart);
        }
        if (C0208a.f7513b.equals(str)) {
            return Integer.valueOf(R.drawable.bd_rsp_small_red_heart);
        }
        if (C0208a.f7536y.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_cross);
        }
        if (C0208a.f7537z.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_light_gray_cross);
        }
        if (C0208a.A.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_cross);
        }
        if (C0208a.B.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_complaints);
        }
        if (C0208a.C.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_low_quality);
        }
        if (C0208a.D.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_repeat);
        }
        if (C0208a.E.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_unlike);
        }
        if (C0208a.F.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_ad_logo_gray_bg);
        }
        if (C0208a.G.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_bqt_logo_gray_bg);
        }
        if (C0208a.H.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_shake_gesture);
        }
        if (C0208a.I.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_arrow_up);
        }
        if (C0208a.J.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_blue_no_ad);
        }
        if (C0208a.K.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_fallback_gray);
        }
        if (C0208a.L.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gift_box);
        }
        if (C0208a.M.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gift_ribbon);
        }
        if (C0208a.N.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gold_star);
        }
        if (C0208a.O.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_left_quot);
        }
        if (C0208a.P.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_right_quot);
        }
        if (C0208a.Q.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_star);
        }
        if (C0208a.R.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_half_gold_star);
        }
        if (C0208a.S.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_orange_cross);
        }
        if (C0208a.T.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_twist_phone);
        }
        if (C0208a.W.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_ad_logo);
        }
        if (C0208a.U.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_answer_error);
        }
        if (C0208a.V.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_answer_right);
        }
        if (C0208a.X.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_cross_in_circle);
        }
        if (C0208a.Y.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_black_arrow_left);
        }
        if (C0208a.Z.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_black_three_points);
        }
        if (C0208a.f7509aa.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_ad);
        }
        if (C0208a.f7510ab.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_ad_logo);
        }
        if (C0208a.f7511ac.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_bqt_logo);
        }
        if (C0208a.f7512ad.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_cross_black_round);
        }
        if (C0208a.ae.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_cross_white_oval);
        }
        if (C0208a.af.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_gray_logo);
        }
        if (C0208a.ag.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_slide_arrow_duplicate);
        }
        if (C0208a.ah.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_slide_arrow_point);
        }
        if (C0208a.ai.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_ad_gray_bg);
        }
        if (C0208a.aj.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_arrow_left);
        }
        if (C0208a.ak.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_arrow_right);
        }
        if (C0208a.al.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_bqt_gray_bg);
        }
        if (C0208a.am.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_bqt_logo);
        }
        if (C0208a.an.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_comments);
        }
        if (C0208a.ao.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_cross_circle_shadow);
        }
        if (C0208a.ap.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_finger_shadow);
        }
        if (C0208a.aq.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_logo);
        }
        if (C0208a.ar.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_logo_gray_bg);
        }
        if (C0208a.aD.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_pause_gray_round);
        }
        if (C0208a.as.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_replay);
        }
        if (C0208a.at.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_replay_gray_round);
        }
        if (C0208a.au.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed075);
        }
        if (C0208a.av.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed100);
        }
        if (C0208a.aw.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed125);
        }
        if (C0208a.ax.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed150);
        }
        if (C0208a.ay.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed175);
        }
        if (C0208a.az.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_speed200);
        }
        if (C0208a.aA.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_three_points);
        }
        if (C0208a.aB.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_voice);
        }
        if (C0208a.aC.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_white_voice_mute);
        }
        if (C0208a.aE.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_yellow_dl_black_bg);
        }
        if (C0208a.aF.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_yellow_lp_black_bg);
        }
        if (C0208a.aG.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_live);
        }
        if (C0208a.aI.equals(str)) {
            return Integer.valueOf(R.drawable.highest);
        }
        if (C0208a.aH.equals(str)) {
            return Integer.valueOf(R.drawable.rmb);
        }
        if (C0208a.aJ.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_magnetic_sticker_middle);
        }
        if (C0208a.aK.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_magnetic_sticker_right);
        }
        if (C0208a.aL.equals(str)) {
            return Integer.valueOf(R.drawable.bd_mob_ad_bookmark_line);
        }
        if (C0208a.aM.equals(str)) {
            return Integer.valueOf(R.drawable.fb_img);
        }
        if (C0208a.aN.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_splash_guide_default_icon);
        }
        if (C0208a.aO.equals(str)) {
            return Integer.valueOf(R.drawable.bd_ic_splash_guide_arrow);
        }
        if (C0208a.aP.equals(str)) {
            return Integer.valueOf(R.drawable.bd_bg_splash_noti_bg);
        }
        if (C0208a.aQ.equals(str)) {
            return Integer.valueOf(R.drawable.bd_mob_tpl_discount_bg);
        }
        return null;
    }

    private Integer c(String str) {
        return null;
    }

    private Integer d(String str) {
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEventListener
    public void run(IOAdEvent iOAdEvent) {
        Integer numD;
        if (iOAdEvent != null) {
            String type = iOAdEvent.getType();
            Map<String, Object> data = iOAdEvent.getData();
            String str = (String) data.get("name");
            if ("drawable".equals(type)) {
                numD = b(str);
            } else if ("layout".equals(type)) {
                numD = a(str);
            } else if (TypedValues.Custom.S_STRING.equals(type)) {
                numD = c(str);
            } else {
                numD = "style".equals(type) ? d(str) : null;
            }
            data.put("id", numD);
        }
    }
}
