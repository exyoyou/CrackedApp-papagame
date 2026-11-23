package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.mobads.sdk.api.NativeCPUAdData;
import com.baidu.mobads.sdk.api.NativeCPUManager;
import com.byazt.hv.TTDownloadField;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class ae extends bj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f7393a = 17;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f7394t = "javascript:";
    private NativeCPUManager.CPUAdListener A;
    private NativeCPUManager B;
    private int C;
    private int D;
    private boolean E;
    private String F;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7395u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f7396v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int[] f7397w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f7398x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7399y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private HashMap<String, Object> f7400z;

    public ae(Context context) {
        super(context);
        this.C = 5;
        this.D = 60;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Map<String, Object> map) {
        if (map != null) {
            Object obj = map.get("adInnerPageInterval");
            Object obj2 = map.get("adBottomRefreshInterval");
            Object obj3 = map.get("adFrontChapterInterval");
            Object obj4 = map.get("isShowFeeds");
            Object obj5 = map.get("isAdSwitch");
            Object obj6 = map.get("showCount");
            Object obj7 = map.get("clickCount");
            if (obj != null && obj2 != null) {
                ao.a(((Integer) obj).intValue());
                ao.b(((Integer) obj2).intValue());
            }
            if ((obj3 instanceof Integer) && (obj4 instanceof Boolean)) {
                ao.a(((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue());
            }
            if (obj5 instanceof Integer) {
                ao.a(((Integer) obj5).intValue() != 0);
            }
            if ((obj6 instanceof Integer) && (obj7 instanceof Integer)) {
                ao.a(((Integer) obj6).intValue(), ((Integer) obj7).intValue());
            }
        }
    }

    private String j(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        ao.b();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.A;
        if (cPUAdListener != null) {
            cPUAdListener.onExitLp();
        }
    }

    public void e() {
        ao.a(this.C);
        ao.b(this.D);
        ao.a(new aj(this));
    }

    public Activity f() {
        return ao.c();
    }

    public boolean g() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b(IOAdEvent iOAdEvent) {
        notifyObservers(iOAdEvent);
        setChanged();
    }

    public void a(NativeCPUManager.CPUAdListener cPUAdListener) {
        this.A = cPUAdListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d(IOAdEvent iOAdEvent) {
        try {
            if (this.A == null || iOAdEvent == null) {
                return;
            }
            HashMap<String, Object> map = (HashMap) iOAdEvent.getData();
            this.A.onLpCustomEventCallBack(map, new ah(this, map.get(TTDownloadField.TT_ACTIVITY)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public ae(Context context, String str, NativeCPUManager nativeCPUManager) {
        super(context);
        this.C = 5;
        this.D = 60;
        this.f7581q = str;
        this.B = nativeCPUManager;
    }

    public void a(int i10, int i11, int[] iArr, boolean z10, HashMap<String, Object> map) {
        this.f7396v = i10;
        this.f7395u = i11;
        this.f7397w = iArr;
        this.f7398x = z10;
        this.f7400z = map;
        this.E = ao.f();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.A;
        if (cPUAdListener != null) {
            cPUAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f7577m == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(IAdInterListener.AdReqParam.PROD, "cpu");
            this.f7577m.createProdHandler(jSONObject3);
            m();
            this.f7577m.addEventListener("Update_fbReader_Setting", new af(this));
            this.f7577m.addEventListener("closeInterstitialAd", new ag(this));
            jSONObject.put(IAdInterListener.AdReqParam.PROD, "cpu");
            jSONObject.put("appsid", this.f7581q);
            jSONObject.put("pageIndex", this.f7396v);
            jSONObject.put("pageSize", this.f7395u);
            jSONObject.put("channels", this.f7397w);
            jSONObject.put("showAd", this.f7398x);
            jSONObject.put("openActivitylink", this.F);
            if (!TextUtils.isEmpty(this.f7581q)) {
                jSONObject.put("appid", this.f7581q);
            }
            jSONObject2.put("timeout", this.f7399y);
            HashMap<String, Object> map = this.f7400z;
            if (map == null || map.isEmpty()) {
                az.c().e("内容联盟元素需要传入 CPUAdRequest配置信息");
            }
            jSONObject2 = m.a(this.f7400z);
            if (jSONObject2 != null) {
                jSONObject2.put("isInitNovelSDK", this.E);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f7577m.loadAd(jSONObject, jSONObject2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c() {
        NativeCPUManager.CPUAdListener cPUAdListener = this.A;
        if (cPUAdListener != null) {
            cPUAdListener.onVideoDownloadFailed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c(IOAdEvent iOAdEvent) {
        if (iOAdEvent != null) {
            Map<String, Object> data = iOAdEvent.getData();
            Integer num = (Integer) data.get("position");
            String str = (String) data.get("mislikereason");
            NativeCPUManager.CPUAdListener cPUAdListener = this.A;
            if (cPUAdListener == null || num == null || str == null) {
                return;
            }
            cPUAdListener.onDisLikeAdClick(num.intValue(), str);
        }
    }

    public void a(int i10) {
        this.f7399y = i10;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(IOAdEvent iOAdEvent) {
        if (this.A != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) iOAdEvent.getData().get("cpuAdList")).iterator();
            while (it2.hasNext()) {
                NativeCPUAdData nativeCPUAdData = new NativeCPUAdData(this.f7573i, it2.next(), this.f7400z);
                arrayList.add(nativeCPUAdData);
                addObserver(nativeCPUAdData);
            }
            this.A.onAdLoaded(arrayList);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        super.a(str, i10, str2);
        NativeCPUManager.CPUAdListener cPUAdListener = this.A;
        if (cPUAdListener != null) {
            cPUAdListener.onAdError(str, i10);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(int i10, String str, String str2) {
        super.a(i10, str, str2);
        NativeCPUManager.CPUAdListener cPUAdListener = this.A;
        if (cPUAdListener != null) {
            cPUAdListener.onAdError(str, i10);
        }
    }

    protected void a(WebView webView, JSONObject jSONObject) {
        bj.a(new ai(this, jSONObject, webView));
    }

    public void a(String str) {
        this.F = str;
    }
}
