package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.l;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.api.KsImage;
import com.kwad.sdk.api.KsNativeAd;
import com.windmill.sdk.WMConstants;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d extends com.aggmoread.sdk.z.c.a.a.d.a.d.d {
    protected static String B = "AMUTAGKS";
    public KsNativeAd A;

    class a implements KsAppDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.p.f.a f4863a;

        a(d dVar, com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
            this.f4863a = aVar;
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadFailed() {
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(16);
            }
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadFinished() {
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(8);
            }
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onDownloadStarted() {
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(4);
            }
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onIdle() {
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(0);
            }
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onInstalled() {
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onADStatusChanged(1);
            }
        }

        @Override // com.kwad.sdk.api.KsAppDownloadListener
        public void onProgressUpdate(int i10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "onADStatusChanged");
            com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar = this.f4863a;
            if (aVar instanceof com.aggmoread.sdk.z.c.a.a.c.p.f.b) {
                ((com.aggmoread.sdk.z.c.a.a.c.p.f.b) aVar).onLoadApkProgress(i10);
            }
        }
    }

    class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WeakReference f4864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.p.f.a f4865b;

        b(WeakReference weakReference, com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
            this.f4864a = weakReference;
            this.f4865b = aVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d.e
        public void a(View view, KsNativeAd ksNativeAd) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "onADClicked");
            d dVar = d.this;
            dVar.f4427k++;
            m mVarA = dVar.a(dVar.f4425i, dVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, d.this.f4423g);
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = d.this.f4426j;
            WeakReference weakReference = this.f4864a;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : (com.aggmoread.sdk.z.c.a.a.d.b.o.a) weakReference.get();
            d dVar2 = d.this;
            boolean zA = mVarA2.a(fVar, aVar, dVar2.f4428l, dVar2.f4431o);
            mVarA.b();
            n.a((Object) d.this.f4431o, false, true);
            if (zA) {
                this.f4865b.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d.e
        public void onDownloadTipsDialogDismiss() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d.e
        public void onDownloadTipsDialogShow() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d.e
        public void a(KsNativeAd ksNativeAd) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "onADExposed ");
            HashMap map = new HashMap();
            d.this.f4428l = System.currentTimeMillis();
            map.put(l.f5246a, d.this.f4426j.f5002b.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
            n.a((Object) d.this.f4431o, true, true);
            d.this.a(this.f4865b);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d.e
        public boolean a(DialogInterface.OnClickListener onClickListener) {
            return false;
        }
    }

    class c implements f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4867a;

        c(d dVar, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4867a = aVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void a() {
            this.f4867a.onVideoCompleted();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void b() {
            this.f4867a.onVideoReady();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void c() {
            this.f4867a.onVideoPause();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void d() {
            this.f4867a.onVideoResume();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void onVideoPlayError(int i10, int i11) {
            this.f4867a.a(new j(i10, "msg:" + i11));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.f.a
        public void onVideoPlayStart() {
            this.f4867a.onVideoStart();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d$d, reason: collision with other inner class name */
    private class C0176d implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f4868a;

        public C0176d(d dVar, e eVar) {
            this.f4868a = eVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            if ("onAdClicked".equals(name)) {
                this.f4868a.a((View) objArr[0], (KsNativeAd) objArr[1]);
                return null;
            }
            if ("onAdShow".equals(name)) {
                this.f4868a.a((KsNativeAd) objArr[0]);
                return null;
            }
            if ("handleDownloadDialog".equals(name)) {
                return Boolean.valueOf(this.f4868a.a((DialogInterface.OnClickListener) objArr[0]));
            }
            if ("onDownloadTipsDialogShow".equals(name)) {
                this.f4868a.onDownloadTipsDialogShow();
                return null;
            }
            if (!"onDownloadTipsDialogDismiss".equals(name)) {
                return null;
            }
            this.f4868a.onDownloadTipsDialogDismiss();
            return null;
        }
    }

    private interface e {
        void a(View view, KsNativeAd ksNativeAd);

        void a(KsNativeAd ksNativeAd);

        boolean a(DialogInterface.OnClickListener onClickListener);

        void onDownloadTipsDialogDismiss();

        void onDownloadTipsDialogShow();
    }

    public d(KsNativeAd ksNativeAd, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.A = ksNativeAd;
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = eVar.f4964t;
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.f4472t, com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(ksNativeAd), fVar);
    }

    private com.aggmoread.sdk.z.c.a.a.c.c i() {
        try {
            com.aggmoread.sdk.z.c.a.a.c.c cVarA = com.aggmoread.sdk.z.c.a.a.c.c.a(this.A.getAppName(), this.A.getProductName(), this.A.getAppPackageSize(), this.A.getPermissionInfoUrl(), this.A.getAppPrivacyUrl(), this.A.getAppVersion());
            cVarA.c(this.A.getAppPackageName());
            cVarA.a(this.A.getIntroductionInfoUrl());
            return cVarA;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "err " + e10);
            return null;
        }
    }

    private void j() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        String str;
        String str2;
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        com.aggmoread.sdk.z.c.a.a.e.e.b(B, "enter");
        if (list == null) {
            list = new ArrayList<>();
        }
        List<View> list3 = list;
        View view4 = view3 != null ? view3 : view;
        if (list3.contains(view4)) {
            str = B;
            str2 = "ovov + true";
        } else {
            str = B;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !list3.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "ovov ");
            list3.add(view4);
        }
        this.f4424h = aVar;
        if ((view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) && this.f4476x) {
            aVarA = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            viewGroup = (ViewGroup) aVarA.findViewWithTag(com.aggmoread.sdk.z.c.a.a.d.a.d.d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "f n " + viewGroup);
        } else {
            aVarA = null;
            viewGroup = null;
        }
        if (aVarA == null || viewGroup == null) {
            ViewGroup viewGroupA = a(context);
            viewGroup2 = viewGroupA;
            aVarA = a(view, view3, viewGroupA);
        } else {
            viewGroup2 = viewGroup;
        }
        a(context, viewGroup2, layoutParams, list3, this.f4432p, aVar);
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        return aVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10) {
        super.b(i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.b(this.A, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return this.A.getVideoDuration();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        return i();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAdPatternType() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.w.d.a(this.A.getMaterialType());
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppScore() {
        return (int) this.A.getAppScore();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getCTAText() {
        return this.A.getActionDescription();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getDesc() {
        return this.A.getAdDescription();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.A.getAppIconUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        List<String> imageUrlList = getImageUrlList();
        return (imageUrlList == null || imageUrlList.isEmpty()) ? "" : imageUrlList.get(0);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        ArrayList arrayList = new ArrayList();
        if (this.A.getImageList() != null) {
            Iterator<KsImage> it2 = this.A.getImageList().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getImageUrl());
            }
        }
        return arrayList;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        List<KsImage> imageList = this.A.getImageList();
        return (imageList == null || imageList.size() <= 0) ? super.getPictureHeight() : imageList.get(0).getHeight();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        List<KsImage> imageList = this.A.getImageList();
        return (imageList == null || imageList.size() <= 0) ? super.getPictureWidth() : imageList.get(0).getWidth();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getTitle() {
        String appName = this.A.getAppName();
        return !TextUtils.isEmpty(appName) ? appName : this.A.getProductName();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.A.getInteractionType() == 1;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return this.A.getMaterialType() == 1;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.w.b.a(this.A, i11);
    }

    protected void a(Context context, ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, List<View> list, WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference, com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        KsNativeAd ksNativeAd = this.A;
        if (ksNativeAd == null || viewGroup == null) {
            return;
        }
        ksNativeAd.setDownloadListener(new a(this, aVar));
        KsNativeAd.AdInteractionListener adInteractionListener = (KsNativeAd.AdInteractionListener) Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{KsNativeAd.AdInteractionListener.class}, new C0176d(this, new b(weakReference, aVar)));
        j();
        this.A.registerViewForInteraction(viewGroup, list, adInteractionListener);
        for (View view : list) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(B, "clickView " + view);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        KsAdVideoPlayConfig ksAdVideoPlayConfigBuild;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.A.setVideoPlayListener(new f().a(new c(this, aVar)));
            com.aggmoread.sdk.z.c.a.a.c.u.b bVar = this.f4425i.f4963s;
            if (bVar != null) {
                KsAdVideoPlayConfig.Builder builder = new KsAdVideoPlayConfig.Builder();
                builder.videoSoundEnable(!bVar.d());
                builder.dataFlowAutoStart(bVar.a() == 1);
                ksAdVideoPlayConfigBuild = builder.build();
            } else {
                ksAdVideoPlayConfigBuild = null;
            }
            View videoView = this.A.getVideoView(viewGroup.getContext().getApplicationContext(), ksAdVideoPlayConfigBuild);
            if (videoView != null) {
                ViewParent parent = videoView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(videoView);
                }
                viewGroup.addView(videoView);
            }
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

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.a
    public void a(com.aggmoread.sdk.z.c.a.a.d.a.c cVar) {
    }
}
