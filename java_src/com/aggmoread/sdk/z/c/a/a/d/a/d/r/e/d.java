package com.aggmoread.sdk.z.c.a.a.d.a.d.r.e;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.c.p.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.l;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.INativeVideoListener;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.XNativeView;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.windmill.sdk.WMConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d extends com.aggmoread.sdk.z.c.a.a.d.a.d.d {
    protected static String C = "AMUTAGBD";
    public NativeResponse A;
    private WeakReference<XNativeView> B;

    class a implements NativeResponse.AdInteractionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4605a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ WeakReference f4606b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f.a f4607c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ViewGroup f4608d;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.e.d$a$a, reason: collision with other inner class name */
        class RunnableC0133a implements Runnable {
            RunnableC0133a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f4605a) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "onADError return ");
                } else {
                    d.this.a(new j(-1000, "1"));
                }
            }
        }

        a(WeakReference weakReference, f.a aVar, ViewGroup viewGroup) {
            this.f4606b = weakReference;
            this.f4607c = aVar;
            this.f4608d = viewGroup;
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposed() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "onADExposed ");
            this.f4605a = true;
            HashMap map = new HashMap();
            d.this.f4428l = System.currentTimeMillis();
            map.put(l.f5246a, d.this.f4426j.f5002b.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
            n.a((Object) d.this.f4431o, true, true);
            d.this.a(this.f4607c);
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADExposureFailed(int i10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a(d.C, "onADError %d", Integer.valueOf(i10));
            if (i10 == 1) {
                this.f4608d.postDelayed(new RunnableC0133a(), 1500L);
            } else {
                d.this.a(new j(-1000, String.valueOf(i10)));
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onADStatusChanged() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "onADStatusChanged");
            if (this.f4607c instanceof f.b) {
                int downloadStatus = d.this.A.getDownloadStatus();
                int iC = d.this.c(downloadStatus);
                ((f.b) this.f4607c).onADStatusChanged(iC);
                if (iC == 4) {
                    ((f.b) this.f4607c).onLoadApkProgress(downloadStatus);
                }
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdClick() {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "onADClicked");
            d dVar = d.this;
            dVar.f4427k++;
            m mVarA = dVar.a(dVar.f4425i, dVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, d.this.f4423g);
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = d.this.f4426j;
            WeakReference weakReference = this.f4606b;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : (com.aggmoread.sdk.z.c.a.a.d.b.o.a) weakReference.get();
            d dVar2 = d.this;
            boolean zA = mVarA2.a(fVar, aVar, dVar2.f4428l, dVar2.f4431o);
            mVarA.b();
            n.a((Object) d.this.f4431o, false, true);
            if (zA) {
                this.f4607c.onAdClicked();
            }
        }

        @Override // com.baidu.mobads.sdk.api.NativeResponse.AdInteractionListener
        public void onAdUnionClick() {
        }
    }

    class b implements XNativeView.INativeViewClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4611a;

        b(d dVar, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4611a = aVar;
        }

        @Override // com.baidu.mobads.sdk.api.XNativeView.INativeViewClickListener
        public void onNativeViewClick(XNativeView xNativeView) {
            this.f4611a.onVideoClicked();
        }
    }

    class c implements INativeVideoListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4612a;

        c(d dVar, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4612a = aVar;
        }

        @Override // com.baidu.mobads.sdk.api.INativeVideoListener
        public void onCompletion() {
            this.f4612a.onVideoCompleted();
        }

        @Override // com.baidu.mobads.sdk.api.INativeVideoListener
        public void onError() {
            this.f4612a.a(new j(-1000, "广告展示失败"));
        }

        @Override // com.baidu.mobads.sdk.api.INativeVideoListener
        public void onPause() {
            this.f4612a.onVideoPause();
        }

        @Override // com.baidu.mobads.sdk.api.INativeVideoListener
        public void onRenderingStart() {
            this.f4612a.onVideoStart();
        }

        @Override // com.baidu.mobads.sdk.api.INativeVideoListener
        public void onResume() {
            this.f4612a.onVideoResume();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.e.d$d, reason: collision with other inner class name */
    static /* synthetic */ class C0134d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4613a;

        static {
            int[] iArr = new int[NativeResponse.MaterialType.values().length];
            f4613a = iArr;
            try {
                iArr[NativeResponse.MaterialType.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4613a[NativeResponse.MaterialType.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4613a[NativeResponse.MaterialType.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public d(NativeResponse nativeResponse, BaiduNativeManager baiduNativeManager, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.A = nativeResponse;
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = eVar.f4964t;
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(this.f4472t, com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(nativeResponse), fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(int i10) {
        if (i10 > 0 && i10 <= 100) {
            return 4;
        }
        if (i10 == 101) {
            return 8;
        }
        if (i10 == 102) {
            return 32;
        }
        if (i10 == 103) {
            return 1;
        }
        return i10 == 104 ? 16 : 0;
    }

    private com.aggmoread.sdk.z.c.a.a.c.c i() {
        try {
            com.aggmoread.sdk.z.c.a.a.c.c cVarA = com.aggmoread.sdk.z.c.a.a.c.c.a(this.A.getBrandName(), this.A.getPublisher(), this.A.getAppSize(), this.A.getAppPermissionLink(), this.A.getAppPrivacyLink(), this.A.getAppVersion());
            cVarA.c(this.A.getAppPackage());
            cVarA.a(this.A.getAppFunctionLink());
            return cVarA;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "err " + e10);
            return null;
        }
    }

    private XNativeView j() {
        WeakReference<XNativeView> weakReference = this.B;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup b(Context context) {
        return new XNativeView(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return this.A.getDuration();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        return i();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAdPatternType() {
        return a(this.A);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppStatus() {
        return c(this.A.getDownloadStatus());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getCTAText() {
        return this.A.getActButtonString();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getDesc() {
        return this.A.getDesc();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.A.getIconUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        List<String> imageUrlList;
        String imageUrl = this.A.getImageUrl();
        return (!TextUtils.isEmpty(imageUrl) || (imageUrlList = getImageUrlList()) == null || imageUrlList.size() <= 0) ? imageUrl : imageUrlList.get(0);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        return this.A.getMultiPicUrls();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        return this.A.getMainPicHeight();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        return this.A.getMainPicWidth();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getProgress() {
        return this.A.getDownloadStatus();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getTitle() {
        return this.A.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.A.getAdActionType() == 2;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return this.A.getMaterialType() == NativeResponse.MaterialType.VIDEO;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.pause();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.resume();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.resume();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.setVideoMute(z10);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.render();
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
        XNativeView xNativeViewJ = j();
        if (xNativeViewJ != null) {
            xNativeViewJ.stop();
        }
    }

    private int a(NativeResponse nativeResponse) {
        int i10 = C0134d.f4613a[nativeResponse.getMaterialType().ordinal()];
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 3) {
            return 0;
        }
        if (!TextUtils.isEmpty(nativeResponse.getImageUrl())) {
            return 5;
        }
        List<String> multiPicUrls = nativeResponse.getMultiPicUrls();
        return (multiPicUrls == null || multiPicUrls.size() <= 0) ? 0 : 3;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10) {
        com.aggmoread.sdk.z.c.a.a.e.e.c("win " + i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.A, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull f.a aVar) {
        String str;
        String str2;
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar2;
        NativeAdContainer nativeAdContainer;
        NativeAdContainer nativeAdContainer2;
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA;
        com.aggmoread.sdk.z.c.a.a.e.e.b(C, "enter");
        List<View> arrayList = list == null ? new ArrayList() : list;
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
            aVar2 = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            nativeAdContainer = (NativeAdContainer) aVar2.findViewWithTag(com.aggmoread.sdk.z.c.a.a.d.a.d.d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b(C, "f n " + nativeAdContainer);
        } else {
            aVar2 = null;
            nativeAdContainer = null;
        }
        if (aVar2 == null || nativeAdContainer == null) {
            nativeAdContainer2 = (NativeAdContainer) a(context);
            aVarA = a(view, view3, nativeAdContainer2);
        } else {
            aVarA = aVar2;
            nativeAdContainer2 = nativeAdContainer;
        }
        a(context, nativeAdContainer2, layoutParams, arrayList, list2, this.f4432p, aVar);
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        return aVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.A, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected ViewGroup a(Context context) {
        return new NativeAdContainer(context);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        if (viewGroup instanceof XNativeView) {
            XNativeView xNativeView = (XNativeView) viewGroup;
            this.B = new WeakReference<>(xNativeView);
            com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4425i.f4963s;
            if (bVar != null) {
                xNativeView.setVideoMute(bVar.d());
            }
            xNativeView.setNativeItem(this.A);
            xNativeView.setNativeViewClickListener(new b(this, aVar));
            xNativeView.setNativeVideoListener(new c(this, aVar));
            xNativeView.render();
        }
    }

    protected void a(Context context, ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, List<View> list, List<View> list2, WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference, f.a aVar) {
        NativeResponse nativeResponse = this.A;
        if (nativeResponse == null || viewGroup == null) {
            return;
        }
        nativeResponse.registerViewForInteraction(viewGroup, list, list2, new a(weakReference, aVar, viewGroup));
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected boolean a(View view) {
        String str = C;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" checkCustomMediaView bd ");
        boolean z10 = view instanceof XNativeView;
        sb2.append(z10);
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, sb2.toString());
        return z10;
    }
}
