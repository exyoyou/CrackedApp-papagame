package com.aggmoread.sdk.z.c.a.a.d.a.d.v.g;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.MediaView;
import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeADMediaListener;
import com.qq.e.ads.nativ.NativeUnifiedAD;
import com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.util.AdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e extends com.aggmoread.sdk.z.c.a.a.d.a.d.d {
    protected static String C = "AMUTAGGDT";
    public NativeUnifiedADData A;
    public int B;

    class a implements NativeADEventListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WeakReference f4808a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.p.f.a f4809b;

        a(WeakReference weakReference, com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
            this.f4808a = weakReference;
            this.f4809b = aVar;
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADClicked() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(e.C, "onADClicked");
            e eVar = e.this;
            eVar.f4427k++;
            m mVarA = eVar.a(eVar.f4425i, eVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, e.this.f4423g);
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = e.this.f4426j;
            WeakReference weakReference = this.f4808a;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : (com.aggmoread.sdk.z.c.a.a.d.b.o.a) weakReference.get();
            e eVar2 = e.this;
            boolean zA = mVarA2.a(fVar, aVar, eVar2.f4428l, eVar2.f4431o);
            mVarA.b();
            n.a((Object) e.this.f4431o, false, true);
            if (zA) {
                this.f4809b.onAdClicked();
            }
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADError(AdError adError) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(e.C, "onADError %s", adError);
            e.this.a(new j(adError.getErrorCode(), adError.getErrorMsg()));
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADExposed() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(e.C, "onADExposed ");
            new HashMap();
            e.this.f4428l = System.currentTimeMillis();
            n.a((Object) e.this.f4431o, true, true);
            e.this.a(this.f4809b);
        }

        @Override // com.qq.e.ads.nativ.NativeADEventListener
        public void onADStatusChanged() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(e.C, "onADStatusChanged");
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4809b;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(e.this.A.getAppStatus());
                if (e.this.A.getAppStatus() == 4) {
                    ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) this.f4809b).onLoadApkProgress(e.this.A.getProgress());
                }
            }
        }
    }

    class b implements NativeADMediaListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4811a;

        b(e eVar, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4811a = aVar;
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoClicked() {
            this.f4811a.onVideoClicked();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoCompleted() {
            this.f4811a.onVideoCompleted();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoError(AdError adError) {
            this.f4811a.a(new j(adError.getErrorCode(), adError.getErrorMsg()));
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoInit() {
            this.f4811a.onVideoInit();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoLoaded(int i10) {
            this.f4811a.onVideoLoaded(i10);
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoLoading() {
            this.f4811a.onVideoLoading();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoPause() {
            this.f4811a.onVideoPause();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoReady() {
            this.f4811a.onVideoReady();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoResume() {
            this.f4811a.onVideoResume();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoStart() {
            this.f4811a.onVideoStart();
        }

        @Override // com.qq.e.ads.nativ.NativeADMediaListener
        public void onVideoStop() {
            this.f4811a.onVideoStop();
        }
    }

    public e(NativeUnifiedADData nativeUnifiedADData, NativeUnifiedAD nativeUnifiedAD, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map, int i10) {
        super(eVar, fVar, map);
        this.A = nativeUnifiedADData;
        this.B = i10;
        if (nativeUnifiedADData != null) {
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4472t, nativeUnifiedADData, fVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00c5  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private JSONObject i() {
        byte b10;
        try {
            Object objA = com.aggmoread.sdk.z.c.a.a.e.j.a(this.A, "a");
            Object objA2 = com.aggmoread.sdk.z.c.a.a.e.j.a(objA, "e");
            if (objA2 == null || !"com.qq.e.comm.plugin.nativeadunified.g".equals(objA2.getClass().getName())) {
                objA2 = com.aggmoread.sdk.z.c.a.a.e.j.a(objA, "a");
            }
            Class<? super Object> superclass = objA2.getClass().getSuperclass();
            if (superclass == null) {
                return null;
            }
            String strD = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.d();
            switch (strD.hashCode()) {
                case 49445110:
                    if (!strD.equals("4.440")) {
                        b10 = -1;
                    } else {
                        b10 = 8;
                    }
                    break;
                case 49445143:
                    if (!strD.equals("4.452")) {
                        b10 = -1;
                    } else {
                        b10 = 9;
                    }
                    break;
                case 49445174:
                    if (!strD.equals("4.462")) {
                        b10 = -1;
                    } else {
                        b10 = 10;
                    }
                    break;
                case 49445176:
                    if (!strD.equals("4.464")) {
                        b10 = -1;
                    } else {
                        b10 = 11;
                    }
                    break;
                case 49445204:
                    if (!strD.equals("4.471")) {
                        b10 = -1;
                    } else {
                        b10 = 12;
                    }
                    break;
                case 49445947:
                    if (!strD.equals("4.500")) {
                        b10 = -1;
                    } else {
                        b10 = 7;
                    }
                    break;
                case 49446009:
                    if (!strD.equals("4.520")) {
                        b10 = -1;
                    } else {
                        b10 = 6;
                    }
                    break;
                case 49446071:
                    if (!strD.equals("4.540")) {
                        b10 = -1;
                    } else {
                        b10 = 5;
                    }
                    break;
                case 49446073:
                    if (!strD.equals("4.542")) {
                        b10 = -1;
                    } else {
                        b10 = 4;
                    }
                    break;
                case 49446135:
                    if (!strD.equals("4.562")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case 49446164:
                    if (!strD.equals("4.570")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 49446169:
                    if (!strD.equals("4.575")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 49446195:
                    if (!strD.equals("4.580")) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            String str = "L";
            switch (b10) {
                case 6:
                case 7:
                case 8:
                    str = "M";
                    break;
                case 9:
                    str = "N";
                    break;
                case 10:
                case 11:
                case 12:
                    str = "K";
                    break;
            }
            Object objA3 = com.aggmoread.sdk.z.c.a.a.e.j.a(superclass, objA2, str);
            if (objA3 instanceof JSONObject) {
                return (JSONObject) objA3;
            }
            return null;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "getAdInfoObj err " + e10.getMessage());
            return null;
        }
    }

    private com.aggmoread.sdk.z.c.a.a.c.c j() {
        try {
            Object objInvoke = this.A.getClass().getMethod("getAppMiitInfo", new Class[0]).invoke(this.A, new Object[0]);
            Object objB = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getAppName");
            Object objB2 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getAuthorName");
            Object objB3 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getPackageSizeBytes");
            Object objB4 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getPermissionsUrl");
            Object objB5 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getPrivacyAgreement");
            Object objB6 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getVersionName");
            Object objB7 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getDescriptionUrl");
            Object objB8 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getIcpNumber");
            Object objB9 = com.aggmoread.sdk.z.c.a.a.e.j.b(NativeUnifiedADAppMiitInfo.class, objInvoke, "getSuitableAge");
            String str = objB instanceof String ? (String) objB : null;
            String str2 = objB2 instanceof String ? (String) objB2 : null;
            long jLongValue = objB3 instanceof Long ? ((Long) objB3).longValue() : 0L;
            String str3 = objB4 instanceof String ? (String) objB4 : null;
            String str4 = objB5 instanceof String ? (String) objB5 : null;
            String str5 = objB6 instanceof String ? (String) objB6 : null;
            String str6 = objB7 instanceof String ? (String) objB7 : null;
            String str7 = objB8 instanceof String ? (String) objB8 : null;
            String str8 = objB9 instanceof String ? (String) objB9 : null;
            String strK = k();
            com.aggmoread.sdk.z.c.a.a.c.c cVarA = com.aggmoread.sdk.z.c.a.a.c.c.a(str, str2, jLongValue, str3, str4, str5);
            cVarA.c(strK);
            cVarA.a(str6);
            cVarA.b(str7);
            cVarA.d(str8);
            return cVarA;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "err " + e10);
            return null;
        }
    }

    private String k() {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectI = i();
        String strOptString = (jSONObjectI == null || (jSONObjectOptJSONObject = jSONObjectI.optJSONObject("ext")) == null) ? "" : jSONObjectOptJSONObject.optString("packagename");
        try {
            if (!TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
            String strA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.A);
            return (TextUtils.isEmpty(strA) || !strA.contains("pkgName")) ? strOptString : Uri.parse(strA).getQueryParameter("pkgName");
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "gdt pkg err:  " + e10.getMessage());
            return strOptString;
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        String str;
        String str2;
        NativeAdContainer nativeAdContainer;
        com.aggmoread.sdk.z.c.a.a.e.e.b(C, "enter " + view);
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA = null;
        if (this.B == 91) {
            a(new j(1001006001, "GDT ad blocked"));
            return null;
        }
        List<View> arrayList = list == null ? new ArrayList<>() : list;
        View view4 = view3 != null ? view3 : view;
        if (arrayList.contains(view4)) {
            str = C;
            str2 = "ovov + true";
        } else {
            str = C;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !arrayList.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "ovov ");
            arrayList.add(view4);
        }
        this.f4424h = aVar;
        if ((view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) && this.f4476x) {
            aVarA = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            nativeAdContainer = (NativeAdContainer) aVarA.findViewWithTag(com.aggmoread.sdk.z.c.a.a.d.a.d.d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "f n " + nativeAdContainer);
        } else {
            nativeAdContainer = null;
        }
        if (aVarA == null || nativeAdContainer == null) {
            nativeAdContainer = (NativeAdContainer) a(context);
            aVarA = a(view, view3, nativeAdContainer);
        }
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar2 = aVarA;
        a(context, nativeAdContainer, layoutParams, arrayList, list2, this.f4432p, aVar);
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        if (aVar2 != null) {
            aVar2.f5196f = true;
        }
        return aVar2;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup b(Context context) {
        return new MediaView(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void bindCTAViews(List<View> list) {
        this.A.bindCTAViews(list);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected boolean d() {
        return false;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void destroy() {
        this.A.destroy();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return this.A.getVideoDuration();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        return p.a("4.380") ? j() : super.g();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAdPatternType() {
        return this.A.getAdPatternType();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public double getAppPrice() {
        return this.A.getAppPrice();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppScore() {
        return this.A.getAppScore();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppStatus() {
        return this.A.getAppStatus();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getCTAText() {
        return this.A.getCTAText();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getDesc() {
        return this.A.getDesc();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public long getDownloadCount() {
        return this.A.getDownloadCount();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.A.getIconUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        return this.A.getImgUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        return this.A.getImgList();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        return this.A.getPictureHeight();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        return this.A.getPictureWidth();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getProgress() {
        return this.A.getProgress();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getTitle() {
        return this.A.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getVideoCurrentPosition() {
        return this.A.getVideoCurrentPosition();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.A.isAppAd();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return this.A.getAdPatternType() == 2;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
        this.A.pauseVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
        this.A.resume();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
        this.A.resumeVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
        this.A.setVideoMute(z10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
        this.A.startVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
        this.A.stopVideo();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup a(Context context) {
        return new NativeAdContainer(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(this.A, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.d.a(this.A, i11, i10, str);
    }

    protected void a(Context context, NativeAdContainer nativeAdContainer, FrameLayout.LayoutParams layoutParams, List<View> list, List<View> list2, WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference, com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        NativeUnifiedADData nativeUnifiedADData = this.A;
        if (nativeUnifiedADData == null || nativeAdContainer == null) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(nativeUnifiedADData, c());
        this.A.setNativeAdEventListener(new a(weakReference, aVar));
        if (k.f5148r.booleanValue()) {
            for (View view : list) {
                com.aggmoread.sdk.z.c.a.a.e.e.b(C, "clickView " + view);
            }
        }
        if (p.g()) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "hide logo ");
            layoutParams = new FrameLayout.LayoutParams(0, 0);
        }
        this.A.bindAdToView(context, nativeAdContainer, layoutParams, list, list2);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        if (viewGroup instanceof MediaView) {
            com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4425i.f4963s;
            VideoOption.Builder builder = new VideoOption.Builder();
            if (bVar != null) {
                builder.setAutoPlayMuted(bVar.d());
                builder.setAutoPlayPolicy(bVar.a());
                builder.setEnableDetailPage(bVar.f());
                builder.setNeedCoverImage(bVar.h());
                builder.setNeedProgressBar(bVar.i());
            }
            this.A.bindMediaView((MediaView) viewGroup, builder.build(), new b(this, aVar));
        }
    }

    protected void a(View view, View[] viewArr) {
        n.a(this.f4425i.f4946b, this.f4431o, com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW, view, viewArr, this.f4475w, this.f4473u);
        n.b(this.f4425i.f4946b, this.f4426j.e(), this.f4426j.b());
        byte[] bArrB = this.f4425i.f4962r.b();
        if (bArrB != null) {
            n.a(this.f4425i.f4946b, bArrB);
        }
        n.a(this.f4431o, this.f4426j);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected boolean a(View view) {
        return view instanceof MediaView;
    }
}
