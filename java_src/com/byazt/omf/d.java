package com.byazt.omf;

import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bv.BaseConstants;
import com.byazt.dna.qp;
import com.byazt.el.SSWebView;
import com.byazt.ete.hq;
import com.byazt.ete.ic;
import com.byazt.ete.pu;
import com.byazt.qx.aw;
import com.byazt.qx.bm;
import com.byazt.qx.bx;
import com.byazt.qx.hd;
import com.byazt.qx.l;
import com.byazt.qx.lr;
import com.byazt.qx.sv;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.adapter.FullScreenActivity_;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.tencent.stat.DeviceInfo;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 512})
public class d implements com.byazt.ol.tt, qp.c, com.byazt.nt.ve {
    public static volatile boolean kp;
    public static final Map<String, Boolean> ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f17965a;
    public boolean aw;
    public boolean bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Object> f17967c;
    public com.byazt.pct.nu cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap<String, i> f17968d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f17969da;
    public WeakReference<com.byazt.bd.c> gr;
    public JSONObject gt;
    public WeakReference<com.byazt.at.n> gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<ic> f17970h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public WeakReference<View> f17972i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public com.byazt.xs.tt f17974l;
    public JSONObject lo;
    public com.byazt.sgn.sp.c lr;
    public WeakReference<com.byazt.ux.tt> lt;
    public WeakReference<com.byazt.at.sp> md;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public com.byazt.jwd.c f17977nb;
    public com.byazt.rbg.c or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public WeakReference<com.byazt.at.ve> f17978p;
    public List<JSONObject> pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AtomicBoolean f17979q;
    public String qp;
    public WeakReference<com.byazt.at.c> qy;
    public SoftReference<com.byazt.xl.sl> rh;
    public WeakReference<com.byazt.nt.n> rl;
    public int sl;
    public com.byazt.nt.uj sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f17980t;
    public WeakReference<com.byazt.sy.i> tk;
    public WeakReference<com.byazt.ouz.m> to;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ic f17981u;
    public WeakReference<SSWebView> uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public WeakReference<com.byazt.at.a> f17982v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f17983x;
    public String yp;
    public WeakReference<com.byazt.at.tt> yv;
    public JSONObject zm;
    public boolean tt = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17984z = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17975m = true;
    public boolean nu = true;
    public final com.byazt.ouz.t my = new com.byazt.ouz.t();
    public boolean eo = false;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f17985zb = false;
    public boolean pf = false;
    public boolean sv = false;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public boolean f17973ic = false;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public boolean f17971hd = false;
    public boolean bm = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f17966b = -1;
    public final AtomicBoolean kk = new AtomicBoolean(false);
    public final Map<String, com.byazt.pop.ve> tx = new ConcurrentHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.nr.d f17976n = new com.byazt.nr.d(Looper.getMainLooper(), this);

