package com.aggmoread.sdk.z.c.a.a.d.a.d.t.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.c.p.f;
import com.aggmoread.sdk.z.c.a.a.d.a.d.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.m;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.bytedance.sdk.openadsdk.ComplianceInfo;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends d {
    public TTFeedAd A;
    List<String> B;
    private AtomicBoolean C;

    class a implements TTNativeAd.AdInteractionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f.a f4752a;

        a(f.a aVar) {
            this.f4752a = aVar;
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdClicked(View view, TTNativeAd tTNativeAd) {
            b bVar = b.this;
            m mVarA = bVar.a(bVar.f4425i, bVar.f4426j);
            m mVarA2 = mVarA.a(m.d.f5176n, b.this.f4423g);
            b bVar2 = b.this;
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar = bVar2.f4426j;
            WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a> weakReference = bVar2.f4432p;
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = weakReference == null ? null : weakReference.get();
            b bVar3 = b.this;
            boolean zA = mVarA2.a(fVar, aVar, bVar3.f4428l, bVar3.f4431o);
            mVarA.b();
            n.a((Object) b.this.f4431o, false, true);
            if (zA) {
                this.f4752a.onAdClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
            onAdClicked(view, tTNativeAd);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdShow(TTNativeAd tTNativeAd) {
            if (b.this.C.compareAndSet(false, true)) {
                b.this.f4428l = System.currentTimeMillis();
                n.a((Object) b.this.f4431o, true, true);
                b.this.a(this.f4752a);
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.e.b$b, reason: collision with other inner class name */
    class C0158b implements TTFeedAd.VideoAdListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.c.u.a f4754a;

        C0158b(com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
            this.f4754a = aVar;
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onProgressUpdate(long j10, long j11) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdComplete(TTFeedAd tTFeedAd) {
            this.f4754a.onVideoCompleted();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdContinuePlay(TTFeedAd tTFeedAd) {
            this.f4754a.onVideoResume();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdPaused(TTFeedAd tTFeedAd) {
            this.f4754a.onVideoPause();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoAdStartPlay(TTFeedAd tTFeedAd) {
            this.f4754a.onVideoStart();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoError(int i10, int i11) {
            this.f4754a.a(new j(i10, "ext " + i11));
        }

        @Override // com.bytedance.sdk.openadsdk.TTFeedAd.VideoAdListener
        public void onVideoLoad(TTFeedAd tTFeedAd) {
            this.f4754a.onVideoLoaded((int) b.this.A.getVideoDuration());
        }
    }

    public b(TTFeedAd tTFeedAd, e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(eVar, fVar, map);
        this.C = new AtomicBoolean();
        this.A = tTFeedAd;
        com.aggmoread.sdk.z.c.a.a.d.a.c cVar = eVar.f4964t;
        com.aggmoread.sdk.z.c.a.a.d.a.d.t.a.a(this.f4472t, tTFeedAd, fVar);
    }

    private TTImage i() {
        if (isVideoAd()) {
            return this.A.getVideoCoverImage();
        }
        List<TTImage> imageList = this.A.getImageList();
        if (imageList == null || imageList.size() <= 0) {
            return null;
        }
        return imageList.get(0);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull f.a aVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.o.a aVarA;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (list == null) {
            list = new ArrayList<>();
        }
        List<View> list3 = list;
        View view4 = view3 != null ? view3 : view;
        com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", list3.contains(view4) ? "ovov + true" : "ovov + false");
        if (p.a(this.f4426j) && !list3.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "ovov ");
            list3.add(view4);
        }
        this.f4424h = aVar;
        if ((view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) && this.f4476x) {
            aVarA = (com.aggmoread.sdk.z.c.a.a.d.b.o.a) view;
            viewGroup = (ViewGroup) aVarA.findViewWithTag(d.f4470y);
            com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "f n " + viewGroup);
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
        a(context, viewGroup2, layoutParams, list3, view2, aVar);
        a(this.f4432p.get(), view2 != null ? new View[]{view2} : new View[0]);
        return aVarA;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d
    protected void b(ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar) {
        if (viewGroup != null) {
            this.A.setVideoAdListener(new C0158b(aVar));
            viewGroup.removeAllViews();
            viewGroup.addView(this.A.getAdView());
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void destroy() {
        this.A.destroy();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int f() {
        return (int) this.A.getVideoDuration();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public com.aggmoread.sdk.z.c.a.a.c.c g() {
        return a(this.A);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAdPatternType() {
        return this.A.getInteractionType();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public double getAppPrice() {
        return 0.0d;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppScore() {
        return this.A.getAppScore();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getAppStatus() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getDesc() {
        return this.A.getDescription();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public long getDownloadCount() {
        return 1L;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getIconUrl() {
        return this.A.getIcon().getImageUrl();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getImageUrl() {
        if (isVideoAd()) {
            return this.A.getVideoCoverImage().getImageUrl();
        }
        if (getImageUrlList().size() > 0) {
            return getImageUrlList().get(0);
        }
        return null;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public List<String> getImageUrlList() {
        List<String> list = this.B;
        if (list != null) {
            return list;
        }
        this.B = new ArrayList();
        Iterator<TTImage> it2 = this.A.getImageList().iterator();
        while (it2.hasNext()) {
            this.B.add(it2.next().getImageUrl());
        }
        return this.B;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureHeight() {
        TTImage tTImageI = i();
        if (tTImageI != null) {
            return tTImageI.getHeight();
        }
        return -1;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getPictureWidth() {
        TTImage tTImageI = i();
        if (tTImageI != null) {
            return tTImageI.getWidth();
        }
        return -1;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getProgress() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public String getTitle() {
        return this.A.getTitle();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public int getVideoCurrentPosition() {
        return 0;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isAppAd() {
        return this.A.getInteractionType() == 4;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.p.f
    public boolean isVideoAd() {
        return this.A.getImageMode() == 5 || this.A.getImageMode() == 15;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void pauseVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resume() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void resumeVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void setVideoMute(boolean z10) {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void startVideo() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.d, com.aggmoread.sdk.z.c.a.a.c.p.f
    public void stopVideo() {
    }

    private com.aggmoread.sdk.z.c.a.a.c.c a(TTFeedAd tTFeedAd) {
        ArrayList arrayList;
        if (tTFeedAd == null) {
            return null;
        }
        try {
            ComplianceInfo complianceInfo = tTFeedAd.getComplianceInfo();
            if (complianceInfo == null) {
                return null;
            }
            String appName = complianceInfo.getAppName();
            String appVersion = complianceInfo.getAppVersion();
            String developerName = complianceInfo.getDeveloperName();
            String privacyUrl = complianceInfo.getPrivacyUrl();
            Map<String, String> permissionsMap = complianceInfo.getPermissionsMap();
            if (permissionsMap == null || permissionsMap.isEmpty()) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (Map.Entry<String, String> entry : permissionsMap.entrySet()) {
                    arrayList2.add(new com.aggmoread.sdk.z.c.a.a.c.c.a(entry.getKey(), entry.getValue()));
                }
                arrayList = arrayList2;
            }
            return com.aggmoread.sdk.z.c.a.a.c.c.a(appName, developerName, -1L, arrayList, privacyUrl, appVersion);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "appMiiInfo err " + e10);
            return null;
        }
    }

    protected void a(Context context, ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, List<View> list, View view, f.a aVar) {
        if (this.A == null || viewGroup == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        this.A.registerViewForInteraction(viewGroup, list, arrayList, view, new a(aVar));
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
