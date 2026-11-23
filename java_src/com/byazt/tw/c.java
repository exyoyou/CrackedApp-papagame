package com.byazt.tw;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.byazt.eu.n;
import com.byazt.ll.tt;
import com.byazt.nbs.da;
import com.byazt.ng.a;
import com.byazt.ng.uj;
import com.byazt.ng.x;
import com.byazt.nr.m;
import com.byazt.sx.ve;
import com.byazt.vx.nu;
import com.byazt.vx.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.f;
import com.windmill.sdk.WMConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 69, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f20465c;

    public static c c() {
        if (f20465c == null) {
            synchronized (c.class) {
                if (f20465c == null) {
                    f20465c = new c();
                }
            }
        }
        return f20465c;
    }

    private static void tt(uj ujVar) {
        ujVar.c("block_pacing", WMConstants.TIMER_STAGE_NONE);
        ujVar.c("rit_adn_show_rule_id", WMConstants.TIMER_STAGE_NONE);
        ujVar.c("block_show_count", WMConstants.TIMER_STAGE_NONE);
    }

    public void c(uj ujVar, tt ttVar, String str, boolean z10, String str2, int i10, Map<String, Object> map) {
        String strC;
        int i11;
        if (i10 > 0) {
            strC = com.byazt.pp.c.c(i10);
        } else {
            strC = "";
            i10 = 0;
        }
        if (i10 != 0) {
            i11 = z10 ? 2 : 3;
        } else {
            i11 = !z10 ? 1 : 0;
        }
        ujVar.c("mediation_request").c("server_bidding_extra", str2).c("mediation_req_type", Integer.valueOf(i11)).c(PointParamKey.AD_COUNT, Integer.valueOf(ttVar != null ? ttVar.gr() : 0)).tt(i10).sl(strC);
        HashMap map2 = new HashMap();
        if (map != null && map.size() > 0) {
            map2.putAll(map);
        }
        if (ttVar != null && ttVar.ve() == 5) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parallel_num", com.byazt.ix.uj.c().ve());
                jSONObject.put("interval", com.byazt.ix.uj.c().uj());
                jSONObject.put("primerit_list", com.byazt.ix.uj.c().tt());
                map2.put("preload_info", jSONObject);
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        if (ttVar != null && ttVar.my() == 3 && (com.byazt.ii.c.c().sl() || com.byazt.ii.c.c().t())) {
            map2.put("init_splash_request_duration", Long.valueOf(com.byazt.ii.c.c().i()));
        }
        if (ttVar != null && ttVar.nb() != null && !ttVar.nb().isEmpty()) {
            map2.putAll(ttVar.nb());
        }
        map2.put("csj_plugin_version", ve.uj());
        a.c(ujVar, ttVar, (da) null, (com.byazt.yl.ve) null, map2);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map2);
    }

    public void c(uj ujVar, com.byazt.yl.ve veVar, tt ttVar, com.byazt.nbs.tt ttVar2, long j10, String str, boolean z10, int i10, boolean z11, boolean z12) {
        ujVar.c("mediation_fill").c(j10).c("server_bidding_extra", str).c("mediation_req_type", Integer.valueOf(!z10 ? 1 : 0)).c(PointParamKey.AD_COUNT, Integer.valueOf(i10)).tt(0).sl("");
        HashMap map = new HashMap();
        if (ttVar != null && ttVar.my() == 3) {
            if (com.byazt.ii.c.c().sl()) {
                com.byazt.ii.c.c().c(com.byazt.ng.c.ve);
                map.put("init_splash_fill_duration", Long.valueOf(com.byazt.ii.c.c().da()));
            } else if (com.byazt.ii.c.c().t()) {
                map.put("init_splash_fill_duration", Long.valueOf(com.byazt.ii.c.c().da()));
            }
        }
        a.c(ujVar, ttVar, (da) null, veVar, map);
        map.put("timeout_req", Integer.valueOf(z11 ? 1 : 0));
        map.put("is_callback", Integer.valueOf(z12 ? 1 : 0));
        if (ttVar != null && ttVar.nb() != null && !ttVar.nb().isEmpty()) {
            map.putAll(ttVar.nb());
        }
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, tt ttVar, com.byazt.yl.ve veVar, long j10, int i10, int i11, int i12, String str, int i13, int i14, com.byazt.nbs.tt ttVar2, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObjectI;
        ujVar.c("mediation_request_end").c(j10).c(PointParamKey.AD_COUNT, Integer.valueOf(i13)).c(MediationConstant.KEY_REASON, Integer.valueOf(i14)).tt(i12);
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, (da) null, veVar, map);
        map.put("requested_adn_count", Integer.valueOf(i10));
        map.put("requested_level_count", Integer.valueOf(i11));
        if (jSONObject != null) {
            map.put("auto_detail", jSONObject);
        }
        if (jSONObject2 != null) {
            map.put(bm.W, jSONObject2);
        }
        if (ttVar2 != null) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.putOpt("layer_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(ttVar2.n())));
                jSONObject3.putOpt("req_interval", Long.valueOf(ttVar2.sp()));
                jSONObject3.putOpt("total_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(ttVar2.a())));
                map.put("preload_req", jSONObject3);
            } catch (Throwable th) {
                m.c(th);
            }
        }
        if (ttVar != null && (jSONObjectI = ttVar.i()) != null) {
            map.put(HmDataChannelManager.BEHAVIOR, jSONObjectI);
        }
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, @Nullable tt ttVar, com.byazt.pp.c cVar, String str) {
        JSONObject jSONObjectI;
        ujVar.c("total_load_fail").c("server_bidding_extra", str);
        int i10 = cVar.f18789c;
        if (i10 == 10003) {
            ujVar.tt(10010).sl("延长瀑布流总超时时长或者缩短层超时并添加兜底代码位");
            c(ujVar);
        } else if (i10 == 810085) {
            ujVar.tt(i10).sl(cVar.tt);
            c(ujVar);
        } else if (cVar instanceof com.byazt.bnd.ve) {
            com.byazt.bnd.ve veVar = (com.byazt.bnd.ve) cVar;
            ujVar.tt(i10).sl(cVar.tt);
            ujVar.c("block_pacing", veVar.c());
            ujVar.c("waterfall_show_rule_id", veVar.tt());
        } else if (cVar instanceof com.byazt.bnd.tt) {
            com.byazt.bnd.tt ttVar2 = (com.byazt.bnd.tt) cVar;
            ujVar.tt(i10).sl(cVar.tt);
            ujVar.c("block_show_count", ttVar2.c());
            ujVar.c("waterfall_show_rule_id", ttVar2.tt());
        } else if (cVar instanceof com.byazt.bnd.c) {
            ujVar.tt(i10).sl(cVar.tt);
            c(ujVar);
        } else {
            ujVar.tt(10086).sl("Ad load fail all loadsorts! ");
            c(ujVar);
        }
        HashMap map = new HashMap();
        if (ttVar != null && (jSONObjectI = ttVar.i()) != null) {
            map.put(HmDataChannelManager.BEHAVIOR, jSONObjectI);
        }
        if (ttVar != null && ttVar.nb() != null && !ttVar.nb().isEmpty()) {
            map.putAll(ttVar.nb());
        }
        ujVar.c(PointParamKey.AD_COUNT, Integer.valueOf(ttVar != null ? ttVar.gr() : 0));
        a.c(ujVar, ttVar, (da) null, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, da daVar, tt ttVar, String str, boolean z10, int i10, int i11, int i12, int i13, com.byazt.pp.c cVar, long j10, boolean z11, boolean z12, String str2, long j11) {
        int iUj;
        if ((cVar instanceof com.byazt.bnd.ve) || (cVar instanceof com.byazt.bnd.tt) || (cVar instanceof com.byazt.bnd.c)) {
            ujVar.tt(cVar.f18789c).sl(cVar.tt);
        }
        ujVar.c("media_request").a(str).c(j11).c(PointParamKey.AD_COUNT, Integer.valueOf(ttVar != null ? ttVar.gr() : 0)).c("adn_count", Integer.valueOf(i11)).c("mediationrit_req_type", Integer.valueOf(i12)).c("mediationrit_req_type_src", Integer.valueOf(i13)).c("mediation_req_type", Integer.valueOf(!z10 ? 1 : 0)).c("media_req_type", Integer.valueOf(i10));
        HashMap map = new HashMap();
        map.put("timeout_req", Integer.valueOf(z11 ? 1 : 0));
        map.put("is_callback", Integer.valueOf(z12 ? 1 : 0));
        if (ttVar != null && ttVar.tk() && !TextUtils.isEmpty(str2)) {
            map.put("origin_link_id", str2);
        }
        if (ttVar != null && ttVar.pf() != null && daVar != null && MediationConstant.ADN_PANGLE.equals(daVar.z()) && daVar.u() == 5 && (iUj = ttVar.pf().uj()) == 1) {
            map.put("support_render_control", Integer.valueOf(iUj));
        }
        if (j10 != -1) {
            map.put(f.f84665p, Long.valueOf(SystemClock.elapsedRealtime() - j10));
        }
        a.c(ujVar, ttVar, daVar, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, com.byazt.yl.ve veVar, int i10, String str, long j10, tt ttVar, int i11, int i12, int i13, String str2, long j11, long j12) {
        ujVar.c("media_fill").c(j10).tt(i10).sl(str).c("adn_count", Integer.valueOf(i11)).c("adn_preload", Integer.valueOf((veVar == null || !veVar.isAdnPreload()) ? 0 : 1)).c(PointParamKey.AD_COUNT, Integer.valueOf(i12));
        ujVar.c("fill_type", Integer.valueOf(i13));
        if (str2 != null) {
            ujVar.c("sub_adn_name", str2);
        }
        HashMap map = new HashMap();
        boolean z10 = j11 >= 0;
        if (veVar != null && veVar.isCustomAd()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(nu.ve()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z10));
            if (z10) {
                map.put("custom_adn_rec_time", Long.valueOf(j11));
            }
        }
        if (j12 != -1) {
            map.put(f.f84666q, Long.valueOf(j12));
        }
        if (veVar != null && MediationConstant.ADN_PANGLE.equals(veVar.getAdNetWorkName()) && veVar.getAdType() == 5 && veVar.getSupportRender() == 1) {
            map.put("if_to_express", Integer.valueOf(veVar.getSupportRender()));
        }
        if (com.byazt.bp.tt.tt().b() && veVar != null && 5 == veVar.getAdType()) {
            ujVar.c("ex_info", x.c().c(veVar));
        }
        Long lC = c(veVar);
        if (lC != null) {
            ujVar.c("cid", String.valueOf(lC));
        }
        a.c(ujVar, ttVar, (da) null, veVar, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    private Long c(com.byazt.yl.ve veVar) {
        Map<String, Object> extraMsg;
        if (veVar == null || (extraMsg = veVar.getExtraMsg()) == null || !(extraMsg.get("creative_id") instanceof Long)) {
            return null;
        }
        return (Long) extraMsg.get("creative_id");
    }

    public void c(uj ujVar, com.byazt.pp.c cVar, tt ttVar, da daVar, int i10, int i11, int i12, String str, long j10, String str2, String str3, String str4, long j11) {
        if (cVar instanceof com.byazt.bnd.ve) {
            com.byazt.bnd.ve veVar = (com.byazt.bnd.ve) cVar;
            ujVar.tt(cVar.f18789c).sl(cVar.tt);
            ujVar.c("block_pacing", veVar.c());
            ujVar.c("adn_rit_show_rule_id", veVar.tt());
        } else if (cVar instanceof com.byazt.bnd.tt) {
            com.byazt.bnd.tt ttVar2 = (com.byazt.bnd.tt) cVar;
            ujVar.tt(cVar.f18789c).sl(cVar.tt);
            ujVar.c("block_show_count", ttVar2.c());
            ujVar.c("adn_rit_show_rule_id", ttVar2.tt());
        } else if (cVar instanceof com.byazt.bnd.c) {
            ujVar.tt(cVar.f18789c);
            ujVar.sl(cVar.tt);
            tt(ujVar);
        } else {
            ujVar.tt(cVar != null ? cVar.ve : -1).sl(cVar != null ? cVar.uj : "unknown error");
            tt(ujVar);
        }
        ujVar.c("media_fill_fail").c(j10).a(str).c("adn_count", Integer.valueOf(i10)).c("adn_preload", 0).c("mediationrit_req_type", Integer.valueOf(i11)).c("mediationrit_req_type_src", Integer.valueOf(i12));
        HashMap map = new HashMap();
        Object objC = cVar.c("is_dex_adapter");
        if (objC != null) {
            map.put("is_dex_adapter", objC);
        }
        boolean z10 = j11 >= 0;
        if (daVar != null && daVar.sv()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(nu.ve()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z10));
            if (z10) {
                map.put("custom_adn_rec_time", Long.valueOf(j11));
            }
        }
        a.c(ujVar, ttVar, daVar, (com.byazt.yl.ve) null, map);
        if (!TextUtils.isEmpty(str2)) {
            ujVar.i(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            ujVar.c("level_tag", str3);
        }
        if (str4 != null) {
            ujVar.c("sub_adn_name", str4);
        }
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, da daVar, tt ttVar, int i10, int i11) {
        ujVar.c("adapter_request_fail").c(0L).a((String) null).tt(-99999).sl("adapter create fail !").c("mediationrit_req_type", Integer.valueOf(i10)).c("mediationrit_req_type_src", Integer.valueOf(i11));
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, daVar, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, tt ttVar, int i10) {
        ujVar.c("get_config_error").tt(i10);
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, (da) null, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, com.byazt.yl.ve veVar, tt ttVar, List<com.byazt.yl.ve> list, List<com.byazt.yl.ve> list2) {
        Iterator<com.byazt.yl.ve> it2;
        HashMap map;
        Iterator<com.byazt.yl.ve> it3;
        ujVar.c("bidding_win_event");
        HashMap map2 = new HashMap();
        a.c(ujVar, ttVar, (da) null, veVar, map2);
        JSONArray jSONArray = new JSONArray();
        if (!p.c(list)) {
            Iterator<com.byazt.yl.ve> it4 = list.iterator();
            while (it4.hasNext()) {
                com.byazt.yl.ve next = it4.next();
                if (next != null) {
                    it3 = it4;
                    try {
                        JSONObject jSONObject = new JSONObject();
                        map = map2;
                        try {
                            jSONObject.putOpt("mediation_rit", next.getAdNetworkSlotId());
                            jSONObject.putOpt(MediationConstant.EXTRA_ADN_NAME, next.getAdNetWorkName());
                            jSONObject.putOpt("load_sort", Integer.valueOf(next.getLoadSort()));
                            jSONObject.putOpt("show_sort", Integer.valueOf(next.getShowSort()));
                            jSONObject.putOpt("exchange_rate", next.getExchangeRate());
                            jSONObject.putOpt("rit_cpm", Double.valueOf(next.getCpm()));
                            jSONObject.putOpt("m_aid", next.getAid());
                            jSONObject.putOpt("req_bidding_type", Integer.valueOf(next.getAdNetworkSlotType()));
                            jSONObject.putOpt("win_state", 1);
                            jSONObject.putOpt("ad_extra", next.getAdExtra());
                            jSONObject.putOpt("win_callback", next.getWinCallback());
                            jSONObject.putOpt("loss_callback", next.getFailCallback());
                            if (next.isServerBiddingAd()) {
                                jSONObject.putOpt("pricing_type", Integer.valueOf(next.getPricingType()));
                            }
                            jSONArray.put(jSONObject);
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        map = map2;
                    }
                } else {
                    map = map2;
                    it3 = it4;
                }
                it4 = it3;
                map2 = map;
            }
        }
        HashMap map3 = map2;
        if (!p.c(list2)) {
            Iterator<com.byazt.yl.ve> it5 = list2.iterator();
            while (it5.hasNext()) {
                com.byazt.yl.ve next2 = it5.next();
                if (next2 != null) {
                    it2 = it5;
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        JSONArray jSONArray2 = jSONArray;
                        try {
                            jSONObject2.putOpt("mediation_rit", next2.getAdNetworkSlotId());
                            jSONObject2.putOpt(MediationConstant.EXTRA_ADN_NAME, next2.getAdNetWorkName());
                            jSONObject2.putOpt("load_sort", Integer.valueOf(next2.getLoadSort()));
                            jSONObject2.putOpt("show_sort", Integer.valueOf(next2.getShowSort()));
                            jSONObject2.putOpt("exchange_rate", next2.getExchangeRate());
                            jSONObject2.putOpt("rit_cpm", Double.valueOf(next2.getCpm()));
                            jSONObject2.putOpt("m_aid", next2.getAid());
                            jSONObject2.putOpt("req_bidding_type", Integer.valueOf(next2.getAdNetworkSlotType()));
                            jSONObject2.putOpt("win_state", 0);
                            jSONObject2.putOpt("ad_extra", next2.getAdExtra());
                            jSONObject2.putOpt("win_callback", next2.getWinCallback());
                            jSONObject2.putOpt("loss_callback", next2.getFailCallback());
                            if (next2.isServerBiddingAd()) {
                                try {
                                    jSONObject2.putOpt("pricing_type", Integer.valueOf(next2.getPricingType()));
                                } catch (Exception unused3) {
                                    jSONArray = jSONArray2;
                                }
                            }
                            jSONArray = jSONArray2;
                            jSONArray.put(jSONObject2);
                        } catch (Exception unused4) {
                            jSONArray = jSONArray2;
                        }
                    } catch (Exception unused5) {
                    }
                } else {
                    it2 = it5;
                }
                it5 = it2;
            }
        }
        map3.put("others", jSONArray);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map3);
    }

    public void c(uj ujVar, tt ttVar, JSONObject jSONObject) {
        ujVar.c("start_bidding_request").c(2).c(PointParamKey.AD_COUNT, Integer.valueOf(ttVar != null ? ttVar.gr() : 0));
        HashMap map = new HashMap();
        if (jSONObject != null) {
            map.put("exchange_time", jSONObject);
        }
        a.c(ujVar, ttVar, (da) null, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, tt ttVar, com.byazt.pl.tt ttVar2, int i10) {
        if (ttVar2 == null) {
            return;
        }
        uj result = ujVar.c("return_bidding_result").c(ttVar2.sp).setResult(ttVar2.f18734a);
        com.byazt.pp.c cVar = ttVar2.f18741x;
        uj ujVarTt = result.tt(cVar == null ? 0 : cVar.f18789c);
        com.byazt.pp.c cVar2 = ttVar2.f18741x;
        ujVarTt.sl(cVar2 == null ? "" : cVar2.tt).c(2).c("fill_type", Integer.valueOf(i10)).c("server_bidding_extra", ttVar2.uj).c(PointParamKey.AD_COUNT, Integer.valueOf(ttVar2.f18737i));
        HashMap map = new HashMap();
        com.byazt.psp.uj.c(ttVar2.f18736da, ttVar2.f18735c, map);
        JSONObject jSONObject = ttVar2.sl;
        if (jSONObject != null) {
            map.put("exchange_time", jSONObject);
        }
        a.c(ujVar, ttVar, (da) null, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, da daVar, tt ttVar, String str) {
        ujVar.c("get_bidding_adm_to_adn").a(str);
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, daVar, (com.byazt.yl.ve) null, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, com.byazt.yl.ve veVar, tt ttVar, da daVar, long j10) {
        ujVar.c("bidding_adm_load").c(j10);
        HashMap map = new HashMap();
        if (com.byazt.bp.tt.tt().b() && veVar != null && 5 == veVar.getAdType()) {
            ujVar.c("ex_info", x.c().c(veVar));
        }
        a.c(ujVar, ttVar, daVar, veVar, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, com.byazt.yl.ve veVar, tt ttVar, da daVar) {
        ujVar.c("bidding_adm_cache");
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, daVar, veVar, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, tt ttVar, com.byazt.yl.ve veVar, da daVar) {
        ujVar.c("media_cache_success");
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, daVar, veVar, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(uj ujVar, tt ttVar, com.byazt.yl.ve veVar, long j10) {
        ujVar.c("mediation_video_cached").c(j10);
        HashMap map = new HashMap();
        a.c(ujVar, ttVar, (da) null, veVar, map);
        com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
    }

    public void c(final uj ujVar, final com.byazt.yl.ve veVar, final tt ttVar, final int i10, final String str, final long j10, final String str2, final boolean z10, final int i11) {
        n.uj(new Runnable() { // from class: com.byazt.tw.c.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.yl.ve veVar2;
                com.byazt.yl.ve veVar3 = veVar;
                ujVar.c("media_show_listen").c("adn_preload", Integer.valueOf((veVar3 == null || !veVar3.isAdnPreload()) ? 0 : 1)).c("play_again", Integer.valueOf(i10)).c("is_repeat", Integer.valueOf(z10 ? 1 : 0));
                String str3 = str;
                if (str3 != null) {
                    ujVar.c("sub_adn_name", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    ujVar.c("callstack_message", str2);
                }
                HashMap map = new HashMap();
                map.put("enable_label_return", Integer.valueOf(com.byazt.bp.tt.tt().lr() ? 1 : 0));
                map.put("if_labelapi_call", Integer.valueOf(com.byazt.bp.c.t().c() ? 1 : 0));
                map.put("is_fill_quick_ad", Integer.valueOf(i11));
                com.byazt.bg.ve.c(veVar, ttVar, map);
                boolean z11 = j10 >= 0;
                com.byazt.yl.ve veVar4 = veVar;
                if (veVar4 != null && veVar4.isCustomAd()) {
                    map.put("custom_adn_sample_ratio", Double.valueOf(nu.ve()));
                    map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z11));
                    if (z11) {
                        map.put("custom_adn_rec_time", Long.valueOf(j10));
                    }
                }
                com.byazt.yl.ve veVar5 = veVar;
                if (veVar5 != null && !TextUtils.isEmpty(veVar5.getAdLifecycleId())) {
                    com.byazt.gc.c.c(map, veVar.getAdLifecycleId());
                }
                a.c(ujVar, ttVar, (da) null, veVar, map);
                com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
                if (com.byazt.bp.tt.tt().da() && (veVar2 = veVar) != null && MediationConstant.ADN_PANGLE.equals(veVar2.getAdNetWorkName())) {
                    com.byazt.ng.ve.uj();
                }
            }
        });
    }

    public void c(final uj ujVar, final com.byazt.yl.ve veVar, final tt ttVar, final int i10, final String str, final long j10, final String str2, final boolean z10) {
        n.uj(new Runnable() { // from class: com.byazt.tw.c.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.yl.ve veVar2 = veVar;
                ujVar.c("media_click_listen").c("adn_preload", Integer.valueOf((veVar2 == null || !veVar2.isAdnPreload()) ? 0 : 1)).c("play_again", Integer.valueOf(i10)).c("is_repeat", Integer.valueOf(z10 ? 1 : 0));
                String str3 = str;
                if (str3 != null) {
                    ujVar.c("sub_adn_name", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    ujVar.c("callstack_message", str2);
                }
                HashMap map = new HashMap();
                boolean z11 = j10 >= 0;
                com.byazt.yl.ve veVar3 = veVar;
                if (veVar3 != null && veVar3.isCustomAd()) {
                    map.put("custom_adn_sample_ratio", Double.valueOf(nu.ve()));
                    map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z11));
                    if (z11) {
                        map.put("custom_adn_rec_time", Long.valueOf(j10));
                    }
                }
                com.byazt.yl.ve veVar4 = veVar;
                if (veVar4 != null && !TextUtils.isEmpty(veVar4.getAdLifecycleId())) {
                    com.byazt.gc.c.c(map, veVar.getAdLifecycleId());
                }
                a.c(ujVar, ttVar, (da) null, veVar, map);
                com.byazt.ng.ve.c(com.byazt.bp.tt.getContext(), ujVar, map);
            }
        });
    }

    private static void c(uj ujVar) {
        ujVar.c("block_pacing", WMConstants.TIMER_STAGE_NONE);
        ujVar.c("waterfall_show_rule_id", WMConstants.TIMER_STAGE_NONE);
        ujVar.c("block_show_count", WMConstants.TIMER_STAGE_NONE);
    }
}
