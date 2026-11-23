package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.CPUWebAdRequestParam;
import com.baidu.mobads.sdk.api.CpuAdView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class cu extends bj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, Object> f7809a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7810t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RelativeLayout f7811u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CpuAdView.CpuAdViewInternalStatusListener f7812v;

    public cu(Context context, RelativeLayout relativeLayout, String str, int i10, CPUWebAdRequestParam cPUWebAdRequestParam) {
        super(context);
        this.f7581q = str;
        this.f7811u = relativeLayout;
        this.f7810t = i10;
        if (cPUWebAdRequestParam == null) {
            az.c().e("内容联盟模板需要传入 CPUWebAdRequestParam配置信息");
        } else {
            this.f7809a = (HashMap) cPUWebAdRequestParam.getParameters();
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ao.b();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d() {
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f7812v;
        if (cpuAdViewInternalStatusListener != null) {
            cpuAdViewInternalStatusListener.onExitLp();
        }
    }

    public Activity e() {
        return ao.c();
    }

    public boolean f() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        Boolean bool = (Boolean) iOAdEvent.getData().get("isClickFeAd");
        if (this.f7812v != null && bool != null && bool.booleanValue()) {
            this.f7812v.onAdClick();
            return;
        }
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f7812v;
        if (cpuAdViewInternalStatusListener == null || bool == null) {
            return;
        }
        cpuAdViewInternalStatusListener.onContentClick();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(IOAdEvent iOAdEvent) {
        Map<String, Object> data = iOAdEvent.getData();
        Boolean bool = (Boolean) data.get("isImpressionFeAd");
        String str = (String) data.get("nums");
        if (this.f7812v != null && bool != null && bool.booleanValue()) {
            this.f7812v.onAdImpression(str);
            return;
        }
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f7812v;
        if (cpuAdViewInternalStatusListener == null || bool == null) {
            return;
        }
        cpuAdViewInternalStatusListener.onContentImpression(str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d(IOAdEvent iOAdEvent) {
        if (this.f7812v == null || iOAdEvent == null) {
            return;
        }
        this.f7812v.onLpContentStatus(iOAdEvent.getData());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        if (this.f7577m == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        JSONObject jSONObject = new JSONObject();
        if (this.f7577m != null) {
            try {
                jSONObject.put("channel", this.f7810t);
                jSONObject.put(IAdInterListener.AdReqParam.PROD, "cpu_h5");
                jSONObject.put("timeout", 10000);
                if (!TextUtils.isEmpty(this.f7581q)) {
                    jSONObject.put("appid", this.f7581q);
                }
                if (this.f7811u != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(IAdInterListener.AdReqParam.PROD, "cpu_h5");
                    this.f7577m.createProdHandler(jSONObject2);
                    this.f7577m.setAdContainer(this.f7811u);
                    m();
                    this.f7577m.addEventListener("Update_fbReader_Setting", new cv(this));
                    this.f7577m.addEventListener("closeInterstitialAd", new cw(this));
                    this.f7577m.addEventListener("feOpenFbReader", new cx(this));
                    JSONObject jSONObjectA = m.a(this.f7809a);
                    jSONObjectA.put("isInitNovelSDK", ao.f());
                    this.f7577m.loadAd(jSONObject, jSONObjectA);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11, String str, int i12, int i13, String str2) {
        ao.a(i10);
        ao.b(i11);
        ao.a(new cy(this, i12, i13, str2));
        ao.a(this.f7573i, str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener = this.f7812v;
        if (cpuAdViewInternalStatusListener != null) {
            cpuAdViewInternalStatusListener.loadDataError(str);
        }
    }

    public void a(CpuAdView.CpuAdViewInternalStatusListener cpuAdViewInternalStatusListener) {
        this.f7812v = cpuAdViewInternalStatusListener;
    }
}
