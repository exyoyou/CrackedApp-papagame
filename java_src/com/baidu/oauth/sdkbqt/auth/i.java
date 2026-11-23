package com.baidu.oauth.sdkbqt.auth;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.ProgressBar;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f8197a = 90000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f8198b = "i";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f8199c = "prompt_on_cancel";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, a> f8200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private k f8201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private C0209i f8202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f8203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f8204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f8205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f8207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ProgressBar f8208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f8209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Handler f8210n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j f8211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private g f8212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private f f8213q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private h f8214r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.baidu.oauth.sdkbqt.callback.b f8215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private c f8216t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private JsPromptResult f8217u;

    abstract class a {
        a() {
        }

        public abstract String a(e eVar);
    }

    public enum b {
        ON_RESUME("webViewWillAppear"),
        ON_PAUSE("webViewWillDisappear");


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f8222c;

        b(String str) {
            this.f8222c = str;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d f8223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f8224b;
    }

    public interface d {
        void a(String str);
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f8225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f8226b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f8227c;

        e() {
        }

        public String a() {
            return this.f8225a;
        }

        public List<String> b() {
            return this.f8226b;
        }

        public String c() {
            return this.f8227c;
        }

        public static e a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str.toString());
                e eVar = new e();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("action");
                if (jSONObjectOptJSONObject != null) {
                    eVar.f8225a = jSONObjectOptJSONObject.optString("name");
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("params");
                    if (jSONArrayOptJSONArray != null) {
                        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                            eVar.f8226b.add(jSONArrayOptJSONArray.optString(i10));
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(com.alipay.sdk.authjs.a.f7124i);
                if (jSONObjectOptJSONObject2 != null) {
                    eVar.f8227c = jSONObjectOptJSONObject2.optString("name");
                }
                return eVar;
            } catch (JSONException e10) {
                com.baidu.oauth.sdkbqt.a.d.a(e10);
                return null;
            }
        }
    }

    public interface f {
        void a();
    }

    public interface g {
        void a();
    }

    public interface h {
        boolean a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f8231b;

        private j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.getProgress() < 100) {
                Message message = new Message();
                message.what = 1;
                message.obj = this.f8231b;
                i.this.f8210n.sendMessage(message);
                i.this.f8210n.removeCallbacks(this);
            }
        }

        /* synthetic */ j(i iVar, com.baidu.oauth.sdkbqt.auth.j jVar) {
            this();
        }

        public void a(String str) {
            this.f8231b = str;
        }
    }

    public interface k {
        void a(String str);
    }

    public i(Context context) {
        super(context);
        this.f8200d = new HashMap();
        com.baidu.oauth.sdkbqt.auth.j jVar = null;
        this.f8202f = new C0209i(this, jVar);
        this.f8210n = new com.baidu.oauth.sdkbqt.auth.j(this);
        this.f8211o = new j(this, jVar);
        e();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
        this.f8205i = true;
        this.f8210n.removeCallbacks(this.f8211o);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        a(str, new HashMap<>(0));
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        ProgressBar progressBar = this.f8208l;
        if (progressBar != null) {
            AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) progressBar.getLayoutParams();
            layoutParams.x = i10;
            layoutParams.y = i11;
            this.f8208l.setLayoutParams(layoutParams);
        }
        super.onScrollChanged(i10, i11, i12, i13);
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        View view = this.f8203g;
        if (view != null && view.getVisibility() == 0) {
            return false;
        }
        View view2 = this.f8204h;
        if (view2 == null || view2.getVisibility() != 0) {
            return super.overScrollBy(i10, i11, i12, i13, i14, i15, i16, i17, z10);
        }
        return false;
    }

    @Override // android.webkit.WebView
    public void reload() {
        String str = this.f8202f.f8228a;
        if (str != null) {
            loadUrl(str);
        } else {
            super.reload();
        }
        this.f8202f.a();
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        View view;
        View view2 = this.f8203g;
        if ((view2 != null && view2.getVisibility() == 0) || ((view = this.f8204h) != null && view.getVisibility() == 0)) {
            super.scrollTo(0, 0);
        }
        super.scrollTo(i10, i11);
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (NullPointerException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: com.baidu.oauth.sdkbqt.auth.i$i, reason: collision with other inner class name */
    class C0209i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f8228a;

        private C0209i() {
            this.f8228a = null;
        }

        void a() {
            this.f8228a = null;
        }

        /* synthetic */ C0209i(i iVar, com.baidu.oauth.sdkbqt.auth.j jVar) {
            this();
        }
    }

    @SuppressLint({"AddJavascriptInterface"})
    @TargetApi(11)
    private void e() {
        this.f8209m = f8197a;
        g();
        this.f8206j = TextUtils.isEmpty(new com.baidu.oauth.sdkbqt.auth.a().a(getContext()));
        setWebViewClient(new t(this));
        setWebChromeClient(new u(this));
        f();
    }

    private void f() {
        this.f8200d.put("sapi_action_check_method_support", new x(this));
        this.f8200d.put(com.sigmob.sdk.base.common.a.f78868b, new y(this));
        this.f8200d.put("back", new z(this));
        this.f8200d.put("action_set_title", new aa(this));
        this.f8200d.put("sapi_goBack", new ab(this));
        this.f8200d.put("oauth_sso_hash", new ac(this));
        this.f8200d.put("authorized_response", new com.baidu.oauth.sdkbqt.auth.k(this));
        this.f8200d.put("oauth_call_baidu", new m(this));
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    @TargetApi(7)
    private void g() {
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (NullPointerException e10) {
            com.baidu.oauth.sdkbqt.a.d.a(e10);
        }
        getSettings().setUserAgentString(j());
        getSettings().setDomStorageEnabled(true);
        setScrollBarStyle(0);
        getSettings().setSaveFormData(false);
        getSettings().setSavePassword(false);
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setSavePassword(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        stopLoading();
        post(new r(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        post(new s(this));
    }

    private String j() {
        String userAgentString = getSettings().getUserAgentString();
        String str = Build.MODEL;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        String str2 = Build.VERSION.RELEASE;
        return userAgentString + " " + URLEncoder.encode("bdoa_2.0.6.10_Android_" + com.baidu.oauth.sdkbqt.a.h.c(getContext()) + "_" + com.baidu.oauth.sdkbqt.a.h.b(getContext()) + "_" + str + "_" + (TextUtils.isEmpty(str2) ? "" : str2));
    }

    public void c(String str) {
        this.f8207k = str;
        loadUrl(a(Boolean.TRUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        HashMap map = new HashMap();
        map.put("response_type", "sso_auth_code");
        map.put(HmDataChannelManager.DISPLAY, "mobile");
        try {
            map.put("sso_hash", URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e10) {
            com.baidu.oauth.sdkbqt.a.d.d(f8198b, "Failed to encode sso_hash", e10);
            map.put("sso_hash", str);
        }
        AuthInfo authInfo = BdOauthSdk.getAuthInfo();
        if (authInfo != null) {
            try {
                map.put("redirect_uri", URLEncoder.encode(authInfo.getRedirectUrl(), "UTF-8"));
            } catch (UnsupportedEncodingException e11) {
                com.baidu.oauth.sdkbqt.a.d.d(f8198b, "Failed to encode redirect_uri", e11);
                map.put("redirect_uri", authInfo.getRedirectUrl());
            }
            map.put("scope", authInfo.getScope());
            map.put("client_id", authInfo.getAppKey());
            map.put("eh1_us1", authInfo.isUseSha1() ? "1" : "0");
            map.put("eh2_pg", authInfo.getPackageName());
            map.put("eh3_pgs", authInfo.getPackSign());
        }
        map.put("client", "android");
        map.put("clientfrom", "native");
        map.put("suppcheck", "1");
        map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, this.f8207k);
        return com.baidu.oauth.sdkbqt.a.c.a(com.baidu.oauth.sdkbqt.a.b.f8127g) + "?" + com.baidu.oauth.sdkbqt.a.h.a((HashMap<String, String>) map);
    }

    public final void b(View view) {
        if (this.f8204h == null) {
            this.f8204h = view;
            view.setVisibility(4);
            addView(this.f8204h, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public void a(g gVar) {
        this.f8212p = gVar;
    }

    public void c() {
        if (this.f8212p != null) {
            post(new q(this));
        }
    }

    public void a(f fVar) {
        this.f8213q = fVar;
    }

    public void a(h hVar) {
        this.f8214r = hVar;
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8200d = new HashMap();
        com.baidu.oauth.sdkbqt.auth.j jVar = null;
        this.f8202f = new C0209i(this, jVar);
        this.f8210n = new com.baidu.oauth.sdkbqt.auth.j(this);
        this.f8211o = new j(this, jVar);
        e();
    }

    public void a(com.baidu.oauth.sdkbqt.callback.b bVar) {
        this.f8215s = bVar;
    }

    public void b(String str) {
        this.f8207k = str;
        loadUrl(a(Boolean.FALSE));
    }

    public void a(c cVar) {
        this.f8216t = cVar;
    }

    private String e(String str) {
        return String.format("javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.%s){ Pass.client.%s()}}())", str, str);
    }

    public final void a(View view) {
        if (this.f8203g == null) {
            this.f8203g = view;
            view.setVisibility(4);
            addView(this.f8203g, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public void b() {
        View view;
        if (canGoBack()) {
            com.baidu.oauth.sdkbqt.a.h.a((Activity) getContext());
            goBack();
        } else {
            c();
        }
        View view2 = this.f8203g;
        if ((view2 == null || view2.getVisibility() != 0) && ((view = this.f8204h) == null || view.getVisibility() != 0)) {
            return;
        }
        c();
    }

    private void f(String str) {
        post(new p(this, str));
        if (com.baidu.oauth.sdkbqt.a.h.a(getContext()) || str.startsWith("javascript:")) {
            return;
        }
        i();
    }

    public i(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f8200d = new HashMap();
        com.baidu.oauth.sdkbqt.auth.j jVar = null;
        this.f8202f = new C0209i(this, jVar);
        this.f8210n = new com.baidu.oauth.sdkbqt.auth.j(this);
        this.f8211o = new j(this, jVar);
        e();
    }

    public void a(ProgressBar progressBar) {
        if (this.f8208l != null) {
            return;
        }
        this.f8208l = progressBar;
        if (progressBar != null) {
            addView(progressBar);
        }
    }

    public void a(String str, Map<String, String> map) {
        new com.baidu.oauth.sdkbqt.auth.c().a(new n(this, map, str));
    }

    public void a(String str) {
        this.f8207k = str;
        new com.baidu.oauth.sdkbqt.auth.c().a(new o(this));
    }

    private String a(Boolean bool) {
        HashMap map = new HashMap();
        if (bool.booleanValue()) {
            map.put("silentAuth", "1");
        }
        map.put("response_type", "code");
        map.put(HmDataChannelManager.DISPLAY, "mobile");
        AuthInfo authInfo = BdOauthSdk.getAuthInfo();
        if (authInfo != null) {
            try {
                map.put("redirect_uri", URLEncoder.encode(authInfo.getRedirectUrl(), "UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                com.baidu.oauth.sdkbqt.a.d.d(f8198b, "Failed to encode redirect_uri", e10);
                map.put("redirect_uri", authInfo.getRedirectUrl());
            }
            map.put("scope", authInfo.getScope());
            map.put("eh2_pg", authInfo.getPackageName());
            map.put("eh3_pgs", authInfo.getPackSign());
            map.put("eh1_us1", authInfo.isUseSha1() ? "1" : "0");
        }
        map.put("login_type", "sms");
        map.put("client_id", authInfo.getAppKey());
        map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, this.f8207k);
        return com.baidu.oauth.sdkbqt.a.c.a(com.baidu.oauth.sdkbqt.a.b.f8127g) + "?" + com.baidu.oauth.sdkbqt.a.h.a((HashMap<String, String>) map);
    }

    @TargetApi(8)
    public void a(b bVar) {
        if (getSettings().getBlockNetworkLoads()) {
            return;
        }
        loadUrl(e(bVar.f8222c));
    }

    public void a(k kVar) {
        this.f8201e = kVar;
    }

    public long a() {
        return this.f8209m;
    }

    public void a(long j10) {
        this.f8209m = j10;
    }

    public void a(String str, HashMap<String, String> map) {
        f(str);
    }

    public static String a(Map<String, String> map, boolean z10) {
        if (map == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (sb2.length() <= 0 && !z10) {
                sb2.append("?");
            } else {
                sb2.append(x.a.f97576d);
            }
            if (value == null) {
                try {
                    sb2.append(key);
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                } catch (Exception e10) {
                    sb2.append(key);
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb2.append((Object) value);
                    e10.printStackTrace();
                }
            } else {
                sb2.append(key);
                sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb2.append(URLEncoder.encode(value.toString(), "UTF-8"));
            }
        }
        return sb2.toString();
    }
}
