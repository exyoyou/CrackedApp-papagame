package com.sigmob.sdk.mraid2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.exceptions.IntentNotResolvableException;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class c extends x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f81147b = "Mraid2AdContainer";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final HashMap<String, c> f81148r = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f81149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f81150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f81151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f81152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private v f81153g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t f81154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.sigmob.sdk.mraid2.a f81155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f81156j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout f81157k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private LinearLayout f81158l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f81159m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private JSONObject f81160n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private BaseAdUnit f81161o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final i f81162p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.sigmob.sdk.base.common.g f81163q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final HashMap<String, q> f81164s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final k f81165t;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.c$1, reason: invalid class name */
    class AnonymousClass1 extends i {
        AnonymousClass1() {
        }

        private void a() {
            if (c.this.f81150d != null) {
                if (c.this.f81160n != null) {
                    c.this.f81150d.a(c.this.f81160n);
                }
                c.this.f81150d.d();
            }
            if (c.this.f81149c != null && c.this.f81149c.getMraidBridge() != null && com.sigmob.sdk.base.utils.t.b(c.this.f81152f)) {
                c.this.f81149c.getMraidBridge().c(c.this.f81152f);
            }
            if (c.this.f81156j) {
                return;
            }
            c.this.f81156j = true;
            if (c.this.f81155i != null) {
                c.this.f81155i.a(c.this.f81151e);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c.this.f81160n);
            sb2.append("-----------onPageFinished---------");
            sb2.append(url);
            if (c.this.f81150d.b()) {
                a();
            } else {
                c.this.f81150d.a(g.INJECTION_JAVASCRIPT, new ValueCallback() { // from class: com.sigmob.sdk.mraid2.y
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj) {
                        this.f81321a.a(obj);
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            d mraidBridge;
            ad.a("h5_error", "mraid2", errorCode, failingUrl + " error:" + description, (WindAdRequest) null, (LoadAdRequest) null, c.this.getAdUnitList().get(0), (ad.a) null);
            if (c.this.f81149c == null || com.sigmob.sdk.base.utils.t.a((CharSequence) c.this.f81152f) || (mraidBridge = c.this.f81149c.getMraidBridge()) == null) {
                return;
            }
            mraidBridge.a(c.this.f81152f, errorCode, description);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            ad.a("h5_error", "mraid2", errorResponse.getStatusCode(), request.getUrl().toString(), (WindAdRequest) null, (LoadAdRequest) null, c.this.getAdUnitList().get(0), (ad.a) null);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
            WindAdError windAdError;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-----------onRenderProcessGone---------");
            sb2.append(detail);
            if (Build.VERSION.SDK_INT < 26) {
                windAdError = null;
            } else {
                windAdError = (detail == null || !detail.didCrash()) ? WindAdError.RENDER_PROCESS_GONE_UNSPECIFIED : WindAdError.RENDER_PROCESS_GONE_WITH_CRASH;
            }
            SigmobLog.e("handleRenderProcessGone " + windAdError);
            if (com.sigmob.sdk.base.utils.w.b(c.this.f81155i)) {
                c.this.f81155i.a(windAdError);
            }
            c.this.b();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) url)) {
                return false;
            }
            if (url.startsWith("http") || url.startsWith("https")) {
                view.loadUrl(url);
                return true;
            }
            try {
                if (c.this.f81161o != null) {
                    c cVar = c.this;
                    cVar.a(url, cVar.f81161o);
                    return true;
                }
                List<BaseAdUnit> adUnitList = c.this.getAdUnitList();
                if (com.sigmob.sdk.base.utils.e.a(adUnitList)) {
                    return true;
                }
                for (int i10 = 0; i10 < adUnitList.size(); i10++) {
                    if (c.this.a(url, adUnitList.get(i10))) {
                        return true;
                    }
                }
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            a();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            d mraidBridge;
            SigmobLog.i("onReceivedError:" + error.toString());
            if (Build.VERSION.SDK_INT >= 23) {
                ad.a("h5_error", "mraid2", 0, request.getUrl() + " error:" + ((Object) error.getDescription()), (WindAdRequest) null, (LoadAdRequest) null, c.this.getAdUnitList().get(0), (ad.a) null);
                if (c.this.f81149c == null || com.sigmob.sdk.base.utils.t.a((CharSequence) c.this.f81152f) || (mraidBridge = c.this.f81149c.getMraidBridge()) == null) {
                    return;
                }
                mraidBridge.a(c.this.f81152f, error.getErrorCode(), "" + ((Object) error.getDescription()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class a {
        private a() {
        }

        @JavascriptInterface
        public boolean canInstallByVid(String vid, String apkName) {
            BaseAdUnit baseAdUnit;
            String str;
            List<BaseAdUnit> adUnitList = c.this.getAdUnitList();
            if (com.sigmob.sdk.base.utils.e.a(adUnitList)) {
                return false;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= adUnitList.size()) {
                    baseAdUnit = null;
                    break;
                }
                baseAdUnit = adUnitList.get(i10);
                if (baseAdUnit.getAd().vid.equals(vid)) {
                    break;
                }
                i10++;
            }
            if (baseAdUnit == null) {
                return false;
            }
            if (!com.sigmob.sdk.base.utils.t.b(apkName)) {
                apkName = baseAdUnit.getApkName();
                String apkMd5 = baseAdUnit.getApkMd5();
                if (!com.sigmob.sdk.base.utils.t.b(apkName)) {
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) apkMd5)) {
                        str = "";
                    } else {
                        str = apkMd5 + ".apk";
                    }
                    apkName = str;
                }
            }
            return baseAdUnit.canInstall(apkName);
        }

        @JavascriptInterface
        public boolean canOpen(String packageName) {
            return com.sigmob.sdk.base.o.a().b(packageName).booleanValue();
        }

        @JavascriptInterface
        public boolean canOpenByVid(String vid, String packageName) {
            BaseAdUnit baseAdUnit;
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) packageName)) {
                List<BaseAdUnit> adUnitList = c.this.getAdUnitList();
                int i10 = 0;
                if (com.sigmob.sdk.base.utils.e.a(adUnitList)) {
                    return false;
                }
                while (true) {
                    if (i10 >= adUnitList.size()) {
                        baseAdUnit = null;
                        break;
                    }
                    baseAdUnit = adUnitList.get(i10);
                    if (baseAdUnit.getAd().vid.equals(vid)) {
                        break;
                    }
                    i10++;
                }
                if (baseAdUnit != null) {
                    return baseAdUnit.canOpen();
                }
            }
            return com.sigmob.sdk.base.o.a().b(packageName).booleanValue();
        }

        @JavascriptInterface
        public void hideSystemUI() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.mraid2.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81142b.a();
                }
            });
        }

        @JavascriptInterface
        public boolean isOpenListReport() {
            com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
            return (oVarA.U().isEmpty() || com.sigmob.sdk.base.services.b.a() || !oVarA.N().booleanValue()) ? false : true;
        }

        @JavascriptInterface
        public void onOpenListReport() {
            com.sigmob.sdk.base.services.b.c();
        }

        @JavascriptInterface
        public void showSystemUI() {
            ThreadPoolFactory.MainThreadRun(new Runnable() { // from class: com.sigmob.sdk.mraid2.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81322b.b();
                }
            });
        }

        /* synthetic */ a(c cVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            Activity activityC = com.sigmob.sdk.base.utils.x.c(c.this);
            if (activityC == null) {
                return;
            }
            com.sigmob.sdk.videoplayer.c.h((Context) activityC);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            Activity activityC = com.sigmob.sdk.base.utils.x.c(c.this);
            if (activityC == null) {
                return;
            }
            com.sigmob.sdk.videoplayer.c.i(activityC);
        }
    }

    public c(Context context, List<BaseAdUnit> adUnitList, FrameLayout parentLayout) {
        this(context, adUnitList, parentLayout, null, null);
        a(new a(this, null), "sigandroidh5");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String templateId) {
        String strUtf8;
        List<MaterialMeta> list;
        MaterialMeta materialMeta;
        Template template;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---------loadContentId----------");
        sb2.append(templateId);
        int i10 = 0;
        while (true) {
            if (i10 >= getAdUnitList().size()) {
                strUtf8 = null;
                break;
            }
            BaseAdUnit baseAdUnit = getAdUnitList().get(i10);
            if (baseAdUnit != null) {
                Template template2 = baseAdUnit.scene;
                if (template2 == null || !templateId.equals(template2.templateId)) {
                    Ad ad2 = baseAdUnit.getAd();
                    if (ad2 != null && (list = ad2.materials) != null && (materialMeta = list.get(0)) != null) {
                        Template template3 = materialMeta.main_template;
                        if (template3 == null || !templateId.equals(template3.templateId)) {
                            Template template4 = materialMeta.sub_template;
                            if (template4 != null && templateId.equals(template4.templateId)) {
                                template = materialMeta.sub_template;
                            }
                        } else {
                            template = materialMeta.main_template;
                        }
                    }
                } else {
                    template = baseAdUnit.scene;
                }
                strUtf8 = template.context.utf8();
                break;
            }
            i10++;
        }
        if (com.sigmob.sdk.base.utils.t.b(strUtf8)) {
            a(strUtf8);
        }
    }

    public static HashMap<String, c> getMraidWebViews() {
        return f81148r;
    }

    private Template getTemplate() {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> adUnitList = getAdUnitList();
        if (com.sigmob.sdk.base.utils.e.a(adUnitList) || (baseAdUnit = adUnitList.get(0)) == null) {
            return null;
        }
        Template template = baseAdUnit.scene;
        MaterialMeta material = baseAdUnit.getMaterial();
        if (template == null && material == null) {
            return null;
        }
        if (com.sigmob.sdk.base.utils.w.b(template)) {
            return template;
        }
        Template template2 = material.main_template;
        return template2 == null ? material.sub_template : template2;
    }

    public com.sigmob.sdk.base.common.g getAdSize() {
        return this.f81163q;
    }

    @Override // com.sigmob.sdk.mraid2.x
    List<BaseAdUnit> getAdUnitList() {
        d dVar = this.f81150d;
        if (dVar == null) {
            return null;
        }
        return dVar.c();
    }

    public d getMraidBridge() {
        return this.f81150d;
    }

    public v getScrollTouchListener() {
        return this.f81153g;
    }

    public String getUniqueId() {
        return this.f81152f;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        d dVar = this.f81150d;
        if (dVar == null) {
            return;
        }
        dVar.b(visibility == 0);
    }

    public void setAdSize(com.sigmob.sdk.base.common.g adSize) {
        this.f81163q = adSize;
    }

    public void setLoadListener(com.sigmob.sdk.mraid2.a loadWebViewListener) {
        this.f81155i = loadWebViewListener;
    }

    public void setNextWebViewListener(t nextWebViewListener) {
        this.f81154h = nextWebViewListener;
    }

    public void setScrollTouchListener(v scrollTouchListener) {
        this.f81153g = scrollTouchListener;
    }

    public c(Context context, List<BaseAdUnit> adUnitList, FrameLayout parentLayout, c container, JSONObject args) {
        super(context);
        this.f81159m = false;
        this.f81162p = new AnonymousClass1();
        this.f81164s = new LinkedHashMap();
        this.f81165t = new k() { // from class: com.sigmob.sdk.mraid2.c.3
            @Override // com.sigmob.sdk.mraid2.k
            public void a() {
                if (c.this.f81154h == null) {
                    return;
                }
                c.this.f81154h.a(c.this.f81151e);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void b() {
                for (com.sigmob.sdk.mraid.n nVar : x.f81315a.values()) {
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) nVar.c(), (CharSequence) c.this.f81152f)) {
                        com.sigmob.sdk.base.utils.x.a(nVar.a());
                        nVar.b();
                    }
                }
                com.sigmob.sdk.base.utils.x.a(c.this.f81151e);
                if (com.sigmob.sdk.base.utils.e.b(c.this.f81164s)) {
                    Iterator it2 = c.this.f81164s.values().iterator();
                    while (it2.hasNext()) {
                        ((q) it2.next()).c();
                    }
                    c.this.f81164s.clear();
                }
                if (c.this.f81151e != null) {
                    c.this.f81151e = null;
                }
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void c() {
                if (c.this.f81154h == null) {
                    return;
                }
                c.this.f81154h.b(c.this.f81151e);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void d() {
                if (c.this.f81154h == null) {
                    return;
                }
                c.this.f81154h.a();
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void e(JSONObject args2) {
                if (c.this.f81154h == null) {
                    return;
                }
                c.this.f81154h.b(c.this.f81151e, args2);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void f(JSONObject json) {
                SigmobLog.d("onMotionEvent: json = " + json);
                JSONObject jSONObjectOptJSONObject = json.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA);
                String strOptString = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    SigmobLog.e("onMotionViewEvent: uniqueId is null.");
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString);
                h hVar = nVar instanceof h ? (h) nVar : null;
                String strOptString2 = json.optString("subEvent");
                strOptString2.hashCode();
                switch (strOptString2) {
                    case "init_sensitivity_raw":
                        String strOptString3 = jSONObjectOptJSONObject.optString("type", "");
                        int iOptInt = jSONObjectOptJSONObject.optInt(com.sigmob.sdk.mraid.g.f80961d, 0);
                        h hVar2 = new h(strOptString, strOptString3);
                        hVar2.a(new j() { // from class: com.sigmob.sdk.mraid2.c.3.3
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (c.this.f81150d == null) {
                                    return;
                                }
                                c.this.f81150d.a(uniqueId, type, event, args2);
                            }
                        });
                        hVar2.b(iOptInt);
                        hVar2.d();
                        x.f81315a.put(strOptString, hVar2);
                        break;
                    case "init":
                        String strOptString4 = jSONObjectOptJSONObject.optString("type", "");
                        int iOptInt2 = jSONObjectOptJSONObject.optInt(com.sigmob.sdk.mraid.g.f80960c, 0);
                        int iOptInt3 = jSONObjectOptJSONObject.optInt(com.sigmob.sdk.mraid.g.f80963f, 0);
                        int iOptInt4 = jSONObjectOptJSONObject.optInt(com.sigmob.sdk.mraid.g.f80964g, 0);
                        int iOptInt5 = jSONObjectOptJSONObject.optInt(com.sigmob.sdk.mraid.g.f80965h, 0);
                        SigmobLog.d("onMotionEvent: type = " + strOptString4 + ", level = " + iOptInt2);
                        h hVar3 = new h(strOptString, strOptString4);
                        hVar3.a(new j() { // from class: com.sigmob.sdk.mraid2.c.3.2
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (c.this.f81150d == null) {
                                    return;
                                }
                                c.this.f81150d.a(uniqueId, type, event, args2);
                            }
                        });
                        hVar3.a(new SensorEntity(iOptInt2, iOptInt3, iOptInt4, iOptInt5));
                        hVar3.d();
                        x.f81315a.put(strOptString, hVar3);
                        break;
                    case "destroy":
                        if (hVar != null) {
                            hVar.b();
                        }
                        x.f81315a.remove(strOptString);
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void g(JSONObject json) {
                SigmobLog.d("onMotionViewEvent: json = " + json);
                JSONObject jSONObjectOptJSONObject = json.optJSONObject(QuarkPromptActivity_.ARGS_EXTRA);
                String strOptString = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    SigmobLog.e("onMotionViewEvent: uniqueId is null.");
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString);
                com.sigmob.sdk.mraid.l lVar = nVar instanceof com.sigmob.sdk.mraid.l ? (com.sigmob.sdk.mraid.l) nVar : null;
                String strOptString2 = json.optString("subEvent");
                strOptString2.hashCode();
                switch (strOptString2) {
                    case "shakeTimeThreshold":
                        if (lVar != null) {
                            lVar.e(jSONObjectOptJSONObject.optInt(strOptString2));
                            break;
                        }
                        break;
                    case "widgetIntervalTime":
                        if (lVar != null) {
                            lVar.d(jSONObjectOptJSONObject.optInt(strOptString2));
                            break;
                        }
                        break;
                    case "hidden":
                        if (lVar != null) {
                            lVar.a(jSONObjectOptJSONObject.optBoolean("hidden"));
                            break;
                        }
                        break;
                    case "init":
                        com.sigmob.sdk.mraid.l lVar2 = new com.sigmob.sdk.mraid.l(com.sigmob.sdk.b.e(), strOptString, jSONObjectOptJSONObject.optInt("type"), c.this.f81161o);
                        lVar2.a(new j() { // from class: com.sigmob.sdk.mraid2.c.3.4
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (c.this.f81150d == null) {
                                    return;
                                }
                                c.this.f81150d.a(uniqueId, type, event, args2);
                            }
                        });
                        x.f81315a.put(strOptString, lVar2);
                        break;
                    case "frame":
                        if (lVar != null) {
                            lVar.a(jSONObjectOptJSONObject);
                            break;
                        }
                        break;
                    case "start":
                        if (lVar != null) {
                            lVar.d();
                            break;
                        }
                        break;
                    case "sensitivity":
                        if (lVar != null) {
                            lVar.a(jSONObjectOptJSONObject.optInt(strOptString2));
                            break;
                        }
                        break;
                    case "destroy":
                        if (lVar != null) {
                            lVar.b();
                        }
                        x.f81315a.remove(strOptString);
                        break;
                    case "sensitivity_raw":
                        if (lVar != null) {
                            lVar.b(jSONObjectOptJSONObject.optInt(strOptString2));
                            break;
                        }
                        break;
                    case "shakeTriggerType":
                        if (lVar != null) {
                            lVar.c(jSONObjectOptJSONObject.optInt(strOptString2));
                            break;
                        }
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void a(BaseAdUnit adUnit, JSONObject args2) {
                if (c.this.f81154h == null) {
                    return;
                }
                c.this.f81154h.a(c.this.f81151e, adUnit, args2);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void b(String subEvent, JSONObject args2) {
                SigmobLog.d(" onTimerEvent :" + subEvent + ":" + args2);
                String strOptString = args2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                }
                q qVar = (q) c.this.f81164s.get(strOptString);
                subEvent.hashCode();
                switch (subEvent) {
                    case "invalidate":
                        if (qVar != null) {
                            qVar.c();
                        }
                        c.this.f81164s.remove(strOptString);
                        break;
                    case "fire":
                        if (qVar != null) {
                            qVar.b();
                            break;
                        }
                        break;
                    case "init":
                        c.this.f81164s.put(strOptString, new q(c.this.f81150d, args2));
                        break;
                    case "pause":
                        if (qVar != null) {
                            qVar.a();
                            break;
                        }
                        break;
                }
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:7:0x0041  */
            @Override // com.sigmob.sdk.mraid2.k
            public void c(String subEvent, JSONObject args2) {
                JSONObject jSONObjectOptJSONObject;
                SigmobLog.d(" onWebViewEvent :" + subEvent + ":" + args2);
                String strOptString = args2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                }
                c cVar = (c) c.f81148r.get(strOptString);
                subEvent.hashCode();
                switch (subEvent) {
                    case "loadHTMLString":
                        String strOptString2 = args2.optString(com.baidu.mobads.sdk.internal.a.f7333f);
                        if (cVar != null && com.sigmob.sdk.base.utils.t.b(strOptString2)) {
                            cVar.a(strOptString2);
                            break;
                        }
                        break;
                    case "loadId":
                        String strOptString3 = args2.optString("id");
                        if (cVar != null && com.sigmob.sdk.base.utils.t.b(strOptString3)) {
                            cVar.f(strOptString3);
                            break;
                        }
                        break;
                    case "stopLoading":
                        if (cVar != null) {
                            cVar.k();
                            break;
                        }
                        break;
                    case "reload":
                        if (cVar != null) {
                            cVar.j();
                            break;
                        }
                        break;
                    case "init":
                        if (c.this.f81154h != null) {
                            c.f81148r.put(strOptString, c.this.f81154h.a(c.this.f81151e, args2));
                            break;
                        }
                        break;
                    case "frame":
                        if (cVar != null && (jSONObjectOptJSONObject = args2.optJSONObject(TypedValues.AttributesType.S_FRAME)) != null) {
                            int iOptInt = jSONObjectOptJSONObject.optInt("x", 0);
                            int iOptInt2 = jSONObjectOptJSONObject.optInt("y", 0);
                            int iOptInt3 = jSONObjectOptJSONObject.optInt(IAdInterListener.AdReqParam.WIDTH, -1);
                            int iOptInt4 = jSONObjectOptJSONObject.optInt("h", -1);
                            if (iOptInt3 > 0) {
                                iOptInt3 = Dips.dipsToIntPixels(iOptInt3, com.sigmob.sdk.b.e());
                            }
                            if (iOptInt4 > 0) {
                                iOptInt4 = Dips.dipsToIntPixels(iOptInt4, com.sigmob.sdk.b.e());
                            }
                            cVar.setLayoutParams(new FrameLayout.LayoutParams(iOptInt3, iOptInt4));
                            cVar.setX(Dips.dipsToIntPixels(iOptInt, com.sigmob.sdk.b.e()));
                            cVar.setY(Dips.dipsToIntPixels(iOptInt2, com.sigmob.sdk.b.e()));
                            cVar.requestLayout();
                            break;
                        }
                        break;
                    case "loadURL":
                        String strOptString4 = args2.optString("url");
                        if (cVar != null) {
                            cVar.b(strOptString4);
                            break;
                        }
                        break;
                    case "loadURLByPackage":
                        String strOptString5 = args2.optString("URL");
                        if (cVar != null && com.sigmob.sdk.base.utils.t.b(strOptString5)) {
                            cVar.e(strOptString5);
                            break;
                        }
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void d(JSONObject args2) {
                c.this.f81159m = true;
                int iOptInt = args2.optInt("flag");
                if (c.this.f81154h != null && c.this.f81158l == null) {
                    c cVar = c.this;
                    cVar.f81158l = cVar.f81154h.a(c.this.f81151e, iOptInt);
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < c.this.f81157k.getChildCount(); i10++) {
                        View childAt = c.this.f81157k.getChildAt(i10);
                        if (childAt instanceof com.sigmob.sdk.mraid.r) {
                            arrayList.add((com.sigmob.sdk.mraid.r) childAt);
                        }
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("-------------onUseScrollView----------");
                    sb2.append(arrayList.size());
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        com.sigmob.sdk.mraid.r rVar = (com.sigmob.sdk.mraid.r) arrayList.get(i11);
                        rVar.setX(0.0f);
                        rVar.setY(0.0f);
                        com.sigmob.sdk.base.utils.x.a(rVar);
                        c.this.f81158l.addView(rVar);
                    }
                }
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void a(String vid) {
                List<BaseAdUnit> adUnitList2 = c.this.getAdUnitList();
                if (com.sigmob.sdk.base.utils.t.b(vid) && com.sigmob.sdk.base.utils.e.a(adUnitList2)) {
                    for (int i10 = 0; i10 < adUnitList2.size(); i10++) {
                        c.this.f81161o = adUnitList2.get(i10);
                        if (vid.equals(c.this.f81161o.getVid())) {
                            break;
                        }
                    }
                }
                if (c.this.f81161o == null) {
                    return;
                }
                com.sigmob.sdk.base.common.h.g().j(c.this.f81161o.getCamp_id());
                com.sigmob.sdk.base.common.h.g().i(c.this.f81161o.getCrid());
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void b(JSONObject args2) {
                ViewGroup viewGroup;
                String strOptString = args2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    return;
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString);
                if (com.sigmob.sdk.base.utils.w.b(nVar)) {
                    nVar.a(c.this.f81152f);
                    View viewA = nVar.a();
                    if (com.sigmob.sdk.base.utils.w.b(viewA)) {
                        com.sigmob.sdk.base.utils.x.a(viewA);
                        if (!c.this.f81159m || c.this.f81158l == null) {
                            viewGroup = c.this.f81157k;
                        } else {
                            viewA.setX(0.0f);
                            viewA.setY(0.0f);
                            viewGroup = c.this.f81158l;
                        }
                        viewGroup.addView(viewA);
                    }
                }
                c cVar = (c) c.f81148r.get(strOptString);
                if (cVar == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.x.a(cVar);
                c.this.f81157k.addView(cVar);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void c(JSONObject args2) {
                String strOptString = args2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    return;
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString);
                if (com.sigmob.sdk.base.utils.w.b(nVar)) {
                    nVar.a(c.this.f81152f);
                    View viewA = nVar.a();
                    if (com.sigmob.sdk.base.utils.w.b(viewA)) {
                        com.sigmob.sdk.base.utils.x.a(viewA);
                        if (!c.this.f81159m || c.this.f81158l == null) {
                            c.this.f81157k.addView(viewA);
                            c.this.f81157k.bringChildToFront(c.this.f81151e);
                        } else {
                            viewA.setX(0.0f);
                            viewA.setY(0.0f);
                            c.this.f81158l.addView(viewA);
                        }
                    }
                }
                c cVar = (c) c.f81148r.get(strOptString);
                if (cVar == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.x.a(cVar);
                c.this.f81157k.addView(cVar);
                c.this.f81157k.bringChildToFront(c.this.f81151e);
            }

            @Override // com.sigmob.sdk.mraid2.k
            public void a(String subEvent, JSONObject args2) {
                SigmobLog.d("onVpaidEvent: subEvent = " + subEvent + ", args = " + args2);
                String strOptString = args2.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString);
                com.sigmob.sdk.mraid.t tVar = nVar instanceof com.sigmob.sdk.mraid.t ? (com.sigmob.sdk.mraid.t) nVar : null;
                subEvent.hashCode();
                switch (subEvent) {
                    case "replay":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.c(args2);
                            break;
                        }
                        break;
                    case "assetURL":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.a(args2);
                            break;
                        }
                        break;
                    case "init":
                        c.this.a(strOptString, args2);
                        break;
                    case "play":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.b(args2);
                            break;
                        }
                        break;
                    case "seek":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.g(args2);
                            break;
                        }
                        break;
                    case "stop":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.e(args2);
                            tVar.b();
                            Iterator<Map.Entry<String, com.sigmob.sdk.mraid.n>> it2 = x.f81315a.entrySet().iterator();
                            while (it2.hasNext()) {
                                if (it2.next().getValue() == tVar) {
                                    it2.remove();
                                    break;
                                }
                            }
                            break;
                        }
                        break;
                    case "frame":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.h(args2);
                            break;
                        }
                        break;
                    case "muted":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.f(args2);
                            break;
                        }
                        break;
                    case "pause":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.d(args2);
                            break;
                        }
                        break;
                }
            }

            /* JADX WARN: Code duplicated, block: B:17:0x015b  */
            @Override // com.sigmob.sdk.mraid2.k
            public void a(JSONObject args2) {
                int iDipsToIntPixels;
                int iDipsToIntPixels2;
                int iDipsToIntPixels3;
                int iDipsToIntPixels4;
                int iDipsToIntPixels5;
                int iDipsToIntPixels6;
                int iDipsToIntPixels7;
                int iDipsToIntPixels8;
                Animator.AnimatorListener animatorListener;
                String str;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("----------onAnimationEvent-------------");
                sb2.append(args2.toString());
                final String strOptString = args2.optString(NotificationCompat.CATEGORY_EVENT);
                String strOptString2 = args2.optString("uniqueId");
                double dOptDouble = args2.optDouble("duration");
                JSONObject jSONObjectOptJSONObject = args2.optJSONObject("from");
                JSONObject jSONObjectOptJSONObject2 = args2.optJSONObject("to");
                if (jSONObjectOptJSONObject != null) {
                    iDipsToIntPixels2 = Dips.dipsToIntPixels(jSONObjectOptJSONObject.optInt("x"), c.this.getContext());
                    iDipsToIntPixels3 = Dips.dipsToIntPixels(jSONObjectOptJSONObject.optInt("y"), c.this.getContext());
                    iDipsToIntPixels4 = Dips.dipsToIntPixels(jSONObjectOptJSONObject.optInt(IAdInterListener.AdReqParam.WIDTH), c.this.getContext());
                    iDipsToIntPixels = Dips.dipsToIntPixels(jSONObjectOptJSONObject.optInt("h"), c.this.getContext());
                } else {
                    iDipsToIntPixels = 0;
                    iDipsToIntPixels2 = 0;
                    iDipsToIntPixels3 = 0;
                    iDipsToIntPixels4 = 0;
                }
                if (jSONObjectOptJSONObject2 != null) {
                    iDipsToIntPixels8 = Dips.dipsToIntPixels(jSONObjectOptJSONObject2.optInt("x"), c.this.getContext());
                    iDipsToIntPixels7 = Dips.dipsToIntPixels(jSONObjectOptJSONObject2.optInt("y"), c.this.getContext());
                    iDipsToIntPixels6 = Dips.dipsToIntPixels(jSONObjectOptJSONObject2.optInt(IAdInterListener.AdReqParam.WIDTH), c.this.getContext());
                    iDipsToIntPixels5 = Dips.dipsToIntPixels(jSONObjectOptJSONObject2.optInt("h"), c.this.getContext());
                } else {
                    iDipsToIntPixels5 = 0;
                    iDipsToIntPixels6 = 0;
                    iDipsToIntPixels7 = 0;
                    iDipsToIntPixels8 = 0;
                }
                Animator.AnimatorListener animatorListener2 = new Animator.AnimatorListener() { // from class: com.sigmob.sdk.mraid2.c.3.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        c.this.f81150d.g(strOptString);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                    }
                };
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString2)) {
                    return;
                }
                com.sigmob.sdk.mraid.n nVar = x.f81315a.get(strOptString2);
                if (nVar != null) {
                    nVar.a(c.this.f81152f);
                    View viewA = nVar.a();
                    if (viewA != null) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        w wVar = new w(viewA);
                        animatorListener = animatorListener2;
                        str = "height";
                        animatorSet.playTogether(ObjectAnimator.ofFloat(viewA, "translationX", iDipsToIntPixels2, iDipsToIntPixels8), ObjectAnimator.ofFloat(viewA, "translationY", iDipsToIntPixels3, iDipsToIntPixels7), ObjectAnimator.ofInt(wVar, "width", iDipsToIntPixels4, iDipsToIntPixels6), ObjectAnimator.ofInt(wVar, str, iDipsToIntPixels, iDipsToIntPixels5));
                        animatorSet.addListener(animatorListener);
                        animatorSet.setDuration((long) (dOptDouble * 1000.0d)).start();
                    } else {
                        animatorListener = animatorListener2;
                        str = "height";
                    }
                } else {
                    animatorListener = animatorListener2;
                    str = "height";
                }
                c cVar = (c) c.f81148r.get(strOptString2);
                if (cVar != null) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    w wVar2 = new w(cVar);
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(cVar, "translationX", iDipsToIntPixels2, iDipsToIntPixels8), ObjectAnimator.ofFloat(cVar, "translationY", iDipsToIntPixels3, iDipsToIntPixels7), ObjectAnimator.ofInt(wVar2, "width", iDipsToIntPixels4, iDipsToIntPixels6), ObjectAnimator.ofInt(wVar2, str, iDipsToIntPixels, iDipsToIntPixels5));
                    animatorSet2.addListener(animatorListener);
                    animatorSet2.setDuration((long) (dOptDouble * 1000.0d)).start();
                }
            }
        };
        this.f81151e = this;
        this.f81157k = parentLayout;
        this.f81149c = container;
        this.f81156j = false;
        if (args == null) {
            String str = "wv_" + UUID.randomUUID().toString();
            this.f81152f = str;
            f81148r.put(str, this);
        } else {
            try {
                this.f81160n = new JSONObject(args.optString(QuarkPromptActivity_.ARGS_EXTRA));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            this.f81152f = args.optString("uniqueId");
        }
        a(true);
        setBackgroundColor(0);
        com.sigmob.sdk.base.utils.j.a(f81147b, getSettings());
        this.f81162p.a(com.sigmob.sdk.base.o.a().af());
        BaseAdUnit baseAdUnit = adUnitList.get(0);
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
            this.f81162p.b(baseAdUnit.isDisablexRequestWith());
        }
        setWebViewClient(this.f81162p);
        d dVar = new d(adUnitList);
        this.f81150d = dVar;
        dVar.a(this.f81165t);
        this.f81150d.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String url) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) url)) {
            return;
        }
        a(new d.a(this.f81150d), "sigandroid");
        String strMd5 = Md5Util.md5(url);
        File fileF = com.sigmob.sdk.base.utils.o.f(com.sigmob.sdk.base.utils.o.f79757c);
        if (fileF == null) {
            return;
        }
        final File file = new File(fileF.getAbsolutePath() + File.separator + strMd5, "endcard.html");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.exists());
        sb2.append("---------loadURLByPackage----------");
        sb2.append(file.getAbsolutePath());
        if (file.exists()) {
            c("file://" + file.getAbsolutePath());
            return;
        }
        File file2 = new File(fileF, strMd5 + ".tgz");
        DownloadItem downloadItem = new DownloadItem();
        downloadItem.url = url;
        downloadItem.filePath = file2.getAbsolutePath();
        downloadItem.type = DownloadItem.FileType.FILE;
        com.sigmob.sdk.base.common.t.a().add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.mraid2.c.2
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem item) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("-----------onCancel----------");
                sb3.append(item.url);
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem item) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("-----------onErrorResponse----------");
                sb3.append(item.url);
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem item) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(item.url);
                sb3.append("-----------onSuccess----------");
                sb3.append(item.filePath);
                try {
                    com.sigmob.sdk.base.utils.f.a(new File(item.filePath), new File(item.filePath.replace(".tgz", net.lingala.zip4j.util.e.F0)));
                    if (file.exists()) {
                        c.this.f81151e.c("file://" + file.getAbsolutePath());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    @Override // com.sigmob.sdk.mraid2.x
    public void b() {
        try {
            setLoadListener(null);
            setNextWebViewListener(null);
            setScrollTouchListener(null);
            if (this.f81151e != null) {
                this.f81151e = null;
            }
            d dVar = this.f81150d;
            if (dVar != null) {
                dVar.g();
                this.f81150d = null;
            }
            super.b();
        } catch (Throwable unused) {
        }
    }

    public void b(String url) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---------loadContentUrl----------");
        sb2.append(url);
        a(new d.a(this.f81150d), "sigandroid");
        c(url);
    }

    public void a() {
        Template template = getTemplate();
        if (template == null) {
            return;
        }
        String strUtf8 = template.context.utf8();
        int iIntValue = template.type.intValue();
        if (iIntValue == 1) {
            b(strUtf8);
            return;
        }
        if (iIntValue == 2) {
            a(strUtf8);
            return;
        }
        if (iIntValue == 3) {
            e(strUtf8);
            return;
        }
        SigmobLog.e("template type error:" + template.type);
    }

    public void a(String htmlData) {
        a(new d.a(this.f81150d), "sigandroid");
        File fileB = com.sigmob.sdk.base.utils.o.b(htmlData, Md5Util.md5(htmlData) + ".html");
        if (com.sigmob.sdk.base.utils.w.b(fileB) && com.sigmob.sdk.base.utils.t.b(fileB.getAbsolutePath())) {
            c("file://" + fileB.getAbsolutePath());
            return;
        }
        a(Networking.getBaseUrlScheme() + "://localhost/", htmlData, ClipBoardItemData.TYPE_TEXT_HTML, "UTF-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String uniqueId, JSONObject args) {
        com.sigmob.sdk.mraid.t tVar = new com.sigmob.sdk.mraid.t(uniqueId);
        tVar.a(new com.sigmob.sdk.mraid.u() { // from class: com.sigmob.sdk.mraid2.c.4
            @Override // com.sigmob.sdk.mraid.u
            public void a(String uniqueId2, int state) {
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.a(uniqueId2, state);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void b(String uniqueId2, int state) {
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.b(uniqueId2, state);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String uniqueId2, int code, String message) {
                ad.a("video", code, message, c.this.f81161o, (ad.a) null);
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.a(uniqueId2, "code:" + code + ", msg:" + message);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String uniqueId2, long position) {
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.c(uniqueId2, (int) position);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String uniqueId2, long duration, int width, int height) {
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.a(uniqueId2, (int) duration, width, height);
            }

            @Override // com.sigmob.sdk.mraid.u
            public void a(String uniqueId2, long position, long duration) {
                if (c.this.f81150d == null) {
                    return;
                }
                c.this.f81150d.a(uniqueId2, (int) position, (int) duration);
            }
        });
        tVar.a(getContext(), args);
        View viewA = tVar.a();
        if (com.sigmob.sdk.base.utils.w.b(viewA)) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(1, 1);
            layoutParams.topMargin = 0;
            layoutParams.rightMargin = 0;
            viewA.setLayoutParams(layoutParams);
        }
        x.f81315a.put(uniqueId, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String url, BaseAdUnit adUnit) throws IntentNotResolvableException {
        if (!com.sigmob.sdk.base.utils.t.a((CharSequence) url) && adUnit != null) {
            AdSetting adSetting = adUnit.getAdSetting();
            List<String> list = adSetting == null ? null : adSetting.scheme_white_list;
            if (com.sigmob.sdk.base.utils.e.a(list)) {
                return false;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                String str = list.get(i10);
                if (url.startsWith(str) || str.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                    com.sigmob.sdk.base.utils.g.a(getContext(), Uri.parse(url));
                    return true;
                }
            }
        }
        return false;
    }
}