    @com.byazt.zqa.c(c = {0, 1, 31, 114})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f17999c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f18000n;
        public String tt;
        public JSONObject uj;
        public String ve;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ve = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
        kp = false;
    }

    public d(Context context) {
        this.f17965a = new WeakReference<>(context);
        nb.a();
    }

    private JSONObject aw() {
        try {
            View view = this.f17972i.get();
            SSWebView sSWebView = this.uj.get();
            if (view == null || sSWebView == null) {
                com.byazt.nr.m.uj("TTAndroidObject", "setCloseButtonInfo error closeButton is null");
                return null;
            }
            int[] iArrTt = pf.tt(view);
            int[] iArrTt2 = pf.tt(sSWebView);
            if (iArrTt != null && iArrTt2 != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", pf.uj(gt.getContext(), iArrTt[0] - iArrTt2[0]));
                jSONObject.put("y", pf.uj(gt.getContext(), iArrTt[1] - iArrTt2[1]));
                jSONObject.put(IAdInterListener.AdReqParam.WIDTH, pf.uj(gt.getContext(), view.getWidth()));
                jSONObject.put("h", pf.uj(gt.getContext(), view.getHeight()));
                jSONObject.put("isExist", true);
                return jSONObject;
            }
            com.byazt.nr.m.uj("TTAndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
            return null;
        } catch (Throwable unused) {
        }
    }

    private void bm() {
        WeakReference<com.byazt.at.sp> weakReference = this.md;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.md.get().tt();
    }

    private void bx() {
        ic icVar;
        WeakReference<SSWebView> weakReference = this.uj;
        if (weakReference == null || weakReference.get() == null || (icVar = this.f17981u) == null) {
            return;
        }
        int iGe = icVar.ge();
        int iTw = this.f17981u.tw();
        int iBr = this.f17981u.br();
        int iE = this.f17981u.e();
        int iPe = this.f17981u.pe();
        JSONObject jSONObjectLv = this.f17981u.lv();
        JSONObject jSONObjectCy = this.f17981u.cy();
        JSONObject jSONObjectYx = this.f17981u.yx();
        this.uj.get().setShakeValue(iGe);
        this.uj.get().setDeepShakeValue(iTw);
        this.uj.get().setWriggleValue(iBr);
        this.uj.get().setTwistConfig(jSONObjectLv);
        this.uj.get().setShakeInteractConf(jSONObjectCy);
        this.uj.get().setTwistInteractConf(jSONObjectYx);
        this.uj.get().setCalculationMethod(iE);
        this.uj.get().setCalculationTwistMethod(iPe);
    }

    private void hd() {
        WeakReference<com.byazt.at.sp> weakReference = this.md;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.md.get().c();
    }

    private static List<String> ic() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private void l() {
        hq hqVarA_;
        Context context;
        ic icVar = this.f17981u;
        if (icVar != null && (hqVarA_ = icVar.A_()) != null && hqVarA_.tt() == 1 && hqVarA_.a() == 1) {
            lt();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", new JSONObject());
            } catch (Throwable unused) {
            }
            WeakReference<Context> weakReference = this.f17965a;
            if (weakReference == null || (context = weakReference.get()) == null) {
                return;
            }
            this.sp.c(context, jSONObject, this.f17969da, this.sl, this.f17984z, true);
            c(jSONObject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lo() {
        Context context;
        List<ic> list = this.f17970h;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f17968d = new HashMap<>();
        WeakReference<SSWebView> weakReference = this.uj;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        WeakReference<Context> weakReference2 = this.f17965a;
        if (weakReference2 == null || (context = weakReference2.get()) == null) {
            return;
        }
        for (ic icVar : this.f17970h) {
            this.f17968d.put(icVar.uj(), new i(context, icVar, sSWebView, this.qp));
        }
    }

    private JSONObject lr() {
        return c(this.f17981u, this.f17979q);
    }

    private void lt() {
        if (this.sp == null) {
            this.sp = com.byazt.nt.tt.c(this, this.f17981u, this.f17973ic);
        }
    }

    private boolean pf() {
        return x.m().hd();
    }

    private boolean pu() {
        ic icVar = this.f17981u;
        if (icVar == null || icVar.jm() == null || com.byazt.aas.rl.tt(this.f17981u) || this.eo || this.f17981u.jm().optInt("parent_type") != 2) {
            return false;
        }
        int iSl = nb.sl(this.f17981u);
        if (iSl != 8 && iSl != 7) {
            return false;
        }
        this.eo = true;
        return true;
    }

    private com.byazt.nl.uj sv() {
        WeakReference<SSWebView> weakReference = this.uj;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean to() {
        return this.tk != null;
    }

    private void z(JSONObject jSONObject) {
        WeakReference<com.byazt.at.tt> weakReference = this.yv;
        if (weakReference == null || jSONObject == null || weakReference.get() == null) {
            return;
        }
        this.yv.get().c(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString("msg", ""));
    }

    public com.byazt.pct.nu a() {
        return this.cu;
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void adAnalysisData(String str) {
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject = u();
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            c(jSONObject, nb.sl(this.f17981u));
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void changeVideoState(final String str) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.d.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    d.this.a(new JSONObject(str));
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        });
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void clickEvent(final String str) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.d.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    d.this.i(new JSONObject(str));
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        });
    }

    public void cu() {
        WeakReference<com.byazt.at.a> weakReference = this.f17982v;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17982v.get().c();
    }

    public void d() {
        com.byazt.nt.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.tt();
        }
        this.sv = false;
    }

    public WeakReference<com.byazt.at.n> da() {
        return this.gu;
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            sl(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public void eo() {
        n();
        com.byazt.nt.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.ve();
        }
        for (com.byazt.pop.ve veVar : this.tx.values()) {
            if (veVar != null) {
                veVar.ve();
            }
        }
        this.tx.clear();
        WeakReference<SSWebView> weakReference = this.uj;
        if (weakReference != null) {
            weakReference.clear();
        }
        WeakReference<View> weakReference2 = this.f17972i;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        WeakReference<Context> weakReference3 = this.f17965a;
        if (weakReference3 != null) {
            weakReference3.clear();
        }
        this.f17977nb = null;
        this.f17974l = null;
    }

    public Context getContext() {
        return this.f17965a.get();
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        m(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public String getData(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.gt.toString();
        }
        try {
            JSONObject jSONObjectC = com.byazt.jlk.tt.c(this.gt, new JSONObject(str));
            return jSONObjectC == null ? this.gt.toString() : jSONObjectC.toString();
        } catch (Exception unused) {
            return this.gt.toString();
        }
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public String getTemplateInfo() {
        tt("getTemplateInfo", true);
        try {
            z();
            tt("getTemplateInfo", false);
            return this.gt.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public boolean gr() {
        ic icVar = this.f17981u;
        return icVar != null && com.byazt.ete.gt.sl(icVar) == 1;
    }

    public void gt() {
        WeakReference<com.byazt.bd.c> weakReference = this.gr;
        if (weakReference == null || weakReference.get() == null) {
            this.my.da();
        } else {
            this.gr.get().c();
        }
    }

    public boolean gu() {
        return this.pf;
    }

    public void h() {
        com.byazt.nt.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.c();
        }
        if (pu()) {
            rl();
        }
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof c) {
                try {
                    c((c) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    public boolean i() {
        ic icVar = this.f17981u;
        return icVar != null && icVar.nt();
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void initRenderFinish() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.omf.d.10
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f17977nb != null) {
                    com.byazt.jwd.c unused = d.this.f17977nb;
                }
            }
        });
    }

    public void m() {
        com.byazt.ukr.yp.c().uj(this.f17981u, "stats_reward_full_deal_skip_video");
        this.my.a();
    }

    public String md() {
        return nb.c(this.sl);
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void muteVideo(final String str) {
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.d.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    d.this.n(new JSONObject(str));
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        });
    }

    public void my() {
        this.my.n();
    }

    public byte nb() {
        return this.f17966b;
    }

    public void nu() {
        this.my.sp();
    }

    public int or() {
        if (this.my.sl() == null) {
            return 0;
        }
        return this.my.sl().ve();
    }

    public JSONObject p() {
        JSONObject jSONObject = new JSONObject();
        ic icVar = this.f17981u;
        if (icVar == null) {
            return jSONObject;
        }
        String strFv = icVar.fv();
        if (TextUtils.isEmpty(strFv)) {
            return jSONObject;
        }
        try {
            return new JSONObject(strFv);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return jSONObject;
        }
    }

    public void qp() {
        if (this.my.sl() != null) {
            this.my.sl().x();
        }
    }

    public void qy() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ClickCommon.CLICK_AREA_MATERIAL, c(this.f17970h));
            tt("materialMeta", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            da(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void reportJsbBridgeMissing(String str) {
        if (this.kk.compareAndSet(false, true)) {
            final JSONObject jSONObject = new JSONObject();
            try {
                if (!TextUtils.isEmpty(str)) {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt(MediationConstant.KEY_REASON, jSONObject2.optString(MediationConstant.KEY_REASON));
                    jSONObject.putOpt("msg_type", jSONObject2.optString("msg_type"));
                    jSONObject.putOpt("event_id", jSONObject2.optString("event_id"));
                }
                jSONObject.putOpt(TagGameListActivity_.TAG_EXTRA, this.qp);
                com.byazt.nl.uj ujVarSv = sv();
                if (ujVarSv != null) {
                    jSONObject.putOpt("url", ujVarSv.getUrl());
                }
            } catch (Throwable unused) {
            }
            com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.omf.d.11
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() {
                    com.byazt.qal.tt ttVarC = com.byazt.qal.tt.tt().c("jsb_bridge_missing");
                    ttVarC.tt(jSONObject.toString());
                    if (d.this.f17981u != null) {
                        ttVarC.a(d.this.f17981u.qy());
                    }
                    return ttVarC;
                }
            }, "jsb_bridge_missing");
        }
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void requestPauseVideo(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.my.c(jSONObject.optInt("time"), jSONObject.optString("flag"));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(ConstantsInternal.KEY_STATE_TYPE, 2);
            jSONObject2.put("jsb_name", "requestPauseVideo");
            com.byazt.ukr.yp.c().c(this.f17981u, jSONObject2);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void rh() {
        this.my.uj();
    }

    public void rl() {
        c((JSONObject) null, new com.byazt.at.uj() { // from class: com.byazt.omf.d.2
            @Override // com.byazt.at.uj
            public void c(boolean z10, List<ic> list, boolean z11) {
                d.this.f17970h = list;
                d.this.lo();
                d.this.qy();
            }
        });
    }

    @Override // com.byazt.ol.tt
    @JavascriptInterface
    public void skipVideo() {
        com.byazt.ukr.yp.c().uj(this.f17981u, "stats_reward_full_call_skip_video");
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.omf.d.9
            @Override // java.lang.Runnable
            public void run() {
                d.this.m();
            }
        });
    }

    public boolean sl() {
        return this.tt;
    }

    public boolean sp() {
        return this.f17971hd;
    }

    public JSONObject t() {
        return this.lo;
    }

    public JSONObject u() throws Exception {
        return com.byazt.jlk.tt.c(this.f17981u, this.yp);
    }

    public void x(boolean z10) {
        this.bm = z10;
    }

    public void yp() {
        WeakReference<com.byazt.at.ve> weakReference = this.f17978p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17978p.get().c();
    }

    public void yv() {
        ic icVar = this.f17981u;
        if (icVar == null) {
            return;
        }
        com.byazt.aas.n.ve(icVar, this.f17965a.get(), md());
    }

    public void zb() {
        WeakReference<com.byazt.at.n> weakReference = this.gu;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.gu.get().c();
    }

    public void zm() {
        ic icVar = this.f17981u;
        if (icVar == null) {
            return;
        }
        com.byazt.aas.n.tt(icVar, this.f17965a.get(), md());
    }

    private void my(JSONObject jSONObject) {
        WeakReference<com.byazt.nt.n> weakReference;
        com.byazt.nt.n nVar;
        if (jSONObject == null || (weakReference = this.rl) == null || (nVar = weakReference.get()) == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                nVar.c(false, null);
            } else {
                nVar.c(true, jSONArrayOptJSONArray);
            }
        } catch (Exception unused) {
            nVar.c(false, null);
        }
    }

    private int nu(JSONObject jSONObject) {
        if (jSONObject == null) {
            return -1;
        }
        return jSONObject.optInt("forceShowDownloadDialog", -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean rh(JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rl(JSONObject jSONObject) {
        com.byazt.nl.uj ujVarSv = sv();
        if (ujVarSv != null) {
            com.byazt.nr.yp.c(ujVarSv, "javascript:(function(){var __msg=" + jSONObject.toString() + ";var b=window.ToutiaoJSBridge;if(b&&typeof b._handleMessageFromToutiao==='function'){b._handleMessageFromToutiao(__msg);}else{var r=b?'handle_not_function':'bridge_null';var g=window.SDK_INJECT_GLOBAL;if(g&&typeof g.reportJsbBridgeMissing==='function'){g.reportJsbBridgeMissing(JSON.stringify({reason:r,msg_type:__msg.__msg_type,event_id:__msg.__event_id}));}}})();");
        }
    }

    public d a(boolean z10) {
        this.f17985zb = z10;
        return this;
    }

    public void da(final JSONObject jSONObject) {
        com.byazt.rbg.c cVar = this.or;
        if (cVar != null) {
            cVar.ve(jSONObject);
        }
        com.byazt.bwm.n.tt(new com.byazt.bwm.sp("renderDidFinish") { // from class: com.byazt.omf.d.12
            @Override // java.lang.Runnable
            public void run() {
                double dOptDouble;
                double dOptDouble2;
                boolean z10;
                double d10;
                double d11;
                double d12;
                double d13;
                double d14;
                if (d.this.rh == null || d.this.rh.get() == null || jSONObject == null || d.this.f17965a == null) {
                    return;
                }
                com.byazt.xl.yp ypVar = new com.byazt.xl.yp();
                ypVar.c(1);
                try {
                    boolean zOptBoolean = jSONObject.optBoolean("isRenderSuc");
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("AdSize");
                    if (jSONObjectOptJSONObject != null) {
                        dOptDouble = jSONObjectOptJSONObject.optDouble("width");
                        dOptDouble2 = jSONObjectOptJSONObject.optDouble("height");
                    } else {
                        dOptDouble = 0.0d;
                        dOptDouble2 = 0.0d;
                    }
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(FullScreenActivity_.VIDEO_INFO_EXTRA);
                    if (jSONObjectOptJSONObject2 != null) {
                        float f10 = ((Context) d.this.f17965a.get()).getResources().getDisplayMetrics().density;
                        float f11 = Resources.getSystem().getDisplayMetrics().density;
                        double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("x");
                        z10 = zOptBoolean;
                        double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("y");
                        d11 = dOptDouble2;
                        double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("width");
                        double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("height");
                        if (d.this.rh(jSONObjectOptJSONObject2)) {
                            d10 = dOptDouble;
                            double dOptDouble7 = jSONObjectOptJSONObject2.optDouble("borderRadiusTopLeft");
                            d13 = dOptDouble6;
                            double dOptDouble8 = jSONObjectOptJSONObject2.optDouble("borderRadiusTopRight");
                            d14 = dOptDouble5;
                            double dOptDouble9 = jSONObjectOptJSONObject2.optDouble("borderRadiusBottomLeft");
                            d12 = dOptDouble4;
                            double dOptDouble10 = jSONObjectOptJSONObject2.optDouble("borderRadiusBottomRight");
                            if (gt.tt().qe()) {
                                ypVar.c(pf.tt(f10, pf.c(f11, (float) dOptDouble7)));
                                ypVar.tt(pf.tt(f10, pf.c(f11, (float) dOptDouble8)));
                                ypVar.ve(pf.tt(f10, pf.c(f11, (float) dOptDouble9)));
                                ypVar.uj(pf.tt(f10, pf.c(f11, (float) dOptDouble10)));
                            } else {
                                ypVar.c((float) dOptDouble7);
                                ypVar.tt((float) dOptDouble8);
                                ypVar.ve((float) dOptDouble9);
                                ypVar.uj((float) dOptDouble10);
                            }
                        } else {
                            d12 = dOptDouble4;
                            d13 = dOptDouble6;
                            d10 = dOptDouble;
                            d14 = dOptDouble5;
                        }
                        if (gt.tt().qe()) {
                            ypVar.ve(pf.tt(f10, pf.c(f11, (float) dOptDouble3)));
                            ypVar.uj(pf.tt(f10, pf.c(f11, (float) d12)));
                            ypVar.n(pf.tt(f10, pf.c(f11, (float) d14)));
                            ypVar.a(pf.tt(f10, pf.c(f11, (float) d13)));
                        } else {
                            ypVar.ve(dOptDouble3);
                            ypVar.uj(d12);
                            ypVar.n(d14);
                            ypVar.a(d13);
                        }
                    } else {
                        z10 = zOptBoolean;
                        d10 = dOptDouble;
                        d11 = dOptDouble2;
                    }
                    String strOptString = jSONObject.optString("msg", sp.c(101));
                    int iOptInt = jSONObject.optInt("code", 101);
                    ypVar.c(z10);
                    ypVar.c(d10);
                    ypVar.tt(d11);
                    ypVar.c(strOptString);
                    ypVar.tt(iOptInt);
                    ((com.byazt.xl.sl) d.this.rh.get()).c(ypVar);
                } catch (Exception unused) {
                    ypVar.tt(101);
                    ypVar.c(sp.c(101));
                    ((com.byazt.xl.sl) d.this.rh.get()).c(ypVar);
                }
            }
        });
    }

    public void i(boolean z10) {
        this.tt = z10;
    }

    public int n(boolean z10) {
        if (!this.sv && com.byazt.ete.cu.c(this.f17981u) != 0 && z10) {
            return 2;
        }
        if (this.bx) {
            return 1;
        }
        if (this.aw) {
            return com.byazt.ete.cu.c(this.f17981u) == 2 ? 2 : 1;
        }
        return com.byazt.ete.cu.c(this.f17981u) == 0 ? 1 : 2;
    }

    public void sl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri uri = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(uri.getScheme().toLowerCase())) {
                com.byazt.aas.gt.c(uri, this);
            }
        } catch (Exception unused) {
        }
    }

    public void sp(boolean z10) {
        this.f17971hd = z10;
    }

    public boolean t(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", c(this.f17970h));
        } catch (Exception unused) {
        }
        return true;
    }

    public JSONObject u(JSONObject jSONObject) {
        com.byazt.dj.tt ttVarIj;
        if (this.f17967c != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, null);
                if (strOptString != null) {
                    jSONObject2 = new JSONObject(strOptString);
                }
                if (p.x()) {
                    try {
                        ic icVar = this.f17981u;
                        if (icVar != null && (ttVarIj = icVar.ij()) != null) {
                            String strU = ttVarIj.u();
                            if (!TextUtils.isEmpty(strU)) {
                                jSONObject2.putOpt("media_extra", strU);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                for (Map.Entry<String, Object> entry : this.f17967c.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            } catch (Exception e10) {
                com.byazt.nr.m.ve(e10.toString());
            }
        }
        return jSONObject;
    }

    public boolean uj() {
        WeakReference<SSWebView> weakReference = this.uj;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.uj.get().N_();
    }

    public com.byazt.sy.i ve() {
        WeakReference<com.byazt.sy.i> weakReference = this.tk;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public ic x() {
        return this.f17981u;
    }

    private boolean m(JSONObject jSONObject) {
        if (this.my.sl() != null && jSONObject != null) {
            double dC = this.my.sl().c();
            int iTt = this.my.sl().tt();
            try {
                jSONObject.put("currentTime", dC / 1000.0d);
                jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, iTt);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void a(JSONObject jSONObject) {
        if (this.my.sl() == null || jSONObject == null) {
            return;
        }
        try {
            int iOptInt = jSONObject.optInt("stateType", -1);
            this.my.sl().c(iOptInt);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("jsb_name", "changeVideoState");
            jSONObject2.put(ConstantsInternal.KEY_STATE_TYPE, iOptInt);
            com.byazt.ukr.yp.c().c(this.f17981u, jSONObject2);
        } catch (Exception unused) {
        }
    }

    public void i(JSONObject jSONObject) {
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        double dOptDouble;
        double d16;
        double d17;
        SoftReference<com.byazt.xl.sl> softReference;
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("adId");
            int iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("clickAreaType");
            String strOptString3 = jSONObject.optString("clickAreaId");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("clickInfo");
            String strOptString4 = jSONObject.optString("subConvertLinkTag");
            int iOptInt2 = jSONObject.optInt("dpaPosition", -1);
            JSONObject jSONObject2 = new JSONObject();
            com.byazt.ete.nu.c(jSONObject.optString("clickScene"));
            jSONObject2.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            jSONObject2.put("live_saas_param_interaction_type", jSONObject.optInt("live_saas_param_interaction_type", -1));
            jSONObject2.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            double d18 = -1.0d;
            if (jSONObjectOptJSONObject != null) {
                double dOptDouble2 = jSONObjectOptJSONObject.optDouble("down_x", -1.0d);
                double dOptDouble3 = jSONObjectOptJSONObject.optDouble("down_y", -1.0d);
                double dOptDouble4 = jSONObjectOptJSONObject.optDouble("up_x", -1.0d);
                double dOptDouble5 = jSONObjectOptJSONObject.optDouble("up_y", -1.0d);
                double dOptDouble6 = jSONObjectOptJSONObject.optDouble("down_time", -1.0d);
                double dOptDouble7 = jSONObjectOptJSONObject.optDouble("up_time", -1.0d);
                double dOptDouble8 = jSONObjectOptJSONObject.optDouble("button_x", -1.0d);
                double dOptDouble9 = jSONObjectOptJSONObject.optDouble("button_y", -1.0d);
                double dOptDouble10 = jSONObjectOptJSONObject.optDouble("button_width", -1.0d);
                dOptDouble = jSONObjectOptJSONObject.optDouble("button_height", -1.0d);
                d18 = dOptDouble2;
                d10 = dOptDouble3;
                d11 = dOptDouble6;
                d12 = dOptDouble7;
                d13 = dOptDouble8;
                d14 = dOptDouble9;
                d15 = dOptDouble10;
                d16 = dOptDouble4;
                d17 = dOptDouble5;
            } else {
                d10 = -1.0d;
                d11 = -1.0d;
                d12 = -1.0d;
                d13 = -1.0d;
                d14 = -1.0d;
                d15 = -1.0d;
                dOptDouble = -1.0d;
                d16 = -1.0d;
                d17 = -1.0d;
            }
            com.byazt.ete.gr grVarC = new com.byazt.ete.gr.c().uj((float) d18).ve((float) d10).tt((float) d16).c((float) d17).tt((long) d11).c((long) d12).c((int) d13).tt((int) d14).ve((int) d15).uj((int) dOptDouble).c(strOptString2).tt(strOptString3).c(true).c((SparseArray<com.byazt.hkv.uj.c>) null).c(jSONObject2).n(strOptString4).n(iOptInt2).c();
            if (!c(strOptString, iOptInt, grVarC) && (softReference = this.rh) != null && softReference.get() != null) {
                this.rh.get().c(null, iOptInt, grVarC, nu(jSONObject));
            } else {
                l();
            }
        } catch (Exception unused) {
            SoftReference<com.byazt.xl.sl> softReference2 = this.rh;
            if (softReference2 != null && softReference2.get() != null) {
                this.rh.get().c(null, -1, null, -1);
            } else {
                l();
            }
        }
    }

    public int sp(JSONObject jSONObject) {
        if (jSONObject.optBoolean("interactShowDownloadDialog", false)) {
            this.f17981u.ve(true);
            return 2;
        }
        if (jSONObject.optInt("downloadDialogStatus") != 1) {
            return 0;
        }
        if (this.f17981u.u_().c() == 2) {
            this.f17981u.ve(true);
        }
        return 1;
    }

    public JSONObject tt() {
        WeakReference<com.byazt.sy.i> weakReference = this.tk;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.tk.get().getCreativeVideoViewInfo();
    }

    public void x(JSONObject jSONObject) {
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        double dOptDouble;
        double d16;
        double d17;
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("adId");
            int iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("subConvertLinkTag");
            int iOptInt2 = jSONObject.optInt("dpaPosition", -1);
            String strOptString3 = jSONObject.optString("clickAreaType");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("clickInfo");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            jSONObject2.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            double d18 = -1.0d;
            if (jSONObjectOptJSONObject != null) {
                double dOptDouble2 = jSONObjectOptJSONObject.optDouble("down_x", -1.0d);
                double dOptDouble3 = jSONObjectOptJSONObject.optDouble("down_y", -1.0d);
                double dOptDouble4 = jSONObjectOptJSONObject.optDouble("up_x", -1.0d);
                double dOptDouble5 = jSONObjectOptJSONObject.optDouble("up_y", -1.0d);
                double dOptDouble6 = jSONObjectOptJSONObject.optDouble("down_time", -1.0d);
                double dOptDouble7 = jSONObjectOptJSONObject.optDouble("up_time", -1.0d);
                double dOptDouble8 = jSONObjectOptJSONObject.optDouble("button_x", -1.0d);
                double dOptDouble9 = jSONObjectOptJSONObject.optDouble("button_y", -1.0d);
                double dOptDouble10 = jSONObjectOptJSONObject.optDouble("button_width", -1.0d);
                dOptDouble = jSONObjectOptJSONObject.optDouble("button_height", -1.0d);
                d18 = dOptDouble2;
                d10 = dOptDouble3;
                d16 = dOptDouble4;
                d11 = dOptDouble6;
                d12 = dOptDouble7;
                d13 = dOptDouble8;
                d14 = dOptDouble9;
                d15 = dOptDouble10;
                d17 = dOptDouble5;
            } else {
                d10 = -1.0d;
                d11 = -1.0d;
                d12 = -1.0d;
                d13 = -1.0d;
                d14 = -1.0d;
                d15 = -1.0d;
                dOptDouble = -1.0d;
                d16 = -1.0d;
                d17 = -1.0d;
            }
            com.byazt.ete.gr grVarC = new com.byazt.ete.gr.c().uj((int) d18).ve((int) d10).tt((int) d16).c((int) d17).tt((long) d11).c((long) d12).c((int) d13).tt((int) d14).ve((int) d15).uj((int) dOptDouble).c(strOptString3).c(true).c(jSONObject2).c((SparseArray<com.byazt.hkv.uj.c>) null).n(strOptString2).n(iOptInt2).c();
            SoftReference<com.byazt.xl.sl> softReference = this.rh;
            if (softReference != null && softReference.get() != null) {
                this.rh.get().tt(null, iOptInt, grVarC, sp(jSONObject));
            }
            c(strOptString, iOptInt, grVarC);
        } catch (Exception unused) {
            SoftReference<com.byazt.xl.sl> softReference2 = this.rh;
            if (softReference2 == null || softReference2.get() == null) {
                return;
            }
            this.rh.get().tt(null, -1, null, 0);
        }
    }

    public void yp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f17983x = jSONObject.optString("cid");
        this.f17969da = jSONObject.optString("log_extra");
    }

    private void gt(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            rl(jSONObject);
        } else {
            rh.a().post(new Runnable() { // from class: com.byazt.omf.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d.this.rl(jSONObject);
                }
            });
        }
    }

    public void t(boolean z10) {
        this.f17979q = new AtomicBoolean(z10);
    }

    public void uj(boolean z10) {
        this.aw = z10;
    }

    public void ve(boolean z10) {
        this.bx = z10;
        this.sv = z10;
    }

    public static void tt(boolean z10) {
        kp = z10;
    }

    public void da(boolean z10) {
        this.pf = z10;
    }

    public d uj(String str) {
        this.f17969da = str;
        return this;
    }

    public static JSONArray c(List<ic> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            jSONArray.put(list.get(i10).yg());
        }
        return jSONArray;
    }

    public d tt(SSWebView sSWebView) {
        this.uj = new WeakReference<>(sSWebView);
        return this;
    }

    public d uj(JSONObject jSONObject) {
        this.gt = jSONObject;
        return this;
    }

    public d ve(String str) {
        this.yp = str;
        return this;
    }

    public void n() {
        com.byazt.pct.nu nuVar = this.cu;
        if (nuVar == null) {
            return;
        }
        nuVar.c();
        this.cu = null;
    }

    public void sl(boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visibleState", z10 ? 0 : 1);
        } catch (Exception e10) {
            com.byazt.nr.m.uj("TTAndroidObject", e10.getMessage());
        }
        n("visibleStateChange", jSONObject);
    }

    public d tt(String str) {
        this.f17983x = str;
        return this;
    }

    public void uj(int i10) {
        this.my.tt(i10);
    }

    public d ve(int i10) {
        this.sl = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", com.alipay.sdk.authjs.a.f7124i);
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            gt(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public com.byazt.pop.ve sp(String str) {
        return this.tx.get(str);
    }

    public d tt(List<JSONObject> list) {
        this.pu = list;
        return this;
    }

    public d ve(List<ic> list) {
        this.f17970h = list;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e A[Catch: Exception -> 0x0022, TRY_LEAVE, TryCatch #0 {Exception -> 0x0022, blocks: (B:4:0x0004, B:5:0x000a, B:7:0x000e), top: B:11:0x0004 }] */
    public JSONObject z() {
        JSONObject jSONObject = this.gt;
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
                if (this.f17981u != null) {
                    jSONObject.put("setting", lr());
                    jSONObject.put("extension", this.f17981u.ts());
                }
            } catch (Exception unused) {
            }
        } else if (this.f17981u != null) {
            jSONObject.put("setting", lr());
            jSONObject.put("extension", this.f17981u.ts());
        }
        this.gt = jSONObject;
        return jSONObject;
    }

    public d tt(int i10) {
        this.f17984z = true;
        return this;
    }

    public void ve(JSONObject jSONObject) {
        com.byazt.rbg.c cVar;
        if (jSONObject == null || (cVar = this.or) == null) {
            return;
        }
        cVar.uj(jSONObject);
    }

    public boolean a(String str) {
        return TextUtils.isEmpty(str) || !"click_other".equals(str) || gr();
    }

    public d c(String str) {
        this.qp = str;
        return this;
    }

    public d n(String str) {
        this.f17980t = str;
        return this;
    }

    public void tt(JSONObject jSONObject) {
        this.lo = jSONObject;
    }

    public d c(boolean z10) {
        this.f17973ic = z10;
        return this;
    }

    public void n(JSONObject jSONObject) {
        if (this.my.sl() == null || jSONObject == null) {
            return;
        }
        try {
            this.my.sl().c(jSONObject.optBoolean(com.sigmob.sdk.base.common.a.f78892z, false));
        } catch (Exception unused) {
        }
    }

    public boolean tt(ic icVar) {
        WeakReference<com.byazt.ouz.m> weakReference;
        com.byazt.ouz.m mVar;
        if (icVar != null && (weakReference = this.to) != null && (mVar = weakReference.get()) != null) {
            mVar.tt(icVar);
        }
        return false;
    }

    public void ve(ic icVar) {
        this.my.c(icVar);
    }

    public d c(SSWebView sSWebView) {
        com.byazt.nr.m.uj("webviewpool", "===useJsb2 webView hashCode:" + sSWebView.hashCode());
        com.byazt.pct.nu nuVarTt = com.byazt.pct.nu.c(sSWebView).c(new com.byazt.ay.c()).c("ToutiaoJSBridge").c(new com.byazt.pct.t() { // from class: com.byazt.omf.d.1
            @Override // com.byazt.pct.t
            public <T> T c(String str, Type type) {
                return null;
            }

            @Override // com.byazt.pct.t
            public <T> String c(T t10) {
                return null;
            }
        }).c(pf()).tt(true).c().tt();
        this.cu = nuVarTt;
        com.byazt.qx.zm.c(nuVarTt, this);
        com.byazt.qx.a.c(this.cu, this);
        com.byazt.qx.x.c(this.cu, this, this.f17981u);
        com.byazt.qx.m.c(this.cu);
        com.byazt.qx.d.c(this.cu, sSWebView);
        com.byazt.qx.i.c(this.cu, this);
        com.byazt.qx.u.c(this.cu, this);
        hd.c(this.cu, this);
        com.byazt.ja.uj.c(this.cu, this);
        com.byazt.qx.gu.c(this.cu, this);
        com.byazt.qx.gt.c(this.cu, this);
        com.byazt.ja.ve.c(this.cu, this);
        com.byazt.ja.c.c(this.cu, this);
        com.byazt.ja.n.c(this.cu, this);
        com.byazt.ja.a.c(this.cu, this);
        com.byazt.ja.tt.c(this.cu, this);
        bx();
        com.byazt.qx.ve.c(this.cu, this.uj.get(), this.f17983x);
        com.byazt.qx.zb.c(this.cu, this.uj.get(), this.f17983x);
        com.byazt.qx.tt.c(this.cu, this.uj.get(), this.f17983x);
        com.byazt.qx.eo.c(this.cu, this.uj.get(), this.f17983x);
        com.byazt.qx.sp.c(this.cu, this);
        com.byazt.qx.gr.c(this.cu, this);
        com.byazt.qx.ic.c(this.cu, this);
        com.byazt.qx.rh.c(this.cu, this);
        com.byazt.qx.nu.c(this.cu, this.f17981u);
        com.byazt.qx.p.c(this.cu, this.f17965a.get(), this.f17981u);
        com.byazt.qx.t.c(this.cu, this.f17981u, this.pu);
        aw.c(this.cu, this);
        com.byazt.qx.h.c(this.cu, this, this.lt);
        com.byazt.qx.qp.c(this.cu, this, this.lt);
        l.c(this.cu, sSWebView, this);
        com.byazt.qx.sl.c(this.cu, this.f17981u, this);
        com.byazt.qx.z.c(this.cu, this.f17981u, this);
        lr.c(this.cu, this.lr);
        bm.c(this.cu, this);
        com.byazt.qx.or.c(this.cu, this.f17974l);
        com.byazt.qx.cu.c(this.cu, this, this.f17981u);
        com.byazt.qx.yp.c(this.cu, this.gt);
        com.byazt.qx.da.c(this.cu, this.f17981u, this);
        com.byazt.qx.c.c(this.cu, this.f17965a.get());
        bx.c(this.cu, this.f17981u);
        com.byazt.qx.uj.c(this.cu, this);
        com.byazt.qx.md.c(this.cu, this);
        com.byazt.qx.qy.c(this.cu, this, this.f17965a.get(), this.f17981u);
        com.byazt.qx.n.c(this.cu);
        com.byazt.qx.rl.c(this.cu);
        com.byazt.qx.yv.c(this.cu, this, this.f17981u);
        sv.c(this.cu, this);
        com.byazt.qx.my.c(this.cu, this.f17981u);
        com.byazt.qx.nb.c(this.cu, this.f17981u);
        com.byazt.qx.pf.c(this.cu, this.f17981u);
        return this;
    }

    public void ve(String str, JSONObject jSONObject) {
        try {
            com.byazt.pct.nu nuVar = this.cu;
            if (nuVar != null) {
                nuVar.c(str, jSONObject);
            }
        } catch (Throwable th) {
            com.byazt.nr.m.ve("TTAndroidObject", "sendJsMsg2020 error", th);
        }
    }

    public void a(int i10) {
        this.my.ve(i10);
    }

    private void tt(String str, boolean z10) {
        if (this.or == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z10) {
            this.or.a(str);
        } else {
            this.or.sp(str);
        }
    }

    public void n(int i10) {
        this.my.n(i10);
    }

    private void n(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            gt(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public void tt(final Uri uri) {
        long j10;
        JSONObject jSONObjectU;
        ic icVar;
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if (!"private".equals(host) && !"dispatch_message".equals(host)) {
                    com.byazt.nr.m.tt("TTAndroidObject", "handlrUir: not match schema host");
                    return;
                }
                com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.omf.d.4
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.i(uri.toString());
                    }
                });
                return;
            }
            String queryParameter = uri.getQueryParameter(PointParamKey.CATEGORY);
            String queryParameter2 = uri.getQueryParameter(TagGameListActivity_.TAG_EXTRA);
            String queryParameter3 = uri.getQueryParameter(PostingActivity_.LABEL_EXTRA);
            if (a(queryParameter3)) {
                if (com.byazt.ete.qp.tt(this.f17981u) && TextUtils.equals(queryParameter3, "track")) {
                    return;
                }
                long j11 = 0;
                try {
                    j10 = Long.parseLong(uri.getQueryParameter(HmInputMappingContent.FIELD_VALUE));
                } catch (Exception unused) {
                    j10 = 0;
                }
                if (j10 == 0 && (icVar = this.f17981u) != null) {
                    try {
                        j10 = Long.parseLong(icVar.uj());
                    } catch (Exception unused2) {
                    }
                }
                try {
                    j11 = Long.parseLong(uri.getQueryParameter("ext_value"));
                } catch (Exception unused3) {
                }
                long j12 = j11;
                JSONObject jSONObject = new JSONObject();
                String queryParameter4 = uri.getQueryParameter(BaseConstants.EVENT_LABEL_EXTRA);
                if (!TextUtils.isEmpty(queryParameter4)) {
                    try {
                        jSONObject = new JSONObject(queryParameter4);
                    } catch (Exception unused4) {
                    }
                }
                c(queryParameter3, jSONObject);
                if ("click".equals(queryParameter3)) {
                    jSONObjectU = u(jSONObject);
                    WeakReference<com.byazt.at.n> weakReference = this.gu;
                    if (weakReference != null && weakReference.get() != null) {
                        this.gu.get().tt();
                    }
                } else {
                    jSONObjectU = jSONObject;
                }
                String strC = c(queryParameter2, queryParameter3);
                if (TextUtils.isEmpty(strC)) {
                    strC = queryParameter2;
                }
                String strOptString = jSONObjectU.optString("log_extra");
                if (this.f17981u != null && queryParameter3.contains("sanfang") && TextUtils.isEmpty(strOptString)) {
                    jSONObjectU.putOpt("log_extra", this.f17981u.w_());
                }
                com.byazt.ddx.uj.c(queryParameter, strC, queryParameter3, j10, j12, jSONObjectU, this.f17966b);
            }
        } catch (Exception e10) {
            com.byazt.nr.m.tt("TTAndroidObject", "handleUri exception: ", e10);
        }
    }

    private void x(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                c cVar = new c();
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null) {
                        cVar.f17999c = jSONObjectOptJSONObject.optString("__msg_type", null);
                        cVar.tt = jSONObjectOptJSONObject.optString("__callback_id", null);
                        cVar.ve = jSONObjectOptJSONObject.optString(com.alipay.sdk.authjs.a.f7128m);
                        cVar.uj = jSONObjectOptJSONObject.optJSONObject("params");
                        cVar.f18000n = jSONObjectOptJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(cVar.f17999c) && !TextUtils.isEmpty(cVar.ve)) {
                    Message messageObtainMessage = this.f17976n.obtainMessage(11);
                    messageObtainMessage.obj = cVar;
                    this.f17976n.sendMessage(messageObtainMessage);
                }
            }
        } catch (Exception unused2) {
            if (com.byazt.nr.m.c()) {
                com.byazt.nr.m.tt("TTAndroidObject", "failed to parse jsbridge msg queue " + str);
                return;
            }
            com.byazt.nr.m.tt("TTAndroidObject", "failed to parse jsbridge msg queue");
        }
    }

    @Override // com.byazt.nt.ve
    public void tt(String str, JSONObject jSONObject) {
        pf();
        n(str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str) {
        int iIndexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    com.byazt.nl.uj ujVarSv = sv();
                    if (ujVarSv != null) {
                        com.byazt.nr.yp.c(ujVarSv, "javascript:ToutiaoJSBridge._fetchQueue()");
                        return;
                    }
                    return;
                }
                if (!str.startsWith("bytedance://private/setresult/") || (iIndexOf = str.indexOf(38, 30)) <= 0) {
                    return;
                }
                String strSubstring = str.substring(30, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (!strSubstring.equals("SCENE_FETCHQUEUE") || strSubstring2.length() <= 0) {
                    return;
                }
                x(strSubstring2);
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject c() {
        WeakReference<com.byazt.sy.i> weakReference = this.tk;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.tk.get().getContainerInfo();
    }

    public void c(SSWebView.tt ttVar) {
        WeakReference<SSWebView> weakReference = this.uj;
        if (weakReference == null || weakReference.get() == null || ttVar == null) {
            return;
        }
        this.uj.get().setOnShakeListener(ttVar);
    }

    public d c(com.byazt.ouz.m mVar) {
        this.to = new WeakReference<>(mVar);
        return this;
    }

    public d c(com.byazt.ux.tt ttVar) {
        this.lt = new WeakReference<>(ttVar);
        return this;
    }

    public d c(com.byazt.sy.i iVar) {
        this.tk = new WeakReference<>(iVar);
        return this;
    }

    public void c(int i10) {
        if (kp) {
            com.byazt.nr.m.tt("TTAndroidObject", "blocked Twist");
            return;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                tt("twist_callback", (JSONObject) null);
            }
        } else {
            if (this.f17981u != null && uj()) {
                com.byazt.yzg.a.uj = true;
            }
            tt("wobble_callback", (JSONObject) null);
        }
    }

    public d c(com.byazt.rbg.c cVar) {
        this.or = cVar;
        return this;
    }

    public d c(View view) {
        this.f17972i = new WeakReference<>(view);
        return this;
    }

    public d c(com.byazt.at.tt ttVar) {
        this.yv = new WeakReference<>(ttVar);
        return this;
    }

    public d c(com.byazt.at.ve veVar) {
        this.f17978p = new WeakReference<>(veVar);
        return this;
    }

    public d c(com.byazt.at.sp spVar) {
        this.md = new WeakReference<>(spVar);
        return this;
    }

    public d c(ic icVar) {
        this.f17981u = icVar;
        return this;
    }

    public d c(com.byazt.xl.sl slVar) {
        this.rh = new SoftReference<>(slVar);
        return this;
    }

    public d c(com.byazt.ouz.sl slVar) {
        this.my.c(slVar);
        return this;
    }

    public d c(com.byazt.nt.n nVar) {
        this.rl = new WeakReference<>(nVar);
        return this;
    }

    public d c(JSONObject jSONObject) {
        this.zm = jSONObject;
        return this;
    }

    public d c(Map<String, Object> map) {
        this.f17967c = map;
        return this;
    }

    public d c(com.byazt.at.c cVar) {
        this.qy = new WeakReference<>(cVar);
        return this;
    }

    public d c(com.byazt.at.n nVar) {
        this.gu = new WeakReference<>(nVar);
        return this;
    }

    public d c(com.byazt.bd.c cVar) {
        this.gr = new WeakReference<>(cVar);
        return this;
    }

    public void c(com.byazt.sgn.sp.c cVar) {
        this.lr = cVar;
    }

    public void c(com.byazt.xs.tt ttVar) {
        this.f17974l = ttVar;
    }

    public static void c(JSONObject jSONObject, int i10) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = ic().iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next());
        }
        jSONObject.put("appName", com.byazt.fh.c.c());
        jSONObject.put("innerAppName", com.byazt.fh.c.a());
        jSONObject.put(DeviceInfo.TAG_ANDROID_ID, com.byazt.fh.c.tt());
        jSONObject.put("sdkEdition", com.byazt.fh.c.ve());
        jSONObject.put("sdkApiVersion", com.byazt.fh.c.uj());
        jSONObject.put("appVersion", com.byazt.fh.c.n());
        jSONObject.put("netType", com.byazt.fh.c.sp());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.byazt.fh.c.x());
        jSONObject.put("osVersion", Build.VERSION.SDK_INT);
        jSONObject.put("appId", x.m().rl());
        if (pu.c(i10)) {
            jSONObject.put("themeStatus", x.m().pu());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:167:0x026d A[PHI: r3
      0x026d: PHI (r3v23 org.json.JSONObject) = (r3v19 org.json.JSONObject), (r3v24 org.json.JSONObject) binds: [B:166:0x026b, B:155:0x023f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0028  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public JSONObject c(c cVar, int i10) throws Exception {
        byte b10;
        Context context;
        JSONObject jSONObjectAw;
        if (!"call".equals(cVar.f17999c)) {
            return null;
        }
        pf();
        JSONObject jSONObject = new JSONObject();
        String str = cVar.ve;
        str.hashCode();
        switch (str.hashCode()) {
            case -2036781162:
                if (!str.equals("subscribe_app_ad")) {
                    b10 = -1;
                } else {
                    b10 = 0;
                }
                break;
            case -1752549500:
                if (!str.equals("adInfoStash")) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
                break;
            case -1423303823:
                if (!str.equals("adInfo")) {
                    b10 = -1;
                } else {
                    b10 = 2;
                }
                break;
            case -1330994877:
                if (!str.equals("pauseWebView")) {
                    b10 = -1;
                } else {
                    b10 = 3;
                }
                break;
            case -1169135450:
                if (!str.equals("changeVideoState")) {
                    b10 = -1;
                } else {
                    b10 = 4;
                }
                break;
            case -844321441:
                if (!str.equals("webview_time_track")) {
                    b10 = -1;
                } else {
                    b10 = 5;
                }
                break;
            case -800853518:
                if (!str.equals("clickEvent")) {
                    b10 = -1;
                } else {
                    b10 = 6;
                }
                break;
            case -794273169:
                if (!str.equals("appInfo")) {
                    b10 = -1;
                } else {
                    b10 = 7;
                }
                break;
            case -715147645:
                if (!str.equals("getScreenSize")) {
                    b10 = -1;
                } else {
                    b10 = 8;
                }
                break;
            case -489318846:
                if (!str.equals("getMaterialMeta")) {
                    b10 = -1;
                } else {
                    b10 = 9;
                }
                break;
            case -278382602:
                if (!str.equals("send_temai_product_ids")) {
                    b10 = -1;
                } else {
                    b10 = 10;
                }
                break;
            case -173752734:
                if (!str.equals("getTeMaiAds")) {
                    b10 = -1;
                } else {
                    b10 = 11;
                }
                break;
            case 27837080:
                if (!str.equals("download_app_ad")) {
                    b10 = -1;
                } else {
                    b10 = 12;
                }
                break;
            case 105049135:
                if (!str.equals("unsubscribe_app_ad")) {
                    b10 = -1;
                } else {
                    b10 = 13;
                }
                break;
            case 352242576:
                if (!str.equals("getDownloadStatus")) {
                    b10 = -1;
                } else {
                    b10 = 14;
                }
                break;
            case 399543522:
                if (!str.equals("getCloseButtonInfo")) {
                    b10 = -1;
                } else {
                    b10 = 15;
                }
                break;
            case 402955465:
                if (!str.equals("isViewable")) {
                    b10 = -1;
                } else {
                    b10 = 16;
                }
                break;
            case 442647767:
                if (!str.equals("sendReward")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 571273292:
                if (!str.equals("dynamicTrack")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 650209982:
                if (!str.equals("getTemplateInfo")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 672928467:
                if (!str.equals("cancel_download_app_ad")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case 711635577:
                if (!str.equals("getCurrentVideoState")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
            case 885131792:
                if (!str.equals("getVolume")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                }
                break;
            case 1107374321:
                if (!str.equals("pauseWebViewTimers")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.QUITQ;
                }
                break;
            case 1151744482:
                if (!str.equals("muteVideo")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                }
                break;
            case 1237100796:
                if (!str.equals("renderDidFinish")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.APPENDQ;
                }
                break;
            case 1634511418:
                if (!str.equals("endcard_load")) {
                    b10 = -1;
                } else {
                    b10 = 26;
                }
                break;
            case 1713585602:
                if (!str.equals("getNetworkData")) {
                    b10 = -1;
                } else {
                    b10 = 27;
                }
                break;
            case 2086000188:
                if (!str.equals("skipVideo")) {
                    b10 = -1;
                } else {
                    b10 = BinaryMemcacheOpcodes.TOUCH;
                }
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                lt();
                WeakReference<Context> weakReference = this.f17965a;
                if (weakReference != null && (context = weakReference.get()) != null) {
                    this.sp.c(context, cVar.uj, this.f17969da, this.sl, this.f17984z, this.bm);
                }
                break;
            case 1:
                yp(cVar.uj);
                break;
            case 2:
                jSONObject = u();
                break;
            case 3:
                hd();
                break;
            case 4:
                a(cVar.uj);
                break;
            case 5:
                ve(cVar.uj);
                break;
            case 6:
                i(cVar.uj);
                break;
            case 7:
                c(jSONObject, nb.sl(this.f17981u));
                break;
            case 8:
                WeakReference<com.byazt.at.c> weakReference2 = this.qy;
                com.byazt.at.c cVar2 = weakReference2 != null ? weakReference2.get() : null;
                if (cVar2 != null) {
                    int iTt = cVar2.tt();
                    int iC = cVar2.c();
                    jSONObject.put("width", iTt);
                    jSONObject.put("height", iC);
                }
                break;
            case 9:
                t(jSONObject);
                break;
            case 10:
                my(cVar.uj);
                break;
            case 11:
                jSONObjectAw = this.zm;
                if (jSONObjectAw != null) {
                    jSONObject = jSONObjectAw;
                }
                break;
            case 12:
                da(true);
                JSONObject jSONObject2 = cVar.uj;
                c(cVar.uj, jSONObject2 != null ? jSONObject2.optBoolean("is_compliant_download") : false);
                break;
            case 13:
                com.byazt.nt.uj ujVar = this.sp;
                if (ujVar != null) {
                    ujVar.c(cVar.uj);
                }
                break;
            case 14:
                jSONObject = com.byazt.qx.m.c(cVar.uj);
                break;
            case 15:
                jSONObjectAw = aw();
                if (jSONObjectAw != null) {
                    jSONObject = jSONObjectAw;
                }
                break;
            case 16:
                jSONObject.put("viewStatus", this.f17985zb ? 1 : 0);
                break;
            case 17:
                this.tt = true;
                JSONObject jSONObject3 = cVar.uj;
                int iOptInt = jSONObject3 != null ? jSONObject3.optInt(MediationConstant.KEY_REWARD_TYPE) : 0;
                WeakReference<com.byazt.at.n> weakReference3 = this.gu;
                if (weakReference3 != null && weakReference3.get() != null) {
                    this.gu.get().c(iOptInt);
                }
                this.my.uj(iOptInt);
                break;
            case 18:
                sl(cVar.uj);
                break;
            case 19:
                z();
                jSONObject = this.gt;
                break;
            case 20:
                com.byazt.nt.uj ujVar2 = this.sp;
                if (ujVar2 != null) {
                    ujVar2.tt(cVar.uj);
                }
                break;
            case 21:
                m(jSONObject);
                break;
            case 22:
                AudioManager audioManager = (AudioManager) gt.getContext().getSystemService("audio");
                jSONObject.put("endcard_mute", (audioManager != null ? audioManager.getStreamVolume(3) : -1) <= 0);
                break;
            case 23:
                bm();
                break;
            case 24:
                n(cVar.uj);
                break;
            case 25:
                da(cVar.uj);
                break;
            case 26:
                z(cVar.uj);
                break;
            case 27:
                c(cVar, jSONObject);
                break;
            case 28:
                m();
                break;
        }
        if (i10 == 1 && !TextUtils.isEmpty(cVar.tt)) {
            uj(cVar.tt, jSONObject);
            pf();
        }
        return jSONObject;
    }

    public void c(float f10) {
        if (this.my.sl() == null) {
            return;
        }
        try {
            this.my.sl().c(f10);
        } catch (Exception unused) {
        }
    }

    public void c(float f10, float f11, float f12, float f13, int i10) {
        this.my.c(f10, f11, f12, f13, i10);
    }

    public static JSONObject c(ic icVar, AtomicBoolean atomicBoolean) {
        boolean z10;
        JSONObject jSONObject = new JSONObject();
        if (gt.tt() == null) {
            return jSONObject;
        }
        try {
            int iT = nb.t(icVar);
            int iSl = nb.sl(icVar);
            boolean z11 = true;
            int iUj = com.byazt.ete.or.tt(true, icVar, true) ? 0 : gt.tt().uj(iT);
            int iN = (com.byazt.ete.or.tt(false, icVar, true) || (com.byazt.ete.h.c(icVar) && com.byazt.ete.h.tt(icVar) > 0)) ? 0 : gt.tt().n(iT);
            boolean zN = gt.tt().n(String.valueOf(iT));
            if (atomicBoolean != null) {
                z10 = atomicBoolean.get();
            } else {
                z10 = icVar.ab() == 1;
            }
            jSONObject.put("ad_slot_type", iSl);
            jSONObject.put("voice_control", z10);
            jSONObject.put("rv_skip_time", iUj);
            jSONObject.put("fv_skip_show", zN);
            jSONObject.put("iv_skip_time", iN);
            if (icVar == null || !icVar.fe()) {
                z11 = false;
            }
            jSONObject.put("show_dislike", z11);
            jSONObject.put("video_adaptation", icVar != null ? icVar.vi() : 0);
            jSONObject.put("h5_cache_resources_enable", com.byazt.ete.d.f13617c);
            jSONObject.put("dark_mode_config", pu.c());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void c(final c cVar, final JSONObject jSONObject) {
        if (cVar == null) {
            return;
        }
        try {
            c(cVar.uj, new com.byazt.at.uj() { // from class: com.byazt.omf.d.13
                @Override // com.byazt.at.uj
                public void c(boolean z10, List<ic> list, boolean z11) {
                    if (!z10) {
                        d.this.uj(cVar.tt, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", d.c(list));
                        d.this.uj(cVar.tt, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private boolean c(String str, int i10, com.byazt.ete.gr grVar) {
        HashMap<String, i> map;
        i iVar;
        if (TextUtils.isEmpty(str) || (map = this.f17968d) == null || (iVar = map.get(str)) == null) {
            return false;
        }
        iVar.c(i10, grVar);
        return true;
    }

    public void c(JSONObject jSONObject, com.byazt.at.uj ujVar) {
        com.byazt.hy.tt.c(this.f17981u, jSONObject, ujVar, (com.byazt.dj.tt) null);
    }

    public boolean c(Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            if (!"bytedance".equals(uri.getScheme())) {
                return false;
            }
            if (ve.containsKey(uri.getHost())) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(int i10, ic icVar, int i11, int i12) {
        WeakReference<Context> weakReference = this.f17965a;
        if (weakReference == null || icVar == null || weakReference.get() == null) {
            return;
        }
        Context context = this.f17965a.get();
        com.byazt.hkv.c cVar = new com.byazt.hkv.c(context, icVar, this.qp, this.sl);
        com.byazt.rv.c.c().c(icVar.hashCode() + icVar.qy()).put("live_saas_interaction_type", Integer.valueOf(i11));
        if (i10 == 0) {
            ((com.byazt.vis.c) cVar.c(com.byazt.vis.c.class)).tt(true);
        }
        final String strUj = icVar.uj();
        com.byazt.pop.ve veVarTt = this.tx.get(strUj);
        if (veVarTt == null) {
            if (i12 == 1) {
                if (icVar.i() == 4) {
                    veVarTt = com.byazt.yih.x.c(context, icVar, this.qp);
                }
            } else {
                veVarTt = com.byazt.yih.x.tt(context, icVar, this.qp);
            }
            if (veVarTt != null) {
                veVarTt.c(new com.byazt.pop.c() { // from class: com.byazt.omf.d.5
                    @Override // com.byazt.pop.c
                    public void c() {
                        com.byazt.nt.c.c(strUj);
                    }

                    @Override // com.byazt.pop.c
                    public void tt(long j10, long j11, String str, String str2) {
                        com.byazt.nt.c.tt(strUj, j10, j11);
                    }

                    @Override // com.byazt.pop.c
                    public void ve(long j10, long j11, String str, String str2) {
                        com.byazt.nt.c.ve(strUj, j10, j11);
                    }

                    @Override // com.byazt.pop.c
                    public void c(long j10, long j11, String str, String str2) {
                        com.byazt.nt.c.c(strUj, j10, j11);
                    }

                    @Override // com.byazt.pop.c
                    public void c(long j10, String str, String str2) {
                        com.byazt.nt.c.tt(strUj);
                    }

                    @Override // com.byazt.pop.c
                    public void c(String str, String str2) {
                        com.byazt.nt.c.ve(strUj);
                    }
                });
                c(strUj, veVarTt);
            }
        }
        if (veVarTt != null) {
            ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(veVarTt);
        }
        cVar.c(null, new com.byazt.ete.da());
        if (to()) {
            WeakReference<com.byazt.sy.i> weakReference2 = this.tk;
            if (weakReference2 == null || weakReference2.get() == null) {
                return;
            }
            this.tk.get().uj();
            return;
        }
        if (context instanceof com.byazt.fh.tt) {
            ((com.byazt.fh.tt) context).c(1);
        }
    }

    public void c(String str, JSONObject jSONObject) {
        JSONArray jSONArray;
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        String str2 = "click";
        String strTt = "";
        try {
            if ("show".equals(str)) {
                jSONArray = jSONObject.optJSONArray("show_url");
                str2 = "show";
            } else if ("click".equals(str)) {
                jSONArray = jSONObject.getJSONArray("click_url");
            } else {
                str2 = null;
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() != 0) {
                String strC = com.byazt.aas.z.c();
                if (TextUtils.isEmpty(strC)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.getString(i10));
                }
                String strOptString5 = jSONObject.optString("log_extra");
                try {
                    JSONObject jSONObject2 = new JSONObject(strOptString5);
                    strOptString = jSONObject2.optString(MediationConstant.EXTRA_ADID);
                    try {
                        strOptString2 = jSONObject2.optString("creative_id");
                        try {
                            strOptString3 = jSONObject2.optString("req_id");
                            try {
                                strOptString4 = jSONObject2.optString("customer_id");
                                try {
                                    strTt = nb.tt(jSONObject2.optInt("ad_slot_type"));
                                } catch (Throwable unused) {
                                }
                            } catch (Throwable unused2) {
                                strOptString4 = "";
                            }
                        } catch (Throwable unused3) {
                            strOptString3 = "";
                            strOptString4 = strOptString3;
                        }
                    } catch (Throwable unused4) {
                        strOptString2 = "";
                        strOptString3 = strOptString2;
                        strOptString4 = strOptString3;
                        HashMap map = new HashMap();
                        map.put(DeviceInfo.TAG_ANDROID_ID, strOptString);
                        map.put("cid", strOptString2);
                        map.put("req_id", strOptString3);
                        map.put("customer_id", strOptString4);
                        com.byazt.ukr.tt.c(strC, arrayList, true, map, com.byazt.ddx.uj.c(strOptString5, strOptString, strOptString3, strTt, str2));
                    }
                } catch (Throwable unused5) {
                    strOptString = "";
                    strOptString2 = strOptString;
                }
                HashMap map2 = new HashMap();
                map2.put(DeviceInfo.TAG_ANDROID_ID, strOptString);
                map2.put("cid", strOptString2);
                map2.put("req_id", strOptString3);
                map2.put("customer_id", strOptString4);
                com.byazt.ukr.tt.c(strC, arrayList, true, map2, com.byazt.ddx.uj.c(strOptString5, strOptString, strOptString3, strTt, str2));
            }
        } catch (Throwable unused6) {
        }
    }

    public String c(String str, String str2) {
        return ((("landing_perf_stats".equals(str2) || "landing_perf_exception".equals(str2)) && "landingpage".equals(str)) || this.rh != null || to()) ? str : nb.c(this.sl);
    }

    public void c(String str, boolean z10) {
        com.byazt.nt.uj ujVar = this.sp;
        if (ujVar != null) {
            ujVar.c(str, z10);
        }
    }

    public void c(String str, com.byazt.pop.ve veVar) {
        this.tx.put(str, veVar);
    }

    public void c(JSONObject jSONObject, boolean z10) {
        WeakReference<Context> weakReference;
        if (this.sp == null || (weakReference = this.f17965a) == null || weakReference.get() == null) {
            return;
        }
        this.sp.c(this.nu && this.f17975m);
        this.sp.tt(z10);
        this.sp.ve(this.f17966b == 3);
        this.sp.c(this.f17965a.get(), jSONObject, this.qp, this.f17969da);
    }

    public void c(com.byazt.at.a aVar) {
        this.f17982v = new WeakReference<>(aVar);
    }

    public void c(int i10, int i11) {
        int iVe = pf.ve(gt.getContext(), i10);
        int iVe2 = pf.ve(gt.getContext(), i11);
        WeakReference<com.byazt.sy.i> weakReference = this.tk;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.tk.get().c(Integer.MIN_VALUE, Integer.MIN_VALUE, iVe, iVe2);
    }

    public void c(int i10, int i11, int i12, int i13) {
        int iVe;
        int iVe2;
        int iVe3;
        int iVe4 = Integer.MIN_VALUE;
        if (i10 == Integer.MAX_VALUE || i11 == Integer.MAX_VALUE) {
            iVe = Integer.MIN_VALUE;
            iVe2 = Integer.MIN_VALUE;
        } else {
            iVe = pf.ve(gt.getContext(), i10);
            iVe2 = pf.ve(gt.getContext(), i11);
        }
        if (i12 == Integer.MAX_VALUE || i13 == Integer.MAX_VALUE) {
            iVe3 = Integer.MIN_VALUE;
        } else {
            iVe4 = pf.ve(gt.getContext(), i12);
            iVe3 = pf.ve(gt.getContext(), i13);
        }
        WeakReference<com.byazt.sy.i> weakReference = this.tk;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.tk.get().c(iVe, iVe2, iVe4, iVe3);
    }

    public void c(byte b10) {
        this.f17966b = b10;
    }
}
