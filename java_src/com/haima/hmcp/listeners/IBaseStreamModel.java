package com.haima.hmcp.listeners;

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
import com.haima.hmcp.widgets.AbsIjkVideoView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.webrtc.haima.HaimaDataChannel;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public interface IBaseStreamModel {
    public static final int BINARY_DISCARDABLE = 2;
    public static final int BINARY_NON_DISCARDABLE = 1;
    public static final int TEXT_DISCARDABLE = 4;
    public static final int TEXT_NON_DISCARDABLE = 3;

    void changeRenderRotation(int i10);

    void connectAccProxy(String str, int i10, String str2, String str3);

    void disconnectAccProxy();

    void doOperationNetTraceRoute(String str);

    void doPlayerRelease();

    void enableShareStream(boolean z10);

    String getBoardType();

    VideoDelayInfo getClockDiffVideoLatencyInfo();

    int getCurrentBitRate();

    String getEncodeVideoUrl();

    IMediaPlayer getIMediaPlayer(boolean z10);

    ELivingCapabilityStatus getLivingCapabilityStatus(ELivingCapabilityStatus eLivingCapabilityStatus);

    IRenderViewBase getRenderView();

    ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2);

    Bitmap getShortcut();

    int getStreamType();

    String getStreamUrl();

    String getStreamingDomain();

    SwitchStreamTypeData getSwitchStreamTypeData(int i10, PlayStreamPayloadData playStreamPayloadData);

    boolean getVideoLatency();

    boolean handlePermissionResult();

    void handleSpecialBundle(Bundle bundle);

    void imageEnhancement(boolean z10, float f10);

    void init(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest);

    void initMetaInfo(HashMap<String, String> map);

    void initUrl(PlayStreamPayloadData playStreamPayloadData);

    boolean isDatachannelEnable();

    boolean isMatchStreamType(PlayStreamPayloadData playStreamPayloadData);

    boolean isPlaying();

    boolean isSupportFirstFrameOptimization();

    boolean isValidate(PlayStreamPayload playStreamPayload);

    void onAttachedToWindow();

    void onClockDiffChange(int i10);

    void onDestroy();

    void onDetachedFromWindow();

    void onFirstDiffClockSuccess();

    void onFirstFrameArrival();

    void onPLayerError();

    void onReceiveMetaInfos(Map<String, List<ResolutionInfo>> map);

    void onStopInternal();

    void parseBoardType(String str);

    boolean playForTesting(PlayTestData playTestData);

    void release();

    void releaseNotStop();

    void releaseScreenShot();

    void replay();

    void requestKeyFrame();

    void rfreshStoken();

    boolean sendEvent(byte[] bArr);

    boolean sendEventByDataType(int i10, byte[] bArr);

    int sendLargeData(byte[] bArr, HaimaDataChannel.Listener listener);

    void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener);

    void setGSMUrl(String str);

    void setHmFrameCallback(HmFrameCallback hmFrameCallback);

    void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback);

    void setHmcpVideoPlayerListener(HmcpVideoPlayerListener hmcpVideoPlayerListener);

    void setImageSize();

    void setInputPingPongMs(int i10);

    void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback);

    void setRender();

    void setStreamingCallback(StreamingCallback streamingCallback);

    void start2Play(SdkStreamPayloadData sdkStreamPayloadData);

    void startPlay(SdkStreamPayloadData sdkStreamPayloadData);

    void stop();

    void stopFrameDataProxy();

    void stopPlay();

    void stopPlay(boolean z10, boolean z11);

    boolean switchBandWidthDetection(boolean z10);

    void switchMobileNetworkTransport(boolean z10);

    void turnOffSound();

    void turnOnSound();

    void updateRenderview();
}
