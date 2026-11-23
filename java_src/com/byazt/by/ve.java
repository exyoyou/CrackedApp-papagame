package com.byazt.by;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.yv;
import com.byazt.bwm.sp;
import com.byazt.dna.u;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 54})
public final class ve {
    public static volatile ve tt;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public SharedPreferences f12172da;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f12177x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AtomicBoolean f12171c = new AtomicBoolean(false);
    public AtomicBoolean ve = new AtomicBoolean(false);
    public AtomicInteger uj = new AtomicInteger(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicInteger f12174n = new AtomicInteger(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile String f12170a = null;
    public AtomicInteger sp = new AtomicInteger(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AtomicInteger f12173i = new AtomicInteger(Integer.MAX_VALUE);
    public AtomicInteger sl = new AtomicInteger(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public AtomicInteger f12175t = new AtomicInteger(Integer.MAX_VALUE);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AtomicInteger f12176u = new AtomicInteger(Integer.MAX_VALUE);

    private ve() {
    }

    private boolean c(int i10, int i11) {
        if (i11 == 0) {
            return false;
        }
        if (i11 == 1) {
            return true;
        }
        return i11 == 3 && i10 != 5;
    }

    private SharedPreferences u() {
        return com.byazt.nys.tt.tt(gt.getContext(), "sp_bidding_opt_libra", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yp() {
        boolean zVe = ve();
        if (zVe) {
            com.byazt.tdq.uj.uj();
            uj.c();
            tt.c();
        }
        try {
            if (!com.byazt.xo.c.ve()) {
                String strC = c("/api/ad/union/ping");
                if (!TextUtils.isEmpty(strC)) {
                    com.byazt.va.ve veVarVe = com.byazt.hy.n.c().tt().ve();
                    veVarVe.c(strC);
                    veVarVe.c(new com.byazt.mh.c() { // from class: com.byazt.by.ve.2
                        @Override // com.byazt.mh.c
                        public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                        }

                        @Override // com.byazt.mh.c
                        public void c(com.byazt.va.uj ujVar, IOException iOException) {
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        if (zVe) {
            DeviceUtils.c(3, false);
            c.c(gt.getContext(), 3);
            int i10 = com.byazt.ddx.uj.f12800c;
            com.byazt.zlb.tt ttVar = com.byazt.zlb.tt.f22918c;
            z();
            yv.c(259200000L);
        }
    }

    private void z() {
        com.byazt.xgx.c cVar = new com.byazt.xgx.c();
        u uVar = (u) com.byazt.ut.uj.getService("device_info_new");
        DeviceUtils.c(Boolean.valueOf(cVar.c()));
        DeviceUtils.tt();
        uVar.getSSID(Boolean.valueOf(cVar.tt()));
        uVar.getWifiMac(Boolean.valueOf(cVar.tt()));
        uVar.getImsi(Boolean.valueOf(cVar.c()));
        uVar.getMacAddress(Boolean.valueOf(cVar.c()));
        uVar.getMcc();
    }

    public int a() {
        try {
            if (this.sp.get() == Integer.MAX_VALUE) {
                if (this.f12171c.get()) {
                    this.sp.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_network_module", 1));
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.sp.set(this.f12172da.getInt("key_network_module", 1));
                }
            }
            return this.sp.get();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public boolean da() {
        try {
            if (this.sl.get() == Integer.MAX_VALUE) {
                if (this.f12171c.get()) {
                    this.sl.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "boost_save_config", 0));
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.sl.set(this.f12172da.getInt("boost_save_config", 0));
                }
            }
            return this.sl.get() == 1;
        } catch (Throwable unused) {
            return false;
        }
    }

    public int i() {
        try {
            if (this.f12175t.get() == Integer.MAX_VALUE) {
                if (this.f12172da == null) {
                    this.f12172da = u();
                }
                this.f12175t.set(this.f12172da.getInt("bst_pl_exec_conf", -1));
                if (this.f12175t.get() >= 0) {
                    return this.f12175t.get();
                }
                this.f12175t.set(this.f12172da.getInt("_use_pl_", 0));
            }
            return this.f12175t.get();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public int n() {
        try {
            if (this.f12174n.get() == Integer.MAX_VALUE) {
                if (this.f12171c.get()) {
                    this.f12174n.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_net_queue_limit", 7));
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.f12174n.set(this.f12172da.getInt("key_net_queue_limit", 7));
                }
            }
            return this.f12174n.get();
        } catch (Throwable unused) {
            return 7;
        }
    }

    public void sl() {
        try {
            com.byazt.ti.tt.c("sp_bidding_opt_libra");
            SharedPreferences.Editor editorEdit = u().edit();
            editorEdit.clear();
            editorEdit.apply();
            this.uj.set(0);
            this.f12174n.set(7);
            this.f12173i.set(0);
        } catch (Throwable unused) {
        }
    }

    public int sp() {
        try {
            if (this.f12173i.get() == Integer.MAX_VALUE) {
                if (this.f12171c.get()) {
                    this.f12173i.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_req_build_opt", 1));
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.f12173i.set(this.f12172da.getInt("key_req_build_opt", 1));
                }
            }
            return this.f12173i.get();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void t() {
        com.byazt.bwm.n.c(new sp("advance_init_rb") { // from class: com.byazt.by.ve.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ve.this.ve.get()) {
                        return;
                    }
                    ve.this.ve.set(true);
                    ve.this.yp();
                } catch (Throwable unused) {
                }
            }
        }, 10);
    }

    public String uj() {
        try {
            if (TextUtils.isEmpty(this.f12170a)) {
                if (this.f12171c.get()) {
                    this.f12170a = com.byazt.ti.tt.tt("sp_bidding_opt_libra", "key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.f12170a = this.f12172da.getString("key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                }
            }
        } catch (Throwable unused) {
        }
        this.f12170a = TextUtils.isEmpty(this.f12170a) ? "api-access.pangolin-sdk-toutiao.com" : this.f12170a;
        return this.f12170a;
    }

    public boolean ve() {
        try {
            if (this.uj.get() == Integer.MAX_VALUE) {
                if (this.f12171c.get()) {
                    this.uj.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_req_body_opt", 1));
                } else {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    this.uj.set(this.f12172da.getInt("key_req_body_opt", 1));
                }
            }
            return this.uj.get() == 1;
        } catch (Throwable unused) {
        }
    }

    public int x() {
        if (this.f12176u.get() == Integer.MAX_VALUE) {
            this.f12176u.set(i());
        }
        return this.f12176u.get();
    }

    public boolean tt() {
        if (!this.f12177x) {
            this.f12171c.set(com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_support_multiprocess", 2) == 1);
            this.f12177x = true;
        }
        return this.f12171c.get();
    }

    public static ve c() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    public void tt(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("ads_url", "api-access.pangolin-sdk-toutiao.com");
            this.f12170a = strOptString;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
            if (jSONObjectOptJSONObject == null) {
                if (com.byazt.xo.c.sp()) {
                    return;
                }
                c("key_url_ads", strOptString);
                return;
            }
            try {
                int iOptInt = jSONObjectOptJSONObject.optInt("network_module", 1);
                int iOptInt2 = jSONObjectOptJSONObject.optInt("if_req_body_opt", 1);
                this.uj.set(iOptInt2);
                int iOptInt3 = jSONObjectOptJSONObject.optInt("net_queue_limit", 7);
                this.f12174n.set(iOptInt3);
                int iOptInt4 = jSONObjectOptJSONObject.optInt("req_build_opt", 0);
                this.f12173i.set(iOptInt4);
                int i10 = jSONObjectOptJSONObject.optBoolean("_use_pl_", false) ? 1 : 0;
                String strOptString2 = jSONObjectOptJSONObject.optString("zeus_sp", "");
                int iOptInt5 = jSONObjectOptJSONObject.optInt("bst_pl_exec_conf", -1);
                int iOptInt6 = jSONObjectOptJSONObject.optInt("boost_save_config", 0);
                this.sl.set(iOptInt6);
                long jOptLong = jSONObjectOptJSONObject.optLong("bstlayer_init_delay_time", 0L);
                if (com.byazt.xo.c.sp()) {
                    return;
                }
                if (this.f12171c.get()) {
                    try {
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_network_module", Integer.valueOf(iOptInt));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_req_body_opt", Integer.valueOf(iOptInt2));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_net_queue_limit", Integer.valueOf(iOptInt3));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_req_build_opt", Integer.valueOf(iOptInt4));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "_use_pl_", Integer.valueOf(i10));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "bst_pl_exec_conf", Integer.valueOf(iOptInt5));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "key_url_ads", strOptString);
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "boost_save_config", Integer.valueOf(iOptInt6));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "bstlayer_init_delay_time", Long.valueOf(jOptLong));
                        com.byazt.ti.tt.c("sp_bidding_opt_libra", "zeus_sp", strOptString2);
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                try {
                    if (this.f12172da == null) {
                        this.f12172da = u();
                    }
                    SharedPreferences.Editor editorEdit = this.f12172da.edit();
                    editorEdit.putInt("key_network_module", iOptInt);
                    editorEdit.putInt("key_req_body_opt", iOptInt2);
                    editorEdit.putInt("key_net_queue_limit", iOptInt3);
                    editorEdit.putInt("key_req_build_opt", iOptInt4);
                    editorEdit.putInt("_use_pl_", i10);
                    editorEdit.putInt("bst_pl_exec_conf", iOptInt5);
                    editorEdit.putString("key_url_ads", strOptString);
                    editorEdit.putInt("boost_save_config", iOptInt6);
                    editorEdit.putLong("bstlayer_init_delay_time", jOptLong);
                    editorEdit.putString("zeus_sp", strOptString2);
                    editorEdit.commit();
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
        }
    }

    public void c(boolean z10) {
        this.f12171c.set(z10);
        if (z10) {
            c("key_support_multiprocess", 1);
        }
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f12176u.set(jSONObject.optInt("bst_pl_exec_conf", -1));
        }
    }

    private void c(String str, int i10) {
        try {
            if (this.f12171c.get()) {
                com.byazt.ti.tt.c("sp_bidding_opt_libra", str, Integer.valueOf(i10));
                return;
            }
            if (this.f12172da == null) {
                this.f12172da = u();
            }
            SharedPreferences.Editor editorEdit = this.f12172da.edit();
            editorEdit.putInt(str, i10);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    private void c(String str, String str2) {
        try {
            if (this.f12171c.get()) {
                com.byazt.ti.tt.c("sp_bidding_opt_libra", str, str2);
                return;
            }
            if (this.f12172da == null) {
                this.f12172da = u();
            }
            SharedPreferences.Editor editorEdit = this.f12172da.edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public static String c(String str) {
        String strUj = c().uj();
        if (TextUtils.isEmpty(strUj)) {
            return null;
        }
        return String.format("https://%s%s", strUj, str);
    }

    public boolean c(int i10) {
        if (i10 <= 0) {
            return false;
        }
        return c(i10, sp());
    }
}
