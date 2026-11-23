package com.byazt.ete;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN})
public class hd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13679a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f13680c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13681da = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13682i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13683n;
    public long sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f13684x;

    public hd(ic icVar) {
        this.f13680c = icVar;
    }

    public void c(JSONObject jSONObject, boolean z10) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ca_send_ts", this.f13680c.xg());
            jSONObject.put("ca_bid_rst", this.uj);
            jSONObject.put("ca_reuse_cnt", this.f13683n);
            jSONObject.put("ca_obj_ts", this.f13679a);
            jSONObject.put("ca_fnl_st", this.f13682i);
            jSONObject.put("ca_rpt_show_cnt", this.f13681da);
            jSONObject.put("ca_libra_group", x.c(com.byazt.aas.nb.sl(this.f13680c)).u());
            jSONObject.put("ca_ad_index", this.f13680c.fq());
            if (z10) {
                String str = this.f13680c.qy() + this.f13680c.uj();
                Integer numRemove = com.byazt.vvt.c.tt().remove(str);
                int iValueOf = numRemove == null ? 1 : Integer.valueOf(numRemove.intValue() + 1);
                com.byazt.vvt.c.tt().put(str, iValueOf);
                jSONObject.put("meta_show_count", iValueOf);
                String str2 = com.byazt.aas.nb.u(this.f13680c) + this.f13680c.uj();
                Integer numRemove2 = com.byazt.vvt.c.ve().remove(str2);
                int iValueOf2 = numRemove2 == null ? 1 : Integer.valueOf(numRemove2.intValue() + 1);
                com.byazt.vvt.c.ve().put(str2, iValueOf2);
                jSONObject.put("meta_origin_show_count", iValueOf2);
                com.byazt.vvt.ve.c(this.f13680c);
                JSONObject jSONObjectC = com.byazt.vvt.ve.c(com.byazt.aas.nb.sl(this.f13680c), this.f13680c.jl());
                if (jSONObjectC != null) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(jSONObjectC.toString());
                        int iSl = com.byazt.aas.nb.sl(this.f13680c);
                        x.ve veVarC = x.c(iSl);
                        x.n nVarNu = veVarC != null ? veVarC.nu() : null;
                        if (nVarNu != null && nVarNu.tt() && nVarNu.ve() > 0) {
                            com.byazt.dj.tt ttVarIj = this.f13680c.ij();
                            long jC = com.byazt.wi.tt.c().c(iSl, ttVarIj != null ? ttVarIj.uj() : null);
                            if (jC > 0) {
                                jSONObject2.put("dynamic_tmax", jC);
                            }
                            jSONObject2.put("dynamic_tmax_type", nVarNu.n());
                        }
                        jSONObjectC = jSONObject2;
                    } catch (Throwable unused) {
                    }
                    jSONObject.put("ca_interval_info", jSONObjectC);
                }
            }
        } catch (JSONException unused2) {
        }
    }

    public void tt(int i10) {
        this.ve = i10;
        if (i10 == 2) {
            this.f13683n++;
        }
    }

    public void uj(int i10) {
        this.f13682i = i10;
        this.f13684x = System.currentTimeMillis();
    }

    public void ve(int i10) {
        this.uj = i10;
    }

    public void ve() {
        this.sp = System.currentTimeMillis();
        this.f13681da++;
        uj(1);
    }

    public void tt() {
        this.f13679a = System.currentTimeMillis();
    }

    public hd(ic icVar, JSONObject jSONObject) {
        this.f13680c = icVar;
        if (jSONObject != null) {
            this.tt = jSONObject.optInt("req_type", 0);
            this.ve = jSONObject.optInt("load_type", 0);
            this.uj = jSONObject.optInt("bidding_result", 0);
            this.f13683n = jSONObject.optInt("reuse_count", 0);
            this.f13679a = jSONObject.optLong("object_create_time", 0L);
            this.sp = jSONObject.optLong("show_time", 0L);
            this.f13684x = jSONObject.optLong("final_ts", 0L);
            this.f13682i = jSONObject.optInt("final_status", 0);
        }
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("req_type", this.tt);
            jSONObject.put("load_type", this.ve);
            jSONObject.put("bidding_result", this.uj);
            jSONObject.put("reuse_count", this.f13683n);
            jSONObject.put("object_create_time", this.f13679a);
            jSONObject.put("show_time", this.sp);
            jSONObject.put("final_ts", this.f13684x);
            jSONObject.put("final_status", this.f13682i);
            jSONObject.put("show_count", this.f13681da);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void c(int i10) {
        this.tt = i10;
    }
}
