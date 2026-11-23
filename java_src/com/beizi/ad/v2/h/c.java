package com.beizi.ad.v2.h;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.beizi.ad.internal.c.e;
import com.beizi.ad.lance.a.f;
import com.beizi.ad.model.k;
import com.beizi.fusion.unified.BZUnifiedAdDownloadAppInfo;
import com.beizi.fusion.unified.BZUnifiedAdImageInfo;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.beizi.fusion.unified.BZUnifiedAdTemplateBeanModel;
import com.beizi.fusion.unified.BZUnifiedAdVideoInfo;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c extends com.beizi.ad.v2.a.b {
    private b H;
    private f I;

    /* JADX INFO: renamed from: com.beizi.ad.v2.h.c$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f10026a;

        AnonymousClass2(View view) {
            this.f10026a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.this.H == null || ((com.beizi.ad.v2.a.b) c.this).f9680c == null) {
                    return;
                }
                c.this.I = new f(this.f10026a, new e() { // from class: com.beizi.ad.v2.h.c.2.1
                    @Override // com.beizi.ad.internal.c.e
                    public void a() {
                        try {
                            if (((com.beizi.ad.v2.a.b) c.this).f9680c != null) {
                                com.beizi.ad.internal.d.a aVar = ((com.beizi.ad.v2.a.b) c.this).f9680c;
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                aVar.a(anonymousClass2.f10026a, ((com.beizi.ad.v2.a.b) c.this).f9689l);
                                if (((com.beizi.ad.v2.a.b) c.this).f9697t) {
                                    ((com.beizi.ad.v2.a.b) c.this).f9698u = true;
                                    com.beizi.ad.internal.a.a.a().a(((com.beizi.ad.v2.a.b) c.this).f9695r);
                                }
                                AnonymousClass2.this.f10026a.post(new Runnable() { // from class: com.beizi.ad.v2.h.c.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (c.this.H != null) {
                                            c.this.H.a();
                                        }
                                    }
                                });
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public c(Context context, String str, com.beizi.ad.internal.f fVar) {
        super(context, str, fVar);
    }

    @Override // com.beizi.ad.v2.a.b
    public void q() {
        super.q();
        f fVar = this.I;
        if (fVar != null) {
            fVar.a();
        }
        this.I = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        if (view == null) {
            return;
        }
        view.post(new AnonymousClass2(view));
    }

    private BZUnifiedAdTemplateBeanModel g(String str) {
        String str2;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject3;
        String str3 = "icon";
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = new BZUnifiedAdTemplateBeanModel();
                if (jSONObject.has("creativeId")) {
                    bZUnifiedAdTemplateBeanModel.setCreativeId(jSONObject.optString("creativeId"));
                }
                if (jSONObject.has("adBrand")) {
                    bZUnifiedAdTemplateBeanModel.setAdBrand(jSONObject.optString("adBrand"));
                }
                if (jSONObject.has("title")) {
                    bZUnifiedAdTemplateBeanModel.setTitle(jSONObject.optString("title"));
                }
                if (jSONObject.has("desc")) {
                    bZUnifiedAdTemplateBeanModel.setDesc(jSONObject.optString("desc"));
                }
                if (jSONObject.has("actionText")) {
                    bZUnifiedAdTemplateBeanModel.setActionText(jSONObject.optString("actionText"));
                }
                if (jSONObject.has("image") && (jSONObjectOptJSONObject3 = jSONObject.optJSONObject("image")) != null) {
                    BZUnifiedAdImageInfo bZUnifiedAdImageInfo = new BZUnifiedAdImageInfo();
                    if (jSONObjectOptJSONObject3.has("width")) {
                        bZUnifiedAdImageInfo.setWidth(jSONObjectOptJSONObject3.optInt("width"));
                    }
                    if (jSONObjectOptJSONObject3.has("height")) {
                        bZUnifiedAdImageInfo.setHeight(jSONObjectOptJSONObject3.optInt("height"));
                    }
                    if (jSONObjectOptJSONObject3.has("url")) {
                        bZUnifiedAdImageInfo.setUrl(jSONObjectOptJSONObject3.optString("url"));
                    }
                    bZUnifiedAdTemplateBeanModel.setImage(bZUnifiedAdImageInfo);
                }
                if (!jSONObject.has("imageList") || (jSONArrayOptJSONArray = jSONObject.optJSONArray("imageList")) == null || jSONArrayOptJSONArray.length() <= 0) {
                    str2 = "icon";
                } else {
                    ArrayList arrayList = new ArrayList();
                    int i10 = 0;
                    while (i10 < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i10);
                        JSONArray jSONArray = jSONArrayOptJSONArray;
                        BZUnifiedAdImageInfo bZUnifiedAdImageInfo2 = new BZUnifiedAdImageInfo();
                        if (jSONObject2.has("width")) {
                            bZUnifiedAdImageInfo2.setWidth(jSONObject2.optInt("width"));
                        }
                        if (jSONObject2.has("height")) {
                            bZUnifiedAdImageInfo2.setHeight(jSONObject2.optInt("height"));
                        }
                        if (jSONObject2.has("url")) {
                            bZUnifiedAdImageInfo2.setUrl(jSONObject2.optString("url"));
                        }
                        arrayList.add(bZUnifiedAdImageInfo2);
                        i10++;
                        jSONArrayOptJSONArray = jSONArray;
                        str3 = str3;
                    }
                    str2 = str3;
                    bZUnifiedAdTemplateBeanModel.setImageList(arrayList);
                }
                if (jSONObject.has("video") && (jSONObjectOptJSONObject2 = jSONObject.optJSONObject("video")) != null) {
                    BZUnifiedAdVideoInfo bZUnifiedAdVideoInfo = new BZUnifiedAdVideoInfo();
                    if (jSONObjectOptJSONObject2.has("coverWidth")) {
                        bZUnifiedAdVideoInfo.setCoverWidth(jSONObjectOptJSONObject2.optInt("coverWidth"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverHeight")) {
                        bZUnifiedAdVideoInfo.setCoverHeight(jSONObjectOptJSONObject2.optInt("coverHeight"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverUrl")) {
                        bZUnifiedAdVideoInfo.setCoverUrl(jSONObjectOptJSONObject2.optString("coverUrl"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverHeight")) {
                        bZUnifiedAdVideoInfo.setCoverHeight(jSONObjectOptJSONObject2.optInt("coverHeight"));
                    }
                    if (jSONObjectOptJSONObject2.has("url")) {
                        bZUnifiedAdVideoInfo.setUrl(jSONObjectOptJSONObject2.optString("url"));
                    }
                    if (jSONObjectOptJSONObject2.has("duration")) {
                        bZUnifiedAdVideoInfo.setDuration(jSONObjectOptJSONObject2.optInt("duration"));
                    }
                    if (jSONObjectOptJSONObject2.has(bm.f84423z)) {
                        bZUnifiedAdVideoInfo.setResolution(jSONObjectOptJSONObject2.optString(bm.f84423z));
                    }
                    bZUnifiedAdTemplateBeanModel.setVideo(bZUnifiedAdVideoInfo);
                }
                String str4 = str2;
                if (jSONObject.has(str4) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(str4)) != null) {
                    BZUnifiedAdImageInfo bZUnifiedAdImageInfo3 = new BZUnifiedAdImageInfo();
                    if (jSONObjectOptJSONObject.has("width")) {
                        bZUnifiedAdImageInfo3.setWidth(jSONObjectOptJSONObject.optInt("width"));
                    }
                    if (jSONObjectOptJSONObject.has("height")) {
                        bZUnifiedAdImageInfo3.setHeight(jSONObjectOptJSONObject.optInt("height"));
                    }
                    if (jSONObjectOptJSONObject.has("url")) {
                        bZUnifiedAdImageInfo3.setUrl(jSONObjectOptJSONObject.optString("url"));
                    }
                    bZUnifiedAdTemplateBeanModel.setIcon(bZUnifiedAdImageInfo3);
                }
                if ((bZUnifiedAdTemplateBeanModel.getImageList() == null || bZUnifiedAdTemplateBeanModel.getImageList().size() <= 1) && bZUnifiedAdTemplateBeanModel.getImage() == null && bZUnifiedAdTemplateBeanModel.getVideo() == null) {
                    return null;
                }
                return bZUnifiedAdTemplateBeanModel;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void b(final int i10) {
        if (this.H == null || this.f9687j || this.f9684g) {
            return;
        }
        this.f9687j = true;
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.h.c.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.H.a(i10);
                }
            });
        }
    }

    public void a(b bVar) {
        this.H = bVar;
    }

    public void a(final View view) {
        if (view == null) {
            return;
        }
        try {
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.beizi.ad.v2.h.c.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    try {
                        View view2 = view;
                        if (view2 == null) {
                            return true;
                        }
                        view2.getViewTreeObserver().removeOnPreDrawListener(this);
                        c.this.b(view);
                        return true;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return true;
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(ViewGroup viewGroup, k kVar) {
        try {
            if (this.H != null && viewGroup != null && kVar != null) {
                int iA = kVar.a();
                com.beizi.ad.internal.d.a aVar = this.f9680c;
                if (aVar == null) {
                    return;
                }
                aVar.e(this.G);
                this.f9680c.a(true);
                com.beizi.ad.model.f fVar = new com.beizi.ad.model.f();
                if (!TextUtils.isEmpty(kVar.b())) {
                    fVar.a(kVar.b());
                }
                if (!TextUtils.isEmpty(kVar.c())) {
                    fVar.b(kVar.c());
                }
                if (!TextUtils.isEmpty(kVar.d())) {
                    fVar.c(kVar.d());
                }
                if (!TextUtils.isEmpty(kVar.e())) {
                    fVar.d(kVar.e());
                }
                if (!TextUtils.isEmpty(kVar.f())) {
                    fVar.e(kVar.f());
                }
                if (!TextUtils.isEmpty(kVar.g())) {
                    fVar.f(kVar.g());
                }
                if (!TextUtils.isEmpty(kVar.h())) {
                    fVar.g(kVar.h());
                }
                if (!TextUtils.isEmpty(kVar.i())) {
                    fVar.h(kVar.i());
                }
                this.f9680c.a(viewGroup, fVar, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f9686i, this.f9689l, iA);
                this.f9686i = true;
                this.H.b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            this.f9680c.b(viewGroup, this.f9689l);
            return;
        }
        if (i10 == 25) {
            this.f9680c.c(viewGroup, this.f9689l);
            return;
        }
        if (i10 == 50) {
            this.f9680c.d(viewGroup, this.f9689l);
        } else if (i10 == 75) {
            this.f9680c.e(viewGroup, this.f9689l);
        } else if (i10 == 100) {
            this.f9680c.f(viewGroup, this.f9689l);
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void a(final com.beizi.ad.internal.d.a aVar) {
        b(aVar.b());
        c(aVar.c());
        a(aVar.B());
        final String strO = aVar.O();
        final String strP = aVar.P();
        final String strN = aVar.n();
        final BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModelG = g(aVar.N());
        if (bZUnifiedAdTemplateBeanModelG == null) {
            b(3);
            return;
        }
        final BZUnifiedAdResponse bZUnifiedAdResponse = new BZUnifiedAdResponse() { // from class: com.beizi.ad.v2.h.c.4
            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getActionText() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getActionText();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getAdBrand() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getAdBrand();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getCreativeId() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getCreativeId();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getDeeplink() {
                return strO;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getDesc() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getDesc();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public BZUnifiedAdDownloadAppInfo getDownloadAppInfo() {
                if (!((com.beizi.ad.v2.a.b) c.this).f9681d || aVar == null) {
                    return null;
                }
                BZUnifiedAdDownloadAppInfo bZUnifiedAdDownloadAppInfo = new BZUnifiedAdDownloadAppInfo();
                bZUnifiedAdDownloadAppInfo.setAppName(aVar.l());
                bZUnifiedAdDownloadAppInfo.setAppVersion(aVar.o());
                bZUnifiedAdDownloadAppInfo.setAppDeveloper(aVar.p());
                String strR = aVar.r();
                if (TextUtils.isEmpty(strR)) {
                    bZUnifiedAdDownloadAppInfo.setAppPermission(aVar.q());
                } else {
                    bZUnifiedAdDownloadAppInfo.setAppPermission(strR);
                }
                bZUnifiedAdDownloadAppInfo.setAppPrivacy(aVar.s());
                bZUnifiedAdDownloadAppInfo.setAppIntro(aVar.t());
                return bZUnifiedAdDownloadAppInfo;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getDownloadUrl() {
                return strN;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public int getEcpm() {
                try {
                    return Integer.parseInt(aVar.b());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return 0;
                }
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public BZUnifiedAdImageInfo getIcon() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getIcon();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public BZUnifiedAdImageInfo getImage() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getImage();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public List<BZUnifiedAdImageInfo> getImageList() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getImageList();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public int getImageMode() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel == null) {
                    return -1;
                }
                if (bZUnifiedAdTemplateBeanModel.getVideo() != null) {
                    return 3;
                }
                if (bZUnifiedAdTemplateBeanModelG.getImageList() == null || bZUnifiedAdTemplateBeanModelG.getImageList().size() <= 1) {
                    return bZUnifiedAdTemplateBeanModelG.getImage() != null ? 1 : -1;
                }
                return 2;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public int getInteractionType() {
                if (!TextUtils.isEmpty(strO)) {
                    return 1;
                }
                if (!TextUtils.isEmpty(strN) && strN.contains("market://")) {
                    return 1;
                }
                if (((com.beizi.ad.v2.a.b) c.this).f9681d && !TextUtils.isEmpty(strN) && strN.startsWith("http")) {
                    return 2;
                }
                return !TextUtils.isEmpty(strP) ? 3 : 0;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getLandingPage() {
                return strP;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public BZUnifiedAdImageInfo getLogo() {
                com.beizi.ad.internal.d.a aVar2 = aVar;
                if (aVar2 == null) {
                    return null;
                }
                com.beizi.ad.internal.d.a.C0216a c0216aK = aVar2.k();
                BZUnifiedAdImageInfo bZUnifiedAdImageInfo = new BZUnifiedAdImageInfo();
                if (c0216aK != null) {
                    bZUnifiedAdImageInfo.setUrl(c0216aK.a());
                }
                return bZUnifiedAdImageInfo;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public String getTitle() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getTitle();
                }
                return null;
            }

            @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
            public BZUnifiedAdVideoInfo getVideo() {
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = bZUnifiedAdTemplateBeanModelG;
                if (bZUnifiedAdTemplateBeanModel != null) {
                    return bZUnifiedAdTemplateBeanModel.getVideo();
                }
                return null;
            }
        };
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.h.c.5
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.H != null) {
                        c.this.H.a(bZUnifiedAdResponse);
                    }
                }
            });
        }
    }
}
