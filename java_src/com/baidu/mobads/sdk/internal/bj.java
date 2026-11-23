package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Observable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bj extends Observable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7565a = "b_f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7566b = "XAbstractProdTemplate";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7567c = "error_message";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7568d = "error_code";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f7569e = "error_uniqueid";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f7570f = "instanceInfo";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final String f7571g = "showState";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected RelativeLayout f7572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected Context f7573i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f7574j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HashMap<String, String> f7579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f7580p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f7581q;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected bv f7575k = bv.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public IAdInterListener f7577m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f7578n = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f7582r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected long f7583s = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public IOAdEventListener f7576l = new a();

    public class a implements IOAdEventListener {
        public a() {
        }

        private String a(IOAdEvent iOAdEvent) {
            Map<String, Object> data;
            Object obj;
            if (iOAdEvent == null) {
                return null;
            }
            String message = iOAdEvent.getMessage();
            return (!TextUtils.isEmpty(message) || (data = iOAdEvent.getData()) == null || (obj = data.get("msg")) == null || !(obj instanceof String)) ? message : (String) obj;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEventListener
        public void run(IOAdEvent iOAdEvent) {
            bj.a(new bm(this, iOAdEvent));
        }
    }

    public bj(Context context) {
        this.f7573i = context;
        aa.a().a(this.f7573i, new bk(this));
    }

    public abstract void a();

    protected void a(IOAdEvent iOAdEvent) {
    }

    protected void b() {
    }

    protected void c() {
    }

    protected void d() {
    }

    protected void e(IOAdEvent iOAdEvent) {
    }

    protected void f(IOAdEvent iOAdEvent) {
    }

    protected void g(String str) {
    }

    protected void h(IOAdEvent iOAdEvent) {
    }

    protected void i(IOAdEvent iOAdEvent) {
    }

    protected void j(IOAdEvent iOAdEvent) {
    }

    protected void k(IOAdEvent iOAdEvent) {
    }

    protected void l(IOAdEvent iOAdEvent) {
    }

    public void m() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.addEventListener(com.baidu.mobads.sdk.internal.a.c.f7365h, new com.baidu.mobads.sdk.internal.a.c.a());
            this.f7577m.addEventListener(z.H, this.f7576l);
            this.f7577m.addEventListener(z.J, this.f7576l);
            this.f7577m.addEventListener(z.L, this.f7576l);
            this.f7577m.addEventListener(z.M, this.f7576l);
            this.f7577m.addEventListener(z.W, this.f7576l);
            this.f7577m.addEventListener(z.f8076r, this.f7576l);
            this.f7577m.addEventListener(z.X, this.f7576l);
            this.f7577m.addEventListener(z.f8077s, this.f7576l);
            this.f7577m.addEventListener(z.N, this.f7576l);
            this.f7577m.addEventListener(z.O, this.f7576l);
            this.f7577m.addEventListener(z.K, this.f7576l);
            this.f7577m.addEventListener(z.D, this.f7576l);
            this.f7577m.addEventListener(z.f8058ac, this.f7576l);
            this.f7577m.addEventListener(z.f8059ad, this.f7576l);
            this.f7577m.addEventListener(z.ae, this.f7576l);
            this.f7577m.addEventListener(z.f8056aa, this.f7576l);
            this.f7577m.addEventListener(z.V, this.f7576l);
            this.f7577m.addEventListener(z.af, this.f7576l);
            this.f7577m.addEventListener(z.ag, this.f7576l);
            this.f7577m.addEventListener(z.ah, this.f7576l);
            this.f7577m.addEventListener(z.ai, this.f7576l);
            this.f7577m.addEventListener(z.aj, this.f7576l);
            this.f7577m.addEventListener(z.ak, this.f7576l);
            this.f7577m.addEventListener(z.al, this.f7576l);
            this.f7577m.addEventListener(z.am, this.f7576l);
            this.f7577m.addEventListener(z.f8057ab, this.f7576l);
            this.f7577m.addEventListener(z.an, this.f7576l);
            this.f7577m.addEventListener(z.Y, this.f7576l);
            this.f7577m.addEventListener(z.ao, this.f7576l);
            this.f7577m.addEventListener(z.ap, this.f7576l);
            this.f7577m.addEventListener(z.aq, this.f7576l);
        }
    }

    public void n() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onAttachedToWindow();
        }
    }

    public void o() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onDetachedFromWindow();
        }
    }

    public void p() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.destroyAd();
        }
    }

    protected void q() {
    }

    public void r() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.removeAllListeners();
        }
    }

    protected void s() {
    }

    protected void t() {
    }

    protected void u() {
    }

    protected void v() {
    }

    public View w() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            return iAdInterListener.getAdContainerView();
        }
        return null;
    }

    protected void a(String str, boolean z10) {
    }

    protected void b(IOAdEvent iOAdEvent) {
    }

    protected void c(IOAdEvent iOAdEvent) {
    }

    protected void d(IOAdEvent iOAdEvent) {
    }

    protected void e(String str) {
    }

    protected void f(String str) {
    }

    protected void g(IOAdEvent iOAdEvent) {
        r();
    }

    public void h() {
        this.f7577m = (IAdInterListener) av.a(z.f8070l, bu.a(this.f7573i), (Class<?>[]) new Class[]{Context.class}, this.f7573i);
        if (this.f7578n) {
            return;
        }
        a();
    }

    public void i() {
        a(OauthResult.ERROR_MSG_SDK_NOT_INIT, 1, "");
    }

    public JSONObject j() {
        return new JSONObject();
    }

    public JSONObject k() {
        return new JSONObject();
    }

    public String l() {
        JSONObject jSONObjectJ = j();
        JSONObject jSONObjectK = k();
        HashMap map = new HashMap();
        map.put("param_info", jSONObjectJ);
        map.put("ad_buss_param", jSONObjectK);
        a("get_request_token", (Map<String, Object>) map);
        Object obj = map.get("request_token");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    protected void a(boolean z10, Map<String, Object> map) {
    }

    protected void b(String str, boolean z10) {
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            a("bidding id is empty", 2, "");
        }
        if (this.f7577m != null) {
            HashMap map = new HashMap();
            map.put("bid_id", str);
            a("load_bidding_ad", (Map<String, Object>) map);
            return;
        }
        a("Initialization doesn't finish yet.", 1, "");
    }

    protected void d(String str) {
    }

    public String i(String str) {
        IXAdContainerFactory iXAdContainerFactoryC;
        aa aaVarA = aa.a();
        if (aaVarA != null && (iXAdContainerFactoryC = aaVarA.c()) != null) {
            Object remoteParam = iXAdContainerFactoryC.getRemoteParam(str, new Object[0]);
            if (remoteParam instanceof String) {
                return (String) remoteParam;
            }
        }
        return null;
    }

    public void a(View view, JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(view, a(IAdInterListener.AdCommandType.AD_IMPRESSION, jSONObject));
        }
    }

    public void b(View view, JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(view, a(IAdInterListener.AdCommandType.AD_CLICK, jSONObject));
        }
    }

    public void a(Activity activity) {
        if (this.f7577m != null) {
            HashMap map = new HashMap();
            map.put("setActivity", activity);
            this.f7577m.onAdTaskProcess(a(IAdInterListener.AdCommandType.CHANGE_ACTIVITY, new JSONObject()), map);
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            a("bidding data is empty", 2, "");
        }
        if (this.f7577m != null) {
            HashMap map = new HashMap();
            map.put("bidding_data", str);
            a("load_bidding_data", (Map<String, Object>) map);
            return;
        }
        a("Initialization doesn't finish yet.", 1, "");
    }

    public void h(String str) {
        this.f7581q = str;
    }

    public void a(JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject));
        }
    }

    public void b(int i10) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onWindowVisibilityChanged(i10);
        }
    }

    public void a(JSONObject jSONObject, Map<String, Object> map) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject), map);
        }
    }

    public JSONObject b(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        try {
            return new JSONObject(map);
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(String str, Map<String, Object> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", "server_bidding");
            jSONObject.put("msg", str);
            IAdInterListener iAdInterListener = this.f7577m;
            if (iAdInterListener != null) {
                iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject), map);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void b(JSONObject jSONObject) {
        int i10 = this.f7582r;
        if (i10 >= 0 && jSONObject != null) {
            try {
                jSONObject.put(f7565a, i10);
            } catch (Throwable th) {
                this.f7575k.a(th);
            }
        }
        if (jSONObject != null) {
            try {
                jSONObject.put(d.f7829b, this.f7583s);
            } catch (Throwable th2) {
                this.f7575k.a(th2);
            }
        }
    }

    public void a(String str, boolean z10, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        try {
            if (k.a(z10, linkedHashMap, biddingListener)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uniqueId", str);
                jSONObject.put("result", z10);
                try {
                    for (Map.Entry<String, Object> entry : linkedHashMap.entrySet()) {
                        jSONObject.put(String.valueOf(entry.getKey()), entry.getValue());
                    }
                } catch (Throwable th) {
                    az.f(th.getMessage());
                }
                IAdInterListener iAdInterListener = this.f7577m;
                if (iAdInterListener != null) {
                    iAdInterListener.onAdTaskProcess(a("onBiddingResult", jSONObject), (Map<String, Object>) null);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(String str, HashMap<String, Object> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", str);
            IAdInterListener iAdInterListener = this.f7577m;
            if (iAdInterListener != null) {
                iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.NOVEL_EVENT, jSONObject), map);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(boolean z10) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.onWindowFocusChanged(z10);
        }
    }

    public boolean a(int i10, KeyEvent keyEvent) {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            return iAdInterListener.onKeyDown(i10, keyEvent);
        }
        return false;
    }

    protected void a(int i10, String str, String str2) {
        r();
    }

    protected void a(String str, int i10, String str2) {
        r();
    }

    public static void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnable.run();
            } else {
                new Handler(Looper.getMainLooper()).post(new bl(runnable));
            }
        } catch (Exception unused) {
        }
    }

    public void a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.f7579o = (HashMap) map;
    }

    private String a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
        return "bdsdk://" + str + "?jsonObj=" + Uri.encode(jSONObject.toString());
    }
}
