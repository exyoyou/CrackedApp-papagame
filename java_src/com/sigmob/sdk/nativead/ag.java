package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigImage;
import com.sigmob.sdk.base.models.SigVideo;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.sdk.base.models.rtb.ResponseNativeAd;
import com.sigmob.windad.natives.AdAppInfo;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.WindNativeAdData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ag implements WindNativeAdData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f81378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f81379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f81380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<SigImage> f81381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SigVideo f81382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f81383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ab f81384g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AdAppInfo f81385h;

    public ag(BaseAdUnit adUnit) {
        this.f81378a = adUnit.getTitle();
        this.f81379b = adUnit.getDesc();
        this.f81380c = adUnit.getIconUrl();
        this.f81381d = adUnit.getImageUrlList();
        ResponseNativeAd nativeAd = adUnit.getNativeAd();
        if (com.sigmob.sdk.base.utils.w.b(nativeAd)) {
            this.f81383f = nativeAd.type.intValue();
        }
        this.f81385h = adUnit.getAdAppInfo();
        this.f81382e = adUnit.getNativeVideo();
        ab abVar = new ab();
        this.f81384g = abVar;
        abVar.a(adUnit, this);
    }

    public String a() {
        return "sigmob";
    }

    public int b() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.p();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindImageViews(List<ImageView> imageViews, int defaultImageRes) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.a(imageViews, defaultImageRes);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindMediaView(ViewGroup mediaLayout, WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.b(mediaLayout, nativeADMediaListener);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindMediaViewWithoutAppInfo(ViewGroup mediaLayout, WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.a(mediaLayout, nativeADMediaListener);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void bindViewForInteraction(View view, List<View> clickableViews, List<View> creativeViewList, View disLikeView, NativeADEventListener nativeAdEventListener) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.a(view, clickableViews, creativeViewList, disLikeView, nativeAdEventListener);
    }

    public int c() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.v();
    }

    public int d() {
        return this.f81383f;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void destroy() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.x();
    }

    public void e() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.w();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public AdAppInfo getAdAppInfo() {
        return this.f81385h;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public Bitmap getAdLogo() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return null;
        }
        return abVar.C();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getAdPatternType() {
        return this.f81383f;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public View getAdView() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return null;
        }
        return abVar.q();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getCTAText() {
        ab abVar = this.f81384g;
        return abVar == null ? "" : abVar.B();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getCurrency() {
        ab abVar = this.f81384g;
        return abVar == null ? "" : abVar.J();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getDesc() {
        return this.f81379b;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getEcpm() {
        ab abVar = this.f81384g;
        return abVar == null ? "" : abVar.I();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getIconUrl() {
        return this.f81380c;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public List<SigImage> getImageList() {
        return this.f81381d;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getInteractionType() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.A();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public Map<String, String> getSaasOptions() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return null;
        }
        return abVar.M();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getTitle() {
        return this.f81378a;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public String getVideoCoverImageUrl() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return null;
        }
        return abVar.K();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoCurrentPosition() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.t() / 1000;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoDuration() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.s() / 1000;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoHeight() {
        SigVideo sigVideo = this.f81382e;
        if (sigVideo == null) {
            return 0;
        }
        return sigVideo.getHeight();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoProgress() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return 0;
        }
        return abVar.u();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public int getVideoWidth() {
        SigVideo sigVideo = this.f81382e;
        if (sigVideo == null) {
            return 0;
        }
        return sigVideo.getWidth();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public WindAdMetaData getWindAdMetaData() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return null;
        }
        return abVar.L();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void pauseVideo() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.E();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void resumeVideo() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.G();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void setDislikeInteractionCallback(Activity activity, WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.a(dislikeInteractionCallback);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void setVideoMute(boolean mute) {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.b(mute);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void startVideo() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.D();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData
    public void stopVideo() {
        ab abVar = this.f81384g;
        if (abVar == null) {
            return;
        }
        abVar.H();
    }
}
