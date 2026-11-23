package com.byazt.ysz;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.aas.nb;
import com.byazt.aas.zb;
import com.byazt.eia.i;
import com.byazt.ete.ic;
import com.byazt.ete.nu;
import com.byazt.ete.q;
import com.byazt.ete.sv;
import com.byazt.ete.to;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.rl;
import com.byazt.omf.x;
import com.byazt.ukr.yp;
import com.bytedance.android.metrics.EnterFromMerge;
import com.bytedance.android.metrics.EnterMethod;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.tencent.stat.DeviceInfo;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 589, 34})
public abstract class a extends com.byazt.ysz.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile SoftReference<ic> f22405a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22406n;
    public String uj;

    protected interface c {
        void c(boolean z10);
    }

    private int uj(i iVar) {
        String strM = iVar.m();
        Integer num = (Integer) rl.c(iVar.rl(), Integer.class);
        if ((num != null && num.intValue() > 0) || TextUtils.isEmpty(strM)) {
            return 0;
        }
        try {
            return new JSONObject(strM).optInt("auth_reward_gold");
        } catch (Throwable th) {
            m.ve(com.byazt.we.ve.TAG, th);
            return 0;
        }
    }

    @Override // com.byazt.ysz.c
    public void a_(String str) {
        this.f22406n = str;
    }

    @Override // com.byazt.ysz.uj
    public int c(i iVar, ve veVar, String str, Map<String, Object> map) {
        return -1;
    }

    @Override // com.byazt.ysz.c
    public boolean r_() {
        return false;
    }

    @Override // com.byazt.ysz.uj
    public String sp() {
        return this.f22406n;
    }

    @Override // com.byazt.ysz.uj
    @Deprecated
    public int tt(ic icVar) {
        return 2;
    }

    /* JADX WARN: Code duplicated, block: B:131:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:133:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:136:0x0206  */
    /* JADX WARN: Code duplicated, block: B:139:0x021f  */
    /* JADX WARN: Code duplicated, block: B:154:0x0304  */
    /* JADX WARN: Code duplicated, block: B:157:0x030b  */
    /* JADX WARN: Code duplicated, block: B:162:0x033e A[Catch: Exception -> 0x0361, TRY_LEAVE, TryCatch #9 {Exception -> 0x0361, blocks: (B:160:0x0338, B:162:0x033e), top: B:197:0x0338 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0374 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:168:0x0375  */
    /* JADX WARN: Code duplicated, block: B:170:0x037f  */
    /* JADX WARN: Code duplicated, block: B:172:0x038b  */
    /* JADX WARN: Code duplicated, block: B:174:0x039e  */
    /* JADX WARN: Code duplicated, block: B:187:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x013c A[EXC_TOP_SPLITTER, PHI: r4
      0x013c: PHI (r4v21 org.json.JSONObject) = (r4v19 org.json.JSONObject), (r4v22 org.json.JSONObject) binds: [B:81:0x0132, B:82:0x0134] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x0338 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x007e  */
    /* JADX WARN: Code duplicated, block: B:81:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x015d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0163 A[Catch: Exception -> 0x0171, TryCatch #10 {Exception -> 0x0171, blocks: (B:90:0x0147, B:97:0x0163, B:99:0x016d), top: B:199:0x0147 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x016d A[Catch: Exception -> 0x0171, TRY_LEAVE, TryCatch #10 {Exception -> 0x0171, blocks: (B:90:0x0147, B:97:0x0163, B:99:0x016d), top: B:199:0x0147 }] */
    private Bundle tt(Context context, i iVar, Map<String, Object> map) {
        nu nuVar;
        int i10;
        int i11;
        String strC;
        JSONArray jSONArrayX;
        JSONObject jSONObject;
        int i12;
        int i13;
        int i14;
        String string;
        Object obj;
        long jLongValue;
        Map<String, Object> map2 = map;
        Bundle bundle = new Bundle();
        if (iVar != null) {
            try {
                bundle.putLong("room_id", Long.parseLong(iVar.da()));
            } catch (Exception e10) {
                m.c(e10);
            }
            Bundle bundle2 = new Bundle();
            nu nuVarYp = iVar.yp();
            if (iVar.n() != 9) {
                nuVar = nuVarYp;
            } else if (iVar.D_() != null) {
                nuVarYp = iVar.D_().ve();
                nuVar = nuVarYp;
            } else {
                nuVar = null;
            }
            int iC = com.byazt.wu.ve.c(map);
            q qVarC_ = iVar.C_();
            if (iVar.n() == 9) {
                qVarC_ = iVar.D_() != null ? iVar.D_().uj() : null;
            }
            if (qVarC_ == null || qVarC_.ve() != 0) {
                i10 = iC;
            } else {
                int iTt = qVarC_.tt();
                if (iTt == 1) {
                    i10 = 101;
                } else if (iTt == 3) {
                    i10 = 104;
                } else {
                    i10 = iC;
                }
            }
            int iN = iVar.n();
            int iUj = uj(iVar);
            sv svVarSl = iVar.sl();
            if (iVar.n() == 9) {
                svVarSl = iVar.D_() != null ? iVar.D_().a() : null;
            }
            String strT = iVar.t();
            if (iVar.n() == 9) {
                strT = iVar.D_() != null ? iVar.D_().n() : null;
            }
            if (!com.byazt.bb.a.c(i10)) {
                if (iUj > 0 && n() != 2) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        rl.c(iVar.rl(), new Integer(1), Integer.class);
                        jSONObject2.put("auth_reward_gold", iUj);
                        bundle2.putString("live_auth_extra_info", jSONObject2.toString());
                    } catch (JSONException e11) {
                        m.tt(com.byazt.we.ve.TAG, e11);
                    }
                } else if (tt(iVar) == 0) {
                    if (iVar.n() == 7) {
                        bundle2.putInt("live_popup_dou_auth_dialog", 1);
                    } else if (iVar.n() == 8) {
                        bundle2.putInt("live_popup_dou_deeplink_dialog", 1);
                        bundle2.putString("live_popup_dou_deeplink_url", nuVar != null ? nuVar.tt() : "");
                    }
                }
                i10 = iN;
                i11 = -1;
            } else if (i10 == 101 || i10 == 102 || i10 == 104) {
                try {
                    jSONObject = new JSONObject();
                    if (svVarSl != null) {
                        if (i10 == 101) {
                            i11 = 1;
                        } else {
                            i11 = i10 == 104 ? 3 : 2;
                        }
                        try {
                            jSONObject.put("live_auto_auth_login_source", i11);
                            int i15 = i11;
                            try {
                                jSONObject.put("live_auto_auth_success_has_ticket", com.byazt.wu.ve.c(strT));
                                jSONObject.put("live_auto_auth_promotion_id", svVarSl.tt());
                                i11 = i15;
                                if (iUj <= 0) {
                                    i13 = i11;
                                    i14 = i10;
                                } else if (jSONObject == null) {
                                    try {
                                        jSONObject = new JSONObject();
                                        try {
                                            i13 = i11;
                                            try {
                                                i14 = i10;
                                                try {
                                                    rl.c(iVar.rl(), new Integer(1), Integer.class);
                                                    jSONObject.put("auth_reward_gold", iUj);
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    i11 = i13;
                                                    i10 = i14;
                                                    i12 = 1;
                                                    Object[] objArr = new Object[i12];
                                                    objArr[0] = e;
                                                    m.tt(com.byazt.we.ve.TAG, objArr);
                                                }
                                            } catch (Exception e13) {
                                                e = e13;
                                                i11 = i13;
                                                i12 = 1;
                                                Object[] objArr2 = new Object[i12];
                                                objArr2[0] = e;
                                                m.tt(com.byazt.we.ve.TAG, objArr2);
                                            }
                                        } catch (Exception e14) {
                                            e = e14;
                                        }
                                    } catch (Exception e15) {
                                        e = e15;
                                        i12 = 1;
                                        Object[] objArr3 = new Object[i12];
                                        objArr3[0] = e;
                                        m.tt(com.byazt.we.ve.TAG, objArr3);
                                        if (svVarSl != null) {
                                            if (!TextUtils.isEmpty(svVarSl.sp())) {
                                                bundle2.putString("live_csj_libra_param", svVarSl.sp());
                                            }
                                            jSONArrayX = svVarSl.x();
                                            if (jSONArrayX != null) {
                                                c(jSONArrayX, iVar);
                                                bundle.putString("live_tob_task_center_config", jSONArrayX.toString());
                                                bundle.putString("live_tob_task_key", iVar.rl());
                                            }
                                        }
                                        if (nuVar != null) {
                                            strC = null;
                                        } else {
                                            strC = null;
                                        }
                                        if (TextUtils.isEmpty(strC)) {
                                            strC = c(nb.sl(com.byazt.ppf.ve.c(iVar, map)));
                                        }
                                        bundle2.putString("enter_from_merge", strC);
                                        bundle2.putString("enter_method", tt(nb.sl(com.byazt.ppf.ve.c(iVar, map))));
                                        bundle2.putInt("live_pangle_interaction_type", i10);
                                        bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                        if (i11 != -1) {
                                            try {
                                                if (!TextUtils.isEmpty(strT)) {
                                                    JSONObject jSONObject3 = new JSONObject(strT);
                                                    JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("enter_request");
                                                    JSONObject jSONObject4 = new JSONObject();
                                                    jSONObject4.put("live_auto_auth_login_source", i11);
                                                    jSONObjectOptJSONObject.put("live_commerce_sdk_custom_params", jSONObject4);
                                                    jSONObject3.remove("enter_request");
                                                    jSONObject3.put("enter_request", jSONObjectOptJSONObject);
                                                    strT = jSONObject3.toString();
                                                }
                                            } catch (Exception unused) {
                                            }
                                        }
                                        map2 = map;
                                        bundle.putString("ecom_live_params", c(iVar, strT, map2));
                                        if (!iVar.y_()) {
                                            return bundle;
                                        }
                                        obj = map2.get("reward_countdown");
                                        if (obj instanceof Long) {
                                            jLongValue = ((Long) obj).longValue();
                                            if (jLongValue > 0) {
                                                bundle.putLong("csj.reward_countdown_duration_ms", jLongValue);
                                                bundle.putInt("android.app.activity.request_code", 1);
                                                if (map2.containsKey("reward_live_scene")) {
                                                    bundle.putInt("live_popup_reward_auth", 1);
                                                    m.c("rewardAuthFlag", "liv pop rew auth:  1");
                                                }
                                            }
                                        }
                                        return bundle;
                                    }
                                } else {
                                    i13 = i11;
                                    i14 = i10;
                                    rl.c(iVar.rl(), new Integer(1), Integer.class);
                                    jSONObject.put("auth_reward_gold", iUj);
                                }
                                if (jSONObject != null) {
                                    string = jSONObject.toString();
                                    if (!TextUtils.isEmpty(string)) {
                                        bundle2.putString("live_auth_extra_info", string);
                                    }
                                }
                                i11 = i13;
                                i10 = i14;
                            } catch (Exception e16) {
                                e = e16;
                                i10 = iN;
                                i11 = i15;
                                i12 = 1;
                                Object[] objArr4 = new Object[i12];
                                objArr4[0] = e;
                                m.tt(com.byazt.we.ve.TAG, objArr4);
                                if (svVarSl != null) {
                                    if (!TextUtils.isEmpty(svVarSl.sp())) {
                                        bundle2.putString("live_csj_libra_param", svVarSl.sp());
                                    }
                                    jSONArrayX = svVarSl.x();
                                    if (jSONArrayX != null) {
                                        c(jSONArrayX, iVar);
                                        bundle.putString("live_tob_task_center_config", jSONArrayX.toString());
                                        bundle.putString("live_tob_task_key", iVar.rl());
                                    }
                                }
                                if (nuVar != null) {
                                    strC = null;
                                } else {
                                    strC = null;
                                }
                                if (TextUtils.isEmpty(strC)) {
                                    strC = c(nb.sl(com.byazt.ppf.ve.c(iVar, map)));
                                }
                                bundle2.putString("enter_from_merge", strC);
                                bundle2.putString("enter_method", tt(nb.sl(com.byazt.ppf.ve.c(iVar, map))));
                                bundle2.putInt("live_pangle_interaction_type", i10);
                                bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                if (i11 != -1) {
                                    if (!TextUtils.isEmpty(strT)) {
                                        JSONObject jSONObject5 = new JSONObject(strT);
                                        JSONObject jSONObjectOptJSONObject2 = jSONObject5.optJSONObject("enter_request");
                                        JSONObject jSONObject6 = new JSONObject();
                                        jSONObject6.put("live_auto_auth_login_source", i11);
                                        jSONObjectOptJSONObject2.put("live_commerce_sdk_custom_params", jSONObject6);
                                        jSONObject5.remove("enter_request");
                                        jSONObject5.put("enter_request", jSONObjectOptJSONObject2);
                                        strT = jSONObject5.toString();
                                    }
                                }
                                map2 = map;
                                bundle.putString("ecom_live_params", c(iVar, strT, map2));
                                if (!iVar.y_()) {
                                    return bundle;
                                }
                                obj = map2.get("reward_countdown");
                                if (obj instanceof Long) {
                                    jLongValue = ((Long) obj).longValue();
                                    if (jLongValue > 0) {
                                        bundle.putLong("csj.reward_countdown_duration_ms", jLongValue);
                                        bundle.putInt("android.app.activity.request_code", 1);
                                        if (map2.containsKey("reward_live_scene")) {
                                            bundle.putInt("live_popup_reward_auth", 1);
                                            m.c("rewardAuthFlag", "liv pop rew auth:  1");
                                        }
                                    }
                                }
                                return bundle;
                            }
                        } catch (Exception e17) {
                            e = e17;
                            i10 = iN;
                        }
                    } else {
                        i10 = iN;
                        i11 = -1;
                        if (iUj <= 0) {
                            i13 = i11;
                            i14 = i10;
                        } else if (jSONObject == null) {
                            jSONObject = new JSONObject();
                            i13 = i11;
                            i14 = i10;
                            rl.c(iVar.rl(), new Integer(1), Integer.class);
                            jSONObject.put("auth_reward_gold", iUj);
                        } else {
                            i13 = i11;
                            i14 = i10;
                            rl.c(iVar.rl(), new Integer(1), Integer.class);
                            jSONObject.put("auth_reward_gold", iUj);
                        }
                        if (jSONObject != null) {
                            string = jSONObject.toString();
                            if (!TextUtils.isEmpty(string)) {
                                bundle2.putString("live_auth_extra_info", string);
                            }
                        }
                        i11 = i13;
                        i10 = i14;
                    }
                } catch (Exception e18) {
                    e = e18;
                    i10 = iN;
                    i12 = 1;
                    i11 = -1;
                    Object[] objArr5 = new Object[i12];
                    objArr5[0] = e;
                    m.tt(com.byazt.we.ve.TAG, objArr5);
                }
            } else {
                if (i10 == 103) {
                    try {
                        bundle2.putInt("live_popup_dou_auth_dialog", 1);
                    } catch (Exception e19) {
                        e = e19;
                        i12 = 1;
                        i11 = -1;
                        Object[] objArr6 = new Object[i12];
                        objArr6[0] = e;
                        m.tt(com.byazt.we.ve.TAG, objArr6);
                    }
                } else {
                    i10 = iN;
                }
                jSONObject = null;
                i11 = -1;
                if (iUj <= 0) {
                    i13 = i11;
                    i14 = i10;
                } else if (jSONObject == null) {
                    jSONObject = new JSONObject();
                    i13 = i11;
                    i14 = i10;
                    rl.c(iVar.rl(), new Integer(1), Integer.class);
                    jSONObject.put("auth_reward_gold", iUj);
                } else {
                    i13 = i11;
                    i14 = i10;
                    rl.c(iVar.rl(), new Integer(1), Integer.class);
                    jSONObject.put("auth_reward_gold", iUj);
                }
                if (jSONObject != null) {
                    string = jSONObject.toString();
                    if (!TextUtils.isEmpty(string)) {
                        bundle2.putString("live_auth_extra_info", string);
                    }
                }
                i11 = i13;
                i10 = i14;
            }
            if (svVarSl != null) {
                if (!TextUtils.isEmpty(svVarSl.sp())) {
                    bundle2.putString("live_csj_libra_param", svVarSl.sp());
                }
                jSONArrayX = svVarSl.x();
                if (jSONArrayX != null) {
                    c(jSONArrayX, iVar);
                    bundle.putString("live_tob_task_center_config", jSONArrayX.toString());
                    bundle.putString("live_tob_task_key", iVar.rl());
                }
            }
            if (nuVar != null || TextUtils.isEmpty(nuVar.tt())) {
                strC = null;
            } else {
                try {
                    Uri uri = Uri.parse(nuVar.tt());
                    JSONObject jSONObject7 = new JSONObject(uri.getQueryParameter("ad_data_params"));
                    String strOptString = jSONObject7.optString("log_extra");
                    HashMap map3 = new HashMap();
                    JSONObject jSONObject8 = new JSONObject();
                    if (!TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject9 = new JSONObject(strOptString);
                        jSONObject9.put("ad_event_aid", jSONObject7.optString(DeviceInfo.TAG_ANDROID_ID));
                        jSONObject9.put("ad_event_source", com.byazt.apd.ve.c(uri, "source"));
                        jSONObject9.put("ad_event_gd_label", com.byazt.apd.ve.c(uri, "gd_label"));
                        jSONObject9.put("ad_event_union_user_id", com.byazt.apd.ve.c(uri, "union_user_id"));
                        jSONObject9.put("ad_event_app_siteid", x.m().rl());
                        jSONObject9.put("ad_event_live_type", "1");
                        map3.put("log_extra", jSONObject9.toString());
                        jSONObject8.put("log_extra", jSONObject9.toString());
                    }
                    String strOptString2 = jSONObject7.optString("cid");
                    jSONObject8.put("creativeID", strOptString2);
                    bundle.putString("IESLiveEffectAdTrackExtraServiceKey", jSONObject8.toString());
                    map3.put("is_other_channel", "union_ad");
                    map3.put(HmInputMappingContent.FIELD_VALUE, strOptString2);
                    bundle.putSerializable("live_effect_ad_log_extra_map", map3);
                    String strC2 = com.byazt.apd.ve.c(uri, "pangle_live_room_data");
                    if (!TextUtils.isEmpty(strC2)) {
                        bundle.putString("pangle_live_room_data", strC2);
                    }
                    String strC3 = com.byazt.apd.ve.c(uri, "owner_open_id");
                    if (TextUtils.isEmpty(strC3)) {
                        strC3 = com.byazt.apd.ve.c(uri, HmRtcEnvironment.kUserId);
                    }
                    bundle2.putString("anchor_id", strC3);
                    bundle2.putString("live.intent.extra.REQUEST_ID", com.byazt.apd.ve.c(uri, "request_id"));
                    strC = com.byazt.apd.ve.c(uri, "enter_from_merge");
                } catch (Exception e20) {
                    m.c(e20);
                    strC = null;
                }
            }
            if (TextUtils.isEmpty(strC)) {
                strC = c(nb.sl(com.byazt.ppf.ve.c(iVar, map)));
            }
            bundle2.putString("enter_from_merge", strC);
            bundle2.putString("enter_method", tt(nb.sl(com.byazt.ppf.ve.c(iVar, map))));
            bundle2.putInt("live_pangle_interaction_type", i10);
            bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
            if (i11 != -1) {
                if (!TextUtils.isEmpty(strT)) {
                    JSONObject jSONObject10 = new JSONObject(strT);
                    JSONObject jSONObjectOptJSONObject3 = jSONObject10.optJSONObject("enter_request");
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put("live_auto_auth_login_source", i11);
                    jSONObjectOptJSONObject3.put("live_commerce_sdk_custom_params", jSONObject11);
                    jSONObject10.remove("enter_request");
                    jSONObject10.put("enter_request", jSONObjectOptJSONObject3);
                    strT = jSONObject10.toString();
                }
            }
            map2 = map;
            bundle.putString("ecom_live_params", c(iVar, strT, map2));
        }
        if (!iVar.y_()) {
            return bundle;
        }
        obj = map2.get("reward_countdown");
        if (obj instanceof Long) {
            jLongValue = ((Long) obj).longValue();
            if (jLongValue > 0) {
                bundle.putLong("csj.reward_countdown_duration_ms", jLongValue);
                bundle.putInt("android.app.activity.request_code", 1);
                if (map2.containsKey("reward_live_scene") && ((Integer) map2.get("reward_live_scene")).intValue() == 1) {
                    bundle.putInt("live_popup_reward_auth", 1);
                    m.c("rewardAuthFlag", "liv pop rew auth:  1");
                }
            }
        }
        return bundle;
    }

    @Override // com.byazt.ysz.uj
    public boolean a_(ic icVar) {
        return c((i) icVar);
    }

    @Override // com.byazt.ysz.c, com.byazt.ysz.uj
    public void c(Function<SparseArray<Object>, Object> function) {
        super.c(function);
    }

    @Override // com.byazt.ysz.uj
    public int c(final Context context, final i iVar, final Map<String, Object> map) {
        ve(iVar);
        final int iN = iVar.n();
        int i10 = (iN != 9 || !Objects.equals(map.get("saas_status_while_click"), 2) || iVar.D_() == null || iVar.D_().ve() == null) ? iN : 2;
        if (!c(iVar.da(), i10)) {
            return 6;
        }
        final String str = map != null ? (String) map.get("event_tag") : "";
        if (!a()) {
            c(com.byazt.ppf.ve.c(iVar, map), str, iN, 1, i10 == 7 ? 1 : 2);
            return 1;
        }
        com.byazt.ppf.ve.c(iVar, map).lw();
        if (this.f22417c == null) {
            return 4;
        }
        this.tt = str;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (n() != 2 ? c(iVar, new c() { // from class: com.byazt.ysz.a.1
            @Override // com.byazt.ysz.a.c
            public void c(boolean z10) {
                boolean z11;
                if (atomicBoolean.compareAndSet(false, true)) {
                    a aVar = a.this;
                    aVar.c(context, iVar, iN, aVar.tt, (Map<String, Object>) map);
                    z11 = false;
                } else {
                    z11 = true;
                }
                yp.c().c(com.byazt.ppf.ve.c(iVar, (Map<String, Object>) map), System.currentTimeMillis() - jCurrentTimeMillis, z10, z11);
            }
        }, true, map) : false) {
            q qVarC_ = iVar.C_();
            if (iVar.n() == 9) {
                qVarC_ = iVar.D_() != null ? iVar.D_().uj() : null;
            }
            q qVar = qVarC_;
            if (qVar != null) {
                long jN = qVar.n();
                if (jN > 0) {
                    da.ve().postDelayed(new Runnable() { // from class: com.byazt.ysz.a.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.c(context, iVar, iN, str, (Map<String, Object>) map);
                            }
                        }
                    }, jN);
                }
                if (qVar.a() == 1 && x.m().ve() != null) {
                    new com.byazt.ddx.i().c(new com.byazt.ddx.i.c() { // from class: com.byazt.ysz.a.3
                        @Override // com.byazt.ddx.i.c
                        public void c(boolean z10) {
                        }

                        @Override // com.byazt.ddx.i.c
                        public void c(long j10) {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.c(context, iVar, iN, str, (Map<String, Object>) map);
                            }
                        }

                        @Override // com.byazt.ddx.i.c
                        public void c(String str2) {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.c(context, iVar, iN, str, (Map<String, Object>) map);
                            }
                        }
                    });
                }
            }
            return 0;
        }
        return c(context, iVar, i10, str, map);
    }

    public boolean c(i iVar, final c cVar, boolean z10, Map<String, Object> map) {
        if (this.f22406n == null) {
            return false;
        }
        q qVarC_ = iVar.C_();
        if (iVar.n() == 9) {
            qVarC_ = iVar.D_() != null ? iVar.D_().uj() : null;
        }
        if (qVarC_ == null || qVarC_.ve() == 0) {
            return false;
        }
        try {
            if (Integer.parseInt(this.f22406n.replaceAll("\\.", "")) < 211413) {
                return false;
            }
        } catch (Exception unused) {
        }
        int iTt = qVarC_.tt();
        boolean z11 = iTt > 0;
        if (z10) {
            z11 = iTt == 3;
        }
        if (z11) {
            this.f22405a = new SoftReference<>(com.byazt.ppf.ve.c(iVar, map));
            if (c(new com.byazt.cn.tt() { // from class: com.byazt.ysz.a.4
                @Override // com.byazt.cn.tt
                public void c(Object obj) {
                    boolean z12 = false;
                    if (obj instanceof Map) {
                        Map map2 = (Map) obj;
                        if (map2.containsKey("code")) {
                            Object obj2 = map2.get("code");
                            if (obj2 instanceof String) {
                                try {
                                    int i10 = Integer.parseInt((String) obj2);
                                    z12 = i10 == 1;
                                    m.c(com.byazt.we.ve.TAG, "requestDyAuth result:".concat(String.valueOf(i10)));
                                } catch (NumberFormatException unused2) {
                                }
                            }
                        }
                    }
                    cVar.c(z12);
                }
            }, iTt == 3) == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(Context context, i iVar, int i10, String str, Map<String, Object> map) {
        int iIntValue;
        int i11;
        int i12;
        int i13;
        int i14;
        m.c(com.byazt.we.ve.TAG, "openLive key:" + com.byazt.ppf.ve.c(iVar, map).lw());
        if (this.f22417c != null) {
            int iTt = 0;
            Object objApply = this.f22417c.apply(com.byazt.yxi.uj.c().c(0).c(Integer.class).c(0, new zb().c("context", context).c("bundle", tt(context, iVar, map))).tt());
            iIntValue = objApply != null ? ((Integer) objApply).intValue() : 0;
            this.tt = str;
            this.uj = iVar.rl();
            if (iIntValue == 0) {
                this.f22405a = new SoftReference<>(com.byazt.ppf.ve.c(iVar, map));
                int iC = com.byazt.wu.ve.c(map);
                if (iC == 101 || iC == 102) {
                    iIntValue |= iC << 8;
                } else {
                    i14 = 2;
                    if (c(iVar, iC)) {
                        iTt = tt(iVar);
                        i10 = 7;
                        if (iTt == 0) {
                            try {
                                new com.byazt.glq.c().c(str).c(context, map, iVar);
                                iIntValue |= iC << 8;
                            } catch (Exception e10) {
                                m.c(e10);
                            }
                            i14 = 7;
                        }
                    } else if (iVar.n() != 9) {
                    }
                    i11 = i10;
                    i13 = iTt;
                    i12 = i14;
                }
            } else {
                iTt = 3;
            }
            i14 = i10;
            i11 = i10;
            i13 = iTt;
            i12 = i14;
        } else {
            iIntValue = 4;
            i11 = i10;
            i12 = i11;
            i13 = 1;
        }
        c(com.byazt.ppf.ve.c(iVar, map), str, i11, i12, i13);
        return iIntValue;
    }

    private void c(JSONArray jSONArray, i iVar) {
        com.byazt.fri.c cVar;
        if (iVar == null || jSONArray == null || (cVar = (com.byazt.fri.c) rl.c(iVar.rl(), com.byazt.fri.c.class)) == null || cVar.tt.isEmpty()) {
            return;
        }
        String strUj = iVar.uj();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                String strOptString = jSONObject.optString("type");
                if (cVar.tt.contains(strUj + "_" + strOptString)) {
                    jSONObject.put("status", 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static String c(int i10) {
        if (i10 == 7) {
            return EnterFromMerge.AD_UNION_EXCITATION.lowerName();
        }
        if (i10 == 8) {
            return EnterFromMerge.AD_UNION_INSERT.lowerName();
        }
        if (i10 == 5) {
            return EnterFromMerge.AD_UNION_FEED.lowerName();
        }
        if (i10 == 9) {
            return EnterFromMerge.AD_UNION_DRAW.lowerName();
        }
        if (i10 == 1) {
            return "ad_union_banner";
        }
        if (i10 == 3 || i10 == 4) {
            return "ad_union_topview";
        }
        if (i10 == 2) {
            return "ad_union_former_insert";
        }
        return i10 == 6 ? "ad_union_patch" : EnterFromMerge.NO_VALUE.lowerName();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    @Override // com.byazt.ysz.uj
    public int c(Context context, ic icVar, Map<String, Object> map) {
        long jLongValue;
        if (map != null) {
            try {
                Object obj = map.get("reward_countdown");
                if (obj instanceof Long) {
                    jLongValue = ((Long) obj).longValue();
                } else {
                    jLongValue = 0;
                }
            } catch (Exception e10) {
                m.tt(com.byazt.we.ve.TAG, e10.toString());
            }
        } else {
            jLongValue = 0;
        }
        if (context == null || icVar == null) {
            return 5;
        }
        if (!(context instanceof Activity)) {
            return 7;
        }
        if (!to.c(icVar)) {
            return 5;
        }
        if (jLongValue < 0) {
            return 8;
        }
        if (to.tt(icVar) == 1) {
            return 9;
        }
        return c(context, (i) icVar, map);
    }

    @Override // com.byazt.ysz.uj
    public int c(String str) {
        if (TextUtils.isEmpty(str)) {
            return 15;
        }
        if (this.f22417c == null) {
            return 12;
        }
        if (!a()) {
            return 11;
        }
        Object objKk = x.m().kk();
        if (objKk == null) {
            return 13;
        }
        try {
            Object objApply = this.f22417c.apply(com.byazt.yxi.uj.c().c(8).c(Boolean.class).c(0, new zb().c("context", objKk).c("scheme_uri", str)).tt());
            return objApply != null ? ((Boolean) objApply).booleanValue() : false ? 1 : 10;
        } catch (Exception unused) {
            return 14;
        }
    }

    @Override // com.byazt.ysz.uj
    public int c(com.byazt.cn.tt ttVar, boolean z10) {
        if (this.f22417c == null) {
            return 12;
        }
        if (!a()) {
            return 11;
        }
        HashMap map = new HashMap();
        map.put("expand_method_name", "requestDyAuth");
        map.put("expand_method_param", new Object[]{x.m().kk(), ttVar, Boolean.valueOf(z10)});
        m.c(com.byazt.we.ve.TAG, "requestDyAuth:" + this.f22417c.apply(com.byazt.yxi.uj.c().c(7).c(Void.class).c(0, map).tt()) + ", syncAuth = " + z10);
        return 1;
    }

    @Override // com.byazt.ysz.c, com.byazt.ysz.uj
    public void c(String str, ic icVar, long j10) {
        com.byazt.ex.c.c(str, icVar, j10);
    }

    @Override // com.byazt.ysz.uj
    public void c(String str, boolean z10) {
        if (this.f22417c != null && a()) {
            HashMap map = new HashMap();
            map.put("expand_method_name", str);
            map.put("expand_method_param", new Object[]{Boolean.valueOf(z10)});
            this.f22417c.apply(com.byazt.yxi.uj.c().c(7).c(Void.class).c(0, map).tt());
        }
    }

    public static String tt(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
                return EnterMethod.LIVE_CELL.lowerName();
            case 5:
                return EnterMethod.LIVE_CARD.lowerName();
            default:
                return EnterMethod.NO_VALUE.lowerName();
        }
    }
}
