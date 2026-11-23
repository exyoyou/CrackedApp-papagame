package com.byazt.kz;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.byazt.bv.BaseConstants;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import com.byazt.ddx.uj;
import com.byazt.dna.u;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.fiq.a;
import com.byazt.fiq.n;
import com.byazt.nr.m;
import com.byazt.nr.yp;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 144, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ic f16548c;
    public SSWebView tt;
    public int uj;
    public Context ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16549n = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16547a = -3;
    public int sp = -1;

    /* JADX INFO: renamed from: com.byazt.kz.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 144, 44})
    private static class C0366c implements com.byazt.fiq.ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<SSWebView> f16551c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f16552n;
        public final ic tt;
        public final int uj;
        public final long ve;

        public C0366c(WeakReference<SSWebView> weakReference, ic icVar, long j10, int i10, int i11) {
            this.f16551c = weakReference;
            this.tt = icVar;
            this.ve = j10;
            this.uj = i10;
            this.f16552n = i11;
        }

        @Override // com.byazt.fiq.ve
        public void c(boolean z10, int i10, int i11, String str, Map<String, List<String>> map, String str2) {
            m.c("transmit_TTWifiObject", "TransmitBusiness_onResponse s : " + z10 + " code:" + i11 + " msg:" + str + "  body:" + str2);
            if (z10) {
                str = "取号成功";
            } else if (TextUtils.isEmpty(str)) {
                str = "取号失败";
            }
            uj.c(this.tt, "wifi_auth", "click_other", new ve(System.currentTimeMillis() - this.ve, i10, z10, str, this.uj, this.f16552n));
            JSONObject jSONObject = new JSONObject();
            if (str2 == null) {
                str2 = "";
            }
            try {
                jSONObject.put("data", str2);
                jSONObject.put("networkType", i10);
            } catch (JSONException unused) {
            }
            SSWebView sSWebView = this.f16551c.get();
            if (sSWebView != null) {
                yp.c(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 144, 175})
    private static class tt extends sp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16553a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<SSWebView> f16554c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long f16555n;
        public final int sp;
        public final Context tt;
        public final String uj;
        public final ic ve;

        public tt(SSWebView sSWebView, Context context, ic icVar, String str, long j10, int i10, int i11) {
            super("send_network_switch");
            this.f16554c = new WeakReference<>(sSWebView);
            this.tt = context != null ? context.getApplicationContext() : null;
            this.ve = icVar;
            this.uj = str;
            this.f16555n = j10;
            this.f16553a = i10;
            this.sp = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = this.tt;
            if (context != null) {
                new a(context, new com.byazt.fiq.c()).c(this.uj, new C0366c(this.f16554c, this.ve, this.f16555n, this.f16553a, this.sp));
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", "取号失败，context is null");
                jSONObject.put("networkType", 0);
            } catch (JSONException unused) {
            }
            SSWebView sSWebView = this.f16554c.get();
            if (sSWebView != null) {
                yp.c(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
            }
            uj.c(this.ve, "wifi_auth", "click_other", new ve(System.currentTimeMillis() - this.f16555n, 0, false, "context is null", this.f16553a, this.sp));
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 144, 132})
    private static class ve implements com.byazt.ya.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16556a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16557c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f16558n;
        public final int tt;
        public final String uj;
        public final boolean ve;

        public ve(long j10, int i10, boolean z10, String str, int i11, int i12) {
            this.f16557c = j10;
            this.tt = i10;
            this.ve = z10;
            this.uj = str;
            this.f16558n = i11;
            this.f16556a = i12;
        }

        @Override // com.byazt.ya.c
        public void onSend(JSONObject jSONObject) throws JSONException {
            jSONObject.put("duration", this.f16557c);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("wifi_auth_referer", "huoshan_JSSDK");
            jSONObject2.putOpt("wifi_auth_network_type", Integer.valueOf(this.tt));
            jSONObject2.putOpt("wifi_auth_duration", Long.valueOf(this.f16557c));
            jSONObject2.putOpt("wifi_auth_status", this.ve ? "success" : "failure");
            String str = this.uj;
            if (str == null) {
                str = "";
            }
            jSONObject2.putOpt("wifi_auth_detail_info", str);
            jSONObject2.putOpt("wifi_auth_carrier", Integer.valueOf(this.f16558n));
            jSONObject2.putOpt("wifi_auth_redirect_time", Integer.valueOf(this.f16556a));
            jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
        }
    }

    public c(SSWebView sSWebView, Context context, int i10, ic icVar) {
        this.tt = sSWebView;
        this.ve = context;
        this.uj = i10;
        this.f16548c = icVar;
    }

    @JavascriptInterface
    public int getNetOperatorType() {
        m.c("transmit_TTWifiObject", "getNetOperatorType PhoneNumStatus:" + this.uj);
        final int iC = c();
        if (iC == -1 || iC == -2) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            x.c(new sp("getNetOperatorType") { // from class: com.byazt.kz.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.c(-1, System.currentTimeMillis() - jCurrentTimeMillis, false, "获取运行商类型为-1或-2,直接标记取号失败", iC, c.this.f16549n);
                }
            });
        }
        m.c("transmit_TTWifiObject", "getNetOperatorType type:".concat(String.valueOf(iC)));
        return iC;
    }

    @JavascriptInterface
    public String sendNetworkSwitch(String str) {
        int iC;
        Context context;
        m.c("transmit_TTWifiObject", "send_switch PhoneNumStatus:" + this.uj + "  params:" + str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.uj > 0) {
            try {
                iC = new JSONObject(str).optInt("operType");
            } catch (JSONException unused) {
                iC = -3;
            }
            if (iC != 1 && iC != 2 && iC != 3) {
                iC = c();
            }
            if (iC == 3 && this.f16547a == 3) {
                this.f16549n++;
            } else {
                this.f16549n = 1;
            }
            this.f16547a = iC;
            x.c((sp) new tt(this.tt, this.ve, this.f16548c, str, jCurrentTimeMillis, iC, this.f16549n));
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        if (this.sp == -1 && (context = this.ve) != null) {
            this.sp = n.c(context, n.c(context));
        }
        try {
            jSONObject.put("data", "没有wifi网络下获取手机号权限");
            jSONObject.put("networkType", this.sp);
        } catch (JSONException unused2) {
        }
        SSWebView sSWebView = this.tt;
        if (sSWebView != null) {
            yp.c(sSWebView, "javascript:receiveNetworkSwitch(" + jSONObject + ")");
        }
        c(-1, System.currentTimeMillis() - jCurrentTimeMillis, false, "没有wifi网络下获取手机号权限", -1, this.f16549n);
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, long j10, boolean z10, String str, int i11, int i12) {
        m.c("transmit_TTWifiObject", "TTWifiObject sendWifiEvent duration:" + j10 + "  networkType:" + i10 + "   s:" + z10 + "  detailInfo:" + str + " simType:" + i11 + "  redirectTime:" + i12);
        uj.c(this.f16548c, "wifi_auth", "click_other", new ve(j10, i10, z10, str, i11, i12));
    }

    public int c() {
        int i10 = this.uj;
        if (i10 <= 0) {
            return -1;
        }
        Context context = this.ve;
        if (context == null || i10 == 1) {
            return -3;
        }
        int iC = n.c(context, n.c(context));
        this.sp = iC;
        if (iC == 0 || iC == 2) {
            return -2;
        }
        String activeSimOperatorStr = ((u) com.byazt.ut.uj.getService("device_info_new")).getActiveSimOperatorStr();
        activeSimOperatorStr.hashCode();
        switch (activeSimOperatorStr) {
            case "1":
                return 1;
            case "2":
                return 3;
            case "3":
                return 2;
            default:
                return -3;
        }
    }
}
