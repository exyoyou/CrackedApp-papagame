package com.aggmoread.sdk.b;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.client.AMAdMediaListener;
import com.aggmoread.sdk.client.AMAdMediaView;
import com.aggmoread.sdk.client.AMAppInfo;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.feedlist.AMNativeAd;
import com.aggmoread.sdk.client.feedlist.AMNativeInteractionListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class l extends c implements AMNativeAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.p.f f3286b;

    class a implements com.aggmoread.sdk.z.c.a.a.c.p.f.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMNativeInteractionListener f3287a;

        a(l lVar, AMNativeInteractionListener aMNativeInteractionListener) {
            this.f3287a = aMNativeInteractionListener;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            this.f3287a.onAdError(new AMError(dVar.a(), dVar.b()));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.f.b
        public void onADStatusChanged(int i10) {
            this.f3287a.onADStatusChanged(i10);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.f.a
        public void onAdClicked() {
            this.f3287a.onAdClicked();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.f.a
        public void onAdExposed() {
            this.f3287a.onAdExposed();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.f.b
        public void onLoadApkProgress(int i10) {
            this.f3287a.onLoadApkProgress(i10);
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.c.u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMAdMediaListener f3288a;

        b(l lVar, AMAdMediaListener aMAdMediaListener) {
            this.f3288a = aMAdMediaListener;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoError(new AMError(dVar.a(), dVar.b()));
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoClicked() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoCompleted() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoCompleted();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoInit() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoInit();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoLoaded(int i10) {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoLoaded(i10);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoLoading() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoLoading();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoPause() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoPause();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoReady() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoReady();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoResume() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoResume();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoStart() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoStart();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.u.a
        public void onVideoStop() {
            AMAdMediaListener aMAdMediaListener = this.f3288a;
            if (aMAdMediaListener != null) {
                aMAdMediaListener.onVideoStop();
            }
        }
    }

    public l(com.aggmoread.sdk.z.c.a.a.c.p.f fVar, d dVar) {
        super(fVar, dVar);
        this.f3286b = fVar;
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3286b.h();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public View bindAdToView(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, @NonNull AMNativeInteractionListener aMNativeInteractionListener) {
        return bindAdToView(context, view, layoutParams, list, view2, null, aMNativeInteractionListener);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void bindCTAViews(List<View> list) {
        this.f3286b.bindCTAViews(list);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void bindMediaAdToView(@NonNull AMAdMediaView aMAdMediaView, AMAdMediaListener aMAdMediaListener) {
        this.f3286b.a(aMAdMediaView, new b(this, aMAdMediaListener));
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3286b.destroy();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getAdPatternType() {
        switch (this.f3286b.getAdPatternType()) {
            case 1:
            case 3:
            case 6:
                List<String> imageUrlList = this.f3286b.getImageUrlList();
                return (imageUrlList == null || imageUrlList.size() <= 1) ? 1 : 3;
            case 2:
                return 2;
            case 4:
            case 5:
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public AMAppInfo getAppInfo() {
        if (this.f3286b.g() == null) {
            return null;
        }
        com.aggmoread.sdk.z.c.a.a.c.c cVarG = this.f3286b.g();
        ArrayList arrayList = new ArrayList();
        if (cVarG.g() != null && cVarG.g().size() > 0) {
            for (int i10 = 0; i10 < cVarG.g().size(); i10++) {
                com.aggmoread.sdk.z.c.a.a.c.c.a aVar = cVarG.g().get(i10);
                arrayList.add(new AMAppInfo.Permission(aVar.f4369a, aVar.f4370b));
            }
        }
        return new AMAppInfo(cVarG.a(), cVarG.b(), cVarG.e(), cVarG.h(), arrayList, cVarG.i(), cVarG.k(), cVarG.f(), cVarG.c(), cVarG.d(), cVarG.j());
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public double getAppPrice() {
        return this.f3286b.getAppPrice();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getAppScore() {
        return this.f3286b.getAppScore();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getAppStatus() {
        return this.f3286b.getAppStatus();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public String getCTAText() {
        return this.f3286b.getCTAText();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public String getDesc() {
        return this.f3286b.getDesc();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public long getDownloadCount() {
        return this.f3286b.getDownloadCount();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public String getIconUrl() {
        return this.f3286b.getIconUrl();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public String getImageUrl() {
        return this.f3286b.getImageUrl();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public List<String> getImageUrlList() {
        return this.f3286b.getImageUrlList();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getPictureHeight() {
        return this.f3286b.getPictureHeight();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getPictureWidth() {
        return this.f3286b.getPictureWidth();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getProgress() {
        return this.f3286b.getProgress();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public String getTitle() {
        return this.f3286b.getTitle();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getVideoCurrentPosition() {
        return this.f3286b.getVideoCurrentPosition();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public int getVideoDuration() {
        return this.f3286b.f();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public boolean isAppAd() {
        return this.f3286b.isAppAd();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public boolean isVideoAd() {
        return this.f3286b.isVideoAd();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void pauseVideo() {
        this.f3286b.pauseVideo();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public View renderView(View view) {
        return this.f3286b.renderView(view);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void resume() {
        this.f3286b.resume();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void resumeVideo() {
        this.f3286b.resumeVideo();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void setVideoMute(boolean z10) {
        this.f3286b.setVideoMute(z10);
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void startVideo() {
        this.f3286b.startVideo();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public void stopVideo() {
        this.f3286b.stopVideo();
    }

    @Override // com.aggmoread.sdk.client.feedlist.AMNativeAd
    public View bindAdToView(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, @NonNull AMNativeInteractionListener aMNativeInteractionListener) {
        return this.f3286b.a(context, view, layoutParams, list, view2, list2, new a(this, aMNativeInteractionListener));
    }
}
