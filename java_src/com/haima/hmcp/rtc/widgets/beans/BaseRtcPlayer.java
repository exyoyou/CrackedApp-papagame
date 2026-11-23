package com.haima.hmcp.rtc.widgets.beans;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.DeviceInfo;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.PlayNotification;
import com.haima.hmcp.beans.ReportBaseError;
import com.haima.hmcp.beans.ReportStartPlayStream;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ScreenInfo;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.SendSceneState;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.input.HMInput;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpVideoPlayerListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.rtc.widgets.IRenderView;
import com.haima.hmcp.rtc.widgets.RtcPlayer;
import com.haima.hmcp.rtc.widgets.RtcSurfaceViewRenderer;
import com.haima.hmcp.rtc.widgets.RtcTextureViewRenderer;
import com.haima.hmcp.utils.CcallJava;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.ErrorInfo;
import com.haima.hmcp.utils.FrameDataProxy;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.TimeUtil;
import com.haima.hmcp.utils.VolumeUtils;
import com.haima.hmcp.utils.ping.PingManager;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.CountDownTimer;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import net.lingala.zip4j.util.e;
import org.hmwebrtc.SurfaceViewRenderer;
import org.hmwebrtc.TextureViewRenderer;
import org.hmwebrtc.VideoSink;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmCameraWrapper;
import org.webrtc.haima.HmCountlyEventRecorderCallback;
import org.webrtc.haima.HmFrameDelayInfo;
import org.webrtc.haima.HmPlayerCallback;
import org.webrtc.haima.HmRtcAdapter;
import org.webrtc.haima.HmRtcParameterHelper;
import org.webrtc.haima.HmStreamerCallback;
import org.webrtc.haima.IOperationDelayEvent;
import org.webrtc.haima.SocketIORTCClient;
import org.webrtc.haima.WebSocketSignalClient;
import org.webrtc.haima.enums.RtcErrorType;
import org.webrtc.haima.listeners.HmPermissionChecker;
import org.webrtc.haima.util.RtcProtoBufUtil;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class BaseRtcPlayer implements CcallJava.OnFrameDelayListener, HmStreamerCallback, HmPlayerCallback, WebSocketSignalClient.IWebSocketSignalClientCallback, IOperationDelayEvent {
    public static final int APK_TYPE_NON_POOL = 3;
    public static final int APK_TYPE_POOL_BINTANG = 1;
    public static final int APK_TYPE_POOL_NON_BINTANG = 2;
    private static final int FIRST_FRAME_TIMEOUT_ERROR = -1;
    public static final int RENDER_NONE = 0;
    public static final int RENDER_SURFACE_VIEW = 1;
    public static final int RENDER_SURFACE_VIEW_RTC = 3;
    public static final int RENDER_TEXTURE_VIEW = 2;
    private static final int RTC_CONNECT_TIMEOUT_ERROR = -2;
    protected static final int SCENE_NO = 0;
    protected static final int SCENE_YES = 1;
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private static final String TAG = RtcPlayer.class.getSimpleName();
    protected static final String VERSION = "1.0";
    public static final long X86_INPUT_PING_INTERVAL_DEFAULT = 10000;
    public static final long X86_INPUT_PING_PONG_DELAY_DEFAULT = 100;
    private HmcpVideoPlayerListener hmcpVideoPlayerListener;
    protected AbsIjkVideoView ijkVideoView;
    protected Context mAppContext;
    private String mCoTurnUrl;
    private ConnectTimeOutTimer mConnectTimeOutTimer;
    protected Context mContext;
    private FirstFrameTimer mFirstFrameTimer;
    protected Handler mHandler;
    private int mHeight;
    protected HmRtcAdapter mHmRtcAdapter;
    private Boolean mImageEnhancement;
    private float mImageEnhancementStrength;
    private boolean mInputDatachannelEnable;
    private String mInstanceIP;
    public String mIpV6TurnUrl;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    protected long mPlayerDecodeTime;
    protected String mPlayerFrameSize;
    protected IRenderView mRenderView;
    protected HmcpRequest mRequestManager;
    private String mRoomId;
    private String mSignalUrl;
    private String mSignalV2Url;
    private StreamingCallback mStreamingCallback;
    protected Timer mTimer;
    private String mTurnPassword;
    public String mTurnUrl;
    private String mTurnUserName;
    private int mVideoHeight;
    private int mVideoRotationDegree;
    private int mVideoWidth;
    private int mWidth;
    private PingTask mX86InputPingTask;
    public JSONObject object;
    private int reconnectCount;
    protected SdkStreamPayloadData sdkStreamPayloadData;
    private long sendX86InputPingTime;
    protected SurfaceTexture surfaceTexture;
    protected VideoSink viewRender;
    private long mPrepareStartTime = 0;
    private boolean mEnableShareStream = false;
    private long x86InputPingInterval = 10000;
    private long x86InputPingPongDelay = 100;
    HmCountlyEventRecorderCallback mHmCountlyEventRecorderCallback = new HmCountlyEventRecorderCallback() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.3
        @Override // org.webrtc.haima.HmCountlyEventRecorderCallback
        public void recordCountlyEvent(String str, String str2, long j10) {
            if (str2 != null) {
                CountlyUtil.recordEvent(str, str2);
            } else {
                CountlyUtil.recordEvent(str);
            }
        }
    };
    private List<Integer> mAllRenders = new ArrayList();
    private int mCurrentRenderIndex = 0;
    private int mCurrentRender = 0;

    class ConnectTimeOutTimer extends CountDownTimer {
        /* JADX WARN: Illegal instructions before constructor call */
        public ConnectTimeOutTimer() {
            int i10 = Constants.wertcConnectTimeout;
            super(i10, i10);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = BaseRtcPlayer.this.ijkVideoView;
            if (absIjkVideoView == null || absIjkVideoView.getCloudPlayInfo() == null) {
                LogUtils.d(BaseRtcPlayer.TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isWebrtcConnectTimeout = true");
            } else {
                BaseRtcPlayer.this.ijkVideoView.getCloudPlayInfo().isWebrtcConnectTimeout = true;
            }
            BaseRtcPlayer.this.reconnectRtc(false);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class FirstFrameTimer extends CountDownTimer {
        /* JADX WARN: Illegal instructions before constructor call */
        public FirstFrameTimer() {
            long j10 = Constants.FIRST_FRAME_TIMEOUT;
            super(j10, j10);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            LogUtils.i(BaseRtcPlayer.TAG, "==FirstFrameTimer is time out");
            BaseRtcPlayer.this.release(true);
            BaseRtcPlayer.this.onVideoError(-1, -1, "First frame timeout");
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    private static class HmCountlyEventRecorder implements HmCountlyEventRecorderCallback {
        private HmCountlyEventRecorder() {
        }

        @Override // org.webrtc.haima.HmCountlyEventRecorderCallback
        public void recordCountlyEvent(String str, String str2, long j10) {
            if (str2 != null) {
                CountlyUtil.recordEvent(str, str2);
            } else {
                CountlyUtil.recordEvent(str);
            }
        }
    }

    private class PingTask implements Runnable {
        private PingTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseRtcPlayer baseRtcPlayer = BaseRtcPlayer.this;
            if (baseRtcPlayer.mHmRtcAdapter != null) {
                baseRtcPlayer.sendX86InputPingTime = System.currentTimeMillis();
                BaseRtcPlayer.this.mHmRtcAdapter.sendText("ping:" + BaseRtcPlayer.this.sendX86InputPingTime);
                BaseRtcPlayer baseRtcPlayer2 = BaseRtcPlayer.this;
                Handler handler = baseRtcPlayer2.mHandler;
                if (handler != null) {
                    handler.postDelayed(this, baseRtcPlayer2.x86InputPingInterval);
                }
            }
        }
    }

    public BaseRtcPlayer(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest) {
        if (context == null) {
            LogUtils.e(TAG, "rtcPlayer init fail, context is null");
            CountlyUtil.recordEvent("12200", "rtcPlayer init fail, context is null");
        } else {
            this.ijkVideoView = absIjkVideoView;
            this.mRequestManager = hmcpRequest;
        }
    }

    private static HmRtcAdapter.Configuration buildRtcAdapterConfig(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        HmRtcAdapter.Configuration configuration = new HmRtcAdapter.Configuration();
        configuration.mCoturnServer = str;
        configuration.mSignalServer = str2;
        configuration.mRoomId = str3;
        configuration.mUserId = CountlyUtil.mUID;
        configuration.mDeviceId = CountlyUtil.mDeviceID;
        LogUtils.i(TAG, "buildRtcAdapterConfig  turnUrl=" + str4 + " ipV6TurnUrl=" + str5 + " turnUserName=" + str6 + " turnPassword=" + str7);
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str4)) {
            arrayList.add(new HmRtcAdapter.TurnIceServer(str4, str6, str7));
        }
        if (!TextUtils.isEmpty(str5)) {
            arrayList.add(new HmRtcAdapter.TurnIceServer(str5, str6, str7));
        }
        configuration.mTurnIceServers = (HmRtcAdapter.TurnIceServer[]) arrayList.toArray(new HmRtcAdapter.TurnIceServer[0]);
        try {
            DeviceInfo deviceInfo = ConfigUtil.getDeviceInfo(context);
            configuration.mDeviceOs = deviceInfo.osVersion;
            configuration.mDeviceBrand = deviceInfo.brand;
            configuration.mDeviceModel = deviceInfo.model;
            ScreenInfo screenInfo = deviceInfo.screenInfo;
            if (screenInfo != null) {
                configuration.mDeviceResolution = screenInfo.resolution;
            }
        } catch (Exception unused) {
        }
        configuration.mEnvVariableReader = new HmRtcAdapter.EnvVariableReader() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.4
            @Override // org.webrtc.haima.HmRtcAdapter.EnvVariableReader
            public String getStringValue(String str8, String str9) {
                return str9;
            }
        };
        return configuration;
    }

    private boolean checkColorMode(int i10) {
        return i10 == 0 || i10 == 1;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0047 A[Catch: all -> 0x0065, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x001e, B:10:0x0025, B:12:0x0047, B:14:0x004e, B:15:0x0053, B:16:0x005d), top: B:24:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x004e A[Catch: all -> 0x0065, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x001e, B:10:0x0025, B:12:0x0047, B:14:0x004e, B:15:0x0053, B:16:0x005d), top: B:24:0x0003 }] */
    private synchronized void doRelease(boolean z10, boolean z11) {
        AbsIjkVideoView absIjkVideoView;
        if (!z11) {
            onPlayerRelease();
            ((AudioManager) this.mAppContext.getSystemService("audio")).abandonAudioFocus(null);
            absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.UPLOAD);
                this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.BATCH_UPLOAD);
                PingManager.getInstance().stop();
                if (this.mHmRtcAdapter != null) {
                    this.ijkVideoView.setmCurrentState(0);
                    if (z10) {
                        this.ijkVideoView.setmTargetState(0);
                    }
                    disconnectRtc(false);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CLOSE, "doRelease");
                }
                this.ijkVideoView.mNeedToSwitchRtmp = false;
                return;
            }
            return;
        }
        cancelConnectTimeOutTimer();
        cancelFirstFrameTimer();
        onPlayerRelease();
        ((AudioManager) this.mAppContext.getSystemService("audio")).abandonAudioFocus(null);
        absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null && absIjkVideoView.getmCloudFileManager() != null) {
            this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.UPLOAD);
            this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.BATCH_UPLOAD);
            PingManager.getInstance().stop();
            if (this.mHmRtcAdapter != null) {
                this.ijkVideoView.setmCurrentState(0);
                if (z10) {
                    this.ijkVideoView.setmTargetState(0);
                }
                disconnectRtc(false);
                CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CLOSE, "doRelease");
            }
            this.ijkVideoView.mNeedToSwitchRtmp = false;
            return;
        }
        return;
        throw th;
    }

    private void initRenders() {
        this.mAllRenders.clear();
        if (this.mAllRenders.isEmpty()) {
            this.mAllRenders.add(Integer.valueOf(this.mCurrentRender));
        }
        this.mCurrentRender = this.mAllRenders.get(this.mCurrentRenderIndex).intValue();
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView != null) {
            iRenderView.setFrameProxy(null);
        }
        setRender(this.mCurrentRender);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRemoteInputTransportState$1(int i10) {
        if (i10 == 1) {
            this.ijkVideoView.instanceConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRemoteTextMessage$2(String str) {
        this.ijkVideoView.mHMInput.parseMsg(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRemoteVideoEncodeAdaptation$0(String str, int i10, int i11, int i12) {
        StreamingCallback streamingCallback = this.mStreamingCallback;
        if (streamingCallback != null) {
            streamingCallback.onRemoteVideoEncodeChange(str, i10, i11, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVideoError(int i10, int i11, String str) {
        if (this.ijkVideoView == null) {
            return;
        }
        LogUtils.e(TAG, String.format(Locale.US, "onVideoError what: %d, extra: %d, error: %s", Integer.valueOf(i10), Integer.valueOf(i11), str));
        CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_STREAM_CONNECT_FAIL, JsonUtil.toJsonString(new ReportBaseError("" + i10, str)));
        this.ijkVideoView.setmCurrentState(-1);
        this.ijkVideoView.setmTargetState(-1);
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onError(i10, i11);
        }
    }

    @TargetApi(23)
    private void openVideoAndAudio() {
        String str = TAG;
        LogUtils.i(str, "==openVideoAndAudio");
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.mGamePlatformType == GamePlatformType.ARM && (TextUtils.isEmpty(this.mSignalUrl) || TextUtils.isEmpty(this.mCoTurnUrl) || TextUtils.isEmpty(this.mRoomId))) {
            CountlyUtil.recordErrorEvent("openVideoAndAudio got bad mSignalUrl: " + this.mSignalUrl + " OR bad mCoTurnUrl: " + this.mCoTurnUrl + " OR bad mRoomId: " + this.mRoomId);
            return;
        }
        release(false);
        startConnectTimeOutTimer();
        if (this.ijkVideoView.getSetResolution() != null) {
            LogUtils.d(str, "mSetResolution:" + this.ijkVideoView.getSetResolution().toString());
            CountlyUtil.recordEvent(Constants.COUNTLY_FRAME_CURRENT_BITRATE, JsonUtil.toJsonString(new ReportStartPlayStream(this.ijkVideoView.getSetResolution().f33828id, this.ijkVideoView.getSetResolution().bitRate, "" + this.ijkVideoView.getSetResolution().frameRate)));
        }
        try {
            if (this.ijkVideoView.mGamePlatformType != GamePlatformType.X86 && (TextUtils.isEmpty(this.mSignalUrl) || TextUtils.isEmpty(this.mCoTurnUrl) || TextUtils.isEmpty(this.mRoomId))) {
                LogUtils.e(str, "mVideoPath is null!");
                return;
            }
            this.ijkVideoView.checkSeiData();
            SocketIORTCClient.HmSocketIOOptions hmSocketIOOptions = new SocketIORTCClient.HmSocketIOOptions();
            hmSocketIOOptions.timeout = Constants.webrtcSignalTimeout;
            hmSocketIOOptions.reconnectionDelayMax = Constants.webrtcSignalReconnectionDelayMax;
            hmSocketIOOptions.reconnectionAttempts = Constants.webrtcSignalReconnectionAttempts;
            int i10 = this.ijkVideoView.getOrientation() == ScreenOrientation.PORTRAIT ? 90 : 0;
            this.mHmRtcAdapter.setCameraConfig(this.ijkVideoView.getmCameraConfig());
            HmRtcAdapter.Configuration configurationBuildRtcAdapterConfig = buildRtcAdapterConfig(this.ijkVideoView.getViewContext(), this.mCoTurnUrl, this.mSignalUrl, this.mRoomId, this.mTurnUrl, this.mIpV6TurnUrl, this.mTurnUserName, this.mTurnPassword);
            SdkStreamPayloadData sdkStreamPayloadData = this.sdkStreamPayloadData;
            if (sdkStreamPayloadData == null || sdkStreamPayloadData.dataTrafficOwner == null) {
                LogUtils.d(str, "do not set data traffic owner id cause is null");
            } else {
                LogUtils.d(str, "set rtc data traffic owner id: " + this.sdkStreamPayloadData.dataTrafficOwner);
                this.mHmRtcAdapter.setParameter(HmRtcParameterHelper.TrafficStats.getModuleName(), HmRtcParameterHelper.TrafficStats.preferUid(this.sdkStreamPayloadData.dataTrafficOwner.intValue()));
            }
            LogUtils.i(str, "==initAdapter " + this.mSignalUrl + " " + this.mRoomId + " " + this.mCoTurnUrl);
            configurationBuildRtcAdapterConfig.mGameTypeIsArm = HmcpManager.getInstance().getGameArchitectureType() == GameArchitectureType.ARM;
            if (!this.mHmRtcAdapter.initAdapter(this.mContext, this.viewRender, null, this.mSignalV2Url, HmcpManager.getInstance().getSDKVersion(), this.mInstanceIP, hmSocketIOOptions, this, i10, this.ijkVideoView, configurationBuildRtcAdapterConfig)) {
                LogUtils.i(str, "rtc initAdapter failed!");
            }
            this.mHmRtcAdapter.setHmPlayerCallback(this);
            this.mHmRtcAdapter.setHmStreamerCallback(this);
            this.mHmRtcAdapter.setSpeakerMute(this.ijkVideoView.isAudioMute());
            this.mHmRtcAdapter.SetOperationDelayEvent(this);
            this.mInputDatachannelEnable = this.mHmRtcAdapter.isInputChannelEnabled();
            this.mHmRtcAdapter.enableShareStreaming(this.mEnableShareStream);
            LogUtils.i(str, "set HmCountlyEventRecorderCallback to webrtc core");
            HmRtcAdapter.setCountlyEventRecorderCallback(new HmCountlyEventRecorder());
            LogUtils.i(str, "==createPlayer===mHmRtcAdapter");
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_VIDEO_STREAM);
            this.mPrepareStartTime = System.currentTimeMillis();
            CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_START_CONNECT, "CoTurn=" + this.mCoTurnUrl + "; Signal=" + this.mSignalUrl + "; RoomId=" + this.mRoomId + "; enableShareStream=" + this.mEnableShareStream + "; mInputDatachannelEnable=" + this.mInputDatachannelEnable);
            AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
            absIjkVideoView2.switchBandWidthDetection(absIjkVideoView2.isBandwidthDetectionSwitch());
            this.mHmRtcAdapter.createConnect();
            LogUtils.i(str, "==mHmRtcAdapter->createConnect");
            this.ijkVideoView.setmCurrentState(1);
            Boolean bool = this.mImageEnhancement;
            if (bool != null) {
                imageEnhancement(bool.booleanValue(), this.mImageEnhancementStrength);
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "Unable to open content: " + this.mCoTurnUrl + "; " + this.mSignalUrl + "; " + this.mRoomId, e10);
            cancelConnectTimeOutTimer();
            this.ijkVideoView.setmCurrentState(-1);
            this.ijkVideoView.setmTargetState(-1);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("openVideoAndAudio:: mMediaPlayer error=>");
            sb2.append(Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent(sb2.toString());
        }
    }

    private void processX86DataChannelPong(String str, long j10) {
        Long lValueOf;
        LogUtils.d(TAG, "processX86DataChannelPong:" + str);
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length > 1) {
            try {
                lValueOf = Long.valueOf(strArrSplit[1]);
            } catch (NumberFormatException unused) {
                lValueOf = null;
            }
            if (lValueOf == null) {
                LogUtils.e(TAG, "processX86DataChannelPong timestamp parse error");
                return;
            }
            if (lValueOf.longValue() != this.sendX86InputPingTime) {
                LogUtils.e(TAG, "sendX86InputPingTime = " + this.sendX86InputPingTime + " Pong contain sendX86InputPingTime : " + lValueOf);
                return;
            }
            long jLongValue = j10 - lValueOf.longValue();
            LogUtils.i(TAG, "ping/pong==lagTime===>" + jLongValue);
            CountlyUtil.recordEvent(Constants.COUNTYLY_PING_PONG_RECORD, "" + jLongValue);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.setmClockDiffUse((int) jLongValue);
            }
            if (jLongValue >= this.x86InputPingPongDelay) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_INPUT_TIME_OUT, "" + jLongValue);
            }
        }
    }

    private void sendX86InputIMStatus() {
        String str = TAG;
        LogUtils.d(str, "sendX86InputIMStatus");
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            LogUtils.d(str, "sendIMStatusResult:" + hmRtcAdapter.sendData(RtcProtoBufUtil.getIMStatusData(RtcProtoBufUtil.StatusType.STATUS_HIDE)));
        }
    }

    private void setRenderView(IRenderView iRenderView) {
        if (this.ijkVideoView == null) {
            return;
        }
        IRenderView iRenderView2 = this.mRenderView;
        if (iRenderView2 != null) {
            View view = iRenderView2.getView();
            this.mRenderView = null;
            unbindEGLSurface();
            this.ijkVideoView.removeView(view);
        }
        if (iRenderView == null) {
            return;
        }
        this.mRenderView = iRenderView;
        this.ijkVideoView.getmScreenShotManager().setConfig(this.ijkVideoView.getmScreenShotConfig().setStreamType(Constants.STREAM_TYPE_RTC).setRtcRender(this.mRenderView));
        final View view2 = this.mRenderView.getView();
        view2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                boolean z10;
                view2.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                boolean z11 = true;
                if (BaseRtcPlayer.this.mMeasuredWidth != view2.getMeasuredWidth()) {
                    BaseRtcPlayer.this.mMeasuredWidth = view2.getMeasuredWidth();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (BaseRtcPlayer.this.mMeasuredHeight != view2.getMeasuredHeight()) {
                    BaseRtcPlayer.this.mMeasuredHeight = view2.getMeasuredHeight();
                    z10 = true;
                }
                if (BaseRtcPlayer.this.mWidth != view2.getWidth()) {
                    BaseRtcPlayer.this.mWidth = view2.getWidth();
                    z10 = true;
                }
                if (BaseRtcPlayer.this.mHeight != view2.getHeight()) {
                    BaseRtcPlayer.this.mHeight = view2.getHeight();
                } else {
                    z11 = z10;
                }
                String str = (BaseRtcPlayer.this.mRenderView instanceof RtcSurfaceViewRenderer ? "Surface " : "Texture ") + "RenderView size: measuredWidth=" + BaseRtcPlayer.this.mMeasuredWidth + ", measuredHeight=" + BaseRtcPlayer.this.mMeasuredHeight + ", width=" + BaseRtcPlayer.this.mWidth + ", height=" + BaseRtcPlayer.this.mHeight;
                if (z11) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_RENDER_SIZE, str);
                }
                LogUtils.d(BaseRtcPlayer.TAG, str);
            }
        });
        view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        this.ijkVideoView.addView(view2, 0);
        this.ijkVideoView.setRenderView(iRenderView);
    }

    private void setVideoURI() {
        openVideoAndAudio();
    }

    private void startConnectTimeOutTimer() {
        cancelConnectTimeOutTimer();
        ConnectTimeOutTimer connectTimeOutTimer = new ConnectTimeOutTimer();
        this.mConnectTimeOutTimer = connectTimeOutTimer;
        connectTimeOutTimer.start();
        LogUtils.i(TAG, "==ConnectTimeOutTimer start is call, ConnectTimeOutTimer: " + this.mConnectTimeOutTimer);
    }

    private void startFirstFrameTimer() {
        LogUtils.i(TAG, "==FirstFrameTimer start is call, mFirstFrameTimer: " + this.mFirstFrameTimer);
        cancelFirstFrameTimer();
        FirstFrameTimer firstFrameTimer = new FirstFrameTimer();
        this.mFirstFrameTimer = firstFrameTimer;
        firstFrameTimer.start();
    }

    private void startSendX86InputPing() {
        LogUtils.d(TAG, "===startSendX86InputPing===, x86InputPingInterval:" + this.x86InputPingInterval);
        if (this.mHandler != null) {
            PingTask pingTask = new PingTask();
            this.mX86InputPingTask = pingTask;
            this.mHandler.postDelayed(pingTask, 0L);
        }
    }

    private void stopSendX86InputPing() {
        if (this.mHandler != null) {
            LogUtils.d(TAG, "===stopSendX86InputPing===");
            PingTask pingTask = this.mX86InputPingTask;
            if (pingTask != null) {
                this.mHandler.removeCallbacks(pingTask);
                this.mX86InputPingTask = null;
            }
        }
    }

    private void updateVideoSize(int i10, int i11) {
        int iMin;
        int i12;
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getScreenWidth() == 0 && this.ijkVideoView.getScreenHeight() == 0) {
            this.ijkVideoView.setScreenWidth(ConfigUtil.getScreenWidth(this.mAppContext));
            this.ijkVideoView.setScreenHeight(ConfigUtil.getScreenHeight(this.mAppContext));
        }
        if (this.ijkVideoView.getScreenWidth() <= i10 && this.ijkVideoView.getScreenHeight() <= i11) {
            i12 = i10;
            iMin = i11;
        } else if (getScreenOrientation() == ScreenOrientation.PORTRAIT) {
            LogUtils.d(TAG, "updateVideoSize: PORTRAIT");
            iMin = Math.min(this.ijkVideoView.getScreenWidth(), this.ijkVideoView.getScreenHeight());
            i12 = (iMin * i10) / i11;
        } else {
            LogUtils.d(TAG, "updateVideoSize: LANDSCAPE");
            iMin = Math.min(this.ijkVideoView.getScreenWidth(), this.ijkVideoView.getScreenHeight());
            i12 = (iMin * i10) / i11;
        }
        this.ijkVideoView.setmShowWidth(i12);
        this.ijkVideoView.setmShowHeight(iMin);
        String str = "Streaming size[ width=" + i10 + ", height=" + i11 + "], RenderView size[ width=" + i12 + ", height=" + iMin + "]";
        CountlyUtil.recordEvent(Constants.COUNTLY_STREAMING_SIZE, str);
        LogUtils.d(TAG, "==onMeasure: " + str);
        this.mRenderView.setVideoSize(i12, iMin);
        this.ijkVideoView.calcWindowStreamScale((float) i10, (float) i11, i12, iMin);
        AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
        absIjkVideoView2.calcWindowStreamScale(absIjkVideoView2.screenResolution);
    }

    public void CloudStateSend(int i10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.CloudStateSend(i10);
    }

    public void UiMessageSend(int i10, String str) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_CALL_BACK_STATUS_TO_APP, "status:" + i10 + ",data:" + str);
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.UiMessageSend(absIjkVideoView.getCallbackData(i10, str));
    }

    public void cancelConnectTimeOutTimer() {
        LogUtils.i(TAG, "cancelConnectTimeOutTimer is call, cancelConnectTimeOutTimer: " + this.mConnectTimeOutTimer);
        ConnectTimeOutTimer connectTimeOutTimer = this.mConnectTimeOutTimer;
        if (connectTimeOutTimer != null) {
            try {
                connectTimeOutTimer.cancel();
            } catch (Exception e10) {
                LogUtils.e(TAG, "cancelConnectTimeOutTimer got Exception: " + e10.toString());
                CountlyUtil.recordErrorEvent("cancelConnectTimeOutTimer got Exception: " + e10.toString());
            }
            this.mConnectTimeOutTimer = null;
        }
    }

    public void cancelFirstFrameTimer() {
        LogUtils.i(TAG, "cancelFirstFrameTimer is call, mFirstFrameTimer: " + this.mFirstFrameTimer);
        FirstFrameTimer firstFrameTimer = this.mFirstFrameTimer;
        if (firstFrameTimer != null) {
            try {
                firstFrameTimer.cancel();
            } catch (Exception e10) {
                LogUtils.e(TAG, "cancelFirstFrameTimer got Exception: " + e10.toString());
                CountlyUtil.recordErrorEvent("cancelFirstFrameTimer got Exception: " + e10.toString());
            }
            this.mFirstFrameTimer = null;
        }
    }

    public void connectAccProxy(String str, int i10, String str2, String str3) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_ACC_PROXY, "connectAccProxy port:" + i10);
        if (!Constants.CONFIG_ACC_CONNECT_ENABLE) {
            LogUtils.d(TAG, "connectAccProxy config disable");
            return;
        }
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            hmRtcAdapter.ConnectAccProxy(str, i10, str2, str3);
            LogUtils.d(TAG, "connectAccProxy  start");
        }
    }

    public void disconnectAccProxy() {
        CountlyUtil.recordEvent(Constants.COUNTYLY_DISCONNECT_ACC_PROXY, "disconnectAccProxy interface call triggers RTC reconnection");
        if (!Constants.CONFIG_ACC_CONNECT_ENABLE) {
            LogUtils.d(TAG, "disconnectAccProxy config disable");
        } else {
            LogUtils.d(TAG, "disConnectAccProxy  start");
            reconnectRtc(true);
        }
    }

    public void disconnectRtc(boolean z10) {
        LogUtils.d(TAG, "sdk to disconnect rtc");
        if (this.ijkVideoView == null) {
            return;
        }
        stopSendX86InputPing();
        HMInput hMInput = this.ijkVideoView.mHMInput;
        if (hMInput != null) {
            hMInput.stopSendPing();
        }
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            hmRtcAdapter.setHmStreamerCallback(null);
            this.mHmRtcAdapter.setHmPlayerCallback(null);
            this.mHmRtcAdapter.disconnect();
            this.ijkVideoView.stopReportClockDiffLatency();
        }
        this.ijkVideoView.stopAllVibrators();
        this.ijkVideoView.stopAllPhoneVibrators();
    }

    public void enableShareStream(boolean z10) {
        this.mEnableShareStream = z10;
        LogUtils.d(TAG, "enableShareStream flag:" + z10);
    }

    protected void fastResolutionSceneHandle() {
        if (this.ijkVideoView == null) {
            return;
        }
        CloudStateSend(3);
        String str = TAG;
        LogUtils.d(str, "Fast resolution->CloudStateSend(STATE_PLAYING)");
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null && absIjkVideoView.getUiListener() != null) {
            this.ijkVideoView.getUiListener().HmcpPlayerStatus(this.ijkVideoView.getCallbackData(2, ""));
            LogUtils.d(str, "Fast resolution->Constants.STATUS_START_PLAY");
            this.ijkVideoView.getUiListener().HmcpPlayerStatus(this.ijkVideoView.getCallbackData(102, ""));
            LogUtils.d(str, "Fast resolution->Constants.STATUS_FIRST_FRAME_ARRIVAL");
            LogUtils.i(str, "fold screen: Fast resolution FirstFrameArrived");
        }
        if (this.ijkVideoView.getCurResolution() == null || this.ijkVideoView.getSetResolution() == null || TextUtils.equals(this.ijkVideoView.getCurResolution().f33828id, this.ijkVideoView.getSetResolution().f33828id)) {
            LogUtils.i(str, "Fast resolution->===isNeedShowSwitch faile====");
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) (this.ijkVideoView.getSetResolution() != null ? this.ijkVideoView.getSetResolution().peakBitRate : ""));
            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_play), jSONObject.toJSONString());
        } else {
            LogUtils.i(str, "Fast resolution->===isNeedShowSwitchSuccess====");
            com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
            jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_result), (Object) 1);
            jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_id), (Object) this.ijkVideoView.getSetResolution().f33828id);
            jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) this.ijkVideoView.getSetResolution().peakBitRate);
            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_cred), jSONObject2.toJSONString());
        }
        this.ijkVideoView.setmCurrentState(3);
        AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
        absIjkVideoView2.setmCurResolution(absIjkVideoView2.getSetResolution());
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            hmRtcAdapter.resetStreamInfo();
        }
    }

    public int getCurrentBitRate() {
        int i10;
        try {
            i10 = Integer.parseInt(this.ijkVideoView.getSetResolution().bitRate);
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("getCurrentBitRate::" + Log.getStackTraceString(e10));
            LogUtils.e(TAG, "getCurrentBitRate -------" + Log.getStackTraceString(e10));
            i10 = 0;
        }
        return i10 / AVMDLDataLoader.KeyIsLiveSetLoaderType;
    }

    public IMediaPlayer getIMediaPlayer(boolean z10) {
        return null;
    }

    public String getMinBitRate(List<ResolutionInfo> list) {
        if (list == null) {
            return null;
        }
        String str = "";
        for (int i10 = 0; i10 < list.size(); i10++) {
            ResolutionInfo resolutionInfo = list.get(i10);
            if (str.isEmpty()) {
                str = resolutionInfo.peakBitRate;
            } else if (Integer.parseInt(str) > Integer.parseInt(resolutionInfo.peakBitRate)) {
                str = resolutionInfo.peakBitRate;
            }
        }
        return str;
    }

    public IRenderView getRenderView() {
        return this.mRenderView;
    }

    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        if (list != null && this.ijkVideoView != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                ResolutionInfo resolutionInfo = list.get(i10);
                if (resolutionInfo != null) {
                    if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.equals(resolutionInfo.defaultChoice, "1")) {
                        this.ijkVideoView.setCurrenteResolutionID(resolutionInfo.f33828id);
                        return resolutionInfo;
                    }
                    if (str != null && str.equals(resolutionInfo.peakBitRate)) {
                        return resolutionInfo;
                    }
                    if (str2 != null && str2.equals(resolutionInfo.f33828id)) {
                        return resolutionInfo;
                    }
                }
            }
        }
        return null;
    }

    public ScreenOrientation getScreenOrientation() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        return absIjkVideoView == null ? ScreenOrientation.LANDSCAPE : absIjkVideoView.getScreenOrientation();
    }

    public Bitmap getShortcut() {
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView instanceof RtcTextureViewRenderer) {
            return ((RtcTextureViewRenderer) iRenderView).getBitmap();
        }
        return null;
    }

    public String getStreamUrl() {
        return "";
    }

    protected String getString(int i10) {
        return ResourceManager.getString(i10);
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public HmRtcAdapter getmHmRtcAdapter() {
        return this.mHmRtcAdapter;
    }

    public void imageEnhancement(boolean z10, float f10) {
        this.mImageEnhancement = Boolean.valueOf(z10);
        this.mImageEnhancementStrength = f10;
        String str = TAG;
        LogUtils.d(str, "imageEnhancement isImageEnhancement:" + z10 + ",Strength:" + f10);
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView instanceof RtcTextureViewRenderer) {
            LogUtils.d(str, "RtcTextureViewRenderer imageEnhancement:" + z10 + ",Strength:" + f10);
            ((RtcTextureViewRenderer) this.mRenderView).setUnsharpMaskEnabled(z10);
            ((RtcTextureViewRenderer) this.mRenderView).setUnsharpMaskAmount(f10);
            return;
        }
        if (!(iRenderView instanceof RtcSurfaceViewRenderer)) {
            CountlyUtil.recordErrorEvent("imageEnhancement mRenderView is null");
            return;
        }
        LogUtils.d(str, "RtcSurfaceViewRenderer imageEnhancement:" + z10 + ",Strength:" + f10);
        ((RtcSurfaceViewRenderer) this.mRenderView).setUnsharpMaskEnabled(z10);
        ((RtcSurfaceViewRenderer) this.mRenderView).setUnsharpMaskAmount(f10);
    }

    public void initMetaInfo(HashMap<String, String> map) {
        String str = map.get(Constants.PING_INTERVAL_TIME);
        try {
            this.x86InputPingInterval = TextUtils.isEmpty(str) ? 10000L : Integer.parseInt(str);
            LogUtils.d(TAG, "x86 ping interval" + str);
        } catch (NumberFormatException unused) {
            this.x86InputPingInterval = 10000L;
        }
        String str2 = map.get(Constants.PING_DELAY_TIME);
        try {
            this.x86InputPingPongDelay = TextUtils.isEmpty(str2) ? 100L : Integer.parseInt(str2);
            LogUtils.d(TAG, "x86 ping delay" + str2);
        } catch (NumberFormatException unused2) {
            this.x86InputPingPongDelay = 100L;
        }
    }

    public void initVideoView(final Context context) {
        if (this.ijkVideoView == null) {
            return;
        }
        if (Constants.IS_RTC_LOG_ENABLE) {
            HmRtcAdapter.enableLogging(true);
            LogUtils.d(TAG, "rtc log open");
        }
        this.ijkVideoView.setScreenOrientation(ScreenOrientation.LANDSCAPE);
        this.mAppContext = context.getApplicationContext();
        this.mContext = context;
        this.mCurrentRender = HmcpManager.getInstance().getVideoViewType();
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initVideoView-> set render type: ");
        sb2.append(this.mCurrentRender == 1 ? "Surface View" : "Texture View");
        LogUtils.d(str, sb2.toString());
        this.mHandler = new Handler();
        this.mTimer = new Timer();
        this.ijkVideoView.setmFrameDataProxy(new FrameDataProxy());
        initRenders();
        this.ijkVideoView.setmCurrentState(0);
        this.ijkVideoView.setmTargetState(0);
        this.mHmRtcAdapter = new HmRtcAdapter();
        this.ijkVideoView.mNeedToSwitchRtmp = false;
        HmCameraWrapper.getInstance().registerPermissionChecker(new HmPermissionChecker() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.1
            @Override // org.webrtc.haima.listeners.HmPermissionChecker
            public boolean checkPermissionResult(String str2) {
                Context context2 = context;
                return context2 != null && ContextCompat.checkSelfPermission(context2.getApplicationContext(), str2) == 0;
            }
        });
    }

    public boolean inputDatachannelEnable() {
        return this.mInputDatachannelEnable;
    }

    protected boolean isInPlaybackState() {
        AbsIjkVideoView absIjkVideoView;
        return (this.mHmRtcAdapter == null || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.getmCurrentState() == -1 || this.ijkVideoView.getmCurrentState() == 0 || this.ijkVideoView.getmCurrentState() == 1) ? false : true;
    }

    public boolean isOnSound() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        return absIjkVideoView != null && absIjkVideoView.getCurrentSound() > 0.0f;
    }

    public boolean isPlaying() {
        return isInPlaybackState() && this.mHmRtcAdapter.isPlaying();
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void notifyStasticInfo(final int i10, final long j10, final String str) {
        this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.6
            @Override // java.lang.Runnable
            public void run() {
                AbsIjkVideoView absIjkVideoView = BaseRtcPlayer.this.ijkVideoView;
                if (absIjkVideoView == null) {
                    return;
                }
                if (absIjkVideoView.getHmcpPlayerListener() != null) {
                    long jNextInt = j10;
                    if (i10 == 2 && jNextInt > 25) {
                        jNextInt = new Random().nextInt(5) + 20;
                    }
                    BaseRtcPlayer.this.ijkVideoView.getHmcpPlayerListener().onPlayStatus(i10, jNextInt, str);
                }
                int i11 = i10;
                if (i11 == 0) {
                    BaseRtcPlayer.this.ijkVideoView.setmPlayerBitRate(j10);
                    BaseRtcPlayer.this.mPlayerFrameSize = str;
                } else if (i11 == 1) {
                    BaseRtcPlayer.this.ijkVideoView.setmPlayerFPS(j10);
                } else if (i11 == 2) {
                    BaseRtcPlayer.this.mPlayerDecodeTime = j10;
                }
            }
        });
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onAccProxyConnectStateChange(int i10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            LogUtils.e(TAG, "ijkVideoView == null,onAccProxyConnectStateChange failed");
        } else if (absIjkVideoView.getHmcpPlayerListener() != null) {
            this.ijkVideoView.getHmcpPlayerListener().onAccProxyConnectStateChange(i10);
        } else {
            LogUtils.e(TAG, "getHmcpPlayerListener == null,onAccProxyConnectStateChange failed");
        }
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onBitrate(long j10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setmPlayerBitRate(j10);
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onCatchExceptionMsg(String str, boolean z10) {
        if (this.ijkVideoView == null || z10) {
            return;
        }
        this.ijkVideoView.showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, "100666018-" + HmcpManager.getInstance().getCloudId(), str);
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onCommonMessage(HmStreamerCallback.MsgId msgId, long j10, HmStreamerCallback.MsgPayload msgPayload) {
        String str = TAG;
        LogUtils.d(str, "onCommonMessage id:" + msgId + ",code:" + j10);
        if (this.ijkVideoView == null) {
            LogUtils.e(str, "ijkVideoView is null");
            return;
        }
        PlayNotification playNotification = new PlayNotification();
        playNotification.value = j10;
        if (msgId != null) {
            playNotification.type = msgId.ordinal() + 1;
        }
        if (msgPayload != null) {
            playNotification.setData(msgPayload.bytes);
            playNotification.setPayload(msgPayload.reserve);
        }
        this.ijkVideoView.onPlayerCommMsg(playNotification);
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onConnectFailed(String str) {
        cancelConnectTimeOutTimer();
        cancelFirstFrameTimer();
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isWebrtcConnectFailed = true;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isWebrtcConnectFailed = true");
        }
        this.ijkVideoView.setmCurrentState(-1);
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onError(0, 0);
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onConnected() {
        String str = TAG;
        LogUtils.i(str, "==mHmRtcAdapter->onConnected");
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isWebrtcConnectSuccess = true;
        } else {
            LogUtils.d(str, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isWebrtcConnectSuccess = true");
        }
        cancelConnectTimeOutTimer();
        startFirstFrameTimer();
        this.ijkVideoView.setmCurrentState(2);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setResultNetData("videoUrl", "success", "", this.mPrepareStartTime);
        }
        this.reconnectCount = 0;
        start();
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onCreateAnswer() {
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientCallback
    public WebSocketSignalClient onCreateWebSocketClient(Context context, String str, WebSocketSignalClient.IWebSocketConnectionEvent iWebSocketConnectionEvent) {
        RtcWebSocketClient rtcWebSocketClient = new RtcWebSocketClient(context, str, new RtcWebSocketClient.RtcWebSocketConnectOptions(), iWebSocketConnectionEvent);
        LogUtils.i(TAG, "onCreateWebSocketClient + signalV2Server:" + str);
        return rtcWebSocketClient;
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onCurrentIpAddress(JSONObject jSONObject) {
        HmStreamerIPCallback hmStreamerIPCallback = this.ijkVideoView.mHmStreamerIPCallback;
        if (hmStreamerIPCallback != null) {
            hmStreamerIPCallback.onConnectionIPChanged(jSONObject);
        }
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onDelayInfoNeedSend(HmFrameDelayInfo hmFrameDelayInfo) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.onDelayInfoNeedSend(hmFrameDelayInfo);
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onDisconnect(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "RTC onDisconnect: " + str);
        LogUtils.d(str2, "Rtc connect is " + this.mHmRtcAdapter.isConnected());
        reconnectRtc(true);
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onError(RtcErrorType rtcErrorType, String str, Object obj) {
        LogUtils.e(TAG, "onError rtcErrorType:" + rtcErrorType + ",errorString:" + str + ",obj:" + obj);
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void onFirstFrameArrival() {
        String str = TAG;
        LogUtils.d(str, "==ijkVideoView onFirstFrameArrival");
        if (this.ijkVideoView == null) {
            LogUtils.d(str, "ijkVideoView is null");
            return;
        }
        cancelFirstFrameTimer();
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onFirstFrameArrival();
        } else {
            LogUtils.d(str, "hmcpVideoPlayerListener is null");
        }
        VideoSink videoSink = this.viewRender;
        if (videoSink instanceof RtcSurfaceViewRenderer) {
            ((RtcSurfaceViewRenderer) videoSink).setLastFrameCallBack(this.ijkVideoView.mGlobalConfig.rtcSurfaceRendererScreenShotEnable);
        }
        TimeUtil.FirstFrameArrival = System.currentTimeMillis();
        LogUtils.i(str, TimeUtil.logString());
        if (this.ijkVideoView.getCurrentApkType() == 1) {
            return;
        }
        HmFrameDelayInfo frameDelayInfo = this.mHmRtcAdapter.getFrameDelayInfo();
        if (frameDelayInfo != null) {
            String codecName = frameDelayInfo.getCodecName();
            String codecImplementationName = frameDelayInfo.getCodecImplementationName();
            LogUtils.e(str, "OperationStream==timeframe---onFirstFrameRender, codes: " + codecName + "; codecImp: " + codecImplementationName);
            CountlyUtil.recordEvent("12045", "codec:" + codecName + "; codecImp:" + codecImplementationName);
        }
        SendSceneState.firstFrameArrival(this.mAppContext, this.ijkVideoView.getHmcpPlayerListener());
        if (this.ijkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().disable();
            this.ijkVideoView.getCloudPlayInfo().reset();
        }
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.BaseRtcPlayer.5
            @Override // java.lang.Runnable
            public void run() {
                BaseRtcPlayer.this.UiMessageSend(102, "");
                AbsIjkVideoView absIjkVideoView = BaseRtcPlayer.this.ijkVideoView;
                if (absIjkVideoView != null) {
                    absIjkVideoView.isCallbackFirstFrameArrived = true;
                    LogUtils.i(BaseRtcPlayer.TAG, "fold screen: FirstFrameArrived");
                    BaseRtcPlayer.this.ijkVideoView.resolutionCheck();
                }
            }
        });
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onFps(int i10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setmPlayerFPS(i10);
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onFrameDecode(int i10) {
        this.mPlayerDecodeTime = i10;
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void onFrameDelay(int i10, int i11, int i12, float f10) {
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onFrameResolution(long j10, long j11) {
        if (j10 == 0 || j11 == 0) {
            return;
        }
        updateRenderView();
        int i10 = (int) j10;
        this.mVideoWidth = i10;
        int i11 = (int) j11;
        this.mVideoHeight = i11;
        if (this.mRenderView != null) {
            updateVideoSize(i10, i11);
        }
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onIDRArrived(long j10) {
        LogUtils.i(TAG, "==mHmRtcAdapter->onIDRArrived");
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onIDRDecoded(long j10) {
        AbsIjkVideoView absIjkVideoView;
        LogUtils.i(TAG, "==mHmRtcAdapter->onIDRDecoded");
        if (this.mRenderView == null || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.getmFrameDataProxy() == null) {
            return;
        }
        this.mRenderView.setFrameProxy(this.ijkVideoView.getmFrameDataProxy().getFrameCallbackImp());
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onIDRReadyToRender(long j10) {
        LogUtils.i(TAG, "==mHmRtcAdapter->onIDRReadyToRender");
    }

    @Override // org.webrtc.haima.HmPlayerCallback
    public void onIDRRendered(long j10) {
        LogUtils.i(TAG, "==mHmRtcAdapter->onIDRRend");
        onFirstFrameArrival();
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onMessage(byte[] bArr) {
        LogUtils.d(TAG, "onMessage");
        this.ijkVideoView.onMessage(bArr);
    }

    @Override // org.webrtc.haima.IOperationDelayEvent
    public void onOperationDelayCallback(long j10) {
        IOperationDelayCallback iOperationDelayCallback;
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null && (iOperationDelayCallback = absIjkVideoView.mOperationDelayCallback) != null) {
            iOperationDelayCallback.onOperationDelayCallback(j10);
        }
        LogUtils.d(TAG, "onOperationDelayCallback, delay:" + j10 + "ms");
    }

    protected void onPlayerRelease() {
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onPlayerRelease();
        }
    }

    protected void onPlayerStop() {
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onPlayerStop();
        }
    }

    @Override // org.webrtc.haima.WebSocketSignalClient.IWebSocketSignalClientCallback
    public void onReleaseWebSocketClient(WebSocketSignalClient webSocketSignalClient) {
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onRemoteBinMessage(byte[] bArr) {
        try {
            String str = new String(bArr, e.A0);
            LogUtils.d(TAG, "onRemoteBinMessage msg:" + str);
        } catch (UnsupportedEncodingException e10) {
            LogUtils.e(TAG, "onRemoteBinMessage e:" + e10);
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onRemoteInputTransportState(final int i10) {
        Handler handler;
        CountlyUtil.recordErrorEvent("onRemoteInputTransportState state:" + i10 + ",1:open;2:close,mInputDatachannelEnable:" + this.mInputDatachannelEnable);
        if (HmcpManager.getInstance().getGameArchitectureType() != GameArchitectureType.ARM || !this.mInputDatachannelEnable || this.ijkVideoView == null || (handler = this.mHandler) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f34077b.lambda$onRemoteInputTransportState$1(i10);
            }
        });
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onRemoteTextMessage(final String str) {
        AbsIjkVideoView absIjkVideoView;
        LogUtils.d(TAG, "onRemoteTextMessage payload:" + str);
        Handler handler = this.mHandler;
        if (handler == null || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.mHMInput == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f34075b.lambda$onRemoteTextMessage$2(str);
            }
        });
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onRemoteVideoEncodeAdaptation(final String str, final int i10, final int i11, final int i12) {
        String str2 = TAG;
        LogUtils.d(str2, "onRemoteVideoEncodeAdaptation codecName: " + str + ", fps: " + i10 + ", res: " + i11 + "x" + i12);
        if (this.mStreamingCallback == null) {
            LogUtils.e(str2, "onRemoteVideoEncodeAdaptation mStreamingCallback == null");
            return;
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34070b.lambda$onRemoteVideoEncodeAdaptation$0(str, i10, i11, i12);
                }
            });
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onRtcError(String str) {
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalConnected() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true");
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalDisconnected() {
        LogUtils.d(TAG, "==onSignalDisconnected");
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalReceiveMessage(String str, String str2) {
        if (this.ijkVideoView == null) {
            return;
        }
        if (str.contains("candidate")) {
            if (this.ijkVideoView.getCloudPlayInfo() != null) {
                this.ijkVideoView.getCloudPlayInfo().isReceiveCandidate = true;
                return;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isReceiveCandidate = true");
                return;
            }
        }
        if ("offer".equalsIgnoreCase(str)) {
            if (this.ijkVideoView.getCloudPlayInfo() != null) {
                this.ijkVideoView.getCloudPlayInfo().isReceiveOffer = true;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isReceiveOffer = true");
            }
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalSendMessage(String str, String str2, JSONObject jSONObject) {
        if (this.ijkVideoView == null) {
            return;
        }
        if ("answer".equalsIgnoreCase(str2)) {
            if (this.ijkVideoView.getCloudPlayInfo() != null) {
                this.ijkVideoView.getCloudPlayInfo().isSendAnswer = true;
                return;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isSendAnswer = true");
                return;
            }
        }
        if (!"join".equalsIgnoreCase(str2) && "candidate".equalsIgnoreCase(str2)) {
            if (this.ijkVideoView.getCloudPlayInfo() != null) {
                this.ijkVideoView.getCloudPlayInfo().isSendCandidate = true;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isSendCandidate = true");
            }
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalStatus(String str) {
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalV2Connected() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true");
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalV2Disconnected() {
        LogUtils.d(TAG, "==onSignalV2Disconnected");
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalV2RecvOffer() {
        LogUtils.d(TAG, "==onSignalV2RecvOffer");
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSignalV2Status(String str) {
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSwitchConnectionCallback(int i10, int i11) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null || absIjkVideoView.getHmcpPlayerListener() == null) {
            return;
        }
        this.ijkVideoView.getHmcpPlayerListener().onSwitchConnectionCallback(i10, i11);
    }

    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        return false;
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onSwitchToRtmpStreaming() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.doSwitchToRtmpStreaming();
        }
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onX86InputClose() {
        LogUtils.d(TAG, "onX86DataChannelClose");
        stopSendX86InputPing();
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onX86InputOpen() {
        LogUtils.d(TAG, "onX86DataChannelOpen");
        stopSendX86InputPing();
        startSendX86InputPing();
        sendX86InputIMStatus();
    }

    @Override // org.webrtc.haima.HmStreamerCallback
    public void onX86InputPong(String str, long j10) {
        LogUtils.d(TAG, "onX86DataChannelPong:" + str);
        processX86DataChannelPong(str, j10);
    }

    protected void rePlay() {
    }

    public void reconnectRtc(boolean z10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.stopUploadX86();
        if (z10) {
            this.reconnectCount = 0;
        }
        if (this.reconnectCount < Constants.CONFIG_RTC_RETRY_COUNT) {
            LogUtils.i(TAG, "==ConnectTimeOutTimer is time out and reconnect");
            this.reconnectCount++;
            CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_TRY_RECONNECTING);
            openVideoAndAudio();
            return;
        }
        if (Constants.CONFIG_RTC_CONNECT_FAILURE_TO_RTMP_SWITCH) {
            if (this.ijkVideoView.isWaitStreamUrlPre()) {
                LogUtils.d(TAG, "Switch to RTMP cancel because pooled restart receive op4.5 but not receive op5");
                CountlyUtil.recordEvent("12200", "Switch to RTMP cancel because pooled restart receive op4.5 but not receive op5");
                return;
            } else {
                HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
                if (hmcpVideoPlayerListener != null) {
                    hmcpVideoPlayerListener.onError(-2, -2);
                    return;
                }
                return;
            }
        }
        String str = TAG;
        LogUtils.i(str, "==ConnectTimeOutTimer is time out and out of reconnect times");
        boolean zIsEmpty = TextUtils.isEmpty(this.mRequestManager.getCloudId());
        String str2 = Constants.ERRORCODE_WEBRTC_010;
        if (!zIsEmpty) {
            str2 = Constants.ERRORCODE_WEBRTC_010 + "-" + this.mRequestManager.getCloudId();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("eventDataVer", "1.0");
            jSONObject.put("version", "1.0");
            if (this.ijkVideoView.getCloudPlayInfo() != null) {
                jSONObject.put("statusCode", this.ijkVideoView.getCloudPlayInfo().reportStatusCode);
            }
            jSONObject.put("stopByApp", 0);
            jSONObject.put("errorCode", str2);
            LogUtils.i(str, jSONObject.toString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME_ERROR, jSONObject.toString());
        this.ijkVideoView.callbackHmcpError(new ErrorInfo().put("errorCode", str2).put("rootCause", "reconnect RTC").put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_net_timeout)), 23);
        release(true);
    }

    public void release(boolean z10) {
        doRelease(z10, true);
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void reportFrameDelayInfo(String str) {
    }

    public void requestKeyFrame() {
        if (this.mHmRtcAdapter == null) {
            LogUtils.e(TAG, "Cannot request keyframe - RTC adapter is null");
        } else {
            LogUtils.d(TAG, "Requesting keyframe from server");
            this.mHmRtcAdapter.requestKeyFrame();
        }
    }

    public void sendSceneChangedMessage(String str, String str2) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.sendSceneChangedMessage(str, str2);
    }

    public void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener) {
        if (colorMode == null) {
            LogUtils.d(TAG, "set color mode fail, ColorMode is null");
            if (colorModeListener != null) {
                colorModeListener.onColorModeResult(false, "set color mode fail, ColorMode is null");
                return;
            }
            return;
        }
        if (!checkColorMode(colorMode.getMode())) {
            String str = "set color mode fail, illegal mode: " + colorMode.getMode();
            LogUtils.d(TAG, str);
            if (colorModeListener != null) {
                colorModeListener.onColorModeResult(false, str);
                return;
            }
            return;
        }
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView == null) {
            LogUtils.d(TAG, "set color mode fail, Render is not init");
            if (colorModeListener != null) {
                colorModeListener.onColorModeResult(false, "set color mode fail, Render is not init");
                return;
            }
            return;
        }
        if (iRenderView.enablePandaMode(colorMode.getMode() == 1)) {
            LogUtils.d(TAG, "set color mode success");
            if (colorModeListener != null) {
                colorModeListener.onColorModeResult(true, null);
                return;
            }
            return;
        }
        LogUtils.d(TAG, "set color mode fail");
        if (colorModeListener != null) {
            colorModeListener.onColorModeResult(false, "set color mode fail");
        }
    }

    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null || absIjkVideoView.getmFrameDataProxy() == null) {
            return;
        }
        this.ijkVideoView.getmFrameDataProxy().setHmFrameCallback(hmFrameCallback);
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView != null) {
            iRenderView.setFrameProxy(this.ijkVideoView.getmFrameDataProxy().getFrameCallbackImp());
        }
    }

    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.mHmStreamerIPCallback = hmStreamerIPCallback;
    }

    public void setHmcpVideoPlayerListener(HmcpVideoPlayerListener hmcpVideoPlayerListener) {
        this.hmcpVideoPlayerListener = hmcpVideoPlayerListener;
    }

    public void setImageSize() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getScreenWidth() == 0 && this.ijkVideoView.getScreenHeight() == 0) {
            this.ijkVideoView.setScreenWidth(ConfigUtil.getScreenWidth(this.mAppContext));
            this.ijkVideoView.setScreenHeight(ConfigUtil.getScreenHeight(this.mAppContext));
        }
        boolean z10 = true;
        if (getScreenOrientation() != ScreenOrientation.LANDSCAPE ? this.ijkVideoView.getScreenHeight() <= this.ijkVideoView.getScreenHeight() : this.ijkVideoView.getScreenWidth() >= this.ijkVideoView.getScreenHeight()) {
            z10 = false;
        }
        if (z10) {
            int screenWidth = this.ijkVideoView.getScreenWidth();
            AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
            absIjkVideoView2.setScreenWidth(absIjkVideoView2.getScreenHeight());
            this.ijkVideoView.setScreenHeight(screenWidth);
        }
        LogUtils.e(TAG, "setImageSize  mOrientation = " + getScreenOrientation() + ":" + this.ijkVideoView.getScreenWidth() + ":" + this.ijkVideoView.getScreenHeight());
    }

    public void setInputPingPongMs(int i10) {
        String str = TAG;
        LogUtils.d(str, "setInputPingPongMs " + i10);
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            hmRtcAdapter.setInputPingPongMs(i10);
        } else {
            LogUtils.e(str, "Cannot setInputPingPongMs - RTC adapter is null");
        }
    }

    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.mOperationDelayCallback = iOperationDelayCallback;
    }

    public void setRender(int i10) {
        if (this.ijkVideoView == null) {
            return;
        }
        if (i10 == 0) {
            setRenderView(null);
            return;
        }
        if (i10 == 1) {
            LogUtils.i(TAG, "RENDER_SURFACE_VIEW");
            RtcSurfaceViewRenderer rtcSurfaceViewRenderer = new RtcSurfaceViewRenderer(this.mAppContext);
            this.viewRender = rtcSurfaceViewRenderer;
            setRenderView(rtcSurfaceViewRenderer);
            return;
        }
        if (i10 != 2) {
            LogUtils.e(TAG, String.format(Locale.US, "invalid render %d\n", Integer.valueOf(i10)));
            return;
        }
        LogUtils.i(TAG, "RENDER_TEXTURE_VIEW");
        RtcTextureViewRenderer rtcTextureViewRenderer = new RtcTextureViewRenderer(this.mAppContext);
        this.viewRender = rtcTextureViewRenderer;
        setRenderView(rtcTextureViewRenderer);
    }

    public void setStreamingCallback(StreamingCallback streamingCallback) {
        this.mStreamingCallback = streamingCallback;
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        this.surfaceTexture = surfaceTexture;
    }

    public void setmRenderView(IRenderView iRenderView) {
        this.mRenderView = iRenderView;
    }

    public void start() {
        if (this.ijkVideoView.mGamePlatformType == GamePlatformType.ARM && (TextUtils.isEmpty(this.mSignalUrl) || TextUtils.isEmpty(this.mCoTurnUrl) || TextUtils.isEmpty(this.mRoomId) || this.ijkVideoView == null)) {
            return;
        }
        String str = TAG;
        LogUtils.i(str, "===start====" + isInPlaybackState() + " mCurrentStat: " + this.ijkVideoView.getmCurrentState());
        if (isInPlaybackState() && this.ijkVideoView.getmCurrentState() != 3) {
            if (this.ijkVideoView.getCurrentApkType() != 1 && !this.ijkVideoView.isStartPlayCallBack()) {
                UiMessageSend(2, "");
                this.ijkVideoView.setIsStartPlayCallBackFlag(true);
            }
            LogUtils.i(str, "==mMediaPlayer===start====");
            if (this.ijkVideoView.getCurResolution() == null || this.ijkVideoView.getSetResolution() == null || TextUtils.equals(this.ijkVideoView.getCurResolution().f33828id, this.ijkVideoView.getSetResolution().f33828id)) {
                com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) (this.ijkVideoView.getSetResolution() != null ? this.ijkVideoView.getSetResolution().peakBitRate : ""));
                sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_play), jSONObject.toJSONString());
            } else {
                LogUtils.i(str, "===isNeedShowSwitchSuccess====");
                com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_result), (Object) 1);
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_id), (Object) this.ijkVideoView.getSetResolution().f33828id);
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) this.ijkVideoView.getSetResolution().peakBitRate);
                sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_cred), jSONObject2.toJSONString());
            }
            this.ijkVideoView.setmCurrentState(3);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            absIjkVideoView.setmCurResolution(absIjkVideoView.getSetResolution());
        }
        this.ijkVideoView.setmTargetState(3);
    }

    public void startPlay(String str, String str2, String str3, String str4, String str5, SdkStreamPayloadData sdkStreamPayloadData, RtcTurnInfo rtcTurnInfo) {
        this.sdkStreamPayloadData = sdkStreamPayloadData;
        String str6 = TAG;
        LogUtils.i(str6, "=OperationStream=signalUrl===>" + str + "===signalV2Url==>" + str3 + "===coTurnUrl==>" + str2 + "===roomId==>" + str4);
        if (this.ijkVideoView.mGamePlatformType == GamePlatformType.ARM && (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str4))) {
            CountlyUtil.recordErrorEvent("startPlay got bad signalUrl: " + str + " OR bad coTurnUrl: " + str2 + " OR bad roomId: " + str4);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.playRequest();
            }
            CountlyUtil.recordErrorEvent("retry 211 request");
            return;
        }
        this.mSignalUrl = str;
        this.mCoTurnUrl = str2;
        this.mSignalV2Url = str3;
        this.mRoomId = str4;
        this.mInstanceIP = str5;
        this.ijkVideoView.mNeedToSwitchRtmp = false;
        if (rtcTurnInfo != null) {
            this.mTurnUrl = rtcTurnInfo.turnUrl;
            this.mIpV6TurnUrl = rtcTurnInfo.ipV6TurnUrl;
            this.mTurnUserName = rtcTurnInfo.turnUserName;
            this.mTurnPassword = rtcTurnInfo.turnPassword;
            LogUtils.d(str6, "startPlay  mTurnUrl=" + this.mTurnUrl + " mIpV6TurnUrl=" + this.mIpV6TurnUrl + " mTurnUserName=" + this.mTurnUserName + " mTurnPassword=" + this.mTurnPassword);
        }
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter == null || !hmRtcAdapter.isConnected()) {
            LogUtils.d(str6, "RTC is connected");
            setVideoURI();
        } else {
            LogUtils.d(str6, "RTC is connected");
            fastResolutionSceneHandle();
        }
        TimeUtil.MediaCodecCreate = System.currentTimeMillis();
        start();
        AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
        if (absIjkVideoView2 == null) {
            return;
        }
        absIjkVideoView2.setmTargetState(3);
    }

    public void stopPlay() {
        stopPlay(true, true);
    }

    public void stopPlayback() {
        doRelease(true, true);
    }

    public boolean switchBandWidthDetection(boolean z10) {
        LogUtils.d(TAG, "switchBandWidthDetection status:" + z10);
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            if (hmRtcAdapter.setParameter(ConstantsInternal.TYPE_BWC, z10 ? "start" : ConstantsInternal.STOP)) {
                return true;
            }
        }
        return false;
    }

    public void switchMobileNetworkTransport(boolean z10) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_SWITCH_MOBILE_NET_TRANSPORT, "switchMobileNetworkTransport:" + z10);
        HmRtcAdapter hmRtcAdapter = this.mHmRtcAdapter;
        if (hmRtcAdapter != null) {
            hmRtcAdapter.SwitchToCellularConnection(z10);
            LogUtils.d(TAG, "switchMobileNetworkTransport: " + z10);
        }
    }

    public void turnOffSound() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.setCurrentSound(0.0f);
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "turnOffSound:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
        this.mHmRtcAdapter.setSpeakerMute(true);
    }

    public void turnOnSound() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.setCurrentSound(1.0f);
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "turnOnSound:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
        this.mHmRtcAdapter.setSpeakerMute(false);
    }

    public void unbindEGLSurface() {
        VideoSink videoSink = this.viewRender;
        if (videoSink instanceof SurfaceViewRenderer) {
            ((SurfaceViewRenderer) videoSink).releaseEglSurface();
            LogUtils.d(TAG, "unbindEGLSurface->SurfaceViewRenderer->releaseEglSurface success");
        } else if (videoSink instanceof TextureViewRenderer) {
            ((TextureViewRenderer) videoSink).releaseEglSurface();
            LogUtils.d(TAG, "unbindEGLSurface->TextureViewRenderer->releaseEglSurface success");
        }
    }

    public void updateRenderView() {
        int i10 = getScreenOrientation() == ScreenOrientation.PORTRAIT ? 90 : 0;
        this.mVideoRotationDegree = i10;
        if (i10 == 90) {
            this.mRenderView.setVideoRotation(i10);
        }
    }

    public void stopPlay(boolean z10, boolean z11) {
        HmIMEManager.getInstance().hideInput();
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setStartIM(false);
        LogUtils.i(TAG, "==stopPlay=== CoTurnUrl: " + this.mCoTurnUrl + "; SignalUrl: " + this.mSignalUrl + "; RoomId: " + this.mRoomId);
        if (this.ijkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().reset();
        }
        if (z11) {
            onPlayerStop();
        }
        if (this.ijkVideoView.mGamePlatformType == GamePlatformType.ARM && (TextUtils.isEmpty(this.mCoTurnUrl) || TextUtils.isEmpty(this.mSignalUrl) || TextUtils.isEmpty(this.mRoomId))) {
            return;
        }
        if (z10) {
            initRenders();
        }
        release(true);
    }
}
