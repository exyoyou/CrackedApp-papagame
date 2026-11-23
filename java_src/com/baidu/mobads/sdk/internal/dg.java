package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.EntryResponse;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.XAdEntryResponse;
import com.baidu.mobads.sdk.api.XAdNativeResponse;
import com.byazt.hv.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class dg extends bj {
    private int A;
    private RequestParameters B;
    private boolean C;
    private g.a D;
    private BaiduNativeManager.ExpressAdListener E;
    private BaiduNativeManager.EntryAdListener F;
    private g.b G;
    private int H;
    private int I;
    private int J;
    private boolean K;
    private boolean L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<NativeResponse> f7847a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<ExpressResponse> f7848t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List<EntryResponse> f7849u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f7850v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f7851w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f7852x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f7853y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f7854z;

    public dg(Context context, String str, String str2, boolean z10, int i10) {
        super(context);
        this.C = false;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = false;
        this.L = false;
        this.f7853y = str;
        this.f7852x = str2;
        this.f7851w = z10;
        this.f7850v = i10;
        this.f7854z = 600;
        this.A = 500;
    }

    public void a(g.a aVar) {
        this.D = aVar;
    }

    public void b(boolean z10) {
        this.C = z10;
    }

    public void c(boolean z10) {
        this.K = z10;
    }

    public void d(boolean z10) {
        this.L = z10;
    }

    public String e() {
        return this.f7852x;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void f(IOAdEvent iOAdEvent) {
        if (iOAdEvent == null) {
            return;
        }
        Map<String, Object> data = iOAdEvent.getData();
        int i10 = 0;
        if (this.D != null && data != null && this.f7847a != null) {
            String str = (String) data.get("instanceInfo");
            while (i10 < this.f7847a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse != null && xAdNativeResponse.getUniqueId().equals(str)) {
                    this.D.a(xAdNativeResponse, Integer.parseInt((String) data.get("showState")));
                }
                i10++;
            }
            return;
        }
        if (this.F == null || data == null || this.f7849u == null) {
            return;
        }
        String str2 = (String) data.get("instanceInfo");
        while (i10 < this.f7849u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f7849u.get(i10);
            if (xAdEntryResponse != null && xAdEntryResponse.getUniqueId().equals(str2)) {
                xAdEntryResponse.onADExposureFailed(Integer.parseInt((String) data.get("showState")));
            }
            i10++;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void g(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        int i10 = 0;
        if (this.E != null && this.f7848t != null) {
            while (i10 < this.f7848t.size()) {
                bs bsVar = (bs) this.f7848t.get(i10);
                if (TextUtils.equals(bsVar.a(), str)) {
                    bsVar.a(bsVar);
                }
                i10++;
            }
            return;
        }
        if (this.f7847a != null) {
            while (i10 < this.f7847a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                    xAdNativeResponse.onAdClose(xAdNativeResponse);
                }
                i10++;
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        String message = iOAdEvent.getMessage();
        int i10 = 0;
        if (this.D != null && !TextUtils.isEmpty(message) && this.f7847a != null) {
            while (i10 < this.f7847a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(message)) {
                    this.D.b(xAdNativeResponse);
                }
                i10++;
            }
            return;
        }
        if (this.E != null && !TextUtils.isEmpty(message) && this.f7848t != null) {
            while (i10 < this.f7848t.size()) {
                bs bsVar = (bs) this.f7848t.get(i10);
                if (TextUtils.equals(message, bsVar.a())) {
                    bsVar.b();
                }
                i10++;
            }
            return;
        }
        if (this.F == null || TextUtils.isEmpty(message) || this.f7849u == null) {
            return;
        }
        while (i10 < this.f7849u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f7849u.get(i10);
            if (TextUtils.equals(message, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onAdClick();
            }
            i10++;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void i(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (this.E == null || iOAdEvent == null || this.f7848t == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        View view = (View) data.get("expressView");
        int iIntValue = ((Integer) data.get("viewWidth")).intValue();
        int iIntValue2 = ((Integer) data.get("viewHeight")).intValue();
        for (int i10 = 0; i10 < this.f7848t.size(); i10++) {
            bs bsVar = (bs) this.f7848t.get(i10);
            if (TextUtils.equals(bsVar.a(), str)) {
                bsVar.a(view, iIntValue, iIntValue2);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void j(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (this.E == null || iOAdEvent == null || this.f7848t == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        View view = (View) data.get("expressView");
        int iIntValue = ((Integer) data.get("error_code")).intValue();
        String str2 = (String) data.get("error_message");
        for (int i10 = 0; i10 < this.f7848t.size(); i10++) {
            bs bsVar = (bs) this.f7848t.get(i10);
            if (TextUtils.equals(bsVar.a(), str)) {
                bsVar.a(view, str2, iIntValue);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void k(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || this.f7847a == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        String str2 = (String) data.get("type");
        for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
            if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                if (TextUtils.equals("dismiss", str2)) {
                    xAdNativeResponse.onShakeViewDismiss();
                } else if (TextUtils.equals("coupon_float_dismiss", str2)) {
                    xAdNativeResponse.onCouponFloatDismiss();
                } else if (TextUtils.equals("e_commerce_dismiss", str2)) {
                    xAdNativeResponse.onECommerceDismiss();
                }
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void l(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || this.f7847a == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        int code = iOAdEvent.getCode();
        String str = (String) data.remove("uniqueId");
        for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
            if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                xAdNativeResponse.onAdEvent(code, data);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void q() {
        int i10;
        int iOptInt;
        boolean zB;
        if (this.D == null && this.E == null && this.F == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVarA = b.a(this.f7580p);
        HashSet hashSet = new HashSet();
        int i11 = 0;
        int i12 = 0;
        while (i12 < bVarA.a().size()) {
            a aVar = bVarA.a().get(i12);
            String strM = aVar.m();
            if (aVar.q() == 1) {
                i10 = 1;
            } else {
                i10 = 3;
                if (aVar.q() != 2) {
                    if (aVar.q() == 512) {
                        try {
                            JSONObject jSONObject = new JSONObject(aVar.r());
                            iOptInt = jSONObject.optInt("fb_act", i11);
                            try {
                                zB = bw.b(this.f7573i, jSONObject.optString("page", ""));
                            } catch (Throwable unused) {
                                zB = false;
                            }
                        } catch (Throwable unused2) {
                            iOptInt = 0;
                        }
                        if (!zB) {
                            if (iOptInt != 1 && iOptInt == 2) {
                                if (TextUtils.isEmpty(strM) || !bw.a(this.f7573i, strM)) {
                                    i11 = 0;
                                    i10 = 2;
                                }
                            }
                        }
                        i11 = 0;
                    }
                    i11 = 0;
                    i10 = 1;
                } else if (strM == null || strM.equals("") || strM.equals("null") || hashSet.contains(strM)) {
                    i11 = 1;
                    i10 = 1;
                } else {
                    hashSet.add(strM);
                    if (!bw.a(this.f7573i, strM)) {
                        i10 = 2;
                    }
                }
            }
            if (i11 == 0) {
                if (this.D != null) {
                    XAdNativeResponse xAdNativeResponse = new XAdNativeResponse(this.f7573i, this, aVar);
                    xAdNativeResponse.setIsDownloadApp(i10 == 2);
                    xAdNativeResponse.setAdActionType(i10);
                    arrayList.add(xAdNativeResponse);
                } else if (this.E != null) {
                    bs bsVar = new bs(this.f7573i, this, aVar);
                    bsVar.a(i10);
                    arrayList2.add(bsVar);
                } else if (this.F != null) {
                    arrayList3.add(new XAdEntryResponse(this.f7573i, this, aVar));
                }
            }
            i12++;
            i11 = 0;
        }
        g.a aVar2 = this.D;
        if (aVar2 != null) {
            this.f7847a = arrayList;
            aVar2.a(arrayList);
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.E;
        if (expressAdListener != null) {
            this.f7848t = arrayList2;
            expressAdListener.onNativeLoad(arrayList2);
            return;
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.F;
        if (entryAdListener != null) {
            this.f7849u = arrayList3;
            entryAdListener.onNativeLoad(arrayList3);
        }
    }

    public void a(BaiduNativeManager.ExpressAdListener expressAdListener) {
        this.E = expressAdListener;
    }

    public void b(Activity activity) {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "bindExpressActivity");
            map.put(TTDownloadField.TT_ACTIVITY, activity);
        } catch (JSONException e10) {
            bv.a().a(e10);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c(IOAdEvent iOAdEvent) {
        Map<String, Object> data;
        if (iOAdEvent == null || (data = iOAdEvent.getData()) == null) {
            return;
        }
        String str = (String) data.get("uniqueId");
        String str2 = (String) data.get("type");
        int i10 = 0;
        if (this.E != null && this.f7848t != null) {
            while (i10 < this.f7848t.size()) {
                bs bsVar = (bs) this.f7848t.get(i10);
                if (TextUtils.equals(bsVar.a(), str)) {
                    if (TextUtils.equals("show", str2)) {
                        bsVar.d();
                    } else if (TextUtils.equals("click", str2)) {
                        Object obj = data.get(MediationConstant.KEY_REASON);
                        bsVar.b(obj instanceof String ? (String) obj : "");
                    } else if (TextUtils.equals("close", str2)) {
                        bsVar.e();
                    }
                }
                i10++;
            }
            return;
        }
        if (this.f7847a != null) {
            while (i10 < this.f7847a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (TextUtils.equals(xAdNativeResponse.getUniqueId(), str)) {
                    if (TextUtils.equals("show", str2)) {
                        xAdNativeResponse.onDislikeShow();
                    } else if (TextUtils.equals("click", str2)) {
                        Object obj2 = data.get(MediationConstant.KEY_REASON);
                        xAdNativeResponse.onDislikeClick(obj2 instanceof String ? (String) obj2 : "");
                    } else if (TextUtils.equals("close", str2)) {
                        xAdNativeResponse.onDislikeClose();
                    }
                }
                i10++;
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d() {
        g.a aVar = this.D;
        if (aVar != null) {
            aVar.a();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.E;
        if (expressAdListener != null) {
            expressAdListener.onLpClosed();
            return;
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.F;
        if (entryAdListener != null) {
            entryAdListener.onLpClosed();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(IOAdEvent iOAdEvent) {
        String message = iOAdEvent.getMessage();
        int i10 = 0;
        if (this.D != null && !TextUtils.isEmpty(message) && this.f7847a != null) {
            while (i10 < this.f7847a.size()) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(message)) {
                    this.D.a(xAdNativeResponse);
                }
                i10++;
            }
            return;
        }
        if (this.E != null && !TextUtils.isEmpty(message) && this.f7848t != null) {
            while (i10 < this.f7848t.size()) {
                bs bsVar = (bs) this.f7848t.get(i10);
                if (TextUtils.equals(message, bsVar.a())) {
                    bsVar.c();
                }
                i10++;
            }
            return;
        }
        if (this.F == null || TextUtils.isEmpty(message) || this.f7849u == null) {
            return;
        }
        while (i10 < this.f7849u.size()) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f7849u.get(i10);
            if (TextUtils.equals(message, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onADExposed();
            }
            i10++;
        }
    }

    public void a(BaiduNativeManager.EntryAdListener entryAdListener) {
        this.F = entryAdListener;
    }

    public void a(g.b bVar) {
        this.G = bVar;
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

    public void b(ViewGroup viewGroup, a aVar) {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "destroyExpressView");
            jSONObject.put("uniqueId", aVar.M());
            map.put("container", viewGroup);
        } catch (JSONException e10) {
            bv.a().a(e10);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d(String str) {
        if (!TextUtils.isEmpty(str) && this.f7847a != null) {
            for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onAdUnionClick();
                }
            }
        }
        if (!TextUtils.isEmpty(str) && this.f7848t != null) {
            for (int i11 = 0; i11 < this.f7848t.size(); i11++) {
                bs bsVar = (bs) this.f7848t.get(i11);
                if (TextUtils.equals(str, bsVar.a())) {
                    bsVar.f();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f7849u == null) {
            return;
        }
        for (int i12 = 0; i12 < this.f7849u.size(); i12++) {
            XAdEntryResponse xAdEntryResponse = (XAdEntryResponse) this.f7849u.get(i12);
            if (TextUtils.equals(str, xAdEntryResponse.getUniqueId())) {
                xAdEntryResponse.onAdUnionClick();
            }
        }
    }

    public void a(RequestParameters requestParameters) {
        int width = requestParameters.getWidth();
        int height = requestParameters.getHeight();
        if (width > 0 && height > 0) {
            this.f7854z = width;
            this.A = height;
        }
        this.B = requestParameters;
        a(requestParameters.getExtras());
        c(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        this.f7583s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, this.f7852x);
            this.f7577m.createProdHandler(jSONObject2);
            this.f7577m.setAdContainer(this.f7572h);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, this.f7852x);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f7853y);
            if (cs.a().b()) {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML");
            } else {
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,MSSP,VIDEO,NMON,HTML,CLICK2VIDEO");
            }
            jSONObject.put("n", "1");
            if (!TextUtils.isEmpty(this.f7581q)) {
                jSONObject.put("appid", this.f7581q);
            }
            if ("video".equals(this.f7852x)) {
                jSONObject.put("at", "10");
                jSONObject.put(IAdInterListener.AdReqParam.MIME_TYPE, "video/mp4,image/jpg,image/gif,image/png");
                jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,HTML,MSSP,VIDEO,NMON");
            } else {
                jSONObject.put("at", "2");
            }
            jSONObject.put(IAdInterListener.AdReqParam.WIDTH, "" + this.f7854z);
            jSONObject.put("h", "" + this.A);
            jSONObject.put("msa", this.K ? 16527 : 143);
            jSONObject = m.a(jSONObject, b(this.f7579o));
            jSONObject.put("opt", this.H);
            if (this.H == 0) {
                jSONObject.put("optn", 1);
            }
            b(jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public String g() {
        return this.f7853y;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", this.f7850v);
            jSONObject.put("isCacheVideo", this.f7851w);
            jSONObject.put("cacheVideoOnlyWifi", this.C);
            RequestParameters requestParameters = this.B;
            jSONObject.put("appConfirmPolicy", requestParameters == null ? 1 : requestParameters.getAPPConfirmPolicy());
            jSONObject.put("reward_on_downloaded", this.L);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b(IOAdEvent iOAdEvent) {
        if (this.G == null || iOAdEvent == null || this.f7847a == null) {
            return;
        }
        String message = iOAdEvent.getMessage();
        for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
            XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
            if (xAdNativeResponse.getUniqueId().equals(message)) {
                this.G.a(xAdNativeResponse);
            }
        }
    }

    public void a(int i10) {
        this.H = i10;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void f(String str) {
        if (!TextUtils.isEmpty(str) && this.f7847a != null) {
            for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADFunctionClick();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f7848t == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f7848t.size(); i11++) {
            bs bsVar = (bs) this.f7848t.get(i11);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.h();
            }
        }
    }

    public void a(int i10, int i11) {
        this.I = i10;
        this.J = i11;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(String str) {
        if (!TextUtils.isEmpty(str) && this.f7847a != null) {
            for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADPrivacyClick();
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f7848t == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f7848t.size(); i11++) {
            bs bsVar = (bs) this.f7848t.get(i11);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.g();
            }
        }
    }

    public ViewGroup a(a aVar) {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "initExpressContainer");
            jSONObject.put("uniqueId", aVar.M());
        } catch (JSONException e10) {
            bv.a().a(e10);
        }
        a(jSONObject, map);
        Object obj = map.get("container");
        if (obj instanceof ViewGroup) {
            return (ViewGroup) obj;
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b() {
        g.a aVar = this.D;
        if (aVar != null) {
            aVar.b();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.E;
        if (expressAdListener != null) {
            expressAdListener.onVideoDownloadSuccess();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b(String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && this.f7847a != null) {
            for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onAdDownloadWindow(z10);
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f7848t == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f7848t.size(); i11++) {
            bs bsVar = (bs) this.f7848t.get(i11);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.b(z10);
            }
        }
    }

    public RequestParameters f() {
        return this.B;
    }

    public void a(ViewGroup viewGroup, a aVar) {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "renderExpressView");
            jSONObject.put("uniqueId", aVar.M());
            map.put(IAdInterListener.AdReqParam.WIDTH, Integer.valueOf(this.I));
            map.put("h", Integer.valueOf(this.J));
            map.put("container", viewGroup);
        } catch (JSONException e10) {
            bv.a().a(e10);
        }
        a(jSONObject, map);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c() {
        g.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
            return;
        }
        BaiduNativeManager.ExpressAdListener expressAdListener = this.E;
        if (expressAdListener != null) {
            expressAdListener.onVideoDownloadFailed();
        }
    }

    public void c(Map<String, String> map) {
        try {
            HashMap<String, String> mapA = m.a(map);
            if (this.f7579o == null) {
                this.f7579o = new HashMap<>();
            }
            if (mapA.isEmpty()) {
                return;
            }
            for (String str : mapA.keySet()) {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = mapA.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        this.f7579o.put(str, str2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a(View view, a aVar, int i10) {
        JSONObject jSONObject = new JSONObject();
        HashMap map = new HashMap();
        try {
            jSONObject.put("msg", "switchTheme");
            map.put("view", view);
            map.put("code", Integer.valueOf(i10));
        } catch (JSONException e10) {
            bv.a().a(e10);
        }
        a(jSONObject, map);
        Object obj = map.get("result");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        if (this.D != null) {
            XAdNativeResponse xAdNativeResponse = new XAdNativeResponse(this.f7573i, this, null);
            xAdNativeResponse.setNoAdUniqueId(str2);
            this.D.b(i10, str, xAdNativeResponse);
        }
        if (this.E != null) {
            bs bsVar = new bs(this.f7573i, this, null);
            bsVar.a(str2);
            this.E.onNativeFail(i10, str, bsVar);
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.F;
        if (entryAdListener != null) {
            entryAdListener.onNativeFail(i10, str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(int i10, String str, String str2) {
        if (this.D != null) {
            XAdNativeResponse xAdNativeResponse = new XAdNativeResponse(this.f7573i, this, null);
            xAdNativeResponse.setNoAdUniqueId(str2);
            this.D.a(i10, str, xAdNativeResponse);
        }
        if (this.E != null) {
            bs bsVar = new bs(this.f7573i, this, null);
            bsVar.a(str2);
            this.E.onNoAd(i10, str, bsVar);
        }
        BaiduNativeManager.EntryAdListener entryAdListener = this.F;
        if (entryAdListener != null) {
            entryAdListener.onNoAd(i10, str);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && this.f7847a != null) {
            for (int i10 = 0; i10 < this.f7847a.size(); i10++) {
                XAdNativeResponse xAdNativeResponse = (XAdNativeResponse) this.f7847a.get(i10);
                if (xAdNativeResponse.getUniqueId().equals(str)) {
                    xAdNativeResponse.onADPermissionShow(z10);
                }
            }
        }
        if (TextUtils.isEmpty(str) || this.f7848t == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f7848t.size(); i11++) {
            bs bsVar = (bs) this.f7848t.get(i11);
            if (TextUtils.equals(str, bsVar.a())) {
                bsVar.a(z10);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a(Map<String, String> map) {
        int length;
        if (map == null || map.isEmpty()) {
            return;
        }
        HashMap map2 = new HashMap(map);
        HashMap<String, String> map3 = new HashMap<>();
        int i10 = 0;
        for (String str : ArticleInfo.PREDEFINED_KEYS) {
            if (map2.containsKey(str)) {
                String str2 = (String) map2.remove(str);
                if (!TextUtils.isEmpty(str2) && (length = str2.length() + i10) < 150) {
                    map3.put(str, str2);
                    i10 = length;
                }
            }
        }
        for (String str3 : ArticleInfo.PREDEFINED_KEYS_UNLIMITED) {
            if (map2.containsKey(str3)) {
                String str4 = (String) map2.remove(str3);
                if (!TextUtils.isEmpty(str4)) {
                    map3.put(str3, str4);
                }
            }
        }
        if (!map2.isEmpty()) {
            for (String str5 : map2.keySet()) {
                if (!TextUtils.isEmpty(str5)) {
                    String str6 = (String) map2.get(str5);
                    if (!TextUtils.isEmpty(str6)) {
                        int length2 = i10 + str5.length() + str6.length();
                        if (length2 >= 150) {
                            break;
                        }
                        map3.put("c_" + str5, str6);
                        i10 = length2 + 2;
                    } else {
                        continue;
                    }
                }
            }
        }
        this.f7579o = map3;
    }
}
