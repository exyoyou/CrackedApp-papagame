package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.RewardVideoAd;
import com.baidu.mobads.sdk.api.RewardVideoRewardInfo;
import com.baidu.mobads.sdk.api.ScreenVideoAdListener;
import com.byazt.bv.BaseConstants;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.join.mgps.activity.PapayPayDetialActivity_;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class dj extends bj {
    private String A;
    private a B;
    private RequestParameters C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7859a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f7860t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f7861u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ScreenVideoAdListener f7862v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final String f7863w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f7864x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7865y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f7866z;

    public dj(Context context, String str, boolean z10) {
        this(context, str, z10, IAdInterListener.AdProdType.PRODUCT_REWARDVIDEO);
    }

    public void a(Context context) {
        if (this.f7577m != null) {
            JSONObject jSONObject = new JSONObject();
            HashMap map = new HashMap();
            try {
                jSONObject.put("msg", "setContext");
                map.put("context", context);
            } catch (JSONException e10) {
                bv.a().a(e10);
            }
            a(jSONObject, map);
            this.f7577m.showAd();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b() {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c() {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onVideoDownloadFailed();
        }
    }

    public void e() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            iAdInterListener.showAd();
        }
    }

    public boolean f() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener != null) {
            return iAdInterListener.isAdReady();
        }
        return false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void g(IOAdEvent iOAdEvent) {
        super.g(iOAdEvent);
        float fFloatValue = (iOAdEvent == null || iOAdEvent.getData() == null) ? 0.0f : ((Float) iOAdEvent.getData().get("play_scale")).floatValue();
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdClose(fFloatValue);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdClick();
        }
    }

    public void j(String str) {
        this.A = str;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", AVMDLDataLoader.KeyIsLiveSetLoaderType);
            jSONObject.put("useSurfaceView", this.f7859a);
            jSONObject.put("downloadConfirmPolicy", this.f7860t);
            jSONObject.put("userid", this.f7866z);
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.A);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void q() {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdShow();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void s() {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.playCompletion();
        }
    }

    public String x() {
        a aVar = this.B;
        return aVar != null ? aVar.B() : "";
    }

    public dj(Context context, String str, boolean z10, String str2) {
        super(context);
        this.f7860t = 3;
        this.f7861u = str;
        this.f7859a = z10;
        this.f7863w = str2;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        this.f7583s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, this.f7863w);
            this.f7577m.createProdHandler(jSONObject2);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, this.f7863w);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f7861u);
            jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON");
            jSONObject.put("n", "1");
            jSONObject.put("at", "10");
            if (!TextUtils.isEmpty(this.f7581q)) {
                jSONObject.put("appid", this.f7581q);
            }
            Rect rectA = bb.a(this.f7573i);
            this.f7864x = rectA.width();
            this.f7865y = rectA.height();
            if (this.f7573i.getResources().getConfiguration().orientation == 2) {
                this.f7864x = rectA.height();
                this.f7865y = rectA.width();
            }
            jSONObject.put(IAdInterListener.AdReqParam.WIDTH, "" + this.f7864x);
            jSONObject.put("h", "" + this.f7865y);
            jSONObject.put("opt", 1);
            if (IAdInterListener.AdProdType.PRODUCT_REWARDVIDEO.equals(this.f7863w)) {
                jSONObject.put("msa", 5293);
            }
            jSONObject = m.a(jSONObject, b(this.f7579o));
            b(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void g(String str) {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdSkip(Float.parseFloat(str));
        }
    }

    public String g() {
        a aVar = this.B;
        return aVar != null ? aVar.A() : "";
    }

    public Object k(String str) {
        if (this.B == null) {
            return null;
        }
        if ("request_id".equals(str)) {
            return this.B.Z();
        }
        return this.B.a(str);
    }

    public void a(int i10) {
        this.f7860t = i10;
    }

    public void a(String str) {
        this.f7866z = str;
    }

    public void a(ScreenVideoAdListener screenVideoAdListener) {
        this.f7862v = screenVideoAdListener;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener == null) {
            this.f7578n = false;
        } else {
            this.f7578n = true;
            iAdInterListener.loadAd(j(), k());
        }
    }

    public void a(RewardVideoRewardInfo rewardVideoRewardInfo) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", "twoStageReward");
            jSONObject.put("msg", "setRewardInfo");
            jSONObject.put(PapayPayDetialActivity_.INFO_EXTRA, rewardVideoRewardInfo.getTwoStageRewardInfo());
            a(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(IOAdEvent iOAdEvent) {
        List<a> listA;
        if (iOAdEvent != null && (listA = b.a(iOAdEvent.getMessage()).a()) != null && listA.size() > 0) {
            this.B = listA.get(0);
        }
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdLoaded();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        super.a(str, i10, str2);
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdFailed(str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(int i10, String str, String str2) {
        super.a(i10, str, str2);
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener != null) {
            screenVideoAdListener.onAdFailed(str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(boolean z10, Map<String, Object> map) {
        ScreenVideoAdListener screenVideoAdListener = this.f7862v;
        if (screenVideoAdListener == null || !(screenVideoAdListener instanceof RewardVideoAd.RewardVideoAdListener)) {
            return;
        }
        ((RewardVideoAd.RewardVideoAdListener) screenVideoAdListener).onRewardVerify(z10, map);
    }

    public void a(boolean z10, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        a aVar = this.B;
        if (aVar != null) {
            a(aVar.M(), z10, linkedHashMap, biddingListener);
        } else {
            a(this.f7574j, z10, linkedHashMap, biddingListener);
        }
    }

    public void a(RequestParameters requestParameters) {
        this.C = requestParameters;
        a(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(Map<String, String> map) {
        try {
            this.f7579o = m.a(map);
        } catch (Throwable unused) {
            this.f7579o = new HashMap<>();
        }
    }
}
