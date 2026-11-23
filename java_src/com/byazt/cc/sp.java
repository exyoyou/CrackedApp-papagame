package com.byazt.cc;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.bm;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.ete.y;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.omf.rh;
import com.byazt.ukr.yp;
import com.xinzhu.overmind.utils.l;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f12350c;

    public static void c(Context context, y yVar, ic icVar, boolean z10, long j10) {
        if (context == null || icVar == null || yVar == null || !gt.tt().hj()) {
            return;
        }
        boolean z11 = yVar.uj() == 1;
        boolean z12 = yVar.x() == 1;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("splash_load_type", yVar.c());
            jSONObject.put("server_load_type", yVar.tt());
            jSONObject.put("tmax_type", yVar.or());
            if (z10) {
                jSONObject.put("splash_final_type", "cache_ad");
            } else {
                jSONObject.put("splash_final_type", "real_time_ad");
            }
            jSONObject.put("active_type", yVar.ve());
            jSONObject.put("splash_creative_type", yVar.uj());
            if (yVar.gu() > 0) {
                if (yVar.gu() == 22) {
                    jSONObject.put("check_cloud_error_code", yVar.md());
                }
                jSONObject.put("splash_get_cache_error_code", yVar.gu());
            }
            if (z11) {
                if (z12) {
                    jSONObject.put("cache_image_duration", yVar.sp());
                } else {
                    jSONObject.put("download_image_duration", yVar.a());
                    jSONObject.put("download_client_start_time", yVar.m());
                    jSONObject.put("download_net_time", yVar.nu());
                    jSONObject.put("download_client_end_time", yVar.rh());
                    jSONObject.put("img_conttype", yVar.p());
                    jSONObject.put("img_net_bframe_time", yVar.h());
                    jSONObject.put("img_net_aframe_time", yVar.d());
                }
                if (!z10) {
                    jSONObject.put("client_start_time", yVar.t());
                    jSONObject.put("network_time", yVar.u());
                    jSONObject.put("sever_time", yVar.yp());
                    jSONObject.put("client_end_time", yVar.z());
                }
                jSONObject.put("load_duration", yVar.n());
                jSONObject.put("image_resolution", yVar.da());
                jSONObject.put("image_cachetype", yVar.x());
                jSONObject.put("image_size", yVar.i());
            }
            if (yVar.gr() > 0) {
                jSONObject.put("real_user_duration", j10 - yVar.gr());
            }
            jSONObject.put("sdk_parallel_load", 1);
            jSONObject.put("switch_thread_time", yVar.zm());
            jSONObject.put("on_call_back_time", yVar.yv());
            jSONObject.put("load_suc_time", yVar.eo());
            jSONObject.put("is_boost", com.byazt.xo.c.n());
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.ddx.uj.c(icVar, "splash_ad", "splash_ad_loadtime", j10 - yVar.gt(), jSONObject);
    }

    public static void tt(y yVar, long j10) {
        if (yVar == null) {
            return;
        }
        yVar.ve(j10);
    }

    public static void uj(y yVar, long j10) {
        if (yVar != null) {
            yVar.m(System.currentTimeMillis() - j10);
        }
    }

    public static void ve(y yVar, long j10) {
        if (yVar == null) {
            return;
        }
        yVar.sl(j10);
    }

    public static void tt(ic icVar, com.byazt.im.uj ujVar) {
        if (icVar == null || ujVar == null || !gt.tt().hj()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_material_duration", ujVar.uj());
            jSONObject.put("load_resource_duration", ujVar.n());
            jSONObject.put("render_duration", ujVar.a());
            jSONObject.put("ren_seq", ujVar.tt());
            jSONObject.put("real_ren_seq", ujVar.ve());
            jSONObject.put("final_t", ujVar.x() ? "cache_ad" : "real_time_ad");
            jSONObject.put("load_t", ujVar.i());
            jSONObject.put("meta_load_Optimization", icVar.gk());
            jSONObject.put("serial_render", ujVar.da());
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.ddx.uj.ve(icVar, "splash_ad", "splash_total_duration", ujVar.sp(), jSONObject);
    }

    public static void c(y yVar) {
        if (yVar == null) {
            return;
        }
        yVar.c(System.currentTimeMillis() - yVar.gt());
    }

    public static void c(y yVar, y yVar2) {
        if (yVar == null || yVar2 == null) {
            return;
        }
        yVar.t(System.currentTimeMillis());
        yVar2.t(System.currentTimeMillis());
        if (rh.ve.get()) {
            yVar.ve(0);
            yVar2.ve(0);
            rh.ve.set(false);
        } else {
            yVar.ve(1);
            yVar2.ve(1);
        }
    }

    public static void c(y yVar, long j10) {
        if (yVar == null) {
            return;
        }
        yVar.tt(j10);
    }

    public static void c(y yVar, com.byazt.im.x xVar) {
        if (yVar == null || xVar == null) {
            return;
        }
        if (xVar.n()) {
            yVar.uj(2);
        } else {
            yVar.uj(1);
        }
    }

    public static void c(y yVar, boolean z10) {
        if (yVar == null) {
            return;
        }
        if (z10) {
            yVar.n(1);
        } else {
            yVar.n(2);
        }
    }

    public static void c(y yVar, com.byazt.uph.tt ttVar, Map<String, String> map) {
        if (ttVar == null || yVar == null) {
            return;
        }
        int iTt = ttVar.tt();
        if (yVar.i() == 0.0d) {
            yVar.c(iTt / 1024.0f);
        }
        Bitmap bitmapC = ttVar.c();
        if (bitmapC != null && TextUtils.isEmpty(yVar.da())) {
            yVar.c(bitmapC.getWidth() + "X" + bitmapC.getHeight());
        }
        if (map == null || map.size() <= 0 || yVar.sl() != null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (Exception unused) {
                }
            }
        }
        yVar.c(jSONObject);
    }

    public static void c(y yVar, com.byazt.im.a aVar) {
        if (yVar == null || aVar == null) {
            return;
        }
        long jA = aVar.a();
        long jX = aVar.x();
        long jSp = aVar.sp();
        long jI = aVar.i();
        yVar.uj(jA);
        yVar.n(jSp);
        yVar.a(jX);
        yVar.sp(jI);
    }

    public static void c(ic icVar, y yVar, com.byazt.im.x xVar) {
        if (icVar == null || yVar == null || xVar == null || xVar.n() || yVar.x() == 1 || !gt.tt().hj()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("image_size", yVar.i());
            jSONObject.put("image_resolution", yVar.da());
            jSONObject.put("download_client_start_time", yVar.m());
            jSONObject.put("download_net_time", yVar.nu());
            jSONObject.put("download_client_end_time", yVar.rh());
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.ddx.uj.c(icVar, "splash_ad", "download_image_duration", System.currentTimeMillis() - yVar.my(), jSONObject);
    }

    public static void c(y yVar, com.byazt.im.x xVar, long j10) {
        if (yVar == null || xVar == null) {
            return;
        }
        long jSp = xVar.sp();
        yVar.da(j10 - jSp);
        yVar.gt(xVar.x() - jSp);
    }

    public static void c(boolean z10, ic icVar, com.byazt.dj.tt ttVar, final com.byazt.im.sp spVar) {
        if (ttVar == null || spVar == null) {
            return;
        }
        final com.byazt.qal.tt ttVarC = c(ttVar, z10 ? 4 : 3, icVar);
        if (ttVarC == null) {
            return;
        }
        yp.c().ve(new com.byazt.ee.c() { // from class: com.byazt.cc.sp.1
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                int iSp;
                int iUj;
                JSONObject jSONObject = new JSONObject();
                com.byazt.im.sp spVar2 = spVar;
                if (spVar2 != null) {
                    iSp = spVar2.sp();
                    iUj = spVar.uj();
                } else {
                    iSp = 1;
                    iUj = -1;
                }
                try {
                    jSONObject.put("if_have_cache", iSp);
                    jSONObject.put("if_have_rt_ads", iUj);
                } catch (Throwable unused) {
                }
                return ttVarC.tt(jSONObject.toString());
            }
        });
    }

    private static com.byazt.qal.tt c(com.byazt.dj.tt ttVar, int i10, ic icVar) {
        String strUj;
        String strSp;
        String strW_;
        if (icVar != null) {
            strUj = icVar.uj();
            strW_ = icVar.w_();
            strSp = nb.m(icVar);
        } else {
            strUj = null;
            strSp = null;
            strW_ = null;
        }
        if (TextUtils.isEmpty(strSp)) {
            strSp = nb.sp();
        }
        com.byazt.qal.tt ttVarVe = com.byazt.qal.tt.tt().a(strSp).c(i10).ve(ttVar.uj());
        if (strUj != null) {
            ttVarVe.uj(strUj);
        }
        if (strW_ != null) {
            ttVarVe.x(strW_);
        }
        return ttVarVe;
    }

    public static void c(final com.byazt.dj.tt ttVar, final long j10) {
        if (ttVar == null) {
            return;
        }
        yp.c().c(new com.byazt.ee.c() { // from class: com.byazt.cc.sp.2
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("publisher_timeout_control", j10);
                } catch (Throwable unused) {
                }
                return com.byazt.qal.tt.tt().c(3).ve(ttVar.uj()).a(nb.sp()).tt(jSONObject.toString());
            }
        });
    }

    public static void c(y yVar, com.byazt.im.x xVar, long j10, ic icVar) {
        if (xVar == null || yVar == null || icVar == null) {
            return;
        }
        if (!xVar.n()) {
            x.c(j10, false, true, icVar, 0L, "loadSuccess");
            if (!xVar.a()) {
                c(yVar, SystemClock.elapsedRealtime() - j10);
                com.byazt.ddx.uj.c(icVar, "splash_ad", SystemClock.elapsedRealtime() - j10);
            } else {
                tt(yVar, SystemClock.elapsedRealtime() - j10);
            }
        }
        c(yVar, xVar.a());
        c(yVar, xVar.uj(), xVar.i());
        c(yVar, xVar, System.currentTimeMillis());
        c(yVar, xVar.u());
    }

    public static void c(y yVar, String str) {
        if (yVar == null) {
            return;
        }
        yVar.tt(str);
    }

    public static void c(boolean z10, ic icVar, com.byazt.dj.tt ttVar, final boolean z11, final boolean z12) {
        if (icVar == null || ttVar == null) {
            return;
        }
        final com.byazt.qal.tt ttVarC = c(ttVar, z10 ? 4 : 3, icVar);
        if (ttVarC == null) {
            return;
        }
        yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.cc.sp.3
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!z12) {
                        jSONObject.put("image_CacheType", z11 ? 1 : 2);
                    }
                } catch (Throwable unused) {
                }
                return ttVarC.tt(jSONObject.toString());
            }
        });
    }

    public static void c(boolean z10, ic icVar, com.byazt.dj.tt ttVar) {
        if (icVar == null || ttVar == null) {
            return;
        }
        final com.byazt.qal.tt ttVarC = c(ttVar, z10 ? 4 : 3, icVar);
        if (ttVarC == null) {
            return;
        }
        yp.c().uj(new com.byazt.ee.c() { // from class: com.byazt.cc.sp.4
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                return ttVarC;
            }
        });
    }

    public static void c(ic icVar, com.byazt.im.uj ujVar) {
        if (ujVar == null || icVar == null || !gt.tt().hj()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_control", ujVar.c());
            jSONObject.put("render_sequence", ujVar.tt());
            jSONObject.put("real_render_sequence", ujVar.ve());
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.ddx.uj.tt(icVar, "splash_ad", "splash_render_duration", ujVar.a(), jSONObject);
    }

    public static void c(ic icVar, com.byazt.im.uj ujVar, com.byazt.im.i iVar) {
        if (icVar == null || iVar == null) {
            return;
        }
        if (pu.c(icVar) == 1) {
            com.byazt.dz.c.c("Splash_FullLink", "自渲染 ");
            ujVar.ve(99);
        } else if (!iVar.tt()) {
            int iTt = pu.tt(icVar);
            com.byazt.dz.c.c("Splash_FullLink", "模版渲染 ".concat(String.valueOf(iTt)));
            ujVar.ve(iTt);
        } else {
            com.byazt.dz.c.c("Splash_FullLink", "模版兜底 ");
            ujVar.ve(99);
        }
    }

    public static void c(y yVar, y yVar2, bm bmVar, int i10, int i11) {
        if (yVar == null || yVar2 == null) {
            return;
        }
        yVar.c(i10);
        yVar.tt(i11);
        yVar.z(bmVar.f13582i);
        yVar2.c(i10);
        yVar2.tt(i11);
        yVar2.z(bmVar.f13582i);
    }

    public static void c(y yVar, int i10) {
        if (yVar == null || yVar.or() >= i10) {
            return;
        }
        yVar.sp(i10);
    }

    public static void c(int i10, ic icVar, String str, int i11) {
        if (i10 == 2) {
            if (f12350c) {
                return;
            } else {
                f12350c = true;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event_type", i10);
            if (i10 == 1) {
                jSONObject.put("show_cnt", i11);
            }
            com.byazt.ddx.uj.uj(icVar, str, jSONObject);
        } catch (JSONException unused) {
        }
    }
}
