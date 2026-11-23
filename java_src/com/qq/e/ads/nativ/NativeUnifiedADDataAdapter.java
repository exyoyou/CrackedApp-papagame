package com.qq.e.ads.nativ;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADEventListener;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NativeUnifiedADDataAdapter implements NativeUnifiedADData, DownloadConfirmListener, IReward {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NativeUnifiedADData f78237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeADEventListener f78238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NativeADMediaListener f78239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DownloadConfirmListener f78240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NegativeFeedbackListener f78241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ADRewardListener f78242g;

    private class UnifiedAdListener implements ADListener {
        private UnifiedAdListener() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (NativeUnifiedADDataAdapter.this.b(aDEvent) || NativeUnifiedADDataAdapter.this.d(aDEvent) || NativeUnifiedADDataAdapter.this.f(aDEvent)) {
                return;
            }
            NativeUnifiedADDataAdapter.this.h(aDEvent);
        }
    }

    public NativeUnifiedADDataAdapter(NativeUnifiedADData nativeUnifiedADData) {
        this.f78237b = nativeUnifiedADData;
        if (nativeUnifiedADData instanceof ADEventListener) {
            ((ADEventListener) nativeUnifiedADData).setAdListener(new UnifiedAdListener());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(ADEvent aDEvent) {
        if (this.f78238c == null) {
            return false;
        }
        int type = aDEvent.getType();
        if (type == 103) {
            this.f78238c.onADExposed();
            return true;
        }
        if (type != 105) {
            if (type == 107) {
                this.f78238c.onADError(AdErrorConvertor.getAdError(aDEvent));
                return true;
            }
            if (type != 111) {
                return false;
            }
            this.f78238c.onADStatusChanged();
            return true;
        }
        NativeADEventListener nativeADEventListener = this.f78238c;
        if (!(nativeADEventListener instanceof NativeADEventListenerWithClickInfo)) {
            nativeADEventListener.onADClicked();
            return true;
        }
        ((NativeADEventListenerWithClickInfo) this.f78238c).onADClicked((View) aDEvent.getParam(View.class));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(ADEvent aDEvent) {
        if (this.f78239d == null) {
            return false;
        }
        switch (aDEvent.getType()) {
            case 201:
                Integer num = (Integer) aDEvent.getParam(Integer.class);
                if (num == null) {
                    return true;
                }
                this.f78239d.onVideoLoaded(num.intValue());
                return true;
            case 202:
                this.f78239d.onVideoStart();
                return true;
            case 203:
                this.f78239d.onVideoResume();
                return true;
            case 204:
                this.f78239d.onVideoPause();
                return true;
            case 205:
                this.f78239d.onVideoStop();
                return true;
            case 206:
                this.f78239d.onVideoCompleted();
                return true;
            case 207:
                Integer num2 = (Integer) aDEvent.getParam(Integer.class);
                if (num2 == null) {
                    return true;
                }
                this.f78239d.onVideoError(AdErrorConvertor.formatErrorCode(num2.intValue()));
                return true;
            case 208:
                this.f78239d.onVideoClicked();
                return true;
            case 209:
                this.f78239d.onVideoInit();
                return true;
            case 210:
                this.f78239d.onVideoReady();
                return true;
            case 211:
                this.f78239d.onVideoLoading();
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(ADEvent aDEvent) {
        if (this.f78241f == null || aDEvent.getType() != 304) {
            return false;
        }
        this.f78241f.onComplainSuccess();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(ADEvent aDEvent) {
        if (this.f78242g == null || aDEvent.getType() != 104) {
            return false;
        }
        HashMap map = new HashMap();
        String str = (String) aDEvent.getParam(String.class);
        if (str != null) {
            map.put("transId", str);
        }
        String str2 = (String) aDEvent.getParam(1, String.class);
        if (!TextUtils.isEmpty(str2)) {
            map.put(IReward.DEV_EXT, str2);
        }
        this.f78242g.onReward(map);
        return true;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindAdToCustomVideo(ViewGroup viewGroup, Context context, List<View> list, List<View> list2) {
        this.f78237b.bindAdToCustomVideo(viewGroup, context, list, list2);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindAdToView(Context context, NativeAdContainer nativeAdContainer, FrameLayout.LayoutParams layoutParams, List<View> list) {
        this.f78237b.bindAdToView(context, nativeAdContainer, layoutParams, list);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindCTAViews(List<View> list) {
        this.f78237b.bindCTAViews(list);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindImageViews(List<ImageView> list, int i10) {
        this.f78237b.bindImageViews(list, i10);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindMediaView(MediaView mediaView, VideoOption videoOption, NativeADMediaListener nativeADMediaListener) {
        this.f78239d = nativeADMediaListener;
        this.f78237b.bindMediaView(mediaView, videoOption, nativeADMediaListener);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void destroy() {
        this.f78237b.destroy();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean equalsAdData(NativeUnifiedADData nativeUnifiedADData) {
        return this.f78237b.equalsAdData(nativeUnifiedADData);
    }

    public NativeUnifiedADData getAdData() {
        return this.f78237b;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAdPatternType() {
        return this.f78237b.getAdPatternType();
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        return this.f78237b.getApkInfoUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public NativeUnifiedADAppMiitInfo getAppMiitInfo() {
        return this.f78237b.getAppMiitInfo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public double getAppPrice() {
        return this.f78237b.getAppPrice();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAppScore() {
        return this.f78237b.getAppScore();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAppStatus() {
        return this.f78237b.getAppStatus();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getButtonText() {
        return this.f78237b.getButtonText();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getCTAText() {
        return this.f78237b.getCTAText();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public CustomizeVideo getCustomizeVideo() {
        return this.f78237b.getCustomizeVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getDesc() {
        return this.f78237b.getDesc();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public long getDownloadCount() {
        return this.f78237b.getDownloadCount();
    }

    @Override // com.qq.e.comm.pi.LADI
    public int getECPM() {
        return this.f78237b.getECPM();
    }

    @Override // com.qq.e.comm.pi.LADI
    public String getECPMLevel() {
        return this.f78237b.getECPMLevel();
    }

    @Override // com.qq.e.comm.pi.LADI
    public Map<String, Object> getExtraInfo() {
        return this.f78237b.getExtraInfo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getIconUrl() {
        return this.f78237b.getIconUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public List<String> getImgList() {
        return this.f78237b.getImgList();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getImgUrl() {
        return this.f78237b.getImgUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getPictureHeight() {
        return this.f78237b.getPictureHeight();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getPictureWidth() {
        return this.f78237b.getPictureWidth();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getProgress() {
        return this.f78237b.getProgress();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getTitle() {
        return this.f78237b.getTitle();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getVideoCurrentPosition() {
        return this.f78237b.getVideoCurrentPosition();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getVideoDuration() {
        return this.f78237b.getVideoDuration();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean isAppAd() {
        return this.f78237b.isAppAd();
    }

    @Override // com.qq.e.comm.pi.LADI
    public boolean isValid() {
        return this.f78237b.isValid();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean isWeChatCanvasAd() {
        return this.f78237b.isWeChatCanvasAd();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void negativeFeedback() {
        this.f78237b.negativeFeedback();
    }

    @Override // com.qq.e.comm.compliance.DownloadConfirmListener
    public void onDownloadConfirm(Activity activity, int i10, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
        DownloadConfirmListener downloadConfirmListener = this.f78240e;
        if (downloadConfirmListener != null) {
            downloadConfirmListener.onDownloadConfirm(activity, i10, str, downloadConfirmCallBack);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void pauseAppDownload() {
        this.f78237b.pauseAppDownload();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void pauseVideo() {
        this.f78237b.pauseVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resume() {
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resumeAppDownload() {
        this.f78237b.resumeAppDownload();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resumeVideo() {
        this.f78237b.resumeVideo();
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i10, int i11, String str) {
        this.f78237b.sendLossNotification(i10, i11, str);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i10) {
        this.f78237b.sendWinNotification(i10);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i10) {
        this.f78237b.setBidECPM(i10);
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f78240e = downloadConfirmListener;
        NativeUnifiedADData nativeUnifiedADData = this.f78237b;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setDownloadConfirmListener(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void setNativeAdEventListener(NativeADEventListener nativeADEventListener) {
        this.f78238c = nativeADEventListener;
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f78241f = negativeFeedbackListener;
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f78242g = aDRewardListener;
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78237b.setServerSideVerificationOptions(serverSideVerificationOptions);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void setVideoMute(boolean z10) {
        this.f78237b.setVideoMute(z10);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void startVideo() {
        this.f78237b.startVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void stopVideo() {
        this.f78237b.stopVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindAdToView(Context context, NativeAdContainer nativeAdContainer, FrameLayout.LayoutParams layoutParams, List<View> list, List<View> list2) {
        this.f78237b.bindAdToView(context, nativeAdContainer, layoutParams, list, list2);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindImageViews(List<ImageView> list, byte[] bArr) {
        this.f78237b.bindImageViews(list, bArr);
    }

    @Override // com.qq.e.comm.pi.IBiddingLoss
    public void sendLossNotification(Map<String, Object> map) {
        this.f78237b.sendLossNotification(map);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(Map<String, Object> map) {
        this.f78237b.sendWinNotification(map);
    }
}
