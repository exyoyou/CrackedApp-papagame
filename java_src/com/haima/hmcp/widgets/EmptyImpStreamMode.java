package com.haima.hmcp.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.PlayStreamPayload;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpVideoPlayerListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.listeners.IStreamModel;
import com.haima.hmcp.listeners.StreamingCallback;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.webrtc.haima.HaimaDataChannel;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class EmptyImpStreamMode implements IStreamModel {
    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void changeRenderRotation(int i10) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void connectAccProxy(String str, int i10, String str2, String str3) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void disconnectAccProxy() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doOperationNetTraceRoute(String str) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doPlayerRelease() {
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
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getCurrentBitRate() {
        return 0;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getEncodeVideoUrl() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IMediaPlayer getIMediaPlayer(boolean z10) {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ELivingCapabilityStatus getLivingCapabilityStatus(ELivingCapabilityStatus eLivingCapabilityStatus) {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IRenderViewBase getRenderView() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public Bitmap getShortcut() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getStreamType() {
        return -1;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamUrl() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamingDomain() {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public SwitchStreamTypeData getSwitchStreamTypeData(int i10, PlayStreamPayloadData playStreamPayloadData) {
        return null;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean getVideoLatency() {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean handlePermissionResult() {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void handleSpecialBundle(Bundle bundle) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void imageEnhancement(boolean z10, float f10) {
        i5.b.b(this, z10, f10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void init(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initMetaInfo(HashMap<String, String> map) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initUrl(PlayStreamPayloadData playStreamPayloadData) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean isDatachannelEnable() {
        return i5.b.c(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isMatchStreamType(PlayStreamPayloadData playStreamPayloadData) {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isPlaying() {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean isSupportFirstFrameOptimization() {
        return i5.b.d(this);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isValidate(PlayStreamPayload playStreamPayload) {
        return false;
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
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onFirstFrameArrival() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onPLayerError() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onReceiveMetaInfos(Map<String, List<ResolutionInfo>> map) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onStopInternal() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void parseBoardType(String str) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean playForTesting(PlayTestData playTestData) {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void release() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void releaseNotStop() {
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
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setImageSize() {
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
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ void setStreamingCallback(StreamingCallback streamingCallback) {
        i5.b.k(this, streamingCallback);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void start2Play(SdkStreamPayloadData sdkStreamPayloadData) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void startPlay(SdkStreamPayloadData sdkStreamPayloadData) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stop() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopFrameDataProxy() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public /* synthetic */ boolean switchBandWidthDetection(boolean z10) {
        return i5.b.l(this, z10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void switchMobileNetworkTransport(boolean z10) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOffSound() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOnSound() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void updateRenderview() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay(boolean z10, boolean z11) {
    }
}
