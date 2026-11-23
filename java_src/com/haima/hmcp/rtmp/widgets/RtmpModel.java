package com.haima.hmcp.rtmp.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewTreeObserver;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.FrameDelayInfo;
import com.haima.hmcp.beans.PlayStreamPayload;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.display.HmScreenMonitor;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.dns.interfaces.DnsConvertCallback;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpVideoPlayerListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.listeners.IStreamModel;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.rtmp.widgets.beans.RtmpVideoDelayInfo;
import com.haima.hmcp.utils.CcallJava;
import com.haima.hmcp.utils.FrameNetDelayInfo;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetworkUtil;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.BaseVideoView;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.webrtc.haima.HaimaDataChannel;
import tv.haima.ijk.media.player.IMediaPlayer;
import tv.haima.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class RtmpModel implements IStreamModel {
    private static final String TAG = "RtmpModel";
    private CcallJava ccallJava;
    private AbsIjkVideoView ijkVideoView;
    protected Context mAppContext;
    protected String mAudioUrl;
    protected HmcpRequest mRequestManager;
    protected String mVideoUrl;
    RtmpPlayer rtmpPlayer;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start2Play$0(SdkStreamPayloadData sdkStreamPayloadData) {
        this.ijkVideoView.start2Play(sdkStreamPayloadData);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void changeRenderRotation(int i10) {
        final IRenderView renderView;
        RtmpPlayer rtmpPlayer = this.rtmpPlayer;
        if (rtmpPlayer == null || (renderView = rtmpPlayer.getRenderView()) == null) {
            return;
        }
        renderView.getView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpModel.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            @RequiresApi(api = 16)
            public void onGlobalLayout() {
                if (renderView == null || RtmpModel.this.ijkVideoView == null) {
                    return;
                }
                int width = renderView.getView().getWidth();
                int height = renderView.getView().getHeight();
                int i11 = RtmpModel.this.ijkVideoView.getmShowWidth();
                int i12 = RtmpModel.this.ijkVideoView.getmShowHeight();
                String str = HmScreenMonitor.TAG;
                LogUtils.d(str, "onGlobalLayout: " + width + "; " + height + "-----" + i11 + "; " + i12);
                if (i11 != width || i12 != height) {
                    LogUtils.d(str, "onGlobalLayout: request layout");
                    renderView.requestLayout();
                }
                renderView.getView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
        renderView.setVideoRotation(i10);
        renderView.requestLayout();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void connectAccProxy(String str, int i10, String str2, String str3) {
        LogUtils.d(TAG, "rtmp不支持");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void disconnectAccProxy() {
        LogUtils.d(TAG, "rtmp不支持");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doOperationNetTraceRoute(String str) {
        int i10;
        String str2;
        int i11;
        int i12;
        if (TextUtils.isEmpty(this.mVideoUrl)) {
            return;
        }
        PlayStreamPayloadData playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data;
        if (playStreamPayloadData != null) {
            i10 = playStreamPayloadData.traceTimes;
            str2 = playStreamPayloadData.host;
            i12 = playStreamPayloadData.pingTimes;
            i11 = playStreamPayloadData.pingSize;
        } else {
            i10 = 0;
            str2 = "";
            i11 = 0;
            i12 = 0;
        }
        HmcpManager.getInstance().doNetPing(str2, i12, i11, null);
        HmcpManager.getInstance().doTraceRoute(this.mAppContext, this.mVideoUrl, i10, null);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doPlayerRelease() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.release(true);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void enableShareStream(boolean z10) {
        i5.b.a(this, z10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getBoardType() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        if (this.mRequestManager == null || FrameNetDelayInfo.getInstance().getClockDiffTime() == 0 || this.ijkVideoView == null) {
            return null;
        }
        FrameDelayInfo frameDelayInfoNow = this.ccallJava.getFrameDelayInfoNow();
        LogUtils.d(TAG, "frameDelayInfo :" + frameDelayInfoNow);
        RtmpVideoDelayInfo rtmpVideoDelayInfo = new RtmpVideoDelayInfo(frameDelayInfoNow);
        if (this.ijkVideoView.getmFPSPeriod() > 0) {
            rtmpVideoDelayInfo.setVideoFps(this.ijkVideoView.getmPlayerFPS() / ((long) this.ijkVideoView.getmFPSPeriod()));
        }
        if (this.ijkVideoView.getmBandWidthPeriod() > 0) {
            rtmpVideoDelayInfo.setBitRate(this.ijkVideoView.getmPlayerBitRate() / ((long) this.ijkVideoView.getmBandWidthPeriod()));
        }
        rtmpVideoDelayInfo.setDecodeType(this.ijkVideoView.decodeType);
        return rtmpVideoDelayInfo;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getCurrentBitRate() {
        if (isPlayerNull()) {
            return 0;
        }
        return this.rtmpPlayer.getCurrentBitRate();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getEncodeVideoUrl() {
        String str = this.mVideoUrl;
        if (str == null) {
            str = "";
        }
        return URLEncoder.encode(str);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IMediaPlayer getIMediaPlayer(boolean z10) {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtmpPlayer.getIMediaPlayer(z10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ELivingCapabilityStatus getLivingCapabilityStatus(ELivingCapabilityStatus eLivingCapabilityStatus) {
        return eLivingCapabilityStatus;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IRenderViewBase getRenderView() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtmpPlayer.getRenderView();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtmpPlayer.getResolution(list, str, str2);
    }

    public RtmpPlayer getRtmpPlayer() {
        return this.rtmpPlayer;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public Bitmap getShortcut() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtmpPlayer.getShortcut();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getStreamType() {
        return 0;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamUrl() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtmpPlayer.getStreamUrl();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamingDomain() {
        if (TextUtils.isEmpty(this.mVideoUrl)) {
            return null;
        }
        try {
            return Uri.parse(this.mVideoUrl).getHost();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public SwitchStreamTypeData getSwitchStreamTypeData(int i10, PlayStreamPayloadData playStreamPayloadData) {
        SwitchStreamTypeData switchStreamTypeData = new SwitchStreamTypeData();
        switchStreamTypeData.mCloudId = this.mRequestManager.getCloudId();
        switchStreamTypeData.streamType = StreamType.WEBRTC;
        switchStreamTypeData.apkType = i10;
        switchStreamTypeData.playData = playStreamPayloadData;
        return switchStreamTypeData;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean getVideoLatency() {
        return FrameNetDelayInfo.getInstance().getClockDiffTime() == 0;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean handlePermissionResult() {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void handleSpecialBundle(Bundle bundle) {
        if (bundle == null || !Constants.STREAM_TYPE_RTMP.equals(bundle.getString("streamType", Constants.STREAM_TYPE_RTMP))) {
            return;
        }
        bundle.putInt(BaseVideoView.SEI, 0);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void imageEnhancement(boolean z10, float f10) {
        i5.b.b(this, z10, f10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void init(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest) {
        if (context != null && absIjkVideoView != null && hmcpRequest != null) {
            this.ijkVideoView = absIjkVideoView;
            this.mAppContext = context.getApplicationContext();
            this.mRequestManager = hmcpRequest;
            this.rtmpPlayer = new RtmpPlayer(context, absIjkVideoView, hmcpRequest);
            this.ccallJava = new CcallJava();
            this.rtmpPlayer.initVideoView(context);
            return;
        }
        String str = "init fail, context is " + context + " ijkVideoView is " + absIjkVideoView + " hmcpRequest is " + hmcpRequest;
        LogUtils.e(TAG, str);
        CountlyUtil.recordEvent("12200", str);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initMetaInfo(HashMap<String, String> map) {
        this.rtmpPlayer.initMetaInfo(map);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initUrl(PlayStreamPayloadData playStreamPayloadData) {
        if (playStreamPayloadData == null) {
            return;
        }
        this.mVideoUrl = playStreamPayloadData.videoUrl;
        this.mAudioUrl = playStreamPayloadData.audioUrl;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean isDatachannelEnable() {
        return i5.b.c(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isMatchStreamType(PlayStreamPayloadData playStreamPayloadData) {
        if (this.ijkVideoView == null || playStreamPayloadData == null) {
            return false;
        }
        boolean zEquals = Constants.STREAM_TYPE_RTMP.equals(playStreamPayloadData.streamType);
        if (this.ijkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isMatchStreamType = zEquals;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isMatchStreamType");
        }
        return zEquals;
    }

    public boolean isPlayerNull() {
        if (this.rtmpPlayer != null) {
            return false;
        }
        LogUtils.e(TAG, "rtmpPlayer is null");
        CountlyUtil.recordEvent("12200", "rtmpPlayer is null");
        return true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isPlaying() {
        if (isPlayerNull()) {
            return false;
        }
        return this.rtmpPlayer.isPlaying();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean isSupportFirstFrameOptimization() {
        return i5.b.d(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isValidate(PlayStreamPayload playStreamPayload) {
        PlayStreamPayloadData playStreamPayloadData;
        return (playStreamPayload == null || (playStreamPayloadData = playStreamPayload.data) == null || TextUtils.isEmpty(playStreamPayloadData.videoUrl) || TextUtils.isEmpty(playStreamPayloadData.audioUrl) || TextUtils.isEmpty(playStreamPayloadData.inputUrl)) ? false : true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onAttachedToWindow() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onClockDiffChange(int i10) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onDestroy() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onDetachedFromWindow() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onFirstDiffClockSuccess() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.startReportClockDiffLatency();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onFirstFrameArrival() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        startStastics(absIjkVideoView.getmFPSPeriod(), this.ijkVideoView.getmBandWidthPeriod(), this.ijkVideoView.getmBandWidthPeak(), this.ijkVideoView.getmDecodeTimePeriod());
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onPLayerError() {
        if (this.ijkVideoView == null) {
            return;
        }
        this.ijkVideoView.refreshStoken(Constants.REFRESH_STOKEN_DELAY * 1000, "MediaPlayer onError", true, NetworkUtil.isNetworkConnected(this.mAppContext));
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onReceiveMetaInfos(Map<String, List<ResolutionInfo>> map) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setmResolutionList(map.get(Constants.STREAM_TYPE_RTMP));
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onStopInternal() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void parseBoardType(String str) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean playForTesting(PlayTestData playTestData) {
        this.mVideoUrl = playTestData.videoUrl;
        this.mAudioUrl = playTestData.audioUrl;
        return true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void release() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.stopPlay();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void releaseNotStop() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.stopPlay();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void releaseScreenShot() {
        i5.b.e(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void replay() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void requestKeyFrame() {
        i5.b.f(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void rfreshStoken() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean sendEvent(byte[] bArr) {
        return i5.b.g(this, bArr);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean sendEventByDataType(int i10, byte[] bArr) {
        return i5.b.h(this, i10, bArr);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ int sendLargeData(byte[] bArr, HaimaDataChannel.Listener listener) {
        return i5.b.i(this, bArr, listener);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener) {
        LogUtils.d(TAG, "set color mode fail, RTMP is not support");
        if (colorModeListener != null) {
            colorModeListener.onColorModeResult(false, "set color mode fail, RTMP is not support");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setGSMUrl(String str) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmcpVideoPlayerListener(HmcpVideoPlayerListener hmcpVideoPlayerListener) {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.setHmcpVideoPlayerListener(hmcpVideoPlayerListener);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setImageSize() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.setImageSize();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void setInputPingPongMs(int i10) {
        i5.b.j(this, i10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setRender() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.setRender(HmcpManager.getInstance().getVideoViewType());
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void setStreamingCallback(StreamingCallback streamingCallback) {
        i5.b.k(this, streamingCallback);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void start2Play(final SdkStreamPayloadData sdkStreamPayloadData) {
        if (DnsManager.getInstance().mOpenAsyncParser) {
            LogUtils.d(TAG, "convertVideoAndAudioPathASync start");
            this.rtmpPlayer.convertVideoAndAudioPathASync(this.mVideoUrl, this.mAudioUrl, new DnsConvertCallback() { // from class: com.haima.hmcp.rtmp.widgets.a
                @Override // com.haima.hmcp.dns.interfaces.DnsConvertCallback
                public final void convertFinish() {
                    this.f34079a.lambda$start2Play$0(sdkStreamPayloadData);
                }
            });
        } else {
            LogUtils.d(TAG, "convertVideoAndAudioPathSync start");
            this.rtmpPlayer.convertVideoAndAudioPathSync(this.mVideoUrl, this.mAudioUrl);
            this.ijkVideoView.start2Play(sdkStreamPayloadData);
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void startPlay(SdkStreamPayloadData sdkStreamPayloadData) {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.startPlay(this.mVideoUrl, this.mAudioUrl);
    }

    public void startStastics(int i10, int i11, int i12, int i13) {
        if (i10 < 0 || i11 < 0 || i12 < 0) {
            return;
        }
        IjkMediaPlayer.native_startStastics(i10, i11, i12, i13);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stop() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.stopPlay();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopFrameDataProxy() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay(boolean z10, boolean z11) {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.stopPlay(z10, z11);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean switchBandWidthDetection(boolean z10) {
        return i5.b.l(this, z10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void switchMobileNetworkTransport(boolean z10) {
        LogUtils.d(TAG, "rtmp不支持");
    }

    public void turnDownSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.turnDownSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOffSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.turnOffSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOnSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.turnOnSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void updateRenderview() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay() {
        if (isPlayerNull()) {
            return;
        }
        this.rtmpPlayer.stopPlay();
    }
}
