package org.webrtc.haima;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.umeng.analytics.pro.bm;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hmwebrtc.AndroidVideoDecoder;
import org.hmwebrtc.ContextUtils;
import org.hmwebrtc.DirectSurfaceVideoDecoder;
import org.hmwebrtc.EglBase;
import org.hmwebrtc.EglRenderer;
import org.hmwebrtc.HardwareVideoEncoderFactory;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.Logging;
import org.hmwebrtc.MediaCodecSupportedCodecs;
import org.hmwebrtc.MediaCodecVideoDecoderFactory;
import org.hmwebrtc.NetworkMonitorAutoDetect;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.PeerConnectionFactory;
import org.hmwebrtc.RTCStats;
import org.hmwebrtc.RTCStatsReport;
import org.hmwebrtc.RendererCommon;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.SessionDescription;
import org.hmwebrtc.ShareStreamingManager;
import org.hmwebrtc.StatsReport;
import org.hmwebrtc.SurfaceViewDsRenderer;
import org.hmwebrtc.SurfaceViewRenderer;
import org.hmwebrtc.TextureViewDsRenderer;
import org.hmwebrtc.TextureViewRenderer;
import org.hmwebrtc.VideoCapturer;
import org.hmwebrtc.VideoFrame;
import org.hmwebrtc.VideoSink;
import org.hmwebrtc.audio.WebRtcAudioTrack;
import org.hmwebrtc.log.WebrtcLoggableHelp;
import org.hmwebrtc.utils.PerfdogJankCounter;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.audio.HmAudioManager;
import org.webrtc.haima.beans.CameraConfig;
import org.webrtc.haima.beans.GamePlatformType;
import org.webrtc.haima.camera.HmCameraManager;
import org.webrtc.haima.camera.HmCameraSettings;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.RtcErrorType;
import org.webrtc.haima.listeners.HmGSCallback;
import org.webrtc.haima.listeners.HmPermissionHandler;
import org.webrtc.haima.listeners.HmProtoCallback;
import org.webrtc.haima.util.ExceptionUtils;
import org.webrtc.haima.util.RtcProtoBufUtil;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcAdapterImpl implements AppRTCClient.SignalingEvents, PeerConnectionClient.PeerConnectionEvents, WebSocketSignalClient.IWebSocketSignalClientEvent, ShareStreamingManager.KeyFrameRequestCallBack {
    private static final int MEDIA_CODEC_RENDER_MODE_SURFACETEXTURE = 1;
    private static final int MEDIA_CODEC_RENDER_MODE_SURFACEVIEW = 2;
    private static final int MEDIA_CODEC_RENDER_MODE_YUV = 0;
    public static final int MSG_CALLBACK_FRAME_RESOLUTION = 16;
    public static final int MSG_CONNECT_FAILED_INTERNAL = 1;
    public static final int MSG_ON_ACCPROXY_CONNECT_STATE_CHANGE = 50;
    public static final int MSG_ON_CHANNEL_CONNECTED = 8;
    public static final int MSG_ON_CHANNEL_CONNECT_STATUS = 7;
    public static final int MSG_ON_CHANNEL_ERROR = 6;
    public static final int MSG_ON_CHANNEL_SEND_MESSAGE = 9;
    public static final int MSG_ON_COMMAND_CHANNEL_AVAILABLE = 59;
    public static final int MSG_ON_CONNECTED = 14;
    public static final int MSG_ON_CONNECT_ROOM = 2;
    public static final int MSG_ON_DISCONNECTED = 15;
    public static final int MSG_ON_ICE_CANDIDATE = 12;
    public static final int MSG_ON_ICE_CANDIDATES_REMOVED = 13;
    public static final int MSG_ON_LOCAL_DESCRIPTION_CREATED = 10;
    public static final int MSG_ON_LOCAL_DESCRIPTION_SET = 11;
    public static final int MSG_ON_RECV_COMMAND_BIN = 57;
    public static final int MSG_ON_RECV_COMMAND_TEXT = 58;
    public static final int MSG_ON_REMOTE_DESCRIPTION = 3;
    public static final int MSG_ON_REMOTE_ICE_CANDIDATE = 4;
    public static final int MSG_ON_REMOTE_ICE_CANDIDATES_REMOVED = 5;
    public static final int MSG_ON_SINGALEV2_CONNECTED = 31;
    public static final int MSG_ON_SINGALEV2_CONNECT_STATUS = 30;
    public static final int MSG_ON_STREAMER_BWE = 53;
    public static final int MSG_ON_SWITCH_CONNECT_CALLBACK = 51;
    public static final int MSG_ON_SWITCH_DISPLAY_VIEW = 19;
    public static final int MSG_ON_SWITCH_TO_RTMP = 40;
    public static final int MSG_ON_VIDEO_FRAME_ELAPSED_TIME = 52;
    public static final int MSG_ON_X86_INPUT_CLOSE = 55;
    public static final int MSG_ON_X86_INPUT_OPEN = 54;
    public static final int MSG_ON_X86_INPUT_PONG = 56;
    public static final int MSG_REMOTE_VIDEO_ENCODE_ADAPTATION = 18;
    public static final int MSG_REPORT_ERROR = 0;
    public static final int MSG_THROW_EXCEPTION_MSG = 17;
    public static final String ON_CHANNEL_SEND_MESSAGE_TO = "to";
    public static final String ON_CHANNEL_SEND_MESSAGE_TYPE = "type";
    private static final int STAT_CALLBACK_PERIOD = 1000;
    private static final String TAG = "HmRtcAdapterImpl";
    private static final int VideoFrameRateForLowPerformanceDevice = 30;
    private static final int VideoHeightForLowPerformanceDevice = 480;
    private static final int VideoMinBitrate = 5;
    private static final int VideoWidthForLowPerformanceDevice = 640;
    private static HmRtcAdapterImpl mInstance;
    private static Object mInstanceLock = new Object();
    private static HmCountlyEventRecorderCallback sgCountlyEventRecorderCallback;
    private int TIMEOUT_WEBSOCKET_CHECK;
    private int actualNetJitterMs;

    @Nullable
    private SocketIORTCClient appRtcClient;
    private long callStartedTimeMs;
    Boolean currentConnectStatus;
    private EglRenderer.ErrorCallback eglRendererErrorCallback;
    private HmGSCallback gsCallback;
    private int imageRotationDegree;
    private boolean isCalled;
    private boolean isEnableViewSwitch;
    private boolean isPlaying;
    private boolean isReceivedStreamerAvDelayInfo;
    long lastRtt;
    private boolean mAlreadyRecvOfferSdp;
    private List<String> mAlreadyRecvRemoteCandidates;
    private String mCacheAccProxyIp;
    private String mCacheAccProxyPW;
    private int mCacheAccProxyPort;
    private String mCacheAccProxyUser;
    private boolean mCacheSwitchToCellularConnection;
    private CameraConfig mCameraConfig;
    private HmRtcCommandFilter mCommandFilter;
    private HmRtcCommandFilter.Listener mCommnadCallback;
    HmRtcCommandFilter.ProcessThread mCommnadThread;
    private WeakReference<Context> mContextRef;
    private HmFrameDelayInfo mFrameDelayInfo;
    private long mFrameHeigh;
    private long mFrameWidth;
    private String mGSUrl;
    private GamePlatformType mGamePlatformType;
    private HmBandWidthController mHmBandWidthController;
    private SocketIORTCClient.HmSocketIOOptions mIoOptions;
    private PerfdogJankCounter mJankCounter;
    private JankStatisticsTool mJankTool;
    private VideoSink mLocalPreviewRenderer;
    private Handler mMainHandler;
    private JankStatisticsTool.NativeJankInfo mNativeJankInfo;
    private HmOperationDelayReport mOperationDelayReport;
    private HmPlayerCallback mPlayerCallback;
    private String mPrevSignalV2Url;
    private GamePlatformType mRealGamePlatformType;
    private String mRoomId;
    private boolean mRtcDisconnected;
    private HmRtcEnvironment mRtcEnv;
    private HmStreamerCallback mStreamerCallback;
    private SurfaceViewDsRenderer mSurfaceDsRenderer;
    private SurfaceViewRenderer mSurfaceRenderer;
    private TextureViewDsRenderer mTextureDsRenderer;
    private TextureViewRenderer mTextureRenderer;
    private Runnable mWSClientCheckRunable;
    private WebSocketRTCClient mWebSocketClient;
    private int maxNetJitterCounts;
    private int maxNetJitterMs;
    HmRtcAdapterImpl myself;
    private int owner;

    @Nullable
    private PeerConnectionClient peerConnectionClient;

    @Nullable
    private PeerConnectionClient.PeerConnectionParameters peerConnectionParameters;
    private ProxyVideoSink remoteProxyRenderer;
    private List<VideoSink> remoteSinks;
    private final RenderEventCallback renderEventCallback;
    private long resolutionChangedTime;
    private AppRTCClient.RoomConnectionParameters roomConnectionParameters;
    private Handler sMainHandler;

    @Nullable
    private Handler statsThreadHandler;
    private int streamerWeaklyInfoCount;
    private boolean viewSwitchHappened;
    private WeaklyNetworkReport weaklyNetworkReport;
    private ArrayList<String> weaklyNetworkReportList;
    private Object mMainHandlerLock = new Object();
    private Object mStreamerCallbackLock = new Object();
    private Object mPlayerCallbackLock = new Object();
    private Object mSignalHttpSwitchToSignalV1V2Lock = new Object();
    private List<PeerConnection.IceServer> iceServers = new ArrayList();
    private Object statsHandlerLock = new Object();
    final Runnable statRunnable = new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.1
        @Override // java.lang.Runnable
        public void run() {
            Object[] objArrWeaklyNetworkReportToArray;
            Object objClone;
            synchronized (HmRtcAdapterImpl.this.mFrameDelayInfo) {
                objArrWeaklyNetworkReportToArray = null;
                try {
                    objClone = HmRtcAdapterImpl.this.mFrameDelayInfo.clone();
                    try {
                        objArrWeaklyNetworkReportToArray = HmRtcAdapterImpl.this.weaklyNetworkReportToArray();
                    } catch (CloneNotSupportedException e10) {
                        e = e10;
                        Logging.e(HmRtcAdapterImpl.TAG, "CloneNotSupportedException:" + e.toString());
                    }
                } catch (CloneNotSupportedException e11) {
                    e = e11;
                    objClone = null;
                }
            }
            if (objClone != null) {
                HmFrameDelayInfo hmFrameDelayInfo = (HmFrameDelayInfo) objClone;
                synchronized (HmRtcAdapterImpl.this.mPlayerCallbackLock) {
                    if (HmRtcAdapterImpl.this.mPlayerCallback != null) {
                        if (hmFrameDelayInfo.isValid()) {
                            HmRtcAdapterImpl.this.mPlayerCallback.onDelayInfoNeedSend(hmFrameDelayInfo);
                        }
                        HmRtcAdapterImpl.this.mPlayerCallback.onBitrate(hmFrameDelayInfo.getVideoBitrate());
                        HmRtcAdapterImpl.this.mPlayerCallback.onFps(hmFrameDelayInfo.getGameFps());
                        HmRtcAdapterImpl.this.mPlayerCallback.onFrameDecode(hmFrameDelayInfo.getDecodeTime());
                    }
                }
                if (objArrWeaklyNetworkReportToArray != null) {
                    HmRtcAdapterImpl.this.reportWeaklyNetwork(objArrWeaklyNetworkReportToArray);
                }
            }
        }
    };

    static class HmCallbackRunnable implements Runnable {
        private String mMethodName;
        private String mParam;

        public HmCallbackRunnable(String str, String str2) {
            this.mMethodName = str;
            this.mParam = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (HmRtcAdapterImpl.mInstanceLock) {
                try {
                    if (HmRtcAdapterImpl.mInstance == null) {
                        Logging.e(HmRtcAdapterImpl.TAG, "HmRtcAdapterImpl instance is null, quit this runnable.");
                        return;
                    }
                    Method method = HmRtcAdapterImpl.mInstance.getClass().getMethod(this.mMethodName, String.class);
                    if (method != null) {
                        method.invoke(HmRtcAdapterImpl.mInstance, this.mParam);
                        return;
                    }
                    HmRtcAdapterImpl.mInstance.throwExceptionMsg("Exception, method: " + this.mMethodName + " is not implement.");
                } catch (Exception e10) {
                    HmRtcAdapterImpl.mInstance.throwExceptionMsg("Exception, call: " + this.mMethodName + ", " + e10.toString());
                }
            }
        }
    }

    public static class ProxyVideoSink implements VideoSink {
        private boolean isFirst = true;
        private Object lock = new Object();
        private HmOperationDelayReport operationDelayReport;
        private Handler sMainHandler;
        private VideoSink target;
        private VideoSink targetDs;

        @Override // org.hmwebrtc.VideoSink
        public void onFrame(VideoFrame videoFrame) {
            synchronized (this.lock) {
                VideoSink videoSink = this.target;
                if (videoSink == null) {
                    Logging.d(HmRtcAdapterImpl.TAG, "Dropping frame in proxy because target is null.");
                    return;
                }
                if (this.targetDs == null) {
                    videoSink.onFrame(videoFrame);
                } else if (!(videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer) || ((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTextureId() >= 0) {
                    if (this.isFirst) {
                        Handler handler = this.sMainHandler;
                        if (handler == null) {
                            Logging.e(HmRtcAdapterImpl.TAG, "Fatal error: sMainHandler is null when processRunOnUiThread.");
                            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "sMainHandler is null when onFrame");
                            return;
                        }
                        Message messageObtainMessage = handler.obtainMessage(19);
                        messageObtainMessage.obj = null;
                        messageObtainMessage.setData(null);
                        this.sMainHandler.sendMessage(messageObtainMessage);
                        this.isFirst = false;
                        Logging.d(HmRtcAdapterImpl.TAG, "@@@@begin to switch");
                    }
                    this.target.onFrame(videoFrame);
                } else {
                    this.targetDs.onFrame(videoFrame);
                    this.isFirst = true;
                }
                if (this.operationDelayReport == null || videoFrame.getInputTimestampMs() <= 0) {
                    return;
                }
                this.operationDelayReport.addOperationDelay(videoFrame.getInputTimestampMs());
            }
        }

        public void setOperationDelayReport(HmOperationDelayReport hmOperationDelayReport) {
            this.operationDelayReport = hmOperationDelayReport;
        }

        public void setTarget(VideoSink videoSink, VideoSink videoSink2, Handler handler) {
            synchronized (this.lock) {
                this.target = videoSink;
                this.targetDs = videoSink2;
                this.isFirst = true;
                this.sMainHandler = handler;
            }
        }
    }

    private class RenderEventCallback implements RendererCommon.RendererEvents {
        private RenderEventCallback() {
        }

        @Override // org.hmwebrtc.RendererCommon.RendererEvents
        public void onFirstFrameRendered() {
            Logging.d(HmRtcAdapterImpl.TAG, "first video frame will be rendering");
        }

        @Override // org.hmwebrtc.RendererCommon.RendererEvents
        public void onFrameResolutionChanged(int i10, int i11, int i12) {
            Logging.d(HmRtcAdapterImpl.TAG, "Frame Resolution Changed:" + i10 + "x" + i11);
            long j10 = (long) i10;
            HmRtcAdapterImpl.this.mFrameDelayInfo.setFrameWidthReceived(j10);
            long j11 = (long) i11;
            HmRtcAdapterImpl.this.mFrameDelayInfo.setFrameHeightReceived(j11);
            HmRtcAdapterImpl.this.receiveFrameResolution(j10, j11);
        }
    }

    private class SignalV2ReleaseRunnable implements Runnable {
        private WebSocketRTCClient wsSocket;

        SignalV2ReleaseRunnable(WebSocketRTCClient webSocketRTCClient) {
            this.wsSocket = webSocketRTCClient;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WebSocketRTCClient webSocketRTCClient = this.wsSocket;
                if (webSocketRTCClient != null) {
                    webSocketRTCClient.disconnect();
                    this.wsSocket = null;
                }
            } catch (Exception e10) {
                HmRtcAdapterImpl.this.myself.throwExceptionMsg("Exception, call: SignalV2ReleaseRunnable, " + e10.toString());
            }
        }
    }

    public HmRtcAdapterImpl() {
        GamePlatformType gamePlatformType = GamePlatformType.ARM;
        this.mGamePlatformType = gamePlatformType;
        this.mRealGamePlatformType = gamePlatformType;
        this.TIMEOUT_WEBSOCKET_CHECK = 1000;
        this.mPrevSignalV2Url = "";
        this.mAlreadyRecvRemoteCandidates = new ArrayList();
        this.renderEventCallback = new RenderEventCallback();
        this.weaklyNetworkReportList = new ArrayList<>();
        this.eglRendererErrorCallback = new EglRenderer.ErrorCallback() { // from class: org.webrtc.haima.HmRtcAdapterImpl.2
            @Override // org.hmwebrtc.EglRenderer.ErrorCallback
            public void onGlOutOfMemory(final Exception exc) {
                if (exc == null) {
                    return;
                }
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_EGL_RENDERER_OUT_OF_MEMORY, ExceptionUtils.toString(exc));
                HmRtcAdapterImpl.this.postRunnableToStatThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (HmRtcAdapterImpl.this.mPlayerCallbackLock) {
                            if (HmRtcAdapterImpl.this.mPlayerCallback == null) {
                                return;
                            }
                            HmRtcAdapterImpl.this.mPlayerCallback.onError(RtcErrorType.EGL_RENDERER_OOM, exc.toString(), null);
                        }
                    }
                });
            }

            @Override // org.hmwebrtc.EglRenderer.ErrorCallback
            public void onRuntimeException(final Exception exc) {
                if (exc == null) {
                    return;
                }
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_EGL_RENDERER_RUNTIME_EXCEPTION, ExceptionUtils.toString(exc));
                HmRtcAdapterImpl.this.postRunnableToStatThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (HmRtcAdapterImpl.this.mPlayerCallbackLock) {
                            if (HmRtcAdapterImpl.this.mPlayerCallback == null) {
                                return;
                            }
                            HmRtcAdapterImpl.this.mPlayerCallback.onError(RtcErrorType.EGL_RENDERER_RUNTIME_EXCEPTION, exc.toString(), null);
                        }
                    }
                });
            }
        };
        this.myself = this;
        this.mWSClientCheckRunable = new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.mWebSocketClient == null) {
                        return;
                    }
                    if (HmRtcAdapterImpl.this.mWebSocketClient.offerReceived()) {
                        Logging.i(HmRtcAdapterImpl.TAG, "wsclient have received offer sdp.");
                        return;
                    }
                    Logging.i(HmRtcAdapterImpl.TAG, "wsclient not received offer to try socket.io");
                    if (HmRtcAdapterImpl.this.appRtcClient == null) {
                        HmRtcAdapterImpl hmRtcAdapterImpl = HmRtcAdapterImpl.this;
                        hmRtcAdapterImpl.appRtcClient = new SocketIORTCClient(hmRtcAdapterImpl.myself, hmRtcAdapterImpl.mIoOptions);
                    }
                    HmRtcAdapterImpl.this.appRtcClient.connectToRoom(HmRtcAdapterImpl.this.roomConnectionParameters);
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.myself.throwExceptionMsg("Exception, call: mWSClientCheckRunable, " + e10.toString());
                }
            }
        };
        this.currentConnectStatus = Boolean.FALSE;
        this.mCommnadCallback = new HmRtcCommandFilter.Listener() { // from class: org.webrtc.haima.HmRtcAdapterImpl.23
            @Override // org.webrtc.haima.HmRtcCommandFilter.Listener
            public void onBinMessage(byte[] bArr) {
                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                    HmRtcAdapterImpl.this.mStreamerCallback.onRemoteBinMessage(bArr);
                }
            }

            @Override // org.webrtc.haima.HmRtcCommandFilter.Listener
            public void onInputTransportState(int i10) {
                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                    HmRtcAdapterImpl.this.mStreamerCallback.onRemoteInputTransportState(i10);
                }
            }

            @Override // org.webrtc.haima.HmRtcCommandFilter.Listener
            public void onTextMessage(String str) {
                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                    HmRtcAdapterImpl.this.mStreamerCallback.onRemoteTextMessage(str);
                }
            }
        };
        this.mCommnadThread = new HmRtcCommandFilter.ProcessThread() { // from class: org.webrtc.haima.HmRtcAdapterImpl.24
            @Override // org.webrtc.haima.HmRtcCommandFilter.ProcessThread
            public void postRunnable(Runnable runnable, long j10) {
                synchronized (HmRtcAdapterImpl.this.mMainHandlerLock) {
                    if (HmRtcAdapterImpl.this.mMainHandler == null) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Fatal error: mMainHandler is null when postDelayedRunnableToUiThread.");
                        return;
                    }
                    Handler handler = HmRtcAdapterImpl.this.mMainHandler;
                    if (j10 > 0) {
                        handler.postDelayed(runnable, j10);
                    } else {
                        handler.post(runnable);
                    }
                }
            }
        };
    }

    private void CreateIceServers(String str) {
        PeerConnection.IceServer iceServerCreateIceServer;
        if (str == null) {
            return;
        }
        String[] strArrSplit = str.split(",");
        int length = strArrSplit.length;
        for (int i10 = 0; i10 < length; i10++) {
            String strReplaceFirst = strArrSplit[i10];
            if (!TextUtils.isEmpty(strReplaceFirst.trim())) {
                if (strReplaceFirst.startsWith("stun:")) {
                    strReplaceFirst = strReplaceFirst.replaceFirst("stun", "turn");
                }
                if (strReplaceFirst.contains("@") && strReplaceFirst.startsWith("turn:") && strReplaceFirst.contains("transport=tcp") && (iceServerCreateIceServer = createIceServer(strReplaceFirst.trim())) != null) {
                    this.iceServers.add(iceServerCreateIceServer);
                    Logging.i(TAG, "add turnServerUrl = " + strReplaceFirst);
                }
            }
        }
    }

    private void ParseVideoTimingFrameInfo(String str) {
        long j10;
        try {
            String[] strArrSplit = str.split("\\,");
            if (strArrSplit == null || strArrSplit.length < 16) {
                return;
            }
            long j11 = Long.parseLong(strArrSplit[0]);
            long j12 = Long.parseLong(strArrSplit[1]);
            long j13 = Long.parseLong(strArrSplit[2]);
            long j14 = Long.parseLong(strArrSplit[3]);
            long j15 = Long.parseLong(strArrSplit[4]);
            long j16 = Long.parseLong(strArrSplit[5]);
            try {
                long j17 = Long.parseLong(strArrSplit[6]);
                long j18 = Long.parseLong(strArrSplit[7]);
                long j19 = Long.parseLong(strArrSplit[8]);
                long j20 = Long.parseLong(strArrSplit[9]);
                long j21 = Long.parseLong(strArrSplit[10]);
                long j22 = Long.parseLong(strArrSplit[11]);
                long j23 = Long.parseLong(strArrSplit[12]);
                Long.parseLong(strArrSplit[13]);
                Long.parseLong(strArrSplit[14]);
                long j24 = Long.parseLong(strArrSplit[15]);
                if (HmRtcGlobalConfig.hmRtcAvDelaySdk.isDebugLog) {
                    String str2 = TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("videoRtpTimestamp:");
                    sb2.append(j11);
                    sb2.append(",videoCaptureTimeMs:");
                    sb2.append(j12);
                    sb2.append(",videoEncodeStartMs:");
                    sb2.append(j13);
                    sb2.append(",videoEncodeFinishMs:");
                    sb2.append(j14);
                    sb2.append(",videoPacketizationFinishMs:");
                    sb2.append(j15);
                    sb2.append(",videoPacerExitMs:");
                    sb2.append(j16);
                    sb2.append(",videoNetworkTimestampMs:");
                    sb2.append(j17);
                    sb2.append(",videoNetwork2TimestampMs:");
                    sb2.append(j18);
                    sb2.append(",videoReceiveStartMs:");
                    sb2.append(j19);
                    sb2.append(",videoReceiveFinishMs:");
                    sb2.append(j20);
                    sb2.append(",videoDecodeStartMs:");
                    sb2.append(j21);
                    sb2.append(",videoDecodeFinishMs:");
                    j10 = j22;
                    sb2.append(j10);
                    sb2.append(",videoRenderTimeMs:");
                    sb2.append(j23);
                    sb2.append(",videoRenderTimeMs:");
                    sb2.append(j23);
                    sb2.append(",videoDecodeDelayMs:");
                    sb2.append(j24);
                    sb2.append("IntervalFromVideoCaptureToDecoded:");
                    sb2.append(j10 - j12);
                    Logging.d(str2, sb2.toString());
                } else {
                    j10 = j22;
                }
                long j25 = j13 - j12;
                long j26 = j14 - j13;
                long j27 = j10 - j12;
                HmAVDelayCloudConfig.AVDelayParameters aVDelayParameters = HmRtcGlobalConfig.hmRtcAvDelaySdk;
                if (j27 > aVDelayParameters.videoFromCapToDecodedThreshold * 1000) {
                    j27 = -1;
                }
                try {
                    this.mFrameDelayInfo.setVideoCaptureDelay(adjustAvDelayInfo("video capture delay", (int) j25, aVDelayParameters.mVideoCaptureParameters));
                    this.mFrameDelayInfo.setVideoEncodeDelay(adjustAvDelayInfo("video encode delay", (int) j26, HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoEncodeParameters));
                    this.mFrameDelayInfo.setVideoDecodeDelay(adjustAvDelayInfo("video decode delay", (int) j24, HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoDecodeParameters));
                    this.mFrameDelayInfo.setIntervalFromVideoCaptureToDecoded((int) j27);
                    return;
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Exception e12) {
            e = e12;
        }
        Logging.d(TAG, "ParseTimingFrameInfo Exception:" + e.toString());
    }

    private void UpdateAudioDeviceState() {
        String str;
        String str2;
        String str3;
        if (this.currentConnectStatus.booleanValue()) {
            WeakReference<Context> weakReference = this.mContextRef;
            Context context = weakReference == null ? null : weakReference.get();
            if (context == null) {
                Logging.e(TAG, "Fatal error: context is null when getAudioDeviceState.");
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when getAudioDeviceState");
                this.mFrameDelayInfo.setAudioDeviceState("aaaaaaaaaaa");
                return;
            }
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            String str4 = audioManager.isBluetoothScoOn() ? "1" : "0";
            String str5 = audioManager.isSpeakerphoneOn() ? "1" : "0";
            String str6 = audioManager.isMusicActive() ? "1" : "0";
            int i10 = Build.VERSION.SDK_INT;
            String str7 = audioManager.isVolumeFixed() ? "1" : "0";
            AudioAttributes inUsedAudioAttributes = this.peerConnectionClient.getInUsedAudioAttributes();
            String str8 = "";
            int volumeControlStream = 3;
            if (inUsedAudioAttributes != null) {
                str = "" + inUsedAudioAttributes.getContentType();
                str2 = "" + inUsedAudioAttributes.getUsage();
                str3 = "" + inUsedAudioAttributes.getFlags();
                if (i10 >= 26) {
                    volumeControlStream = inUsedAudioAttributes.getVolumeControlStream();
                }
            } else {
                str = "";
                str2 = str;
                str3 = str2;
            }
            if (i10 >= 23) {
                str8 = audioManager.isStreamMute(volumeControlStream) ? "1" : "0";
            }
            this.mFrameDelayInfo.setAudioDeviceState(audioManager.getMode() + "a" + volumeControlStream + "a" + str + "a" + str2 + "a" + str3 + "a" + str4 + "a" + str5 + "a" + str6 + "a" + str8 + "a" + str7 + "a" + audioManager.getStreamVolume(volumeControlStream) + "a" + audioManager.getStreamMaxVolume(volumeControlStream));
        }
    }

    private static int adjustAvDelayInfo(String str, int i10, HmAVDelayCloudConfig.AVDelayTuneValue aVDelayTuneValue) {
        if (!HmRtcGlobalConfig.hmRtcAvDelaySdk.enable) {
            return 0;
        }
        int iCalculateParameters = HmAVDelayCloudConfig.calculateParameters(i10, aVDelayTuneValue);
        if (HmRtcGlobalConfig.hmRtcAvDelaySdk.isDebugLog) {
            Logging.d(TAG, "original " + str + " in MS:" + i10 + ",adjusted " + str + " in MS:" + iCalculateParameters);
        }
        return iCalculateParameters;
    }

    private int adjustNetJitterDelayInfo(int i10) {
        HmAVDelayCloudConfig.AVDelayParameters aVDelayParameters = HmRtcGlobalConfig.hmRtcAvDelaySdk;
        if (!aVDelayParameters.enable) {
            return 0;
        }
        int iCalculateParameters = HmAVDelayCloudConfig.calculateParameters(i10, aVDelayParameters.mNetJitterParameters);
        if (HmRtcGlobalConfig.hmRtcAvDelaySdk.isDebugLog) {
            Logging.d(TAG, "original net jitter in MS:" + i10 + ",adjusted net jitter in MS:" + iCalculateParameters);
        }
        if (iCalculateParameters > this.maxNetJitterMs) {
            this.maxNetJitterMs = iCalculateParameters;
            if (this.actualNetJitterMs == 0) {
                this.actualNetJitterMs = iCalculateParameters;
            }
        }
        int i11 = this.maxNetJitterCounts;
        this.maxNetJitterCounts = i11 + 1;
        if (i11 >= 4) {
            this.actualNetJitterMs = this.maxNetJitterMs;
            this.maxNetJitterCounts = 0;
            this.maxNetJitterMs = 0;
        }
        return this.actualNetJitterMs;
    }

    private void callbackFrameResolution() {
        if (this.mFrameWidth == 0 || this.mFrameHeigh == 0 || this.isCalled) {
            return;
        }
        String str = TAG;
        Logging.i(str, "Fast resolution-> " + this.mFrameWidth + " * " + this.mFrameHeigh);
        this.isCalled = true;
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.i(str, "Fatal error: context is null when callbackFrameResolution.");
        } else {
            this.resolutionChangedTime = System.currentTimeMillis();
            processRunOnUiThread(16, null, null);
        }
    }

    private void createDsDisplayView(FrameLayout frameLayout) {
        if (this.isEnableViewSwitch && HmRtcGlobalConfig.rtcUseDirectSurfaceView) {
            try {
                final View surfaceViewDsRenderer = this.mSurfaceRenderer != null ? new SurfaceViewDsRenderer(frameLayout.getContext()) : new TextureViewDsRenderer(frameLayout.getContext());
                String str = TAG;
                Logging.d(str, "onCreateDsView begin");
                surfaceViewDsRenderer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.webrtc.haima.HmRtcAdapterImpl.21
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        surfaceViewDsRenderer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        int measuredWidth = surfaceViewDsRenderer.getMeasuredWidth();
                        int measuredHeight = surfaceViewDsRenderer.getMeasuredHeight();
                        int width = surfaceViewDsRenderer.getWidth();
                        int height = surfaceViewDsRenderer.getHeight();
                        Logging.d(HmRtcAdapterImpl.TAG, (surfaceViewDsRenderer instanceof SurfaceViewRenderer ? "Surface " : "Texture ") + "RenderView size: measuredWidth=" + measuredWidth + ", measuredHeight=" + measuredHeight + ", width=" + width + ", height=" + height);
                    }
                });
                surfaceViewDsRenderer.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
                frameLayout.addView(surfaceViewDsRenderer, 2);
                if (this.mSurfaceRenderer != null) {
                    this.mSurfaceDsRenderer = (SurfaceViewDsRenderer) surfaceViewDsRenderer;
                } else {
                    this.mTextureDsRenderer = (TextureViewDsRenderer) surfaceViewDsRenderer;
                }
                Logging.d(str, "onCreateDsView finish");
            } catch (Exception e10) {
                Logging.d(TAG, "createDsDisplayView failed:" + e10.toString());
                this.isEnableViewSwitch = false;
            }
        }
    }

    private PeerConnection.IceServer createIceServer(String str) {
        String str2 = TAG;
        Logging.i(str2, "Add conturnServerUrl = " + str);
        String[] strArrSplit = str.split("@");
        if (strArrSplit.length <= 1) {
            Logging.i(str2, "Fatal error, coturn server url is error: " + str);
            return null;
        }
        String[] strArrSplit2 = strArrSplit[1].trim().split(":");
        if (strArrSplit2.length > 1) {
            return new PeerConnection.IceServer(strArrSplit[0], strArrSplit2[0], strArrSplit2[1]);
        }
        Logging.i(str2, "Fatal error, coturn server auth is error: " + str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createPeerConnectionInternal(List<PeerConnection.IceServer> list) {
        VideoCapturer videoCapturerCreateVideoCapturer;
        try {
            if (this.peerConnectionClient.peerconnectionCreated()) {
                Logging.e(TAG, "peercontion has created.");
                return;
            }
            if (this.peerConnectionParameters.videoCallEnabled && HmRtcGlobalConfig.rtc_upload_video_on) {
                Logging.d(TAG, "Call createVideoCapturer() in onConnectedToRoom.");
                videoCapturerCreateVideoCapturer = HmCameraManager.getInstance().createVideoCapturer();
            } else {
                videoCapturerCreateVideoCapturer = null;
            }
            String str = "";
            if (list != null) {
                Iterator<PeerConnection.IceServer> it2 = list.iterator();
                while (it2.hasNext()) {
                    str = str + it2.next().toString() + "\n";
                }
            }
            Logging.d(TAG, "PeerConnection will apply iceServers: " + str);
            if (list == null) {
                if (HmRtcGlobalConfig.rtc_upload_video_on) {
                    this.peerConnectionClient.createPeerConnection(HmCameraManager.getInstance().getLocalProxyVideoSink(), this.remoteSinks, videoCapturerCreateVideoCapturer, new ArrayList());
                    return;
                } else {
                    this.peerConnectionClient.createPeerConnection(this.remoteSinks, new ArrayList());
                    return;
                }
            }
            if (HmRtcGlobalConfig.rtc_upload_video_on) {
                this.peerConnectionClient.createPeerConnection(HmCameraManager.getInstance().getLocalProxyVideoSink(), this.remoteSinks, videoCapturerCreateVideoCapturer, list);
            } else {
                this.peerConnectionClient.createPeerConnection(this.remoteSinks, list);
            }
            if (HmRtcGlobalConfig.rtcEnableShareStreaming) {
                ShareStreamingManager.getInstance().start();
            }
        } catch (Exception e10) {
            throwExceptionMsg("onConnectedToRoomInternal-->" + ExceptionUtils.toString(e10));
        }
    }

    private long getLong(String str, long j10) {
        if (str == null) {
            return j10;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j10;
        }
    }

    private long getStreamerStatLong(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            long j10 = Long.parseLong(str);
            if (j10 == 0) {
                return -1L;
            }
            return j10;
        } catch (Exception unused) {
            return -1L;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private void initHmAdapterHandler() {
        if (this.mMainHandler != null) {
            Logging.e(TAG, "Did u forget call disconnect?");
            this.mMainHandler.getLooper().quit();
            this.mMainHandler = null;
        }
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mMainHandler = new Handler(handlerThread.getLooper());
        this.sMainHandler = new Handler(Looper.getMainLooper()) { // from class: org.webrtc.haima.HmRtcAdapterImpl.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                    int i10 = message.what;
                    if (i10 != 0) {
                        boolean z10 = true;
                        if (i10 == 1) {
                            String strValueOf = String.valueOf(message.obj);
                            if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                HmRtcAdapterImpl.this.mStreamerCallback.onConnectFailed(strValueOf);
                            } else {
                                HmRtcAdapterImpl.this.reportError(strValueOf);
                            }
                        } else if (i10 == 3) {
                            try {
                                SessionDescription sessionDescription = (SessionDescription) message.obj;
                                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                    HmRtcAdapterImpl.this.mStreamerCallback.onSignalReceiveMessage(sessionDescription.type.canonicalForm(), sessionDescription.description);
                                }
                            } catch (Exception e10) {
                                HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteDescription-->" + ExceptionUtils.toString(e10));
                            }
                        } else if (i10 == 4) {
                            try {
                                IceCandidate iceCandidate = (IceCandidate) message.obj;
                                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                    HmRtcAdapterImpl.this.mStreamerCallback.onSignalReceiveMessage(iceCandidate.sdp, "");
                                }
                            } catch (Exception e11) {
                                HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteIceCandidate-->" + ExceptionUtils.toString(e11));
                            }
                        } else if (i10 == 30) {
                            String strValueOf2 = String.valueOf(message.obj);
                            if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                HmRtcAdapterImpl.this.mStreamerCallback.onSignalV2Status(strValueOf2);
                            }
                        } else if (i10 != 31) {
                            if (i10 != 40) {
                                switch (i10) {
                                    case 6:
                                        String strValueOf3 = String.valueOf(message.obj);
                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                            HmRtcAdapterImpl.this.mStreamerCallback.onConnectFailed(strValueOf3);
                                        }
                                        break;
                                    case 7:
                                        String strValueOf4 = String.valueOf(message.obj);
                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                            HmRtcAdapterImpl.this.mStreamerCallback.onSignalStatus(strValueOf4);
                                        }
                                        break;
                                    case 8:
                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                            HmRtcAdapterImpl.this.mStreamerCallback.onSignalConnected();
                                        }
                                        break;
                                    case 9:
                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                            Bundle data = message.getData();
                                            HmRtcAdapterImpl.this.mStreamerCallback.onSignalSendMessage(data.getString("to"), data.getString("type"), (JSONObject) message.obj);
                                        }
                                        break;
                                    case 10:
                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null && TextUtils.isEmpty(HmRtcAdapterImpl.this.mGSUrl)) {
                                            HmRtcAdapterImpl.this.mStreamerCallback.onCreateAnswer();
                                        }
                                        break;
                                    default:
                                        String string = null;
                                        switch (i10) {
                                            case 14:
                                                try {
                                                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                        HmRtcAdapterImpl.this.mStreamerCallback.onConnected();
                                                    }
                                                } catch (Exception e12) {
                                                    HmRtcAdapterImpl.this.throwExceptionMsg("onConnected-->" + ExceptionUtils.toString(e12));
                                                    return;
                                                }
                                                break;
                                            case 15:
                                                try {
                                                    Logging.i(HmRtcAdapterImpl.TAG, "P2P disconnected");
                                                    String strValueOf5 = String.valueOf(message.obj);
                                                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                        if (PeerConnectionClient.PEER_CONNECTION_FAILED.equalsIgnoreCase(strValueOf5)) {
                                                            return;
                                                        } else {
                                                            HmRtcAdapterImpl.this.mStreamerCallback.onDisconnect("onLostAllConnection");
                                                        }
                                                    }
                                                } catch (Exception e13) {
                                                    HmRtcAdapterImpl.this.throwExceptionMsg("onDisconnected-->" + ExceptionUtils.toString(e13));
                                                    return;
                                                }
                                                break;
                                            case 16:
                                                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                    HmRtcAdapterImpl.this.mStreamerCallback.onFrameResolution(HmRtcAdapterImpl.this.mFrameWidth, HmRtcAdapterImpl.this.mFrameHeigh);
                                                }
                                                break;
                                            case 17:
                                                Bundle data2 = message.getData();
                                                if (data2 != null) {
                                                    z10 = data2.getBoolean("report_only", true);
                                                    string = data2.getString("throw_exception_msg");
                                                }
                                                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                    HmRtcAdapterImpl.this.mStreamerCallback.onCatchExceptionMsg(string, z10);
                                                }
                                                break;
                                            case 18:
                                                Bundle data3 = message.getData();
                                                if (data3 != null) {
                                                    String string2 = data3.getString("codec_name");
                                                    short s10 = data3.getShort("fps");
                                                    short s11 = data3.getShort("width");
                                                    short s12 = data3.getShort("height");
                                                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                        HmRtcAdapterImpl.this.mStreamerCallback.onRemoteVideoEncodeAdaptation(string2, s10, s11, s12);
                                                    }
                                                }
                                                break;
                                            case 19:
                                                HmRtcAdapterImpl.this.switchDisplayView();
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 50:
                                                        String strValueOf6 = String.valueOf(message.obj);
                                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                            Logging.i(HmRtcAdapterImpl.TAG, "call mStreamerCallback.onAccProxyConnectStateChange code:" + strValueOf6);
                                                            HmRtcAdapterImpl.this.mStreamerCallback.onAccProxyConnectStateChange(Integer.valueOf(strValueOf6).intValue());
                                                        }
                                                        break;
                                                    case 51:
                                                        Bundle data4 = message.getData();
                                                        if (data4 != null) {
                                                            String string3 = data4.getString("code");
                                                            String string4 = data4.getString(bm.T);
                                                            if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                                Logging.i(HmRtcAdapterImpl.TAG, "call mStreamerCallback.onSwitchConnectionCallback code:" + string3 + " network_type:" + string4);
                                                                HmRtcAdapterImpl.this.mStreamerCallback.onSwitchConnectionCallback(Integer.valueOf(string3).intValue(), Integer.valueOf(string4).intValue());
                                                            }
                                                        }
                                                        break;
                                                    case 52:
                                                    case 53:
                                                        String strValueOf7 = String.valueOf(message.obj);
                                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                            HmStreamerCallback.MsgPayload msgPayload = new HmStreamerCallback.MsgPayload();
                                                            msgPayload.bytes = strValueOf7.getBytes();
                                                            msgPayload.reserve = null;
                                                            if (message.what != 52) {
                                                                HmRtcAdapterImpl.this.mStreamerCallback.onCommonMessage(HmStreamerCallback.MsgId.kStreamerBwe, 0L, msgPayload);
                                                            } else {
                                                                HmRtcAdapterImpl.this.mStreamerCallback.onCommonMessage(HmStreamerCallback.MsgId.kVideoFrameDelayFromCapToDec, 0L, msgPayload);
                                                            }
                                                        }
                                                        break;
                                                    case 54:
                                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                            HmRtcAdapterImpl.this.mStreamerCallback.onX86InputOpen();
                                                        }
                                                        break;
                                                    case 55:
                                                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                            HmRtcAdapterImpl.this.mStreamerCallback.onX86InputClose();
                                                        }
                                                        break;
                                                    case 56:
                                                        Bundle data5 = message.getData();
                                                        if (data5 != null) {
                                                            String string5 = data5.getString("payload");
                                                            String string6 = data5.getString("recvTime");
                                                            if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                                                Logging.i(HmRtcAdapterImpl.TAG, "call mStreamerCallback.onX86InputPong payload:" + string5 + " recvTime:" + string6);
                                                                try {
                                                                    HmRtcAdapterImpl.this.mStreamerCallback.onX86InputPong(string5, Long.valueOf(string6).longValue());
                                                                } catch (Exception e14) {
                                                                    Logging.w(HmRtcAdapterImpl.TAG, "call mStreamerCallback.onX86InputPong error:" + e14.toString());
                                                                }
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                            } else {
                                try {
                                    Logging.i(HmRtcAdapterImpl.TAG, "P2P switch to rtmp");
                                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                        HmRtcAdapterImpl.this.mStreamerCallback.onSwitchToRtmpStreaming();
                                    }
                                } catch (Exception e15) {
                                    HmRtcAdapterImpl.this.throwExceptionMsg("onSwitchToRtmpStreaming-->" + ExceptionUtils.toString(e15));
                                }
                            }
                        } else if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                            HmRtcAdapterImpl.this.mStreamerCallback.onSignalV2Connected();
                        }
                    } else {
                        String strValueOf8 = String.valueOf(message.obj);
                        if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                            HmRtcAdapterImpl.this.mStreamerCallback.onRtcError(strValueOf8);
                        }
                    }
                }
            }
        };
    }

    private VideoSink initRender(EglBase eglBase) {
        if (this.mSurfaceDsRenderer != null) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "DS render view type is SurfaceView,layout is:" + this.mSurfaceDsRenderer.getRenderLayout() + ",imageRotationDegree:" + this.imageRotationDegree);
            this.mSurfaceDsRenderer.init(this.renderEventCallback);
            this.mSurfaceDsRenderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
            Logging.d(TAG, "initRender: thread = " + Thread.currentThread() + " ,mSurfaceDsRenderer = " + this.mSurfaceDsRenderer);
        }
        if (this.mSurfaceRenderer != null) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "render view type is SurfaceView,layout is:" + this.mSurfaceRenderer.getRenderLayout() + ",imageRotationDegree:" + this.imageRotationDegree);
            if (this.mSurfaceDsRenderer == null) {
                this.mSurfaceRenderer.setUseDirectSurface(HmRtcGlobalConfig.rtcUseDirectSurfaceView);
            }
            this.mSurfaceRenderer.setErrorCallback(this.eglRendererErrorCallback);
            this.mSurfaceRenderer.init(eglBase.getEglBaseContext(), this.renderEventCallback);
            this.mSurfaceRenderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
            Logging.d(TAG, "initRender: thread = " + Thread.currentThread() + " ,mSurfaceRenderer = " + this.mSurfaceRenderer);
            return this.mSurfaceRenderer;
        }
        if (this.mTextureDsRenderer != null) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "DS render view type is TextureView,layout is:" + this.mTextureDsRenderer.getRenderLayout() + ",imageRotationDegree:" + this.imageRotationDegree);
            this.mTextureDsRenderer.init(this.renderEventCallback);
            this.mTextureDsRenderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
            Logging.d(TAG, "initRender: thread = " + Thread.currentThread() + " ,mTextureDsRenderer = " + this.mTextureDsRenderer);
        }
        if (this.mTextureRenderer == null) {
            Logging.d(TAG, "initRender: thread = " + Thread.currentThread() + " ,return null");
            return null;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RENDER_VIEW_TYPE, "render view type is TextureView,layout is:" + this.mTextureRenderer.getRenderLayout() + ",imageRotationDegree:" + this.imageRotationDegree);
        if (this.mTextureDsRenderer == null) {
            this.mTextureRenderer.setUseDirectSurface(HmRtcGlobalConfig.rtcUseDirectSurfaceView);
        }
        this.mTextureRenderer.setErrorCallback(this.eglRendererErrorCallback);
        this.mTextureRenderer.init(eglBase.getEglBaseContext(), this.renderEventCallback);
        this.mTextureRenderer.setScalingType(RendererCommon.ScalingType.SCALE_ASPECT_FILL);
        Logging.d(TAG, "initRender: thread = " + Thread.currentThread() + " ,mTextureRenderer = " + this.mTextureRenderer);
        return this.mTextureRenderer;
    }

    private void initRenderInstance(VideoSink videoSink) {
        if (videoSink instanceof SurfaceViewRenderer) {
            this.mSurfaceRenderer = (SurfaceViewRenderer) videoSink;
        } else if (videoSink instanceof TextureViewRenderer) {
            this.mTextureRenderer = (TextureViewRenderer) videoSink;
        }
    }

    private void internalThrowExceptionMsg(String str, boolean z10) {
        if (!TextUtils.isEmpty(str)) {
            RtcCountlyUtil.recordErrorEvent(str);
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when throwExceptionMsg.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("report_only", z10);
        bundle.putString("throw_exception_msg", str);
        processRunOnUiThread(17, null, bundle);
    }

    public static boolean isCountlyEventRecorderCallbackSet() {
        return sgCountlyEventRecorderCallback != null;
    }

    private boolean isPossibleLeaveHttpSignal(String str, String str2, String str3) {
        return (str2 != null && str2.length() > 0) && ((str != null && str.length() > 0) || (str3 != null && str3.length() > 0));
    }

    public static void nativeCallbackDirectly(String str, String str2) {
        try {
            synchronized (mInstanceLock) {
                Handler handler = mInstance.mMainHandler;
                if (handler == null) {
                    Logging.e(TAG, "Adapter was not init or disconnected.");
                } else {
                    handler.post(new HmCallbackRunnable(str, str2));
                }
            }
        } catch (Exception e10) {
            Logging.w(TAG, "nativeCallbackDirectly Exception:" + e10.toString());
        }
    }

    private void overrideConfiguration() {
        if (!HmRtcGlobalConfig.rtcUseDirectSurfaceView) {
            Logging.d(TAG, "overrideConfiguration: rtcUseDirectSurfaceView forcedly value change from false to true.");
            HmRtcGlobalConfig.rtcUseDirectSurfaceView = true;
        }
        SurfaceViewRenderer surfaceViewRenderer = this.mSurfaceRenderer;
        if (surfaceViewRenderer != null) {
            surfaceViewRenderer.setUseTextureCloningFlag(false);
            Logging.d(TAG, "overrideConfiguration: TextureCloningFlag of mSurfaceRenderer is set to false.");
        }
        TextureViewRenderer textureViewRenderer = this.mTextureRenderer;
        if (textureViewRenderer != null) {
            textureViewRenderer.setUseTextureCloningFlag(false);
            Logging.d(TAG, "overrideConfiguration: TextureCloningFlag of mTextureRenderer is set to false.");
        }
        HmCameraSettings hmCameraSettings = HmCameraManager.getInstance().getHmCameraSettings();
        int width = hmCameraSettings.getWidth();
        int height = hmCameraSettings.getHeight();
        int frameRate = hmCameraSettings.getFrameRate();
        int minBitrate = HmCameraManager.getInstance().getMinBitrate();
        int maxBitrate = HmCameraManager.getInstance().getMaxBitrate();
        int iMin = Math.min(width, 640);
        int iMin2 = Math.min(height, VideoHeightForLowPerformanceDevice);
        int iMin3 = Math.min(frameRate, 30);
        float f10 = ((iMin * iMin2) * iMin3) / ((width * height) * frameRate);
        int iMax = Math.max((int) (minBitrate * f10), 5);
        int iMax2 = Math.max((int) (maxBitrate * f10), 5);
        Logging.d(TAG, "overrideConfiguration: VideoCapture&Encode " + width + "x" + height + ", " + frameRate + "fps, [" + minBitrate + "kbps, " + maxBitrate + "kbps]  -> " + iMin + "x" + iMin2 + ", " + iMin3 + "fps, [" + iMax + "kbps, " + iMax2 + "kbps] ");
        setCameraMinBitrate(iMax);
        setCameraMaxBitrate(iMax2);
        setCameraCaptureFormat(new HmCameraSettings(iMin, iMin2, iMin3));
    }

    private void parseRTCStatsReport(RTCStatsReport rTCStatsReport) {
        for (RTCStats rTCStats : rTCStatsReport.getStatsMap().values()) {
            if ("candidate-pair".equals(rTCStats.getType())) {
                Map<String, Object> members = rTCStats.getMembers();
                if (members.containsKey("best_connection") && Boolean.parseBoolean(members.get("best_connection").toString())) {
                    if (members.containsKey("currentRoundTripTime")) {
                        try {
                            this.mFrameDelayInfo.setCurrentRoundTripTime((long) (Double.parseDouble(members.get("currentRoundTripTime").toString()) * 1000.0d));
                        } catch (NumberFormatException unused) {
                        }
                    }
                    if (members.containsKey("bytesReceived")) {
                        this.mFrameDelayInfo.updateTotalBitrate(members, 1);
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:228:0x052c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0177  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void parseStateIntoDelayInfo(StatsReport[] statsReportArr) {
        int i10;
        byte b10;
        int i11;
        long hmConstSmoothFps;
        if (statsReportArr != null && this.currentConnectStatus.booleanValue()) {
            int length = statsReportArr.length;
            for (int i12 = 0; i12 < length; i12 = i10 + 1) {
                StatsReport statsReport = statsReportArr[i12];
                if ("googCandidatePair".equals(statsReport.type)) {
                    String str = null;
                    String str2 = null;
                    i10 = i12;
                    long j10 = 0;
                    boolean z10 = false;
                    long j11 = 0;
                    for (StatsReport.Value value : statsReport.values) {
                        String str3 = value.name;
                        str3.hashCode();
                        switch (str3) {
                            case "googActiveConnection":
                                z10 = Boolean.parseBoolean(value.value);
                                break;
                            case "currentRoundTripTime":
                                j10 = (long) (Float.parseFloat(value.value) * 1000.0f);
                                if (this.isReceivedStreamerAvDelayInfo) {
                                    try {
                                        this.mFrameDelayInfo.setNetJitterDelay(adjustNetJitterDelayInfo((int) Math.abs(j10 - this.lastRtt)));
                                    } catch (Exception e10) {
                                        Logging.w(TAG, "setNetJitterDelay Exception:" + e10.toString());
                                    }
                                    break;
                                }
                                this.lastRtt = j10;
                                break;
                            case "bytesReceived":
                                j11 = Long.parseLong(value.value);
                                break;
                            case "localCandidateId":
                                str = value.value;
                                break;
                            case "remoteCandidateId":
                                str2 = value.value;
                                break;
                        }
                    }
                    if (z10) {
                        if (j10 > 0) {
                            this.mFrameDelayInfo.setCurrentRoundTripTime(j10);
                        }
                        this.mFrameDelayInfo.updateTotalBitrate(j11, str, str2, 1);
                    }
                } else {
                    i10 = i12;
                }
                if ("VideoBwe".equals(statsReport.type)) {
                    for (StatsReport.Value value2 : statsReport.values) {
                        String str4 = value2.name;
                        str4.hashCode();
                        if (str4.equals("haimaSysCpu")) {
                            try {
                                this.mFrameDelayInfo.setSystemCpu(Integer.parseInt(value2.value));
                            } catch (Exception e11) {
                                Logging.w(TAG, "haimaSysCpu Exception:" + e11.toString());
                            }
                        } else if (str4.equals("haimaCpu")) {
                            try {
                                this.mFrameDelayInfo.setHaimaCpu(Integer.parseInt(value2.value));
                            } catch (Exception e12) {
                                Logging.w(TAG, "setHaimaCpu Exception:" + e12.toString());
                            }
                        }
                    }
                }
                if (RtspHeaders.Values.SSRC.equals(statsReport.type)) {
                    if ("audio".equals(statsReport.values[2].value)) {
                        for (StatsReport.Value value3 : statsReport.values) {
                            String str5 = value3.name;
                            str5.hashCode();
                            switch (str5) {
                                case "googDeltaJitterReceived":
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googDeltaJitterReceived:" + value3.value);
                                    }
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        try {
                                            this.weaklyNetworkReport.setDeltaJitter(Integer.parseInt(value3.value));
                                        } catch (Exception e13) {
                                            Logging.w(TAG, "googDeltaJitterReceived Exception:" + e13.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "googAvgJitterReceived":
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googAvgJitterReceived:" + value3.value);
                                    }
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        try {
                                            this.weaklyNetworkReport.setAvgJitter(Integer.parseInt(value3.value));
                                        } catch (Exception e14) {
                                            Logging.w(TAG, "googAvgJitterReceived Exception:" + e14.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "haimaAudioDecodeDelay":
                                    if (!this.isReceivedStreamerAvDelayInfo) {
                                        break;
                                    } else {
                                        try {
                                            this.mFrameDelayInfo.setAudioDecodeDelay(adjustAvDelayInfo("audio decode delay", Integer.parseInt(value3.value), HmRtcGlobalConfig.hmRtcAvDelaySdk.mAudioDecodeParameters));
                                        } catch (Exception e15) {
                                            Logging.w(TAG, "haimaAudioDecodeDelay Exception:" + e15.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "googMaxJitterReceived":
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googMaxJitterReceived:" + value3.value);
                                    }
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        try {
                                            this.weaklyNetworkReport.setMaxJitter(Integer.parseInt(value3.value));
                                        } catch (Exception e16) {
                                            Logging.w(TAG, "googMaxJitterReceived Exception:" + e16.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "googMedianJitterReceived":
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googMedianJitterReceived:" + value3.value);
                                    }
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        try {
                                            this.weaklyNetworkReport.setMedianJitter(Integer.parseInt(value3.value));
                                        } catch (Exception e17) {
                                            Logging.w(TAG, "googMedianJitterReceived Exception:" + e17.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "audioOutputLevel":
                                    this.mFrameDelayInfo.setAudioLevel(Integer.parseInt(value3.value));
                                    break;
                                case "packetsReceived":
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        long j12 = Integer.parseInt(value3.value);
                                        this.weaklyNetworkReport.setReceivingAudioPackets(j12);
                                        WeaklyNetworkReport weaklyNetworkReport = this.weaklyNetworkReport;
                                        weaklyNetworkReport.setReceivingAudioPacketsRate(j12 - weaklyNetworkReport.getLastReceivingAudioPackets());
                                        break;
                                    }
                                    break;
                                case "bytesReceived":
                                    long j13 = Long.parseLong(value3.value);
                                    this.mFrameDelayInfo.setBytesAudioReceived(j13);
                                    this.mFrameDelayInfo.setBitrateAudio((j13 - this.mFrameDelayInfo.getLastAudioBytesReceived()) / 1);
                                    break;
                                case "haimaAudioRenderDelay":
                                    if (!this.isReceivedStreamerAvDelayInfo) {
                                        break;
                                    } else {
                                        try {
                                            this.mFrameDelayInfo.setAudioRenderDelay(adjustAvDelayInfo("audio render delay", Integer.parseInt(value3.value), HmRtcGlobalConfig.hmRtcAvDelaySdk.mAudioPlayParameters));
                                        } catch (Exception e18) {
                                            Logging.w(TAG, "haimaAudioRenderDelay Exception:" + e18.toString());
                                        }
                                        break;
                                    }
                                    break;
                                case "googJitterReceived":
                                    if (!HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        break;
                                    } else {
                                        Logging.d(TAG, "googJitterReceived:" + value3.value);
                                        break;
                                    }
                                    break;
                                case "googMinJitterReceived":
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googMinJitterReceived:" + value3.value);
                                    }
                                    if (this.weaklyNetworkReport == null) {
                                        break;
                                    } else {
                                        try {
                                            this.weaklyNetworkReport.setMinJitter(Integer.parseInt(value3.value));
                                        } catch (Exception e19) {
                                            Logging.w(TAG, "googMinJitterReceived Exception:" + e19.toString());
                                        }
                                        break;
                                    }
                                    break;
                            }
                        }
                    }
                    if ("video".equals(statsReport.values[3].value)) {
                        if (this.mSurfaceDsRenderer == null || this.viewSwitchHappened) {
                            SurfaceViewRenderer surfaceViewRenderer = this.mSurfaceRenderer;
                            if (surfaceViewRenderer != null) {
                                this.mFrameDelayInfo.setFrameRateEglRender(surfaceViewRenderer.getEglRenderFps());
                                if (this.isReceivedStreamerAvDelayInfo) {
                                    this.mFrameDelayInfo.setVideoRenderDelay(adjustAvDelayInfo("video render delay", (int) this.mSurfaceRenderer.getRenderDelayMs(), HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoPlayParameters));
                                }
                            }
                        } else {
                            this.mFrameDelayInfo.setFrameRateEglRender(0);
                            if (this.isReceivedStreamerAvDelayInfo) {
                                this.mFrameDelayInfo.setVideoRenderDelay(adjustAvDelayInfo("video render delay", (int) this.mSurfaceDsRenderer.getRenderDelayMs(), HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoPlayParameters));
                            }
                        }
                        if (this.mTextureDsRenderer == null || this.viewSwitchHappened) {
                            TextureViewRenderer textureViewRenderer = this.mTextureRenderer;
                            if (textureViewRenderer != null) {
                                this.mFrameDelayInfo.setFrameRateEglRender(textureViewRenderer.getEglRenderFps());
                                if (this.isReceivedStreamerAvDelayInfo) {
                                    this.mFrameDelayInfo.setVideoRenderDelay(adjustAvDelayInfo("video render delay", (int) this.mTextureRenderer.getRenderDelayMs(), HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoPlayParameters));
                                }
                            }
                        } else {
                            this.mFrameDelayInfo.setFrameRateEglRender(0);
                            if (this.isReceivedStreamerAvDelayInfo) {
                                this.mFrameDelayInfo.setVideoRenderDelay(adjustAvDelayInfo("video render delay", (int) this.mTextureDsRenderer.getRenderDelayMs(), HmRtcGlobalConfig.hmRtcAvDelaySdk.mVideoPlayParameters));
                            }
                        }
                        StatsReport.Value[] valueArr = statsReport.values;
                        int length2 = valueArr.length;
                        int i13 = 0;
                        while (i13 < length2) {
                            StatsReport.Value value4 = valueArr[i13];
                            String str6 = value4.name;
                            str6.hashCode();
                            switch (str6.hashCode()) {
                                case -2120619639:
                                    if (str6.equals("originHaimaFreezeDuration")) {
                                        b10 = 0;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1867273539:
                                    if (str6.equals("originHaimaDecodeVariance")) {
                                        b10 = 1;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1687631339:
                                    if (str6.equals("googFrameHeightReceived")) {
                                        b10 = 2;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1485687773:
                                    if (str6.equals("haimaFecRecovered")) {
                                        b10 = 3;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1417651724:
                                    if (str6.equals("haimaFreezeCount")) {
                                        b10 = 4;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1398917421:
                                    if (str6.equals("haimaFreezeInterVals")) {
                                        b10 = 5;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1138003522:
                                    if (str6.equals("googPlisSent")) {
                                        b10 = 6;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -1033858661:
                                    if (str6.equals("haimaRemoteToLocalClockOffset")) {
                                        b10 = 7;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -995925716:
                                    if (str6.equals("haimaJankDuration")) {
                                        b10 = 8;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -942941264:
                                    if (str6.equals("googCurrentDelayMs")) {
                                        b10 = 9;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -879994704:
                                    if (str6.equals("framesDecoded")) {
                                        b10 = 10;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -672549403:
                                    if (str6.equals("renderDroppedCount")) {
                                        b10 = 11;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -524586672:
                                    if (str6.equals("googNacksSent")) {
                                        b10 = 12;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -437026189:
                                    if (str6.equals("googContentType")) {
                                        b10 = 13;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -353458883:
                                    if (str6.equals("originHaimaJankCount")) {
                                        b10 = 14;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -330128265:
                                    if (str6.equals("haimaJankCount")) {
                                        b10 = 15;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -270228461:
                                    if (str6.equals("codecImplementationName")) {
                                        b10 = 16;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -253664602:
                                    if (str6.equals("originHaimaJankDuration")) {
                                        b10 = BinaryMemcacheOpcodes.SETQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 207096210:
                                    if (str6.equals("googRtt")) {
                                        b10 = BinaryMemcacheOpcodes.ADDQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 388941929:
                                    if (str6.equals("googFrameRateDecoded")) {
                                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 488550674:
                                    if (str6.equals("orginGoogFrameRateDecoded")) {
                                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 548868783:
                                    if (str6.equals("packetsLost")) {
                                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 678368242:
                                    if (str6.equals("googJitterBufferMs")) {
                                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 758393454:
                                    if (str6.equals("googFrameRateOutput")) {
                                        b10 = BinaryMemcacheOpcodes.QUITQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 777111256:
                                    if (str6.equals("googTargetDelayMs")) {
                                        b10 = BinaryMemcacheOpcodes.FLUSHQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 810022218:
                                    if (str6.equals("renderDroppedRate")) {
                                        b10 = BinaryMemcacheOpcodes.APPENDQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 920221676:
                                    if (str6.equals("packetsReceived")) {
                                        b10 = 26;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 941519724:
                                    if (str6.equals("bytesReceived")) {
                                        b10 = 27;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1084401515:
                                    if (str6.equals("haimaRenderVariance")) {
                                        b10 = BinaryMemcacheOpcodes.TOUCH;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1106752872:
                                    if (str6.equals("originGoogFrameRateOutput")) {
                                        b10 = BinaryMemcacheOpcodes.GAT;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1165774859:
                                    if (str6.equals("haimaFecPackets")) {
                                        b10 = BinaryMemcacheOpcodes.GATQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1432760933:
                                    if (str6.equals("originHaimaRenderVariance")) {
                                        b10 = 31;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1507883745:
                                    if (str6.equals("googCodecName")) {
                                        b10 = 32;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1625554196:
                                    if (str6.equals("googDecodeMs")) {
                                        b10 = BinaryMemcacheOpcodes.SASL_AUTH;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1736410545:
                                    if (str6.equals("googTimingFrameInfo")) {
                                        b10 = 34;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1745412666:
                                    if (str6.equals("googFrameWidthReceived")) {
                                        b10 = BinaryMemcacheOpcodes.GATK;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1825988239:
                                    if (str6.equals("haimaFreezeDuration")) {
                                        b10 = BinaryMemcacheOpcodes.GATKQ;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1853687944:
                                    if (str6.equals("originGoogFrameRateReceived")) {
                                        b10 = 37;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1877006131:
                                    if (str6.equals("googRenderDelayMs")) {
                                        b10 = 38;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 1931428154:
                                    if (str6.equals("originHaimaFreezeCount")) {
                                        b10 = 39;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 2079334339:
                                    if (str6.equals("haimaDecodeVariance")) {
                                        b10 = 40;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 2087736334:
                                    if (str6.equals("googFrameRateReceived")) {
                                        b10 = 41;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                default:
                                    b10 = -1;
                                    break;
                            }
                            switch (b10) {
                                case 0:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginFreezeDuration(Long.parseLong(value4.value));
                                    break;
                                case 1:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginDecodeVariance(Integer.parseInt(value4.value));
                                    break;
                                case 2:
                                case 35:
                                    i11 = length2;
                                    break;
                                case 3:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setFecRecovered(Integer.parseInt(value4.value));
                                    break;
                                case 4:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setFreezeCount(Integer.parseInt(value4.value));
                                    break;
                                case 5:
                                    i11 = length2;
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.e(TAG, "haimaFreezeInterVals:" + value4.value);
                                    }
                                    WeaklyNetworkReport weaklyNetworkReport2 = this.weaklyNetworkReport;
                                    if (weaklyNetworkReport2 != null) {
                                        weaklyNetworkReport2.setFreezeIntervals(value4.value);
                                    }
                                    break;
                                case 6:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setPliSent(Long.parseLong(value4.value));
                                    break;
                                case 7:
                                    i11 = length2;
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.e(TAG, "haimaRemoteToLocalClockOffset: " + Integer.parseInt(value4.value));
                                    }
                                    int i14 = Integer.parseInt(value4.value);
                                    if (i14 != Integer.MAX_VALUE) {
                                        this.mFrameDelayInfo.setRemoteToLocalClockOffset(i14);
                                        WeaklyNetworkReport weaklyNetworkReport3 = this.weaklyNetworkReport;
                                        if (weaklyNetworkReport3 != null) {
                                            weaklyNetworkReport3.setRemoteToLocalClockOffset(i14);
                                        }
                                    }
                                    break;
                                case 8:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setJankDuration(Integer.parseInt(value4.value));
                                    break;
                                case 9:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setDelayTime(Long.parseLong(value4.value));
                                    HmFrameDelayInfo hmFrameDelayInfo = this.mFrameDelayInfo;
                                    hmFrameDelayInfo.setNowDelayTime(hmFrameDelayInfo.getDelayTime());
                                    break;
                                case 10:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setReciveFrameCount(Integer.parseInt(value4.value));
                                    break;
                                case 11:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setDiscardFrameCount(value4.value.isEmpty() ? 0L : Long.parseLong(value4.value));
                                    break;
                                case 12:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setNacksSent(Long.parseLong(value4.value));
                                    break;
                                case 13:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setContentType(value4.value);
                                    break;
                                case 14:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginJankCount(Long.parseLong(value4.value));
                                    break;
                                case 15:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setJankCount(Integer.parseInt(value4.value));
                                    break;
                                case 16:
                                    i11 = length2;
                                    if (!TextUtils.isEmpty(value4.value) && !"unknow".equals(value4.value.toLowerCase())) {
                                        this.mFrameDelayInfo.setCodecImplementationName(value4.value);
                                    }
                                    break;
                                case 17:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginJankDuration(Long.parseLong(value4.value));
                                    break;
                                case 18:
                                    i11 = length2;
                                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                        Logging.d(TAG, "googRtt->" + value4.value);
                                    }
                                    if (this.weaklyNetworkReport != null) {
                                        this.weaklyNetworkReport.setReceivingRtt(Integer.parseInt(value4.value));
                                    }
                                    break;
                                case 19:
                                    i11 = length2;
                                    long j14 = Long.parseLong(value4.value);
                                    this.mFrameDelayInfo.setFrameRateDecode((HmRtcGlobalConfig.getHmConstSmoothFps() <= 0 || j14 <= ((long) HmRtcGlobalConfig.getHmConstSmoothFps())) ? j14 : HmRtcGlobalConfig.getHmConstSmoothFps());
                                    this.mFrameDelayInfo.setRealFrameRateDecode(j14);
                                    break;
                                case 20:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginFrameRateDecode(Integer.parseInt(value4.value));
                                    break;
                                case 21:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setPacketsLost(Long.parseLong(value4.value));
                                    break;
                                case 22:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setJitterBuffer(Long.parseLong(value4.value));
                                    break;
                                case 23:
                                    i11 = length2;
                                    int i15 = Integer.parseInt(value4.value);
                                    this.mFrameDelayInfo.setGameFps((HmRtcGlobalConfig.getHmConstSmoothFps() <= 0 || i15 <= HmRtcGlobalConfig.getHmConstSmoothFps()) ? i15 : HmRtcGlobalConfig.getHmConstSmoothFps());
                                    this.mFrameDelayInfo.setGameRealFps(i15);
                                    break;
                                case 24:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setTargetDelay(Long.parseLong(value4.value));
                                    break;
                                case 25:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setDiscardFrameRate(value4.value.isEmpty() ? 0 : Integer.parseInt(value4.value));
                                    break;
                                case 26:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setPacketsReceived(Long.parseLong(value4.value));
                                    break;
                                case 27:
                                    i11 = length2;
                                    long j15 = Long.parseLong(value4.value);
                                    this.mFrameDelayInfo.setVideoBytesReceived(j15);
                                    HmFrameDelayInfo hmFrameDelayInfo2 = this.mFrameDelayInfo;
                                    hmFrameDelayInfo2.setVideoBitrate((j15 - hmFrameDelayInfo2.getLastVideoBytesReceived()) / 1);
                                    break;
                                case 28:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setRenderVariance(Integer.parseInt(value4.value));
                                    break;
                                case 29:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginFrameRateRendered(Integer.parseInt(value4.value));
                                    break;
                                case 30:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setFecPackets(Integer.parseInt(value4.value));
                                    break;
                                case 31:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginRenderVariance(Integer.parseInt(value4.value));
                                    break;
                                case 32:
                                    i11 = length2;
                                    if (!TextUtils.isEmpty(value4.value) && !"unknow".equals(value4.value.toLowerCase())) {
                                        this.mFrameDelayInfo.setCodecName(value4.value);
                                    }
                                    break;
                                case 33:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setDecodeTime(Integer.parseInt(value4.value));
                                    break;
                                case 34:
                                    i11 = length2;
                                    Logging.d(TAG, "googTimingFrameInfo->" + value4.value);
                                    ParseVideoTimingFrameInfo(value4.value);
                                    break;
                                case 36:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setFreezeDuration(Integer.parseInt(value4.value));
                                    break;
                                case 37:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginFrameRateReceived(Integer.parseInt(value4.value));
                                    break;
                                case 38:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setRenderTime(Integer.parseInt(value4.value));
                                    break;
                                case 39:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setOriginFreezeCount(Long.parseLong(value4.value));
                                    break;
                                case 40:
                                    i11 = length2;
                                    this.mFrameDelayInfo.setDecodeVariance(Integer.parseInt(value4.value));
                                    break;
                                case 41:
                                    long j16 = Long.parseLong(value4.value);
                                    if (HmRtcGlobalConfig.getHmConstSmoothFps() > 0) {
                                        i11 = length2;
                                        if (j16 > HmRtcGlobalConfig.getHmConstSmoothFps()) {
                                            hmConstSmoothFps = HmRtcGlobalConfig.getHmConstSmoothFps();
                                        }
                                        this.mFrameDelayInfo.setFrameRateOutput(hmConstSmoothFps);
                                        this.mFrameDelayInfo.setRealFrameRateOutput(j16);
                                    } else {
                                        i11 = length2;
                                    }
                                    hmConstSmoothFps = j16;
                                    this.mFrameDelayInfo.setFrameRateOutput(hmConstSmoothFps);
                                    this.mFrameDelayInfo.setRealFrameRateOutput(j16);
                                    break;
                                default:
                                    this.mFrameDelayInfo.fillJankInfo(value4.name, value4.value);
                                    i11 = length2;
                                    break;
                            }
                            i13++;
                            length2 = i11;
                        }
                    }
                }
            }
        }
    }

    private void parseStreamerInfo(StatsReport.Value[][] valueArr) {
        if (valueArr == null) {
            Logging.d(TAG, "parseStreamerInfo values null");
            return;
        }
        if (this.currentConnectStatus.booleanValue()) {
            for (StatsReport.Value[] valueArr2 : valueArr) {
                if (valueArr2 == null) {
                    Logging.d(TAG, "parseStreamerInfo val null");
                } else {
                    for (StatsReport.Value value : valueArr2) {
                        try {
                            if ("available_bw_kbps".equals(value.name)) {
                                updateAvailableBandWidth(getLong(value.value, -1L));
                            } else if ("inputFps".equals(value.name)) {
                                this.mFrameDelayInfo.setStreamerInputFps(getStreamerStatLong(value.value));
                            } else if ("sendFps".equals(value.name)) {
                                this.mFrameDelayInfo.setStreamerSendFps(getStreamerStatLong(value.value));
                            } else if ("sendKbps".equals(value.name)) {
                                this.mFrameDelayInfo.setStreamerSendKbps(getStreamerStatLong(value.value));
                            } else if ("audioCaptureDelay".equals(value.name)) {
                                try {
                                    this.mFrameDelayInfo.setAudioCaptureDelay(adjustAvDelayInfo("audio capture delay", Integer.parseInt(value.value), HmRtcGlobalConfig.hmRtcAvDelaySdk.mAudioCaptureParameters));
                                } catch (Exception unused) {
                                    Logging.w(TAG, "parseStreamerInfo audioCaptureDelay value is illegal");
                                }
                                this.isReceivedStreamerAvDelayInfo = true;
                            } else if ("audioEncodeDelay".equals(value.name)) {
                                try {
                                    this.mFrameDelayInfo.setAudioEncodeDelay(adjustAvDelayInfo("audio encode delay", Integer.parseInt(value.value), HmRtcGlobalConfig.hmRtcAvDelaySdk.mAudioEncodeParameters));
                                } catch (Exception unused2) {
                                    Logging.w(TAG, "audioEncodeDelay value is illegal");
                                }
                            } else if ("streamerWeaklyNet".equals(value.name)) {
                                if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                                    Logging.d(TAG, "streamerWeaklyNet:" + value.value);
                                }
                                try {
                                    parseStreamerWeaklyInfo(value.value);
                                } catch (Exception e10) {
                                    Logging.w(TAG, "parseStreamerWeaklyInfo streamerWeaklyNet exception:" + e10.toString());
                                }
                            } else {
                                this.mFrameDelayInfo.fillJankInfo(value.name, value.value);
                            }
                        } catch (Exception unused3) {
                        }
                    }
                }
            }
        }
    }

    private void parseStreamerWeaklyInfo(String str) {
        WeaklyNetworkReport weaklyNetworkReport = this.weaklyNetworkReport;
        if (weaklyNetworkReport == null) {
            Logging.w(TAG, "parseStreamerWeaklyInfo weaklyNetworkReport null");
            return;
        }
        int remoteToLocalClockOffset = weaklyNetworkReport.getRemoteToLocalClockOffset();
        if (remoteToLocalClockOffset == Integer.MAX_VALUE) {
            Logging.w(TAG, "parseStreamerWeaklyInfo client has not remoteToLocalClockOffset");
            return;
        }
        if (str == null || str.isEmpty()) {
            Logging.w(TAG, "parseStreamerWeaklyInfo streamerWeaklyInfo null or empty");
            return;
        }
        int i10 = this.streamerWeaklyInfoCount + 1;
        this.streamerWeaklyInfoCount = i10;
        if (i10 <= WeaklyNetworkReport.START_STREAMER_WEAKLY_INFO) {
            return;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length < 5 || strArrSplit.length > 6) {
            Logging.w(TAG, "parseStreamerWeaklyInfo length is not right");
            return;
        }
        long j10 = remoteToLocalClockOffset;
        WeaklyNetworkReport.StreamerWeaklyNetInfo streamerWeaklyNetInfo = new WeaklyNetworkReport.StreamerWeaklyNetInfo(Long.parseLong(strArrSplit[0]) + j10, Long.parseLong(strArrSplit[1]), Long.parseLong(strArrSplit[2]), Long.parseLong(strArrSplit[3]), Long.parseLong(strArrSplit[4]));
        if (strArrSplit.length < 6) {
            this.weaklyNetworkReport.addStreamerWeaklyNetInfo(streamerWeaklyNetInfo);
            return;
        }
        for (String str2 : strArrSplit[5].split(";")) {
            String[] strArrSplit2 = str2.split(":");
            if (strArrSplit2.length != 2) {
                Logging.d(TAG, "parseStreamerWeaklyInfo bwe bandwidth or time error");
            } else {
                streamerWeaklyNetInfo.addBweInfo(Long.parseLong(strArrSplit2[0]) + j10, Long.parseLong(strArrSplit2[1]));
            }
        }
        this.weaklyNetworkReport.addStreamerWeaklyNetInfo(streamerWeaklyNetInfo);
        if (HmRtcGlobalConfig.rtcEnableVideoFrameElapsedTimeReport) {
            processRunOnUiThread(53, strArrSplit[5], null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean postRunnableToStatThread(Runnable runnable) {
        synchronized (this.statsHandlerLock) {
            Handler handler = this.statsThreadHandler;
            if (handler == null) {
                return false;
            }
            handler.post(runnable);
            return true;
        }
    }

    private boolean postRunnableToThread(Runnable runnable) {
        synchronized (this.mMainHandlerLock) {
            Handler handler = this.mMainHandler;
            if (handler == null) {
                return false;
            }
            handler.post(runnable);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean postRunnableToUiThread(Runnable runnable) {
        synchronized (this.mMainHandlerLock) {
            if (this.mMainHandler == null) {
                Logging.e(TAG, "Fatal error: mMainHandler is null when postRunnableToUiThread.");
                return false;
            }
            Handler handler = this.sMainHandler;
            if (handler == null) {
                return true;
            }
            handler.post(runnable);
            return true;
        }
    }

    private void processRunOnUiThread(int i10, Object obj, Bundle bundle) {
        synchronized (this.mMainHandlerLock) {
            if (this.mMainHandler == null) {
                Logging.e(TAG, "Fatal error: mMainHandler is null when processRunOnUiThread.");
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when processRunOnUiThread");
            } else {
                Message messageObtainMessage = this.sMainHandler.obtainMessage(i10);
                messageObtainMessage.obj = obj;
                messageObtainMessage.setData(bundle);
                this.sMainHandler.sendMessage(messageObtainMessage);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void receiveFrameResolution(long j10, long j11) {
        if (this.mFrameWidth != j10 || this.mFrameHeigh != j11) {
            this.isCalled = false;
        }
        this.mFrameWidth = j10;
        this.mFrameHeigh = j11;
        callbackFrameResolution();
    }

    public static void recordCountlyEvent(int i10, String str) {
        try {
            HmCountlyEventRecorderCallback hmCountlyEventRecorderCallback = sgCountlyEventRecorderCallback;
            if (hmCountlyEventRecorderCallback != null) {
                String str2 = "" + i10;
                if (str == null) {
                    str = "";
                }
                hmCountlyEventRecorderCallback.recordCountlyEvent(str2, str, System.currentTimeMillis());
            } else {
                Logging.e(TAG, "recordCountlyEvent error  callback is empty ");
            }
        } catch (Exception e10) {
            Logging.e(TAG, "recordCountlyEvent got Exception: " + e10.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remoteSdpOperate(SessionDescription sessionDescription, boolean z10) {
        HmGSCallback hmGSCallback = this.gsCallback;
        if (hmGSCallback == null) {
            Logging.e(TAG, "gsCallback is null");
        } else {
            hmGSCallback.callBackToSaasSdk(sessionDescription, z10);
        }
    }

    private void renderRelease() {
        if (this.mSurfaceDsRenderer != null) {
            Logging.d(TAG, "renderRelease: thread = " + Thread.currentThread() + " ,mSurfaceDsRenderer = " + this.mSurfaceDsRenderer);
            this.mSurfaceDsRenderer.setVisibility(8);
            this.mSurfaceDsRenderer.release();
            this.mSurfaceDsRenderer = null;
        }
        if (this.mSurfaceRenderer != null) {
            Logging.d(TAG, "renderRelease: thread = " + Thread.currentThread() + " ,mSurfaceRenderer = " + this.mSurfaceRenderer);
            this.mSurfaceRenderer.release();
            this.mSurfaceRenderer = null;
        }
        if (this.mTextureDsRenderer != null) {
            Logging.d(TAG, "renderRelease: thread = " + Thread.currentThread() + " ,mTextureDsRenderer = " + this.mTextureDsRenderer);
            this.mTextureDsRenderer.setVisibility(8);
            this.mTextureDsRenderer.release();
            this.mTextureDsRenderer = null;
        }
        if (this.mTextureRenderer != null) {
            Logging.d(TAG, "renderRelease: thread = " + Thread.currentThread() + " ,mTextureRenderer = " + this.mTextureRenderer);
            this.mTextureRenderer.release();
            this.mTextureRenderer = null;
        }
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            VideoSink videoSink = this.mLocalPreviewRenderer;
            if (videoSink instanceof SurfaceViewRenderer) {
                ((SurfaceViewRenderer) videoSink).release();
                this.mLocalPreviewRenderer = null;
            } else if (videoSink instanceof TextureViewRenderer) {
                ((TextureViewRenderer) videoSink).release();
                this.mLocalPreviewRenderer = null;
            }
        }
        JankStatisticsTool jankStatisticsTool = this.mJankTool;
        if (jankStatisticsTool != null) {
            jankStatisticsTool.destroy();
            this.mJankTool = null;
        }
    }

    private void reportSendMessage(String str, String str2, JSONObject jSONObject) {
        String string = "";
        if ("answer".equalsIgnoreCase(str2)) {
            if (jSONObject != null) {
                try {
                    string = jSONObject.getString("sdp");
                } catch (JSONException e10) {
                    RtcCountlyUtil.recordErrorEvent("parse answer sdp-->" + ExceptionUtils.toString(e10));
                }
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SENT_ANSWER, string);
            return;
        }
        if ("join".equalsIgnoreCase(str2)) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SENT_JOIN);
        } else if ("candidate".equalsIgnoreCase(str2)) {
            try {
                string = jSONObject.getString("candidate");
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SENT_CANDIDATE, string);
        }
    }

    public static void setCountlyEventRecorderCallback(HmCountlyEventRecorderCallback hmCountlyEventRecorderCallback) {
        sgCountlyEventRecorderCallback = hmCountlyEventRecorderCallback;
    }

    private void startCall() {
        this.callStartedTimeMs = System.currentTimeMillis();
        this.mAlreadyRecvOfferSdp = false;
        this.mAlreadyRecvRemoteCandidates.clear();
        try {
            if (this.mGamePlatformType == GamePlatformType.X86) {
                Logging.d(TAG, "creating PeerConnection by X86");
                createPeerConnectionInternal(this.iceServers);
                return;
            }
            WebSocketRTCClient webSocketRTCClient = this.mWebSocketClient;
            if (webSocketRTCClient == null) {
                SocketIORTCClient socketIORTCClient = this.appRtcClient;
                if (socketIORTCClient != null) {
                    socketIORTCClient.connectToRoom(this.roomConnectionParameters);
                    return;
                }
                return;
            }
            webSocketRTCClient.connect();
            synchronized (this.mMainHandlerLock) {
                Handler handler = this.mMainHandler;
                if (handler != null) {
                    handler.postDelayed(this.mWSClientCheckRunable, this.TIMEOUT_WEBSOCKET_CHECK);
                }
            }
        } catch (Exception e10) {
            throwExceptionMsg("connectToRoom-->" + ExceptionUtils.toString(e10));
        }
    }

    private void updateAvailableBandWidth(long j10) {
        try {
            HmBandWidthController hmBandWidthController = this.mHmBandWidthController;
            if (hmBandWidthController != null) {
                hmBandWidthController.onUpdateAvailableBandWidth(j10);
            }
        } catch (Exception unused) {
        }
    }

    public boolean ConnectAccProxy(String str, int i10, String str2, String str3) {
        if (i10 <= 0) {
            Logging.e(TAG, "ConnectAccProxy illegal port:" + i10);
            return false;
        }
        if (str == null || TextUtils.isEmpty(str)) {
            str = "127.0.0.1";
        }
        Logging.i(TAG, "ConnectAccProxy ip:" + str + " port:" + i10);
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient != null) {
            peerConnectionClient.ConnectAccProxy(str, i10, str2, str3);
            return true;
        }
        this.mCacheAccProxyIp = str;
        this.mCacheAccProxyPort = i10;
        this.mCacheAccProxyUser = str2;
        this.mCacheAccProxyPW = str3;
        return true;
    }

    public void DisconnectAccProxy() {
        Logging.i(TAG, "DisconnectAccProxy");
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient != null) {
            peerConnectionClient.DisconnectAccProxy();
        }
        this.mCacheAccProxyIp = "";
        this.mCacheAccProxyPort = 0;
        this.mCacheAccProxyUser = "";
        this.mCacheAccProxyPW = "";
    }

    public void SetOperationDelayEvent(IOperationDelayEvent iOperationDelayEvent) {
        HmOperationDelayReport hmOperationDelayReport = this.mOperationDelayReport;
        if (hmOperationDelayReport != null) {
            hmOperationDelayReport.setOperationDelayEvent(iOperationDelayEvent);
        }
    }

    public void SwitchToCellularConnection(boolean z10) {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            this.mCacheSwitchToCellularConnection = z10;
        } else {
            peerConnectionClient.SwitchToCellularConnection(z10);
        }
    }

    public void changeCameraCaptureFormat(HmCameraSettings hmCameraSettings) {
        HmCameraManager.getInstance().changeCameraCaptureFormat(hmCameraSettings);
    }

    public void connectFailedInternal(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CONNECT_FAIL, str);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when connectFailedInternal.");
        } else {
            processRunOnUiThread(1, str, null);
        }
    }

    public void createConnect(WebrtcLoggableHelp webrtcLoggableHelp) {
        int i10;
        try {
            String str = TAG;
            Logging.i(str, "create connect");
            this.isPlaying = false;
            resetStreamInfo();
            EglBase eglBaseE = org.hmwebrtc.h.e(HmRtcGlobalConfig.rtcForceEgl10);
            VideoSink videoSinkInitRender = initRender(eglBaseE);
            if (videoSinkInitRender == null) {
                throw new NullPointerException("ViewRenderer is not Null, must pass SurfaceViewRenderer or TextureViewRenderer");
            }
            ProxyVideoSink proxyVideoSink = this.remoteProxyRenderer;
            if (proxyVideoSink != null) {
                VideoSink videoSink = this.mSurfaceDsRenderer;
                if (videoSink == null) {
                    videoSink = this.mTextureDsRenderer;
                }
                proxyVideoSink.setTarget(videoSinkInitRender, videoSink, this.sMainHandler);
            }
            List<VideoSink> list = this.remoteSinks;
            if (list != null) {
                list.add(this.remoteProxyRenderer);
            }
            if (HmRtcGlobalConfig.rtc_upload_video_on) {
                HmCameraManager.getInstance().setLocalVideoSink(eglBaseE, new ProxyVideoSink());
            }
            WeakReference<Context> weakReference = this.mContextRef;
            Context context = weakReference == null ? null : weakReference.get();
            if (context == null) {
                Logging.e(str, "Context ref is null when create Connection");
            }
            PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
            if (peerConnectionClient != null) {
                peerConnectionClient.enableStatsEvents(false, 1000);
            }
            this.peerConnectionClient = new PeerConnectionClient(context.getApplicationContext(), eglBaseE, this.peerConnectionParameters, this, webrtcLoggableHelp);
            PeerConnectionFactory.Options options = new PeerConnectionFactory.Options();
            this.peerConnectionClient.setGamePlatform(this.mGamePlatformType);
            this.peerConnectionClient.setRealGamePlatform(this.mRealGamePlatformType);
            PeerConnectionClient peerConnectionClient2 = this.peerConnectionClient;
            peerConnectionClient2.mCommandListener = this.mCommandFilter;
            peerConnectionClient2.createPeerConnectionFactory(options);
            startCall();
            if (!TextUtils.isEmpty(this.mCacheAccProxyIp) && (i10 = this.mCacheAccProxyPort) != 0) {
                this.peerConnectionClient.ConnectAccProxy(this.mCacheAccProxyIp, i10, this.mCacheAccProxyUser, this.mCacheAccProxyPW);
            }
            boolean z10 = this.mCacheSwitchToCellularConnection;
            if (z10) {
                SwitchToCellularConnection(z10);
                this.mCacheSwitchToCellularConnection = false;
            }
        } catch (Exception e10) {
            throwExceptionMsg("create connect-->" + ExceptionUtils.toString(e10));
        }
    }

    @Nullable
    public HmDCDevice createHmDCDevice(String str) {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return null;
        }
        return peerConnectionClient.createHmDCDevice(str);
    }

    public void disconnect() {
        String str = TAG;
        Logging.e(str, "Call disconnect.");
        synchronized (this.statsHandlerLock) {
            Handler handler = this.statsThreadHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.4
                    @Override // java.lang.Runnable
                    public void run() {
                        HmRtcAdapterImpl.this.statsThreadHandler.getLooper().quit();
                        HmRtcAdapterImpl.this.statsThreadHandler = null;
                    }
                });
            }
        }
        synchronized (mInstanceLock) {
            HmCameraWrapper.getInstance().uninstallCamera();
            mInstance = null;
        }
        HmRtcCommandFilter hmRtcCommandFilter = this.mCommandFilter;
        if (hmRtcCommandFilter != null) {
            hmRtcCommandFilter.uninit();
        }
        synchronized (this.mMainHandlerLock) {
            Handler handler2 = this.mMainHandler;
            if (handler2 != null) {
                handler2.getLooper().quit();
                this.mMainHandler = null;
            }
        }
        SocketIORTCClient socketIORTCClient = this.appRtcClient;
        if (socketIORTCClient != null) {
            socketIORTCClient.preRelease();
        }
        WebSocketRTCClient webSocketRTCClient = this.mWebSocketClient;
        if (webSocketRTCClient != null && !this.mRtcDisconnected) {
            Logging.d(str, "Disconnect websocket client.");
            this.mWebSocketClient.disconnect();
            Logging.d(str, "Disconnect websocket client end.");
            this.mWebSocketClient = null;
        } else if (webSocketRTCClient != null) {
            Logging.d(str, "Reset websocket client.");
            this.mWebSocketClient.reset();
            Logging.d(str, "Reset websocket client end.");
        }
        this.mRtcEnv = null;
        ProxyVideoSink proxyVideoSink = this.remoteProxyRenderer;
        if (proxyVideoSink != null) {
            proxyVideoSink.setTarget(null, null, null);
        }
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            HmCameraManager.getInstance().setLocalProxyVideoSinkTarget(null);
            HmCameraManager.getInstance().release();
        }
        if (HmRtcGlobalConfig.rtcEnableShareStreaming) {
            ShareStreamingManager.getInstance().stop();
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SHARE_STREAMING_STOP);
        }
        List<VideoSink> list = this.remoteSinks;
        if (list != null) {
            list.clear();
        }
        if (this.peerConnectionClient != null) {
            Logging.i(str, "Close peer connection client.");
            this.peerConnectionClient.close();
            Logging.i(str, "Close peer connection client end.");
            this.peerConnectionClient = null;
        }
        if (this.appRtcClient != null) {
            Logging.i(str, "Disconnect signal server.");
            this.appRtcClient.disconnectFromRoom();
            Logging.i(str, "Disconnect signal server end.");
            this.appRtcClient = null;
        }
        renderRelease();
        WeakReference<Context> weakReference = this.mContextRef;
        if (weakReference != null) {
            weakReference.clear();
            this.mContextRef = null;
        }
        uninitBandWidthController();
        if (HmRtcGlobalConfig.rtc_upload_audio_on) {
            HmAudioManager.getInstance().release();
        }
        HmOperationDelayReport hmOperationDelayReport = this.mOperationDelayReport;
        if (hmOperationDelayReport != null) {
            hmOperationDelayReport.stopReport();
            this.mOperationDelayReport = null;
        }
        this.mAlreadyRecvOfferSdp = false;
        this.mAlreadyRecvRemoteCandidates.clear();
        this.mCacheAccProxyIp = "";
        this.mCacheAccProxyPort = 0;
        this.mCacheAccProxyUser = "";
        this.mCacheAccProxyPW = "";
        Logging.e(str, "Call disconnect end.");
    }

    public void enableShareStreaming(boolean z10) {
        HmRtcGlobalConfig.rtcEnableShareStreaming = z10;
        if (z10) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SHARE_STREAMING_START);
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void forceDisconnectRTC(String str) {
        onDisconnected("", this.peerConnectionClient);
    }

    @Nullable
    public HmFrameDelayInfo getFrameDelayInfo() {
        HmFrameDelayInfo hmFrameDelayInfo = this.mFrameDelayInfo;
        if (hmFrameDelayInfo == null) {
            return null;
        }
        return hmFrameDelayInfo;
    }

    public String getGSUrl() {
        return this.mGSUrl;
    }

    public int getOwner() {
        return this.owner;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x039e A[PHI: r13
      0x039e: PHI (r13v14 java.lang.Object) = (r13v12 java.lang.Object), (r13v16 java.lang.Object) binds: [B:104:0x039c, B:98:0x0392] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:108:0x03a7 A[PHI: r13
      0x03a7: PHI (r13v15 java.lang.Object) = (r13v13 java.lang.Object), (r13v17 java.lang.Object) binds: [B:107:0x03a5, B:101:0x0397] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:109:0x03ac  */
    public void initAdapter(HmRtcEnvironment hmRtcEnvironment, Context context, VideoSink videoSink, VideoSink videoSink2, String str, String str2, String str3, String str4, String str5, String str6, SocketIORTCClient.HmSocketIOOptions hmSocketIOOptions, WebSocketSignalClient.IWebSocketSignalClientCallback iWebSocketSignalClientCallback, int i10, FrameLayout frameLayout, Boolean bool) {
        String str7;
        int i11;
        Object obj;
        Object obj2;
        Object obj3;
        String str8 = str;
        if (bool != null) {
            String str9 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initAdapter set gametype:");
            sb2.append(bool.booleanValue() ? "arm" : com.join.mgps.mod.utils.d.f71904f);
            Logging.i(str9, sb2.toString());
            this.mRealGamePlatformType = bool.booleanValue() ? GamePlatformType.ARM : GamePlatformType.X86;
        } else {
            this.mRealGamePlatformType = GamePlatformType.ARM;
        }
        HmRtcCommandFilter hmRtcCommandFilter = new HmRtcCommandFilter(this.mCommnadThread, this.mCommnadCallback);
        this.mCommandFilter = hmRtcCommandFilter;
        hmRtcCommandFilter.init();
        String str10 = TAG;
        Logging.i(str10, "init Adapter with signalServer: " + str2 + " signalV2Server: " + str4 + " version: " + str5 + " roomId: " + str3 + " coturnServer: " + str8 + " instanceIP: " + str6);
        GamePlatformType gamePlatformType = this.mGamePlatformType;
        GamePlatformType gamePlatformType2 = GamePlatformType.X86;
        if (gamePlatformType == gamePlatformType2 && isPossibleLeaveHttpSignal(str2, str3, str4)) {
            synchronized (this.mSignalHttpSwitchToSignalV1V2Lock) {
                this.mGamePlatformType = GamePlatformType.ARM;
                this.mGSUrl = "";
                Logging.i(str10, "gametype is falsified to GamePlatformType.ARM for following signalv1/v2.");
            }
        }
        if (str8 == null) {
            str8 = "";
        }
        String str11 = str8;
        if (this.mGamePlatformType == gamePlatformType2) {
            CreateIceServers(str11);
        }
        this.mRtcEnv = hmRtcEnvironment;
        this.remoteSinks = new ArrayList();
        this.remoteProxyRenderer = new ProxyVideoSink();
        ContextUtils.initialize(context.getApplicationContext());
        if (context instanceof Activity) {
            HmCameraWrapper.getInstance().installCamera((Activity) context);
            HmCameraWrapper.getInstance().setCameraConfig(this.mCameraConfig);
        } else {
            Logging.e(str10, "Context isn't an Activity, we can't init camera.");
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if (weakReference != null && weakReference.get() != null) {
            Logging.e(str10, "fatal error: don't init adapter multiple times.");
            return;
        }
        this.mContextRef = new WeakReference<>(context);
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            HmCameraManager.getInstance().setContext(context);
            HmCameraManager.getInstance().setAdapter(this);
            this.mLocalPreviewRenderer = videoSink2;
            HmCameraManager.getInstance().setLocalRenderer(videoSink2);
        }
        initRenderInstance(videoSink);
        this.mFrameDelayInfo = new HmFrameDelayInfo();
        this.mNativeJankInfo = new JankStatisticsTool.NativeJankInfo();
        this.mRoomId = str3;
        this.imageRotationDegree = i10;
        String strSubstring = "";
        if (str3 == null) {
            str7 = strSubstring;
        } else {
            int iIndexOf = str3.indexOf("-");
            if (iIndexOf > 0) {
                strSubstring = str3.substring(0, iIndexOf);
                str7 = strSubstring;
            } else {
                str7 = str3;
            }
        }
        try {
            HmRtcGlobalConfig.parseHmNewRtcConfig(str7);
        } catch (Exception e10) {
            Logging.w(TAG, "parseHmNewRtcConfig Exception:" + e10.toString());
        }
        NetworkMonitorAutoDetect.getWifiSSIDSwitchOnCloudConfig = HmRtcGlobalConfig.rtcEnableGetWifiSsidDefault;
        this.isEnableViewSwitch = HmRtcGlobalConfig.rtcEnableSurfaceSwitch;
        createDsDisplayView(frameLayout);
        SurfaceViewRenderer surfaceViewRenderer = this.mSurfaceRenderer;
        if (surfaceViewRenderer != null) {
            surfaceViewRenderer.setDsSurface(this.mSurfaceDsRenderer);
        }
        TextureViewRenderer textureViewRenderer = this.mTextureRenderer;
        if (textureViewRenderer != null) {
            textureViewRenderer.setDsSurface(this.mTextureDsRenderer);
        }
        this.viewSwitchHappened = false;
        String str12 = TAG;
        Logging.d(str12, "configured openH265: " + HmRtcGlobalConfig.openH265());
        if (HmRtcGlobalConfig.openH265()) {
            MediaCodecVideoDecoderFactory.turnOnH265(true);
            HardwareVideoEncoderFactory.turnOnH265(true);
        } else {
            MediaCodecVideoDecoderFactory.turnOnH265(false);
            HardwareVideoEncoderFactory.turnOnH265(false);
        }
        PerfdogJankCounter perfdogJankCounterCreateEglRenderJankCounter = JankStatisticsTool.createEglRenderJankCounter();
        this.mJankCounter = perfdogJankCounterCreateEglRenderJankCounter;
        JankStatisticsTool jankStatisticsToolCreateJankTool = JankStatisticsTool.createJankTool(this.mSurfaceRenderer == null, perfdogJankCounterCreateEglRenderJankCounter);
        this.mJankTool = jankStatisticsToolCreateJankTool;
        if (jankStatisticsToolCreateJankTool != null) {
            jankStatisticsToolCreateJankTool.create(str7);
        }
        SurfaceViewRenderer surfaceViewRenderer2 = this.mSurfaceRenderer;
        if (surfaceViewRenderer2 != null) {
            surfaceViewRenderer2.setImageAdjustable(HmRtcGlobalConfig.rtcImageAdjustable);
            this.mSurfaceRenderer.setBrightnessRatio(HmRtcGlobalConfig.rtcBrightnessRatio);
            this.mSurfaceRenderer.setContrastRatio(HmRtcGlobalConfig.rtcContrastRatio);
            this.mSurfaceRenderer.setSaturationRatio(HmRtcGlobalConfig.rtcSaturationRatio);
            SurfaceViewRenderer surfaceViewRenderer3 = this.mSurfaceRenderer;
            JankStatisticsTool jankStatisticsTool = this.mJankTool;
            surfaceViewRenderer3.setJankMeasuringTool(jankStatisticsTool != null ? jankStatisticsTool.getRecvJankCounter() : null, this.mJankCounter);
            Logging.d(str12, "SurfaceView useTextureCloningFlag: " + HmRtcGlobalConfig.useTextureCloningFlag);
            this.mSurfaceRenderer.setUseTextureCloningFlag(HmRtcGlobalConfig.useTextureCloningFlag);
            this.mSurfaceRenderer.setFrameInterpolationParameters(HmRtcGlobalConfig.rtcEnableFrameInterpolation, HmRtcGlobalConfig.rtcFirstFrameInterpolationInterval, HmRtcGlobalConfig.rtcFollowingFrameInterpolationInterval, HmRtcGlobalConfig.rtcFrameInterpolationTopLimit);
            this.mSurfaceRenderer.setEglMonochromeOff(HmRtcGlobalConfig.rtcEglMonochromeOff);
            this.mSurfaceRenderer.setUnsharpMaskEnabled(HmRtcGlobalConfig.rtcEnableImageEnhancement);
            this.mSurfaceRenderer.setUnsharpMaskAmount(HmRtcGlobalConfig.rtcImageEnhancementStrength / 100.0f);
        }
        TextureViewRenderer textureViewRenderer2 = this.mTextureRenderer;
        if (textureViewRenderer2 != null) {
            textureViewRenderer2.setImageAdjustable(HmRtcGlobalConfig.rtcImageAdjustable);
            this.mTextureRenderer.setBrightnessRatio(HmRtcGlobalConfig.rtcBrightnessRatio);
            this.mTextureRenderer.setContrastRatio(HmRtcGlobalConfig.rtcContrastRatio);
            this.mTextureRenderer.setSaturationRatio(HmRtcGlobalConfig.rtcSaturationRatio);
            TextureViewRenderer textureViewRenderer3 = this.mTextureRenderer;
            JankStatisticsTool jankStatisticsTool2 = this.mJankTool;
            textureViewRenderer3.setJankMeasuringTool(jankStatisticsTool2 != null ? jankStatisticsTool2.getRecvJankCounter() : null, this.mJankCounter);
            Logging.d(str12, "TextureView useTextureCloningFlag: " + HmRtcGlobalConfig.useTextureCloningFlag);
            this.mTextureRenderer.setUseTextureCloningFlag(HmRtcGlobalConfig.useTextureCloningFlag);
            this.mTextureRenderer.setFrameInterpolationParameters(HmRtcGlobalConfig.rtcEnableFrameInterpolation, HmRtcGlobalConfig.rtcFirstFrameInterpolationInterval, HmRtcGlobalConfig.rtcFollowingFrameInterpolationInterval, HmRtcGlobalConfig.rtcFrameInterpolationTopLimit);
            this.mTextureRenderer.setEglMonochromeOff(HmRtcGlobalConfig.rtcEglMonochromeOff);
            this.mTextureRenderer.setUnsharpMaskEnabled(HmRtcGlobalConfig.rtcEnableImageEnhancement);
            this.mTextureRenderer.setUnsharpMaskAmount(HmRtcGlobalConfig.rtcImageEnhancementStrength / 100.0f);
        }
        if (HmRtcGlobalConfig.useSharedContext) {
            AndroidVideoDecoder.setUseSharedContextFlag(1);
        } else {
            AndroidVideoDecoder.setUseSharedContextFlag(0);
        }
        AndroidVideoDecoder.setLossFrameFlag(HmRtcGlobalConfig.rtcEnableMediaCodecOutputDropping);
        AndroidVideoDecoder.setNoOutputFramesIntervalMs(HmRtcGlobalConfig.rtcEnableNoOutputLongTimeRequestKeyFrame, HmRtcGlobalConfig.rtcNoOutputFramesIntervalMs, HmRtcGlobalConfig.rtcNumOfNotDecodedFramesThreshold);
        DirectSurfaceVideoDecoder.setLossFrameFlag(HmRtcGlobalConfig.rtcEnableMediaCodecOutputDropping);
        DirectSurfaceVideoDecoder.setEnableSurfaceSwitch(this.isEnableViewSwitch);
        DirectSurfaceVideoDecoder.setNoOutputFramesIntervalMs(HmRtcGlobalConfig.rtcEnableNoOutputLongTimeRequestKeyFrame, HmRtcGlobalConfig.rtcNoOutputFramesIntervalMs, HmRtcGlobalConfig.rtcNumOfNotDecodedFramesThreshold);
        AndroidVideoDecoder.isCloseDecoderLowLatency = HmRtcGlobalConfig.isCloseDecoderLowLatency;
        DirectSurfaceVideoDecoder.isCloseDecoderLowLatency = HmRtcGlobalConfig.isCloseDecoderLowLatency;
        AndroidVideoDecoder.useMediaCodecVideoDecoderLowLatency = HmRtcGlobalConfig.rtcEnableMediaCodecVideoDecoderLowLatency;
        DirectSurfaceVideoDecoder.useMediaCodecVideoDecoderLowLatency = HmRtcGlobalConfig.rtcEnableMediaCodecVideoDecoderLowLatency;
        AndroidVideoDecoder.isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = HmRtcGlobalConfig.isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException;
        MediaCodecVideoDecoderFactory.forceMatchVP8(HmRtcGlobalConfig.forceVP8Format);
        MediaCodecVideoDecoderFactory.forceMatchH264(HmRtcGlobalConfig.forceH264Format);
        HardwareVideoEncoderFactory.setEnableEncoder(HmRtcGlobalConfig.rtc_upload_video_on);
        AndroidVideoDecoder.rtcHwDecoderBufferMode = HmRtcGlobalConfig.rtcHwDecoderBufferMode;
        boolean z10 = !HmRtcGlobalConfig.useSoftwareDecoder;
        VideoFrame.setHaimaFrameBufferSize(HmRtcGlobalConfig.rtc_frame_buffer_size_limit);
        VideoFrame.setFrameInfoMatchByPts(HmRtcGlobalConfig.rtc_frame_info_match_by_pts);
        Logging.i(str12, "init Adapter got and set cid: " + str7 + ", use SharedContext is: " + HmRtcGlobalConfig.useSharedContext + ", force vp8 is: " + HmRtcGlobalConfig.forceVP8Format + ", force h264 is: " + HmRtcGlobalConfig.forceH264Format + ", force EGL10 is: " + HmRtcGlobalConfig.rtcForceEgl10 + ", use hardware decoder: " + z10 + ", rtc frame buffer size for render: " + HmRtcGlobalConfig.rtc_frame_buffer_size_limit + ", rtc frame info match by pts: " + HmRtcGlobalConfig.rtc_frame_info_match_by_pts);
        if (!z10) {
            Logging.i(str12, "force rtcUseDirectSurfaceView to false caused by useCodecHwAcceleration==false");
            HmRtcGlobalConfig.rtcUseDirectSurfaceView = false;
        }
        if (!HmRtcGlobalConfig.rtcUseDirectSurfaceView) {
            i11 = i10;
            obj = null;
        } else if (this.isEnableViewSwitch) {
            obj2 = this.mTextureDsRenderer;
            if (obj2 != null) {
                obj = obj2;
                i11 = 0;
            } else {
                obj3 = this.mSurfaceDsRenderer;
                if (obj3 != null) {
                    i11 = i10;
                    obj = obj3;
                } else {
                    i11 = i10;
                    obj = null;
                }
            }
        } else {
            obj2 = this.mTextureRenderer;
            if (obj2 != null) {
                obj = obj2;
                i11 = 0;
            } else {
                obj3 = this.mSurfaceRenderer;
                if (obj3 != null) {
                    i11 = i10;
                    obj = obj3;
                } else {
                    i11 = i10;
                    obj = null;
                }
            }
        }
        boolean z11 = HmRtcGlobalConfig.no_audio_processing;
        boolean z12 = HmRtcGlobalConfig.disable_builtin_aec;
        boolean z13 = HmRtcGlobalConfig.disable_builtin_agc;
        boolean z14 = HmRtcGlobalConfig.disable_builtin_ns;
        boolean z15 = HmRtcGlobalConfig.disable_webrtc_agc_and_hpf;
        String str13 = HmRtcGlobalConfig.rtcPreferVideoCodec;
        if (str13 == null) {
            str13 = "";
        }
        this.peerConnectionParameters = new PeerConnectionClient.PeerConnectionParameters(true, false, false, 0, 0, 0, 0, str13, z10, HmRtcGlobalConfig.isFlexFecOpen() && this.mGamePlatformType == GamePlatformType.ARM, 0, "opus", z11, false, false, false, z12, z13, z14, z15, false, null, str7, obj, i11, HmRtcGlobalConfig.rtcUseDirectSurfaceView);
        this.roomConnectionParameters = new AppRTCClient.RoomConnectionParameters(str2, str3, str11);
        if (TextUtils.isEmpty(this.mGSUrl)) {
            if (str4 == null || str4.isEmpty()) {
                this.appRtcClient = new SocketIORTCClient(this, hmSocketIOOptions);
                this.mWebSocketClient = null;
            } else {
                this.TIMEOUT_WEBSOCKET_CHECK = HmRtcGlobalConfig.rtc_signalv2_signalv1delaytime;
                if (this.mWebSocketClient == null) {
                    this.mWebSocketClient = new WebSocketRTCClient(context, str11, str7, str4, str5, this, iWebSocketSignalClientCallback, this.mRtcEnv);
                    Logging.i(str12, "new signalV2Server creating HmWebSocketClient");
                } else if (!TextUtils.equals(str4, this.mPrevSignalV2Url)) {
                    this.mWebSocketClient.disconnect();
                    this.mWebSocketClient = null;
                    Logging.i(str12, "changing signalV2Server recreating HmWebSocketClient");
                    this.mWebSocketClient = new WebSocketRTCClient(context, str11, str7, str4, str5, this, iWebSocketSignalClientCallback, this.mRtcEnv);
                    Logging.i(str12, "new signalV2Server creating HmWebSocketClient");
                }
                this.mIoOptions = hmSocketIOOptions;
                this.appRtcClient = null;
                this.mPrevSignalV2Url = str4;
            }
        }
        if (HmRtcGlobalConfig.rtcEnableWeaklyNetReport) {
            this.weaklyNetworkReport = new WeaklyNetworkReport();
        }
        synchronized (this.statsHandlerLock) {
            Handler handler = this.statsThreadHandler;
            if (handler != null) {
                handler.getLooper().quit();
                this.statsThreadHandler = null;
            }
            HandlerThread handlerThread = new HandlerThread("getStats thread");
            handlerThread.start();
            this.statsThreadHandler = new Handler(handlerThread.getLooper());
        }
        synchronized (this.mMainHandlerLock) {
            initHmAdapterHandler();
        }
        synchronized (mInstanceLock) {
            mInstance = this;
        }
        this.mRtcDisconnected = false;
        this.mAlreadyRecvOfferSdp = false;
        this.mAlreadyRecvRemoteCandidates.clear();
        initBandWidthController();
        MediaCodecSupportedCodecs.postReportTask();
        if (HmRtcGlobalConfig.rtcOperationDelaySdk.isEnable()) {
            HmOperationDelayReport hmOperationDelayReport = new HmOperationDelayReport();
            this.mOperationDelayReport = hmOperationDelayReport;
            hmOperationDelayReport.startReport(HmRtcGlobalConfig.rtcOperationDelaySdk.getIntervalMs(), HmRtcGlobalConfig.rtcOperationDelaySdk.isDebugLog(), HmRtcGlobalConfig.rtcOperationDelaySdk.getMaxDelayMs(), HmRtcGlobalConfig.rtcOperationDelaySdk.getSaltMs(), this);
            this.remoteProxyRenderer.setOperationDelayReport(this.mOperationDelayReport);
        }
    }

    void initBandWidthController() {
        Logging.d("bw", "initBandWidthController");
        HmBandWidthController hmBandWidthController = this.mHmBandWidthController;
        if (hmBandWidthController != null) {
            hmBandWidthController.stop();
        }
        this.mHmBandWidthController = new HmBandWidthController(this.sMainHandler, new HmBandWidthController.Observer() { // from class: org.webrtc.haima.HmRtcAdapterImpl.22
            @Override // org.webrtc.haima.HmBandWidthController.Observer
            public void onAvailableBandWidth(long j10) {
                synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                        HmRtcAdapterImpl.this.mStreamerCallback.onCommonMessage(HmStreamerCallback.MsgId.AvailableBandWidth, j10, null);
                    }
                    String str = HmBandWidthController.kModuleName;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("AvailableBandWidthKbps:");
                    sb2.append(j10);
                    sb2.append(",");
                    sb2.append(HmRtcAdapterImpl.this.mStreamerCallback != null ? "have " : "no ");
                    sb2.append("mStreamerCallback.");
                    Logging.d(str, sb2.toString());
                }
            }
        });
    }

    public boolean isConnected() {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return false;
        }
        return peerConnectionClient.isICEConnected();
    }

    public boolean isInputChannelEnabled() {
        if (this.mRealGamePlatformType == GamePlatformType.X86) {
            return true;
        }
        return HmDataChannelDeviceSwitch.getInstance().isDataChannelEnable();
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public boolean isRotationSupported() {
        return !HmRtcGlobalConfig.rtcUseDirectSurfaceView || this.mSurfaceRenderer == null;
    }

    public boolean isRtcUploadAudioChannelAvailable() {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return false;
        }
        return peerConnectionClient.isRtcUploadAudioChannelAvailable();
    }

    protected boolean isRtcUploadVideoChannelAvailable() {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return false;
        }
        return peerConnectionClient.isRtcUploadVideoChannelAvailable();
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onAccProxyConnectStateChange(int i10, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onAccProxyConnectStateChange,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        Logging.i(TAG, "onAccProxyConnectStateChange code:" + i10);
        processRunOnUiThread(50, "" + i10, null);
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onChannelClose() {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNAL_DISCONNECTED);
        postRunnableToUiThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.10
            @Override // java.lang.Runnable
            public void run() {
                synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                        HmRtcAdapterImpl.this.mStreamerCallback.onSignalDisconnected();
                    }
                }
            }
        });
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onChannelConnectStatus(String str) {
        if (!TextUtils.isEmpty(str)) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNAL_STATUS, str);
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelConnectStatus.");
        } else {
            processRunOnUiThread(7, str, null);
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onChannelConnected() {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNAL_CONNECT_SUCCESS);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelConnected.");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.peerConnectionClient == null) {
                        HmRtcAdapterImpl hmRtcAdapterImpl = HmRtcAdapterImpl.this;
                        hmRtcAdapterImpl.onThrowPeerExceptionMsg("Fatal error: peerConnectionClient is null when send join msg.", hmRtcAdapterImpl.peerConnectionClient);
                    } else if (HmRtcAdapterImpl.this.peerConnectionClient.isICEConnected()) {
                        HmRtcAdapterImpl hmRtcAdapterImpl2 = HmRtcAdapterImpl.this;
                        hmRtcAdapterImpl2.onThrowPeerExceptionMsg("Fatal error: Send join on CONNECTED state.", hmRtcAdapterImpl2.peerConnectionClient);
                    } else if (HmRtcAdapterImpl.this.appRtcClient != null) {
                        HmRtcAdapterImpl.this.appRtcClient.sendJoinMsgToRoom();
                    } else {
                        HmRtcAdapterImpl hmRtcAdapterImpl3 = HmRtcAdapterImpl.this;
                        hmRtcAdapterImpl3.onThrowPeerExceptionMsg("Fatal error: appRtcClient is null when send join msg.", hmRtcAdapterImpl3.peerConnectionClient);
                    }
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onChannelConnected-->" + ExceptionUtils.toString(e10));
                }
            }
        })) {
            processRunOnUiThread(8, null, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onChannelConnected.");
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onChannelError(String str) {
        if (!"connect_error".equals(str)) {
            reportError(str);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CONNECT_FAIL, str);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelError.");
        } else {
            processRunOnUiThread(6, str, null);
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onChannelSendMessage(String str, String str2, JSONObject jSONObject) {
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelSendMessage.");
            return;
        }
        reportSendMessage(str, str2, jSONObject);
        Bundle bundle = new Bundle();
        bundle.putString("to", str);
        bundle.putString("type", str2);
        processRunOnUiThread(9, jSONObject, bundle);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onConnected(Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onConnected,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CONNECT_SUCCESS);
        this.currentConnectStatus = Boolean.TRUE;
        String str = TAG;
        Logging.e(str, "peerConnectionClient onConnected:" + this.currentConnectStatus);
        this.isPlaying = true;
        this.mFrameDelayInfo.setNetTime(System.currentTimeMillis() - this.callStartedTimeMs);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(str, "Fatal error: context is null when onConnected.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onConnected");
        } else {
            if (!postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.16
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HmRtcAdapterImpl.this.peerConnectionClient.enableStatsEvents(true, 1000);
                    } catch (Exception e10) {
                        HmRtcAdapterImpl.this.throwExceptionMsg("onConnected-->" + ExceptionUtils.toString(e10));
                    }
                }
            })) {
                Logging.e(str, "Fatal error: mMainHandler is null when onConnected.");
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onConnected");
                return;
            }
            processRunOnUiThread(14, null, null);
            if (HmRtcGlobalConfig.rtc_upload_video_on) {
                GamePlatformType gamePlatformType = GamePlatformType.ARM;
            }
            if (HmRtcGlobalConfig.rtcEnableShareStreaming) {
                ShareStreamingManager.getInstance().setKeyFrameRequestCallBack(this);
            }
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onConnectedToRoom(final List<PeerConnection.IceServer> list) {
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onConnectedToRoom.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "Context is null when onConnectedToRoom");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.6
            @Override // java.lang.Runnable
            public void run() {
                Logging.d(HmRtcAdapterImpl.TAG, "creating PeerConnection by SignalV1");
                HmRtcAdapterImpl.this.createPeerConnectionInternal(list);
            }
        })) {
            processRunOnUiThread(2, list, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onConnectedToRoom.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onConnectedToRoom");
        }
    }

    public void onConnectionIPChanged(final String str) {
        Logging.i(TAG, "Current remote streaming ip list: " + str);
        if (str != null) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_STREAMER_IP_ADDRESS, str);
        }
        postRunnableToUiThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.17
            @Override // java.lang.Runnable
            public void run() {
                synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                    if (HmRtcAdapterImpl.this.mStreamerCallback == null) {
                        return;
                    }
                    try {
                        HmRtcAdapterImpl.this.mStreamerCallback.onCurrentIpAddress(new JSONObject(str));
                    } catch (Exception e10) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Failed to parse ipList json string: ", e10);
                    }
                }
            }
        });
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onCountlyCallback(int i10, long j10, String str) {
        if (i10 == 12200) {
            onRtcNativeWarning(str);
            return;
        }
        if (i10 == 13234) {
            onIDRReadyToRender(String.valueOf(j10));
            return;
        }
        if (i10 == 13320) {
            onConnectionIPChanged(str);
            return;
        }
        if (i10 == 13588) {
            onIDRRendered(String.valueOf(j10));
            return;
        }
        if (i10 == 13593) {
            processRunOnUiThread(52, str, null);
            return;
        }
        if (i10 == 13248) {
            onIDRArrived(String.valueOf(j10));
        } else if (i10 != 13249) {
            recordCountlyEventLocal(i10, str, j10);
        } else {
            onIDRDecoded(String.valueOf(j10));
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onCreatePeerConnectionSuccess(Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onCreatePeerConnectionSuccess,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        synchronized (this.mMainHandlerLock) {
            Handler handler = this.mMainHandler;
            if (handler == null) {
                Logging.e(TAG, "mMainHandler is empty");
            } else {
                handler.post(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (HmRtcAdapterImpl.this.mGamePlatformType == GamePlatformType.X86) {
                            HmRtcAdapterImpl.this.remoteSdpOperate(null, true);
                        }
                    }
                });
            }
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onDcJsonMessage(byte[] bArr, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onDcJsonMessage, current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        synchronized (this.mStreamerCallbackLock) {
            if (this.mStreamerCallback != null) {
                HmStreamerCallback.MsgPayload msgPayload = new HmStreamerCallback.MsgPayload();
                msgPayload.bytes = bArr;
                msgPayload.reserve = null;
                this.mStreamerCallback.onCommonMessage(HmStreamerCallback.MsgId.kGeneralJson, 0L, msgPayload);
            } else {
                Logging.e(TAG, "mStreamCallback is null");
            }
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onDisconnected(String str, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onDisconnected,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        if (PeerConnectionClient.PEER_CONNECTION_FAILED.equalsIgnoreCase(str)) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONN_DISCONNECT);
        }
        if (PeerConnectionClient.ICE_CONNECTION_FAILED.equalsIgnoreCase(str)) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ICE_CONNECTION_FAILED);
        }
        this.currentConnectStatus = Boolean.FALSE;
        String str2 = TAG;
        Logging.e(str2, "peerConnectionClient onDisconnected:" + this.currentConnectStatus);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(str2, "Fatal error: context is null when onDisconnected.");
            return;
        }
        this.mRtcDisconnected = true;
        processRunOnUiThread(15, str, null);
        if (HmRtcGlobalConfig.rtcEnableShareStreaming) {
            ShareStreamingManager.getInstance().clearKeyFrameRequestCallBack();
        }
    }

    public void onIDRArrived(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FIRST_FRAME_RECVED, "Time: " + str);
        synchronized (this.mPlayerCallbackLock) {
            HmPlayerCallback hmPlayerCallback = this.mPlayerCallback;
            if (hmPlayerCallback == null) {
                return;
            }
            hmPlayerCallback.onIDRArrived(Long.parseLong(str));
        }
    }

    public void onIDRDecoded(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FIRST_FRAME_DECODED, "Time: " + str);
        synchronized (this.mPlayerCallbackLock) {
            HmPlayerCallback hmPlayerCallback = this.mPlayerCallback;
            if (hmPlayerCallback == null) {
                return;
            }
            hmPlayerCallback.onIDRDecoded(Long.parseLong(str));
        }
    }

    public void onIDRReadyToRender(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FIRST_FRAME_READY_TO_RENDER, "Time: " + str);
        synchronized (this.mPlayerCallbackLock) {
            HmPlayerCallback hmPlayerCallback = this.mPlayerCallback;
            if (hmPlayerCallback == null) {
                return;
            }
            hmPlayerCallback.onIDRReadyToRender(Long.parseLong(str));
        }
    }

    public void onIDRRendered(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FIRST_FRAME_RENDERED, "Time: " + str);
        synchronized (this.mPlayerCallbackLock) {
            HmPlayerCallback hmPlayerCallback = this.mPlayerCallback;
            if (hmPlayerCallback == null) {
                return;
            }
            hmPlayerCallback.onIDRRendered(Long.parseLong(str));
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onIceCandidate(final IceCandidate iceCandidate, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onIceCandidate,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        WeakReference<Context> weakReference = this.mContextRef;
        Context context = weakReference == null ? null : weakReference.get();
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_LOCAL_CANDIDATE, iceCandidate.toString());
        if (context == null) {
            Logging.e(TAG, "Fatal error: context is null when onIceCandidate.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onIceCandidate");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcGlobalConfig.dropClientCandidate(HmRtcAdapterImpl.this.mRoomId)) {
                        return;
                    }
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onIceCandidate-->" + ExceptionUtils.toString(e10));
                }
                if (iceCandidate.isHostGenaration()) {
                    Logging.i(HmRtcAdapterImpl.TAG, "Ignore this Local Candidate, don't send to ROM.");
                    return;
                }
                if (HmRtcAdapterImpl.this.mWebSocketClient != null) {
                    HmRtcAdapterImpl.this.mWebSocketClient.sendIceCandidate(iceCandidate);
                    return;
                }
                if (HmRtcAdapterImpl.this.appRtcClient != null) {
                    try {
                        HmRtcAdapterImpl.this.appRtcClient.sendLocalIceCandidate(iceCandidate);
                    } catch (Exception e11) {
                        HmRtcAdapterImpl.this.throwExceptionMsg("sendLocalIceCandidate-->" + ExceptionUtils.toString(e11));
                    }
                }
            }
        })) {
            processRunOnUiThread(12, iceCandidate, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onIceCandidate.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onIceCandidate");
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onIceCandidatesRemoved(final IceCandidate[] iceCandidateArr, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onIceCandidatesRemoved,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onIceCandidatesRemoved.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onIceCandidatesRemoved");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.15
            @Override // java.lang.Runnable
            public void run() {
                if (HmRtcAdapterImpl.this.mWebSocketClient == null && HmRtcAdapterImpl.this.appRtcClient != null) {
                    try {
                        HmRtcAdapterImpl.this.appRtcClient.sendLocalIceCandidateRemovals(iceCandidateArr);
                    } catch (Exception e10) {
                        HmRtcAdapterImpl.this.throwExceptionMsg("sendLocalIceCandidateRemovals-->" + ExceptionUtils.toString(e10));
                    }
                }
            }
        })) {
            processRunOnUiThread(13, iceCandidateArr, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onIceCandidatesRemoved.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onIceCandidatesRemoved");
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onIceConnected(Object obj) {
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onIceDisconnected(Object obj) {
    }

    @Override // org.hmwebrtc.ShareStreamingManager.KeyFrameRequestCallBack
    public void onKeyFrameRequested() {
        Logging.d(TAG, "onKeyFrameRequested");
        requestKeyFrame();
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onLocalDescriptionCreated(SessionDescription sessionDescription, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onLocalDescriptionCreated,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CREATE_ANSWER);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when callbackCreateAnswer.");
        } else {
            processRunOnUiThread(10, sessionDescription, null);
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onLocalDescriptionSet(final SessionDescription sessionDescription, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onLocalDescriptionSet,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onLocalDescription.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onLocalDescriptionSet");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.13
            @Override // java.lang.Runnable
            public void run() {
                if (HmRtcAdapterImpl.this.mGamePlatformType == GamePlatformType.X86) {
                    HmRtcAdapterImpl.this.remoteSdpOperate(sessionDescription, false);
                    return;
                }
                if (HmRtcAdapterImpl.this.mWebSocketClient != null) {
                    HmRtcAdapterImpl.this.mWebSocketClient.sendAnswer(sessionDescription);
                    return;
                }
                if (HmRtcAdapterImpl.this.appRtcClient != null) {
                    try {
                        HmRtcAdapterImpl.this.appRtcClient.sendAnswerSdp(sessionDescription);
                    } catch (Exception e10) {
                        HmRtcAdapterImpl.this.throwExceptionMsg("sendAnswerSdp-->" + ExceptionUtils.toString(e10));
                    }
                }
            }
        })) {
            processRunOnUiThread(11, sessionDescription, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onLocalDescriptionSet.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onLocalDescriptionSet");
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onMessage(byte[] bArr, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onMessage,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        synchronized (this.mStreamerCallbackLock) {
            HmStreamerCallback hmStreamerCallback = this.mStreamerCallback;
            if (hmStreamerCallback != null) {
                hmStreamerCallback.onMessage(bArr);
            } else {
                Logging.e(TAG, "mStreamCallback is null");
            }
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onPeerConnectionError(String str, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onPeerConnectionError,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        Logging.d(TAG, "==HmRtcAdapterImpl->onPeerConnectionError");
        if (PeerConnectionClient.ICE_CONNECTION_FAILED.equals(str)) {
            connectFailedInternal(str);
        } else if (PeerConnectionClient.PEER_CONNECTION_FAILED.equals(str)) {
            connectFailedInternal(str);
        } else {
            reportError(str);
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onPeerConnectionStatsReady(StatsReport[] statsReportArr, StatsReport.Value[][] valueArr, Object obj) {
        PerfdogJankCounter perfdogJankCounter;
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onPeerConnectionStatsReady,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        synchronized (this.mFrameDelayInfo) {
            try {
                parseStateIntoDelayInfo(statsReportArr);
                parseStreamerInfo(valueArr);
                UpdateAudioDeviceState();
                if (this.mJankTool != null) {
                    this.mNativeJankInfo.jankDuration = this.mFrameDelayInfo.getJankDuration();
                    this.mNativeJankInfo.bigJankDuration = this.mFrameDelayInfo.getFreezeDuration();
                    this.mNativeJankInfo.jankCount = this.mFrameDelayInfo.getJankCount();
                    this.mNativeJankInfo.bigJankCount = this.mFrameDelayInfo.getFreezeCount();
                    this.mNativeJankInfo.fps = this.mFrameDelayInfo.getGameFps();
                }
                if (!HmRtcGlobalConfig.rtcUseDirectSurfaceView && (perfdogJankCounter = this.mJankCounter) != null) {
                    PerfdogJankCounter.JankInfo jankInfo = perfdogJankCounter.getJankInfo(null);
                    this.mFrameDelayInfo.setJankCount((int) jankInfo.jankCount);
                    this.mFrameDelayInfo.setFreezeCount((int) jankInfo.bigJankCount);
                    this.mFrameDelayInfo.setJankDurationFromJava((int) jankInfo.jankDuration);
                    this.mFrameDelayInfo.setFreezeDurationFromJava((int) jankInfo.bigJankDuration);
                    WeaklyNetworkReport weaklyNetworkReport = this.weaklyNetworkReport;
                    if (weaklyNetworkReport != null) {
                        weaklyNetworkReport.setFreezeIntervals(jankInfo.jankIntervals);
                    }
                }
                WeaklyNetworkReport weaklyNetworkReport2 = this.weaklyNetworkReport;
                if (weaklyNetworkReport2 != null) {
                    weaklyNetworkReport2.setReceivingVideoBitrate(this.mFrameDelayInfo.getVideoBitrate());
                    this.weaklyNetworkReport.setReceivingVideoPacketsRate(this.mFrameDelayInfo.getPacketsPercentDiff());
                    this.weaklyNetworkReport.setPacketsLostRate(this.mFrameDelayInfo.getPacketsLostRate());
                    this.weaklyNetworkReport.setResolutionChanged(this.mFrameWidth, this.mFrameHeigh, this.resolutionChangedTime);
                    this.weaklyNetworkReport.setReportTime(System.currentTimeMillis());
                    String string = this.weaklyNetworkReport.toString();
                    this.weaklyNetworkReport.reset();
                    if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
                        Logging.d(TAG, "weaklyNetworkReport:" + string);
                    }
                    this.weaklyNetworkReportList.add(string);
                }
            } catch (Exception e10) {
                Logging.e(TAG, "parseStateIntoDelayInfo has a Exception:" + e10.toString());
            }
        }
        postRunnableToStatThread(this.statRunnable);
        JankStatisticsTool jankStatisticsTool = this.mJankTool;
        if (jankStatisticsTool != null) {
            jankStatisticsTool.update(this.mNativeJankInfo);
        }
    }

    public void onPeerErrorFromWebrtcCpp(String str) {
        internalThrowExceptionMsg(str, false);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onReConnected(Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onReConnected,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONN_RE_CONNECTED);
        this.currentConnectStatus = Boolean.TRUE;
        Logging.e(TAG, "peerConnectionClient onReConnected:" + this.currentConnectStatus);
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onRemoteDescription(final SessionDescription sessionDescription) {
        synchronized (this.mSignalHttpSwitchToSignalV1V2Lock) {
            if (this.mGamePlatformType == GamePlatformType.X86) {
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVED_OFFER_SIGNAL_TYPE, "signalhttp");
            } else {
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVED_OFFER_SIGNAL_TYPE, "signalv1");
            }
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVE_OFFER, sessionDescription.description);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onRemoteDescription.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "Context is null when onRemoteDescription");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.mAlreadyRecvOfferSdp) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Already set remote description.");
                        return;
                    }
                    if (HmRtcAdapterImpl.this.mWebSocketClient != null) {
                        HmRtcAdapterImpl hmRtcAdapterImpl = HmRtcAdapterImpl.this;
                        hmRtcAdapterImpl.postRunnableToUiThread(hmRtcAdapterImpl.new SignalV2ReleaseRunnable(hmRtcAdapterImpl.mWebSocketClient));
                        HmRtcAdapterImpl.this.mWebSocketClient = null;
                    }
                    try {
                        HmRtcAdapterImpl.this.peerConnectionClient.setRemoteDescription(sessionDescription);
                        HmRtcAdapterImpl.this.mAlreadyRecvOfferSdp = true;
                        HmRtcAdapterImpl.this.mAlreadyRecvRemoteCandidates.clear();
                    } catch (Exception e10) {
                        HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteDescription-->" + ExceptionUtils.toString(e10));
                    }
                } catch (Exception e11) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteDescription-->" + ExceptionUtils.toString(e11));
                }
            }
        })) {
            processRunOnUiThread(3, sessionDescription, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onRemoteDescription.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onRemoteDescription");
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onRemoteIceCandidate(final IceCandidate iceCandidate) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVE_CANDIDATE, iceCandidate.sdp);
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onRemoteIceCandidate.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onRemoteIceCandidate");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.peerConnectionClient == null) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Received ICE candidate for a non-initialized peer connection.");
                        HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteIceCandidate-->peerConnectionClient is null");
                    } else if (HmRtcAdapterImpl.this.mAlreadyRecvRemoteCandidates.contains(iceCandidate.sdp)) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Already Received ICE candidate for peer connection.");
                    } else {
                        HmRtcAdapterImpl.this.mAlreadyRecvRemoteCandidates.add(iceCandidate.sdp);
                        HmRtcAdapterImpl.this.peerConnectionClient.addRemoteIceCandidate(iceCandidate);
                    }
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteIceCandidate-->" + ExceptionUtils.toString(e10));
                }
            }
        })) {
            processRunOnUiThread(4, iceCandidate, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onRemoteIceCandidate.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onRemoteIceCandidate");
        }
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onRemoteIceCandidatesRemoved(final IceCandidate[] iceCandidateArr) {
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onRemoteIceCandidatesRemoved.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "context is null when onRemoteIceCandidatesRemoved");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.peerConnectionClient == null) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Received ICE candidate removals for a non-initialized peer connection.");
                    } else {
                        HmRtcAdapterImpl.this.peerConnectionClient.removeRemoteIceCandidates(iceCandidateArr);
                    }
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteIceCandidateRemoved-->" + ExceptionUtils.toString(e10));
                }
            }
        })) {
            processRunOnUiThread(5, iceCandidateArr, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onRemoteIceCandidatesRemoved.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onRemoteIceCandidatesRemoved");
        }
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onRemoteVideoEncodeAdaptation(String str, int i10, int i11, int i12, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onRemoteVideoEncodeAdaptation,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("codec_name", str);
        bundle.putShort("fps", (short) i10);
        bundle.putShort("width", (short) i11);
        bundle.putShort("height", (short) i12);
        processRunOnUiThread(18, null, bundle);
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onReportEvent(int i10, String str) {
        RtcCountlyUtil.recordEvent(i10, str);
    }

    public void onRtcNativeWarning(String str) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, str);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onSDPError(String str, Object obj) {
        if (this.peerConnectionClient == obj) {
            connectFailedInternal(str);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onSDPError,current:" + this.peerConnectionClient + "expired:" + obj);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onSwitchConnectionCallback(int i10, int i11, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onSwitchConnectionCallback,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("code", "" + i10);
        bundle.putString(bm.T, "" + i11);
        processRunOnUiThread(51, null, bundle);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onSwitchToRtmpStreaming(Object obj) {
        if (this.peerConnectionClient == obj) {
            processRunOnUiThread(40, null, null);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onSwitchToRtmpStreaming,current:" + this.peerConnectionClient + "expired:" + obj);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onThrowPeerExceptionMsg(String str, Object obj) {
        if (this.peerConnectionClient == obj) {
            throwExceptionMsg(str);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onThrowPeerExceptionMsg,current:" + this.peerConnectionClient + "expired:" + obj);
    }

    @Override // org.webrtc.haima.AppRTCClient.SignalingEvents
    public void onThrowSignalExceptionMsg(String str) {
        throwExceptionMsg(str);
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketConnectStatus(String str) {
        if (!TextUtils.isEmpty(str)) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV2_STATUS, str);
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelConnectStatus.");
        } else {
            processRunOnUiThread(30, str, null);
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketConnected(final List<PeerConnection.IceServer> list) {
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onConnectedToRoom.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "Context is null when onConnectedToRoom");
        } else {
            if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.18
                @Override // java.lang.Runnable
                public void run() {
                    Logging.d(HmRtcAdapterImpl.TAG, "creating PeerConnection by SignalV2");
                    HmRtcAdapterImpl.this.createPeerConnectionInternal(list);
                }
            })) {
                return;
            }
            Logging.e(TAG, "Fatal error: mMainHandler is null when onWebSocketConnected.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onWebSocketConnected");
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketDisconnected(int i10) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV2_DISCONNECTED);
        postRunnableToUiThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.19
            @Override // java.lang.Runnable
            public void run() {
                synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                    if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                        HmRtcAdapterImpl.this.mStreamerCallback.onSignalV2Disconnected();
                    }
                }
            }
        });
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketForceDisconnectRTC(String str) {
        onDisconnected(str, this.peerConnectionClient);
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketHandShakeSucceed() {
        Logging.d(TAG, "onWebSocketHandShakeSucceed.");
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV2_CONNECT_SUCCESS);
        processRunOnUiThread(31, null, null);
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketRecvExtMessage(String str) {
        Logging.d(TAG, "onWebSocketRecvExtMessage: " + str);
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketRemoteDescription(final SessionDescription sessionDescription) {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVE_OFFER, sessionDescription.description);
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_RECEIVED_OFFER_SIGNAL_TYPE, "signalv2");
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onRemoteDescription.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "Context is null when onRemoteDescription");
        } else if (postRunnableToThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (HmRtcAdapterImpl.this.mAlreadyRecvOfferSdp) {
                        Logging.e(HmRtcAdapterImpl.TAG, "Already set remote description.");
                        return;
                    }
                    if (HmRtcAdapterImpl.this.appRtcClient != null) {
                        HmRtcAdapterImpl.this.appRtcClient.preRelease();
                        HmRtcAdapterImpl.this.appRtcClient.disconnectFromRoom();
                        HmRtcAdapterImpl.this.appRtcClient = null;
                    }
                    HmRtcAdapterImpl.this.peerConnectionClient.setRemoteDescription(sessionDescription);
                    HmRtcAdapterImpl.this.postRunnableToUiThread(new Runnable() { // from class: org.webrtc.haima.HmRtcAdapterImpl.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (HmRtcAdapterImpl.this.mStreamerCallbackLock) {
                                if (HmRtcAdapterImpl.this.mStreamerCallback != null) {
                                    HmRtcAdapterImpl.this.mStreamerCallback.onSignalV2RecvOffer();
                                }
                            }
                        }
                    });
                    RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SIGNALV2_RECVOFFER);
                    HmRtcAdapterImpl.this.mAlreadyRecvOfferSdp = true;
                    HmRtcAdapterImpl.this.mAlreadyRecvRemoteCandidates.clear();
                } catch (Exception e10) {
                    HmRtcAdapterImpl.this.throwExceptionMsg("onRemoteDescription-->" + ExceptionUtils.toString(e10));
                }
            }
        })) {
            processRunOnUiThread(3, sessionDescription, null);
        } else {
            Logging.e(TAG, "Fatal error: mMainHandler is null when onWebSocketRemoteDescription.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "mMainHandler is null when onWebSocketRemoteDescription");
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketRemoteIceCandidate(IceCandidate iceCandidate, String str) {
        onRemoteIceCandidate(iceCandidate);
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientEvent
    public void onWebSocketSendMessage(String str, JSONObject jSONObject) {
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when onChannelSendMessage.");
            return;
        }
        reportSendMessage("", str, jSONObject);
        Bundle bundle = new Bundle();
        bundle.putString("to", "");
        bundle.putString("type", str);
        processRunOnUiThread(9, jSONObject, bundle);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onX86DataChannelClose(Object obj) {
        if (this.peerConnectionClient == obj) {
            processRunOnUiThread(55, null, null);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onX86DataChannelClose, current:" + this.peerConnectionClient + "expired:" + obj);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onX86DataChannelOpen(Object obj) {
        if (this.peerConnectionClient == obj) {
            processRunOnUiThread(54, null, null);
            return;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onX86DataChannelOpen, current:" + this.peerConnectionClient + "expired:" + obj);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onX86DataChannelPong(String str, long j10, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onX86DataChannelPong, current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("payload", "" + str);
        bundle.putString("recvTime", "" + j10);
        processRunOnUiThread(56, null, bundle);
    }

    public void recordCountlyEventLocal(int i10, String str, long j10) {
        try {
            HmCountlyEventRecorderCallback hmCountlyEventRecorderCallback = sgCountlyEventRecorderCallback;
            if (hmCountlyEventRecorderCallback != null) {
                String str2 = "" + i10;
                if (str == null) {
                    str = "";
                }
                hmCountlyEventRecorderCallback.recordCountlyEvent(str2, str, j10);
            } else {
                Logging.e(TAG, "recordCountlyEventLocal error  callback is empty ");
            }
        } catch (Exception e10) {
            Logging.e(TAG, "recordCountlyEventLocal got Exception: " + e10.toString());
        }
    }

    public void registerGSCallback(HmGSCallback hmGSCallback) {
        this.gsCallback = hmGSCallback;
    }

    public void registerPermissionHandler(HmPermissionHandler hmPermissionHandler) {
        HmCameraWrapper.getInstance().registerPermissionHandler(hmPermissionHandler);
    }

    public void registerProtoUtilsCallback(HmProtoCallback hmProtoCallback) {
        RtcProtoBufUtil.registerCallback(hmProtoCallback);
    }

    public void reportError(String str) {
        if (!TextUtils.isEmpty(str)) {
            RtcCountlyUtil.recordErrorEvent(str);
        }
        WeakReference<Context> weakReference = this.mContextRef;
        if ((weakReference == null ? null : weakReference.get()) == null) {
            Logging.e(TAG, "Fatal error: context is null when reportError.");
        } else {
            processRunOnUiThread(0, str, null);
        }
    }

    public void reportWeaklyNetwork(Object[] objArr) {
        int length = objArr.length;
        String str = "";
        int i10 = -1;
        for (Object obj : objArr) {
            i10++;
            if (obj != null && (obj instanceof String)) {
                str = i10 == length - 1 ? str + ((String) obj) : str + ((String) obj) + ",";
            }
        }
        if (HmRtcGlobalConfig.rtcEnableWeaklyNetDebug) {
            Logging.d(TAG, "=reportWeaklyNetwork===16004 =" + str);
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_WEAKLY_NETWORK_REPORT, str);
    }

    public void requestKeyFrame() {
        AndroidVideoDecoder.requestKeyFrame();
        DirectSurfaceVideoDecoder.requestKeyFrame();
    }

    public void resetStreamInfo() {
        this.mFrameHeigh = 0L;
        this.mFrameWidth = 0L;
        this.isCalled = false;
    }

    public boolean sendData(byte[] bArr) {
        Logging.d(TAG, "sendData:" + Arrays.toString(bArr));
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return false;
        }
        return peerConnectionClient.sendData(bArr);
    }

    public boolean sendText(String str) {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return false;
        }
        return peerConnectionClient.sendText(str);
    }

    public int sendToRemoteInput(int i10, byte[] bArr) {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient != null) {
            return peerConnectionClient.sendToRemoteInput(i10, bArr);
        }
        return -1;
    }

    public void setActivityIntent(Intent intent) {
        HmCameraManager.getInstance().setActivityIntent(intent);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (this.peerConnectionClient == null) {
            Logging.d(TAG, "Not setAudioAttributes");
        } else {
            Logging.d(TAG, "setAudioAttributes");
            this.peerConnectionClient.setAudioAttributes(audioAttributes);
        }
    }

    public void setCameraCaptureFormat(HmCameraSettings hmCameraSettings) {
        HmCameraManager.getInstance().setCameraCaptureFormat(hmCameraSettings);
    }

    public void setCameraConfig(CameraConfig cameraConfig) {
        this.mCameraConfig = cameraConfig;
    }

    public void setCameraMaxBitrate(int i10) {
        HmCameraManager.getInstance().setVideoBitrate(Integer.valueOf(i10), 1);
    }

    public void setCameraMinBitrate(int i10) {
        HmCameraManager.getInstance().setVideoBitrate(Integer.valueOf(i10), 0);
    }

    public void setGSUrl(String str) {
        synchronized (this.mSignalHttpSwitchToSignalV1V2Lock) {
            this.mGSUrl = str;
            this.mGamePlatformType = GamePlatformType.X86;
        }
    }

    public void setHmPlayerCallback(HmPlayerCallback hmPlayerCallback) {
        synchronized (this.mPlayerCallbackLock) {
            this.mPlayerCallback = hmPlayerCallback;
        }
    }

    public void setHmStreamerCallback(HmStreamerCallback hmStreamerCallback) {
        synchronized (this.mStreamerCallbackLock) {
            this.mStreamerCallback = hmStreamerCallback;
            Logging.d(TAG, "setHmStreamerCallback - callback=" + hmStreamerCallback);
        }
    }

    public void setInputPingPongMs(int i10) {
    }

    public boolean setLongParameter(String str, long j10) {
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setLongParameter type");
        if (str == null) {
            str = "null";
        }
        sb2.append(str);
        sb2.append("paramter:");
        sb2.append(j10);
        Logging.d(str2, sb2.toString());
        return false;
    }

    public void setOwner(int i10) {
        this.owner = i10;
    }

    public boolean setParameter(String str, String str2) {
        if (HmRtcParameterHelper.TrafficStats.IsMatched(str)) {
            if (!TextUtils.isEmpty(str2)) {
                TrafficStatsHelper.executeCommand(str2);
            }
        } else if (this.mHmBandWidthController != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && HmBandWidthController.isMatchedModuleName(str)) {
            return this.mHmBandWidthController.executeCommand(str + com.join.mgps.Util.o0.f49827a + str2);
        }
        String str3 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setParameter type");
        if (str == null) {
            str = "null";
        }
        sb2.append(str);
        sb2.append("paramter:");
        if (str2 == null) {
            str2 = "null";
        }
        sb2.append(str2);
        Logging.d(str3, sb2.toString());
        return false;
    }

    public void setSpeakerMute(boolean z10) {
        WebRtcAudioTrack.setSpeakerMute(z10);
    }

    public void startAudioRecorder() {
        HmAudioManager.getInstance().startRecord();
    }

    public void startCameraCapture() {
        HmCameraManager.getInstance().startVideoSource();
    }

    public void stopAudioRecorder() {
        HmAudioManager.getInstance().stopRecord();
    }

    public void stopCameraCapture() {
        HmCameraManager.getInstance().stopVideoSource();
    }

    public void switchDisplayView() {
        SurfaceViewDsRenderer surfaceViewDsRenderer = this.mSurfaceDsRenderer;
        if (surfaceViewDsRenderer != null && this.mSurfaceRenderer != null) {
            surfaceViewDsRenderer.setVisibility(8);
            this.mSurfaceRenderer.setVisibility(0);
            this.mSurfaceDsRenderer.setZOrderOnTop(true);
            Logging.d(TAG, "onSurfaceSwitch:mSurfaceRenderer");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DISPLAY_VIEW_SWITCH, "onSurfaceSwitch:mSurfaceRenderer");
        }
        TextureViewDsRenderer textureViewDsRenderer = this.mTextureDsRenderer;
        if (textureViewDsRenderer != null && this.mTextureRenderer != null) {
            textureViewDsRenderer.setVisibility(8);
            this.mTextureRenderer.setVisibility(0);
            Logging.d(TAG, "@@@@onSurfaceSwitch:mTextureDsRenderer");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DISPLAY_VIEW_SWITCH, "onSurfaceSwitch:mTextureDsRenderer");
        }
        this.viewSwitchHappened = true;
    }

    public void throwExceptionMsg(String str) {
        internalThrowExceptionMsg(str, true);
    }

    public void unRegisterPermissionHandler() {
        HmCameraWrapper.getInstance().unRegisterPermissionHandler();
    }

    void uninitBandWidthController() {
        Logging.d("bw", "uninitBandWidthController");
        HmBandWidthController hmBandWidthController = this.mHmBandWidthController;
        if (hmBandWidthController != null) {
            hmBandWidthController.stop();
            this.mHmBandWidthController = null;
        }
    }

    public Object[] weaklyNetworkReportToArray() {
        if (!HmRtcGlobalConfig.rtcEnableWeaklyNetReport || this.weaklyNetworkReportList.size() < 10) {
            return null;
        }
        Object[] array = this.weaklyNetworkReportList.toArray();
        this.weaklyNetworkReportList.clear();
        return array;
    }

    public int x86SendLargeDataBlcok(byte[] bArr, HaimaDataChannel.Listener listener) {
        PeerConnectionClient peerConnectionClient = this.peerConnectionClient;
        if (peerConnectionClient == null) {
            return -1;
        }
        return peerConnectionClient.x86SendLargeDataBlcok(bArr, listener);
    }

    @Override // org.webrtc.haima.PeerConnectionClient.PeerConnectionEvents
    public void onPeerConnectionStatsReady(RTCStatsReport rTCStatsReport, Object obj) {
        if (this.peerConnectionClient != obj) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_PEER_CONNECTION_NOT_EQUAL, "onPeerConnectionStatsReady,current:" + this.peerConnectionClient + "expired:" + obj);
            return;
        }
        parseRTCStatsReport(rTCStatsReport);
    }
}
