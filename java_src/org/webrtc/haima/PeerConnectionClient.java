package org.webrtc.haima;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.haima.hmcp.Constants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.bm;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hmwebrtc.CandidatePairChangeEvent;
import org.hmwebrtc.CountlyObserver;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.DefaultVideoDecoderFactory;
import org.hmwebrtc.DefaultVideoEncoderFactory;
import org.hmwebrtc.EglBase;
import org.hmwebrtc.HaimaPropertyNames;
import org.hmwebrtc.IceCandidate;
import org.hmwebrtc.Logging;
import org.hmwebrtc.MediaConstraints;
import org.hmwebrtc.MediaStream;
import org.hmwebrtc.MediaStreamTrack;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.PeerConnectionFactory;
import org.hmwebrtc.RTCStatsReport;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.RtpReceiver;
import org.hmwebrtc.RtpTransceiver;
import org.hmwebrtc.SdpObserver;
import org.hmwebrtc.SessionDescription;
import org.hmwebrtc.SoftwareVideoDecoderFactory;
import org.hmwebrtc.SoftwareVideoEncoderFactory;
import org.hmwebrtc.StatsObserver;
import org.hmwebrtc.StatsReport;
import org.hmwebrtc.VideoCapturer;
import org.hmwebrtc.VideoDecoderFactory;
import org.hmwebrtc.VideoEncoderFactory;
import org.hmwebrtc.VideoSink;
import org.hmwebrtc.VideoTrack;
import org.hmwebrtc.audio.AudioDeviceModule;
import org.hmwebrtc.audio.JavaAudioDeviceModule;
import org.hmwebrtc.audio.WebRtcAudioTrack;
import org.hmwebrtc.log.WebrtcLoggableHelp;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.audio.HmAudioManager;
import org.webrtc.haima.beans.GamePlatformType;
import org.webrtc.haima.camera.HmCameraManager;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.VirtualDeviceTransportType;
import org.webrtc.haima.util.ExceptionUtils;
import org.webrtc.haima.util.RtcProtoBufUtil;

/* JADX INFO: loaded from: classes10.dex */
public class PeerConnectionClient {
    private static final String AUDIO_AUTO_GAIN_CONTROL_CONSTRAINT = "googAutoGainControl";
    private static final String AUDIO_CODEC_ISAC = "ISAC";
    private static final String AUDIO_CODEC_OPUS = "opus";
    private static final String AUDIO_CODEC_PARAM_BITRATE = "maxaveragebitrate";
    private static final String AUDIO_ECHO_CANCELLATION_CONSTRAINT = "googEchoCancellation";
    private static final String AUDIO_HIGH_PASS_FILTER_CONSTRAINT = "googHighpassFilter";
    private static final String AUDIO_NOISE_SUPPRESSION_CONSTRAINT = "googNoiseSuppression";
    private static final int COUNT_DOWN_LATCH_NUMBER = 1;
    private static final long DC_MAX_BUFFER_SIZE = 256000;
    private static final String DISABLE_WEBRTC_AGC_FIELDTRIAL = "WebRTC-Audio-MinimizeResamplingOnMobile/Enabled/";
    private static final String HM_NACK_BUFFER_CONFIG_FIELDTRIAL = "WebRTC-NACK-Buffer-Limit/%d/WebRTC-NACK-Buffer-Salt/%d/WebRTC-NACK-Buffer-Force-Limit/%d/";
    private static final String HM_RETURN_OK = "HM_RET_OK";
    public static final String ICE_CONNECTION_FAILED = "ICE_CONNECTION_FAILED";
    public static final String PEER_CONNECTION_FAILED = "PEER_CONNECTION_FAILED";
    private static final String RTCEVENTLOG_OUTPUT_DIR_NAME = "rtc_event_log";
    private static final String SMOOTHLY_DECODING = "WebRTC-Smoothly-Decoding-On/Enabled/WebRTC-Smoothly-Decoding-Max-Buffers/%d/WebRTC-Smoothly-Decoding-Min-Buffers/%d/WebRTC-Smoothly-Decoding-Max-Delay/%d/WebRTC-Smoothly-Decoding-Min-Delay/%d/";
    private static final String TAG = "PeerConnectionClient";
    private static final int UDP_PORT_ERROR_CREATE_FAILED = 1;
    private static final int UDP_PORT_ERROR_TRANSPORT_FAILED = 2;
    private static final String VIDEO_CODEC_H264 = "H264";
    public static final String VIDEO_CODEC_H264_BASELINE = "H264 Baseline";
    public static final String VIDEO_CODEC_H264_HIGH = "H264 High";
    public static final String VIDEO_CODEC_H265 = "H265";
    private static final String VIDEO_CODEC_PARAM_START_BITRATE = "x-google-start-bitrate";
    private static final String VIDEO_CODEC_VP8 = "VP8";
    private static final String VIDEO_CODEC_VP9 = "VP9";
    private static final String VIDEO_FLEXFEC_DISABLE_FIELDTRIAL = "WebRTC-FlexFEC-03-Advertised/Disabled/WebRTC-FlexFEC-03/Disabled/";
    private static final String VIDEO_FLEXFEC_ENABLE_FIELDTRIAL = "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/";
    private static final String VIDEO_FRAME_ELAPSED_TIME_REPORT_FIELDTRIAL = "WebRTC-Video-Frame-Elapsed-Time-Report/Enabled/";
    private static final String VIDEO_RSFEC_FIELDTRIAL = "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/WebRTC-RsFEC/Enabled/";
    private static final String VIDEO_VP8_INTEL_HW_ENCODER_FIELDTRIAL = "WebRTC-IntelVP8/Enabled/";
    private static final String WEAKLY_NET_REPORT_FIELDTRIAL = "WebRTC-Weakly-Net-Report/Enabled/";
    private static GamePlatformType mGamePlatformType;
    private static GamePlatformType mRealGamePlatformType;
    private AudioDeviceModule adm;
    private final SDPObserver answerObserver;
    private final Context appContext;
    private MediaConstraints audioConstraints;
    private final boolean dataChannelEnabled;
    private final DcObserver dcObserver;
    private final PeerConnectionEvents events;
    private final ExecutorService executor;

    @Nullable
    private PeerConnectionFactory factory;
    private HmDataChannelManager hmDataChannelManager;
    private List<PeerConnection.IceServer> iceServers;
    private boolean isError;

    @Nullable
    private SessionDescription localSdp;
    private RtpTransceiver.RtpTransceiverDirection mAudioDirection;
    private String mCacheAccProxyIp;
    private String mCacheAccProxyPW;
    private int mCacheAccProxyPort;
    private String mCacheAccProxyUser;
    private boolean mCacheSwitchToCellularConnection;
    private HmRtcCommandChannel mCommandChannel;
    public HmRtcCommandListener mCommandListener;
    private CountDownLatch mCountDownLatch;
    private CountlyController mCountlyController;
    DCManager mDCManager;
    private DataChannel mDataChannel;
    private HmDCObserverVQA mHmRemoteVQAStats;
    HmInputHelper mInputHelper;
    private boolean mIsRTCConnected;
    private final LocalSDPObserver mLocalObserver;
    private boolean mPeeConnectionOpening;
    private Object mPeerConnectionLock;
    private final X86RemoteSDPObserver mRemoteObserver;
    private StreamerInfoCollector mStreamerInfoCollector;
    private StreamerStatsCollector mStreamerStatsCollector;
    private HmTransDeviceManager mTransDeviceManager;
    private RtpTransceiver.RtpTransceiverDirection mVideoDirection;
    private WebrtcLoggableHelp mWebrtcLoggable;
    private HaimaDataChannel.Listener mx86SendLargeDataBlcokListener;
    private Object mx86SendLock;
    private Object myself;
    private final SDPObserver offerObserver;
    private final PCCountlyObserver pcCountlyObserver;
    private final PCObserver pcObserver;

    @Nullable
    private PeerConnection peerConnection;
    private final PeerConnectionParameters peerConnectionParameters;
    private boolean preferIsac;

    @Nullable
    private List<IceCandidate> queuedRemoteCandidates;

    @Nullable
    private List<VideoSink> remoteSinks;

    @Nullable
    private VideoTrack remoteVideoTrack;
    private boolean renderVideo;
    private final EglBase rootEglBase;
    private MediaConstraints sdpMediaConstraints;
    private final Timer statsTimer;
    StatsReport.Value[][] streamerReportsArray;
    private WeakReference<WebRtcAudioTrack> webRtcAudioTrackRef;

    /* JADX INFO: renamed from: org.webrtc.haima.PeerConnectionClient$7, reason: invalid class name */
    class AnonymousClass7 extends TimerTask {
        AnonymousClass7() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            PeerConnectionClient.this.getStats();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96069b.lambda$run$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CountlyController {
        private CountlyController() {
        }

        public void enableUpstream(final boolean z10) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.c0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96073b.lambda$enableUpstream$0(z10);
                }
            });
        }

        /* JADX INFO: renamed from: enableUpstreamInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$enableUpstream$0(boolean z10) {
            if (PeerConnectionClient.this.peerConnection != null) {
                Logging.i(PeerConnectionClient.TAG, "enableUpstreamInternal = " + z10);
                PeerConnectionClient.this.peerConnection.setPropertyString(HaimaPropertyNames.COUNTLY_UP_STREAM, "enable:" + (z10 ? 1 : 0));
            }
        }
    }

    static class DCManager {
        HashMap<String, HmDCBase> mDCMap;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean addDC(String str, HmDCBase hmDCBase) {
            if (hmDCBase == null || str == null) {
                return false;
            }
            this.mDCMap.put(str, hmDCBase);
            return true;
        }

        public static DataChannel createChannel(PeerConnection peerConnection, String str, boolean z10) {
            DataChannel.Init init = new DataChannel.Init();
            init.ordered = z10;
            return peerConnection.createDataChannel(str, init);
        }

        private boolean hasDC(String str) {
            return this.mDCMap.containsKey(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            Iterator<HmDCBase> it2 = this.mDCMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().release();
            }
            this.mDCMap.clear();
        }

        private HmDCBase removeDC(String str) {
            return this.mDCMap.remove(str);
        }

        private DCManager() {
            this.mDCMap = new HashMap<>();
        }
    }

    public static class DataChannelParameters {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public final int f96064id;
        public final int maxRetransmitTimeMs;
        public final int maxRetransmits;
        public final boolean negotiated;
        public final boolean ordered;
        public final String protocol;

        public DataChannelParameters(boolean z10, int i10, int i11, String str, boolean z11, int i12) {
            this.ordered = z10;
            this.maxRetransmitTimeMs = i10;
            this.maxRetransmits = i11;
            this.protocol = str;
            this.negotiated = z11;
            this.f96064id = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DcObserver implements DataChannel.Observer {
        private DcObserver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMessage$0(byte[] bArr) {
            PeerConnectionClient.this.events.onMessage(bArr, PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMessage$1(String str, long j10) {
            PeerConnectionClient.this.events.onX86DataChannelPong(str, j10, PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMessage$2(byte[] bArr) {
            PeerConnectionClient.this.events.onDcJsonMessage(bArr, PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChange$3() {
            PeerConnectionClient.this.events.onX86DataChannelClose(PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChange$4() {
            PeerConnectionClient.this.events.onX86DataChannelOpen(PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChange$5() {
            PeerConnectionClient.this.events.onX86DataChannelClose(PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onBufferedAmountChange(long j10) {
            if (PeerConnectionClient.this.mDataChannel == null) {
                return;
            }
            try {
                Logging.d(PeerConnectionClient.TAG, "DataChannel: onBufferedAmountChange: " + PeerConnectionClient.this.mDataChannel.state() + ",l:" + j10);
            } catch (Exception unused) {
            }
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onMessage(DataChannel.Buffer buffer) {
            ByteBuffer byteBuffer = buffer.data;
            int iRemaining = byteBuffer.remaining();
            final byte[] bArr = new byte[iRemaining];
            if (iRemaining < 6) {
                return;
            }
            byteBuffer.get(bArr);
            if (Arrays.equals(RtcProtoBufUtil.PROTO_COMM_HEADER, Arrays.copyOfRange(bArr, 0, 6))) {
                PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96094b.lambda$onMessage$0(bArr);
                    }
                });
                return;
            }
            final String str = new String(bArr);
            Logging.d(PeerConnectionClient.TAG, "dataStr:" + str);
            if (str.startsWith("pong:")) {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96098b.lambda$onMessage$1(str, jCurrentTimeMillis);
                    }
                });
            } else if (PeerConnectionClient.isOutputJson(str)) {
                PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96106b.lambda$onMessage$2(bArr);
                    }
                });
            } else if (str.startsWith("BitrateModifiedTo:")) {
                RtcCountlyUtil.recordErrorEvent(str);
            }
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onStateChange() {
            if (PeerConnectionClient.this.mDataChannel == null) {
                PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f96085b.lambda$onStateChange$3();
                    }
                });
                return;
            }
            try {
                Logging.d(PeerConnectionClient.TAG, "DataChannel: onStateChange: " + PeerConnectionClient.this.mDataChannel.state());
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_DATA_CHANNEL_STATE, PeerConnectionClient.this.mDataChannel.state().name());
                if (DataChannel.State.OPEN == PeerConnectionClient.this.mDataChannel.state()) {
                    PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.e0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f96089b.lambda$onStateChange$4();
                        }
                    });
                } else if (DataChannel.State.CLOSING == PeerConnectionClient.this.mDataChannel.state()) {
                    PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f96091b.lambda$onStateChange$5();
                        }
                    });
                }
            } catch (Exception unused) {
            }
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onWritableState(boolean z10) {
            HaimaDataChannel.Listener listener;
            Logging.w(PeerConnectionClient.TAG, "onWritableState writable:" + z10);
            synchronized (PeerConnectionClient.this.mx86SendLock) {
                listener = PeerConnectionClient.this.mx86SendLargeDataBlcokListener;
            }
            if (listener != null) {
                try {
                    listener.onStateChange(-1, 2, 0L);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LocalSDPObserver implements SdpObserver {
        private LocalSDPObserver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSuccess$0(SessionDescription sessionDescription) {
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("PeerConnection is null when local sdp created, is error: " + PeerConnectionClient.this.isError, PeerConnectionClient.this.myself);
                return;
            }
            Logging.d(PeerConnectionClient.TAG, "Set local SDP from " + sessionDescription.type);
            PeerConnectionClient.this.peerConnection.setLocalDescription(PeerConnectionClient.this.mLocalObserver, sessionDescription);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSetSuccess$1() {
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("PeerConnection is null when set SDP success, is error: " + PeerConnectionClient.this.isError, PeerConnectionClient.this.myself);
                return;
            }
            Logging.d(PeerConnectionClient.TAG, "Local SDP set successfully");
            try {
                PeerConnectionClient.this.events.onLocalDescriptionSet(PeerConnectionClient.this.localSdp, PeerConnectionClient.this.myself);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onLocalDescription-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "create offer failure: " + str);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_CREATE_OFFER_FAILED, str);
            PeerConnectionClient.this.events.onSDPError("create sdp error: " + str, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateSuccess(SessionDescription sessionDescription) {
            if (PeerConnectionClient.this.localSdp != null) {
                Logging.e(PeerConnectionClient.TAG, "Multiple SDP create.");
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onCreateOff-->Multiple SDP create.", PeerConnectionClient.this.myself);
                return;
            }
            String strReplace = sessionDescription.description.replace("useinbandfec=1", "useinbandfec=1;stereo=1");
            if (PeerConnectionClient.this.preferIsac) {
                strReplace = PeerConnectionClient.preferCodec(strReplace, PeerConnectionClient.AUDIO_CODEC_ISAC, true);
            }
            if (PeerConnectionClient.this.peerConnectionParameters.videoCodec != null && !PeerConnectionClient.this.peerConnectionParameters.videoCodec.isEmpty()) {
                strReplace = PeerConnectionClient.preferCodec(strReplace, PeerConnectionClient.getSdpVideoCodecName(PeerConnectionClient.this.peerConnectionParameters), false);
            }
            final SessionDescription sessionDescription2 = new SessionDescription(sessionDescription.type, strReplace);
            PeerConnectionClient.this.localSdp = sessionDescription2;
            PeerConnectionClient.this.events.onLocalDescriptionCreated(PeerConnectionClient.this.localSdp, PeerConnectionClient.this.myself);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.j0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96110b.lambda$onCreateSuccess$0(sessionDescription2);
                }
            });
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "set sdp failure: " + str);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_CREATE_OFFER_FAILED, str);
            PeerConnectionClient.this.events.onSDPError("set sdp is failure: " + str, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetSuccess() {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.k0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96115b.lambda$onSetSuccess$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PCCountlyObserver extends CountlyObserver {
        private PCCountlyObserver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCountlyCallback$0(int i10, long j10, String str) {
            try {
                PeerConnectionClient.this.events.onCountlyCallback(i10, j10, str);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onCountlyCallback-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        @Override // org.hmwebrtc.CountlyObserver
        public void onCountlyCallback(final int i10, final long j10, final String str) {
            Logging.d(PeerConnectionClient.TAG, "onCountlyCallback event:" + i10 + ",time:" + j10 + ",data:" + str);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96116b.lambda$onCountlyCallback$0(i10, j10, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PCObserver implements PeerConnection.Observer {
        private PCObserver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAccProxyConnectStateChange$6(int i10) {
            try {
                Logging.i(PeerConnectionClient.TAG, "onAccProxyConnectStateChange code:" + i10);
                PeerConnectionClient.this.events.onAccProxyConnectStateChange(i10, PeerConnectionClient.this.myself);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onAccProxyConnectStateChange-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConnectionChange$3(PeerConnection.PeerConnectionState peerConnectionState) {
            Logging.d(PeerConnectionClient.TAG, "PeerConnectionState: " + peerConnectionState);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_CONNECTION_CHANGE_CALLBACK, "PeerConnectionState: " + peerConnectionState + ",this:" + this);
            if (peerConnectionState == PeerConnection.PeerConnectionState.CONNECTED) {
                try {
                    if (PeerConnectionClient.this.mIsRTCConnected) {
                        Logging.i(PeerConnectionClient.TAG, "RTC reconnect succeed, report event only.");
                        PeerConnectionClient.this.events.onReConnected(PeerConnectionClient.this.myself);
                        return;
                    }
                    PeerConnectionClient.this.mIsRTCConnected = true;
                    PeerConnectionClient.this.events.onConnected(PeerConnectionClient.this.myself);
                    HmRtcCommandListener hmRtcCommandListener = PeerConnectionClient.this.mCommandListener;
                    if (hmRtcCommandListener != null) {
                        hmRtcCommandListener.onAvailable(true);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onConnected-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
                    return;
                }
            }
            if (peerConnectionState == PeerConnection.PeerConnectionState.DISCONNECTED) {
                try {
                    PeerConnectionClient.this.events.onDisconnected(PeerConnectionClient.PEER_CONNECTION_FAILED, PeerConnectionClient.this.myself);
                    return;
                } catch (Exception e11) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onDisconnected-->" + ExceptionUtils.toString(e11), PeerConnectionClient.this.myself);
                    return;
                }
            }
            if (peerConnectionState != PeerConnection.PeerConnectionState.FAILED && peerConnectionState == PeerConnection.PeerConnectionState.CLOSED) {
                try {
                    if (PeerConnectionClient.this.mCountDownLatch != null) {
                        Logging.e(PeerConnectionClient.TAG, "Someone call disconnect.");
                        PeerConnectionClient.this.mCountDownLatch.countDown();
                    }
                    HmRtcCommandListener hmRtcCommandListener2 = PeerConnectionClient.this.mCommandListener;
                    if (hmRtcCommandListener2 != null) {
                        hmRtcCommandListener2.onAvailable(false);
                    }
                } catch (Exception e12) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onClosed-->" + ExceptionUtils.toString(e12), PeerConnectionClient.this.myself);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onIceCandidate$0(IceCandidate iceCandidate) {
            try {
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_REMOTE_CANDIDATE, iceCandidate.toString());
                PeerConnectionClient.this.events.onIceCandidate(iceCandidate, PeerConnectionClient.this.myself);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onIceCandidate-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onIceCandidatesRemoved$1(IceCandidate[] iceCandidateArr) {
            try {
                PeerConnectionClient.this.events.onIceCandidatesRemoved(iceCandidateArr, PeerConnectionClient.this.myself);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onIceCandidatesRemoved-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onIceConnectionChange$2(PeerConnection.IceConnectionState iceConnectionState) {
            Logging.d(PeerConnectionClient.TAG, "IceConnectionState: " + iceConnectionState);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ICE_CONNECTION_CHANGE_CALLBACK, "IceConnectionState: " + iceConnectionState + ",this:" + this);
            if (iceConnectionState == PeerConnection.IceConnectionState.CONNECTED) {
                try {
                    PeerConnectionClient.this.events.onIceConnected(PeerConnectionClient.this.myself);
                    return;
                } catch (Exception e10) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onIceConnected-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
                    return;
                }
            }
            if (iceConnectionState == PeerConnection.IceConnectionState.DISCONNECTED) {
                try {
                    PeerConnectionClient.this.events.onIceDisconnected(PeerConnectionClient.this.myself);
                    return;
                } catch (Exception e11) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onIceDisconnected-->" + ExceptionUtils.toString(e11), PeerConnectionClient.this.myself);
                    return;
                }
            }
            if (iceConnectionState == PeerConnection.IceConnectionState.FAILED) {
                if (!PeerConnectionClient.this.mIsRTCConnected) {
                    Logging.e(PeerConnectionClient.TAG, "ICE connection failed, maybe need retry or not.");
                    PeerConnectionClient.this.reportError(PeerConnectionClient.ICE_CONNECTION_FAILED);
                    return;
                }
                PeerConnectionClient.this.mIsRTCConnected = false;
                try {
                    PeerConnectionClient.this.events.onDisconnected(PeerConnectionClient.ICE_CONNECTION_FAILED, PeerConnectionClient.this.myself);
                    PeerConnectionClient.this.mInputHelper.deleteInputchannel(null);
                } catch (Exception e12) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onDisconnected-->" + ExceptionUtils.toString(e12), PeerConnectionClient.this.myself);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRemoteVideoEncodeAdaptation$4(String str, int i10, int i11, int i12) {
            if (PeerConnectionClient.this.isError) {
                return;
            }
            PeerConnectionClient.this.events.onRemoteVideoEncodeAdaptation(str, i10, i11, i12, PeerConnectionClient.this.myself);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSwitchConnectionCallback$7(int i10, int i11) {
            try {
                Logging.i(PeerConnectionClient.TAG, "onSwitchConnectionCallback code:" + i10 + " network_type:" + i11);
                PeerConnectionClient.this.events.onSwitchConnectionCallback(i10, i11, PeerConnectionClient.this.myself);
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onSwitchConnectionCallback-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:9:0x001d  */
        public /* synthetic */ void lambda$onUdpProtocolUnavailable$5(int i10) {
            if (i10 == 1) {
                try {
                    if (HmRtcGlobalConfig.rtcUdpPortCfg.isEnableSwitchRtmp()) {
                        PeerConnectionClient.this.events.onSwitchToRtmpStreaming(PeerConnectionClient.this.myself);
                    } else if (i10 == 2 && HmRtcGlobalConfig.rtcStunReqResendCfg.isEnableSwitchRtmp()) {
                        PeerConnectionClient.this.events.onSwitchToRtmpStreaming(PeerConnectionClient.this.myself);
                    }
                } catch (Exception e10) {
                    PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onUdpProtocolUnavailable-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
                }
            } else if (i10 == 2) {
                PeerConnectionClient.this.events.onSwitchToRtmpStreaming(PeerConnectionClient.this.myself);
            }
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onAccProxyConnectStateChange(final int i10) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.s0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96150b.lambda$onAccProxyConnectStateChange$6(i10);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onAddStream(MediaStream mediaStream) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ADD_STREAM_CALLBACK, "onAddStream:" + this);
            Logging.d(PeerConnectionClient.TAG, "onAddStream: " + mediaStream.toString());
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onAddTrack(RtpReceiver rtpReceiver, MediaStream[] mediaStreamArr) {
            Logging.d(PeerConnectionClient.TAG, "onAddTrack mGamePlatformType: " + PeerConnectionClient.mGamePlatformType);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ADD_TRACK_CALLBACK, "onAddTrack:" + this);
            MediaStreamTrack mediaStreamTrackTrack = rtpReceiver.track();
            if (mediaStreamTrackTrack instanceof VideoTrack) {
                Logging.d(PeerConnectionClient.TAG, "onAddTrack kind: " + mediaStreamTrackTrack.kind() + " id: " + mediaStreamTrackTrack.id());
                VideoTrack videoTrack = (VideoTrack) mediaStreamTrackTrack;
                videoTrack.setEnabled(true);
                for (VideoSink videoSink : PeerConnectionClient.this.remoteSinks) {
                    videoTrack.addSink(videoSink);
                    Logging.d(PeerConnectionClient.TAG, "video sink[" + videoSink + "] is added to video track: " + videoTrack.id());
                }
            }
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onConnectionChange(final PeerConnection.PeerConnectionState peerConnectionState) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.m0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96121b.lambda$onConnectionChange$3(peerConnectionState);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onDataChannel(DataChannel dataChannel) {
            Logging.d(PeerConnectionClient.TAG, "New Data channel " + dataChannel.label());
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.reportErrorOnly("on Data Channel error, peer connection is: " + PeerConnectionClient.this.peerConnection + ", is Error: " + PeerConnectionClient.this.isError);
                return;
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_DATA_CHANNEL_CALLBACK, "onDataChannel:" + dataChannel.label() + ",this:" + this);
            if (PeerConnectionClient.this.createStreamerInfoCollector(dataChannel)) {
                return;
            }
            if (dataChannel.label().equalsIgnoreCase("ggp-tcp-like") || dataChannel.label().equalsIgnoreCase("x86_input")) {
                PeerConnectionClient.this.mDataChannel = dataChannel;
                PeerConnectionClient.this.mDataChannel.registerObserver(PeerConnectionClient.this.dcObserver);
                HmRtcCommandListener hmRtcCommandListener = PeerConnectionClient.this.mCommandListener;
                if (hmRtcCommandListener != null) {
                    hmRtcCommandListener.onAvailable(true);
                    return;
                }
                return;
            }
            if (!PeerConnectionClient.this.createStreamerStatsCollector(dataChannel)) {
                PeerConnectionClient peerConnectionClient = PeerConnectionClient.this;
                peerConnectionClient.mInputHelper.tryCreateInputChannel(peerConnectionClient.executor, dataChannel);
                HmDataChannelManager.getInstance().onDataChannel(dataChannel);
            } else {
                Logging.d(PeerConnectionClient.TAG, "ignore unknown opened data channel with label = " + dataChannel.label());
            }
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public String onGetPropertyString(String str) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_GET_PROPERTY_STRING, "onGetPropertyString:" + str + ",this:" + this);
            return HaimaPropertyNames.GET_DEVICE_INFO_COMMAND_NAME.equals(str) ? PeerConnectionClient.this.getTerminalDevJsonInfo() : "";
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onIceCandidate(final IceCandidate iceCandidate) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.q0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96139b.lambda$onIceCandidate$0(iceCandidate);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onIceCandidatesRemoved(final IceCandidate[] iceCandidateArr) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ICE_CANDIDATES_REMOVE_CALLBACK, "onIceCandidatesRemoved: " + this);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96127b.lambda$onIceCandidatesRemoved$1(iceCandidateArr);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onIceConnectionChange(final PeerConnection.IceConnectionState iceConnectionState) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.p0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96135b.lambda$onIceConnectionChange$2(iceConnectionState);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onIceConnectionReceivingChange(boolean z10) {
            Logging.d(PeerConnectionClient.TAG, "IceConnectionReceiving changed to " + z10);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ICE_CONNECTION_RECEIVING_CHANGE_CALLBACK, "IceConnectionReceiving changed to " + z10 + ",this:" + this);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onIceGatheringChange(PeerConnection.IceGatheringState iceGatheringState) {
            Logging.d(PeerConnectionClient.TAG, "IceGatheringState: " + iceGatheringState);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_ICE_GATHERING_CHANGE_CALLBACK, "IceGatheringState: " + iceGatheringState + ",this:" + this);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onRemoteVideoEncodeAdaptation(final String str, final int i10, final int i11, final int i12) {
            Logging.d(PeerConnectionClient.TAG, "onRemoteVideoEncodeAdaptation: " + str + "|" + i10 + "|" + i11 + "x" + i12);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_REMOTE_VIDEO_ENCODE_ADAPTATION, "onRemoteVideoEncodeAdaptation: " + str + "|" + i10 + "|" + i11 + "x" + i12 + ",this:" + this);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.t0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96154b.lambda$onRemoteVideoEncodeAdaptation$4(str, i10, i11, i12);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onRemoveStream(MediaStream mediaStream) {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_REMOVE_STREAM_CALLBACK, "onRemoveStream:" + this);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public /* synthetic */ void onRemoveTrack(RtpReceiver rtpReceiver) {
            org.hmwebrtc.c0.d(this, rtpReceiver);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onRenegotiationNeeded() {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_RENEGOTIATION_NEED_CALLBACK, "onRenegotiationNeeded:" + this);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onSelectedCandidatePairChanged(CandidatePairChangeEvent candidatePairChangeEvent) {
            Logging.d(PeerConnectionClient.TAG, "Selected candidate pair changed because: " + candidatePairChangeEvent);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_SELECTED_CANDIDATE_PAIR_CHANGED_CALLBACK, "Selected candidate pair changed because: " + candidatePairChangeEvent + ",this:" + this);
            if (candidatePairChangeEvent.local == null || candidatePairChangeEvent.remote == null) {
                return;
            }
            Logging.d(PeerConnectionClient.TAG, "Selected candidate pair of protocol is with local: " + candidatePairChangeEvent.local.toString() + ", remote: " + candidatePairChangeEvent.remote.toString());
            if (candidatePairChangeEvent.local.toString() == null || candidatePairChangeEvent.remote.toString() == null || !candidatePairChangeEvent.local.toString().contains("relay") || !candidatePairChangeEvent.remote.toString().contains("relay")) {
                return;
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_SELECTED_CANDIDATE_PAIR_TCP, "");
            Logging.d(PeerConnectionClient.TAG, "Selected candidate pair of type is tcp relay.");
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onSignalingChange(PeerConnection.SignalingState signalingState) {
            Logging.d(PeerConnectionClient.TAG, "SignalingState: " + signalingState);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_ON_SIGNALING_CHANGE_CALLBACK, "SignalingState: " + signalingState + ",this:" + this);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public /* synthetic */ void onStandardizedIceConnectionChange(PeerConnection.IceConnectionState iceConnectionState) {
            org.hmwebrtc.c0.f(this, iceConnectionState);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onSwitchConnectionCallback(final int i10, final int i11) {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.o0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96130b.lambda$onSwitchConnectionCallback$7(i10, i11);
                }
            });
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public /* synthetic */ void onTrack(RtpTransceiver rtpTransceiver) {
            org.hmwebrtc.c0.h(this, rtpTransceiver);
        }

        @Override // org.hmwebrtc.PeerConnection.Observer
        public void onUdpProtocolUnavailable(final int i10, String str) {
            Logging.d(PeerConnectionClient.TAG, "onUdpProtocolUnavailable err_code:" + i10);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96146b.lambda$onUdpProtocolUnavailable$5(i10);
                }
            });
        }
    }

    public interface PeerConnectionEvents {
        void onAccProxyConnectStateChange(int i10, Object obj);

        void onConnected(Object obj);

        void onCountlyCallback(int i10, long j10, String str);

        void onCreatePeerConnectionSuccess(Object obj);

        void onDcJsonMessage(byte[] bArr, Object obj);

        void onDisconnected(String str, Object obj);

        void onIceCandidate(IceCandidate iceCandidate, Object obj);

        void onIceCandidatesRemoved(IceCandidate[] iceCandidateArr, Object obj);

        void onIceConnected(Object obj);

        void onIceDisconnected(Object obj);

        void onLocalDescriptionCreated(SessionDescription sessionDescription, Object obj);

        void onLocalDescriptionSet(SessionDescription sessionDescription, Object obj);

        void onMessage(byte[] bArr, Object obj);

        void onPeerConnectionError(String str, Object obj);

        void onPeerConnectionStatsReady(RTCStatsReport rTCStatsReport, Object obj);

        void onPeerConnectionStatsReady(StatsReport[] statsReportArr, StatsReport.Value[][] valueArr, Object obj);

        void onReConnected(Object obj);

        void onRemoteVideoEncodeAdaptation(String str, int i10, int i11, int i12, Object obj);

        void onSDPError(String str, Object obj);

        void onSwitchConnectionCallback(int i10, int i11, Object obj);

        void onSwitchToRtmpStreaming(Object obj);

        void onThrowPeerExceptionMsg(String str, Object obj);

        void onX86DataChannelClose(Object obj);

        void onX86DataChannelOpen(Object obj);

        void onX86DataChannelPong(String str, long j10, Object obj);
    }

    public static class PeerConnectionParameters {
        public final boolean aecDump;
        public final String audioCodec;
        public final int audioStartBitrate;
        private final DataChannelParameters dataChannelParameters;
        public final boolean disableBuiltInAEC;
        public final boolean disableBuiltInAGC;
        public final boolean disableBuiltInNS;
        public final boolean disableWebRtcAGCAndHPF;
        public final boolean enableRtcEventLog;
        public final String haimaCloudId;
        public final boolean isDirectSurfaceOn;
        public final boolean loopback;
        public final boolean noAudioProcessing;
        private Object renderView;
        public final int rotationDegree;
        public final boolean saveInputAudioToFile;
        public final boolean tracing;
        public final boolean useOpenSLES;
        public final boolean videoCallEnabled;
        public final String videoCodec;
        public final boolean videoCodecHwAcceleration;
        public final boolean videoFlexfecEnabled;
        public final int videoFps;
        public final int videoHeight;
        public final int videoMaxBitrate;
        public final int videoWidth;

        public PeerConnectionParameters(boolean z10, boolean z11, boolean z12, int i10, int i11, int i12, int i13, String str, boolean z13, boolean z14, int i14, String str2, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, DataChannelParameters dataChannelParameters, String str3, Object obj, int i15, boolean z24) {
            this.videoCallEnabled = z10;
            this.loopback = z11;
            this.tracing = z12;
            this.videoWidth = i10;
            this.videoHeight = i11;
            this.videoFps = i12;
            this.videoMaxBitrate = i13;
            this.videoCodec = str;
            this.videoFlexfecEnabled = z14;
            this.videoCodecHwAcceleration = z13;
            this.audioStartBitrate = i14;
            this.audioCodec = str2;
            this.noAudioProcessing = z15;
            this.aecDump = z16;
            this.saveInputAudioToFile = z17;
            this.useOpenSLES = z18;
            this.disableBuiltInAEC = z19;
            this.disableBuiltInAGC = z20;
            this.disableBuiltInNS = z21;
            this.disableWebRtcAGCAndHPF = z22;
            this.enableRtcEventLog = z23;
            this.dataChannelParameters = dataChannelParameters;
            this.haimaCloudId = str3;
            this.rotationDegree = i15;
            this.renderView = obj;
            this.isDirectSurfaceOn = z24;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SDPObserver implements SdpObserver {
        private final boolean isOffer;

        public SDPObserver(boolean z10) {
            this.isOffer = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSuccess$0(SessionDescription sessionDescription) {
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("PeerConnection is null when local sdp created, is error: " + PeerConnectionClient.this.isError, PeerConnectionClient.this.myself);
            } else {
                Logging.d(PeerConnectionClient.TAG, "Set local SDP from " + sessionDescription.type);
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_START_SET_LOCAL_SDP, "Set local SDP from:" + sessionDescription.type + ",this:" + this);
                PeerConnectionClient.this.peerConnection.setLocalDescription(PeerConnectionClient.this.answerObserver, sessionDescription);
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_SET_LOCAL_SDP, "Set local SDP finished:" + sessionDescription.type + ",this:" + this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSetSuccess$1() {
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("PeerConnection is null when set SDP success, is error: " + PeerConnectionClient.this.isError + ", is Offer: " + this.isOffer, PeerConnectionClient.this.myself);
                return;
            }
            if (this.isOffer) {
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_POST_CREATE_LOCAL_ANSWER_TASK, "PeerConnection set remote SDP success and prepare to create answer:" + this);
                PeerConnectionClient.this.createAnswer();
                return;
            }
            Logging.d(PeerConnectionClient.TAG, "Local SDP set succesfully");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_LOCAL_SDP_SET_SUCCESS, "Local SDP set succesfully:" + this);
            try {
                PeerConnectionClient.this.events.onLocalDescriptionSet(PeerConnectionClient.this.localSdp, PeerConnectionClient.this.myself);
                PeerConnectionClient.this.drainCandidates();
            } catch (Exception e10) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onLocalDescription-->" + ExceptionUtils.toString(e10), PeerConnectionClient.this.myself);
            }
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "create answer failure: " + str);
            PeerConnectionClient.this.events.onSDPError("create sdp error: " + str, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateSuccess(SessionDescription sessionDescription) {
            SessionDescription.Attribute attributeDeserialize;
            if (PeerConnectionClient.this.localSdp != null) {
                Logging.e(PeerConnectionClient.TAG, "Multiple SDP create.");
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("onCreateAnswer-->Multiple SDP create.", PeerConnectionClient.this.myself);
                return;
            }
            String strReplace = sessionDescription.description.replace("useinbandfec=1", "useinbandfec=1;stereo=1");
            if (PeerConnectionClient.this.preferIsac) {
                strReplace = PeerConnectionClient.preferCodec(strReplace, PeerConnectionClient.AUDIO_CODEC_ISAC, true);
            }
            if (PeerConnectionClient.this.peerConnectionParameters.videoCodec != null && !PeerConnectionClient.this.peerConnectionParameters.videoCodec.isEmpty()) {
                strReplace = PeerConnectionClient.preferCodec(strReplace, PeerConnectionClient.getSdpVideoCodecName(PeerConnectionClient.this.peerConnectionParameters), false);
            }
            final SessionDescription sessionDescription2 = new SessionDescription(sessionDescription.type, strReplace);
            if (!this.isOffer && (attributeDeserialize = sessionDescription2.Deserialize()) != null && PeerConnectionClient.this.sendLocalSessionAttribule(attributeDeserialize)) {
                PeerConnectionClient peerConnectionClient = PeerConnectionClient.this;
                String inputValidVersion = peerConnectionClient.mInputHelper.getInputValidVersion(peerConnectionClient.executor);
                if (inputValidVersion != null) {
                    attributeDeserialize.SetAttribute("input", inputValidVersion);
                }
                PeerConnectionClient peerConnectionClient2 = PeerConnectionClient.this;
                peerConnectionClient2.mInputHelper.tryCreateInputChannel(peerConnectionClient2.executor, null);
                sessionDescription2.Serialize(attributeDeserialize);
            }
            PeerConnectionClient.this.localSdp = sessionDescription2;
            PeerConnectionClient.this.events.onLocalDescriptionCreated(PeerConnectionClient.this.localSdp, PeerConnectionClient.this.myself);
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.u0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96161b.lambda$onCreateSuccess$0(sessionDescription2);
                }
            });
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "set sdp failure: " + str);
            PeerConnectionClient.this.events.onSDPError("set sdp is failure: " + str + ", isOffer: " + this.isOffer, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetSuccess() {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.v0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96164b.lambda$onSetSuccess$1();
                }
            });
        }
    }

    public static class StreamerAudioInfo {
        private static final int MAX_INFO_COUNT = 2;
        private static Object mReportArrayLock = new Object();
        public static final String mType = "a_delay";
        public StatsReport.Value[] mReportArray;
        private int step;

        public StreamerAudioInfo() {
            StatsReport.Value[] valueArr = new StatsReport.Value[2];
            this.mReportArray = valueArr;
            valueArr[0] = new StatsReport.Value("audioCaptureDelay", "0");
            this.mReportArray[1] = new StatsReport.Value("audioEncodeDelay", "0");
        }

        public StatsReport.Value[] getStats() {
            StatsReport.Value[] valueArr;
            synchronized (mReportArrayLock) {
                valueArr = (StatsReport.Value[]) this.mReportArray.clone();
            }
            return valueArr;
        }

        public void parseStreamerAudioInfo(String[] strArr) {
            if (strArr == null || strArr.length <= 2) {
                Logging.w(mType, "parseStreamerAudioInfo value is null or empty");
                return;
            }
            int length = strArr.length;
            Logging.d(mType, "parseStreamerAudioInfo info length:" + length);
            try {
                synchronized (mReportArrayLock) {
                    int i10 = 0;
                    for (int i11 = 0; i11 < length; i11++) {
                        int i12 = this.step;
                        if (i12 == 0) {
                            if (strArr[i11].equalsIgnoreCase(mType)) {
                                this.step = 1;
                            }
                            i10 = 0;
                        } else if (i12 == 1) {
                            int i13 = Integer.parseInt(strArr[i11]);
                            if (i13 < 2 || i13 > length - (i11 + 1)) {
                                Logging.w(mType, "data length " + i13 + " is not smaller than :2");
                                this.step = 0;
                            } else {
                                this.step = 2;
                            }
                        } else if (i12 == 2) {
                            if (i10 == 0) {
                                this.mReportArray[0] = new StatsReport.Value("audioCaptureDelay", strArr[i11]);
                            } else if (i10 == 1) {
                                this.mReportArray[1] = new StatsReport.Value("audioEncodeDelay", strArr[i11]);
                                this.step = 0;
                            }
                            i10++;
                        }
                    }
                }
                this.step = 0;
            } catch (Exception e10) {
                Logging.w(mType, "parseStreamerAudioInfo Exception:" + e10.toString());
            }
        }
    }

    private static class StreamerInfoCollector implements DataChannel.Observer {
        private DataChannel mInfoDataChannel;
        StreamerAudioInfo streamerAudioInfo = new StreamerAudioInfo();
        WeaklyNetInfo weaklyNetInfo = new WeaklyNetInfo();

        public StreamerInfoCollector(DataChannel dataChannel) {
            this.mInfoDataChannel = dataChannel;
            if (dataChannel != null) {
                dataChannel.registerObserver(this);
            }
        }

        private void parseInfo(String str) {
            if (str == null) {
                return;
            }
            Logging.v("info_chn", str);
            String[] strArrSplit = str.split(Constants.TIPS_SPECIAL_TAG);
            if (this.weaklyNetInfo.parseStreamerWeaklyNetInfo(strArrSplit)) {
                return;
            }
            this.streamerAudioInfo.parseStreamerAudioInfo(strArrSplit);
        }

        public StatsReport.Value[] getStats() {
            return this.streamerAudioInfo.getStats();
        }

        public StatsReport.Value[] getWeaklyNetStats() {
            return this.weaklyNetInfo.getStats();
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onBufferedAmountChange(long j10) {
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onMessage(DataChannel.Buffer buffer) {
            ByteBuffer byteBuffer;
            if (buffer.binary || (byteBuffer = buffer.data) == null || byteBuffer.capacity() == 0) {
                Logging.e("info_chn:", "DataChannel data is null!");
                return;
            }
            byte[] bArr = new byte[buffer.data.capacity()];
            buffer.data.get(bArr);
            parseInfo(new String(bArr, Charset.forName("UTF-8")));
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public void onStateChange() {
        }

        @Override // org.hmwebrtc.DataChannel.Observer
        public /* synthetic */ void onWritableState(boolean z10) {
            org.hmwebrtc.g.a(this, z10);
        }

        public void release() {
            DataChannel dataChannel = this.mInfoDataChannel;
            if (dataChannel != null) {
                dataChannel.unregisterObserver();
                this.mInfoDataChannel.dispose();
            }
        }
    }

    public static class WeaklyNetInfo {
        private static Object mReportListLock = new Object();
        public static final String mType = "wn";
        private ArrayList<StatsReport.Value> mReportList = new ArrayList<>();

        public StatsReport.Value[] getStats() {
            int size = this.mReportList.size();
            synchronized (mReportListLock) {
                try {
                    if (size == 0) {
                        return null;
                    }
                    StatsReport.Value[] valueArr = new StatsReport.Value[size];
                    for (int i10 = 0; i10 < size; i10++) {
                        valueArr[i10] = this.mReportList.get(i10);
                    }
                    this.mReportList.clear();
                    return valueArr;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean parseStreamerWeaklyNetInfo(String[] strArr) {
            if (strArr == null || strArr.length != 3 || !strArr[0].equals(mType)) {
                Logging.w(mType, "parseStreamerAudioInfo value is null,empty,or type is not right");
                return false;
            }
            synchronized (mReportListLock) {
                this.mReportList.add(new StatsReport.Value("streamerWeaklyNet", strArr[2]));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class X86RemoteSDPObserver implements SdpObserver {
        private X86RemoteSDPObserver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSetSuccess$0() {
            if (PeerConnectionClient.this.peerConnection == null || PeerConnectionClient.this.isError) {
                PeerConnectionClient.this.events.onThrowPeerExceptionMsg("PeerConnection is null when set SDP success, is error: " + PeerConnectionClient.this.isError, PeerConnectionClient.this.myself);
            }
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "create offer failure: " + str);
            PeerConnectionClient.this.events.onSDPError("create sdp error: " + str, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onCreateSuccess(SessionDescription sessionDescription) {
            Logging.e(PeerConnectionClient.TAG, "onCreateSuccess.");
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetFailure(String str) {
            PeerConnectionClient.this.isError = true;
            Logging.d(PeerConnectionClient.TAG, "set remote sdp failure: " + str);
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_X86_SET_REMOTE_SDP_FAILED, str);
            PeerConnectionClient.this.events.onSDPError("set remote sdp is failure: " + str, PeerConnectionClient.this.myself);
        }

        @Override // org.hmwebrtc.SdpObserver
        public void onSetSuccess() {
            PeerConnectionClient.this.executor.execute(new Runnable() { // from class: org.webrtc.haima.w0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96167b.lambda$onSetSuccess$0();
                }
            });
        }
    }

    static {
        GamePlatformType gamePlatformType = GamePlatformType.ARM;
        mGamePlatformType = gamePlatformType;
        mRealGamePlatformType = gamePlatformType;
    }

    public PeerConnectionClient(final Context context, EglBase eglBase, final PeerConnectionParameters peerConnectionParameters, PeerConnectionEvents peerConnectionEvents, WebrtcLoggableHelp webrtcLoggableHelp) {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.executor = executorServiceNewSingleThreadExecutor;
        this.pcObserver = new PCObserver();
        this.pcCountlyObserver = new PCCountlyObserver();
        this.offerObserver = new SDPObserver(true);
        this.mLocalObserver = new LocalSDPObserver();
        this.mRemoteObserver = new X86RemoteSDPObserver();
        this.answerObserver = new SDPObserver(false);
        this.dcObserver = new DcObserver();
        this.statsTimer = new Timer();
        this.mPeerConnectionLock = new Object();
        this.renderVideo = true;
        this.streamerReportsArray = new StatsReport.Value[4][];
        this.myself = this;
        this.mInputHelper = new HmInputHelper();
        this.mCommandChannel = new HmRtcCommandChannel();
        this.mCountlyController = new CountlyController();
        this.mx86SendLock = new Object();
        this.rootEglBase = eglBase;
        this.appContext = context;
        this.events = peerConnectionEvents;
        this.peerConnectionParameters = peerConnectionParameters;
        this.dataChannelEnabled = peerConnectionParameters.dataChannelParameters != null;
        this.mWebrtcLoggable = webrtcLoggableHelp;
        HmUtilsHelper.getTotalMemory(context);
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            HmCameraManager.getInstance().setEglBase(eglBase);
            HmCameraManager.getInstance().setEventObserver(new HmCameraManager.CameraEventObserver() { // from class: org.webrtc.haima.PeerConnectionClient.1
                @Override // org.webrtc.haima.camera.HmCameraManager.CameraEventObserver
                public void onClose() {
                    if (PeerConnectionClient.this.mCountlyController != null) {
                        PeerConnectionClient.this.mCountlyController.enableUpstream(false);
                    }
                }

                @Override // org.webrtc.haima.camera.HmCameraManager.CameraEventObserver
                public void onOpen() {
                    if (PeerConnectionClient.this.mCountlyController != null) {
                        PeerConnectionClient.this.mCountlyController.enableUpstream(true);
                    }
                }
            });
        }
        String str = TAG;
        Logging.e(str, "Initialize Haima RTC PeerConnectionFactory, version: 3.0.2.8.5396d74.12041040");
        Logging.d(str, "Preferred video codec: " + getSdpVideoCodecName(peerConnectionParameters));
        final String fieldTrials = getFieldTrials(peerConnectionParameters);
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: org.webrtc.haima.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f96123b.lambda$new$0(fieldTrials, peerConnectionParameters, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeInternal() {
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_BEGIN_CLOSE_PC_CLIENT, "begin to close peer connection client:" + this);
        PeerConnectionFactory peerConnectionFactory = this.factory;
        if (peerConnectionFactory != null && this.peerConnectionParameters.aecDump) {
            peerConnectionFactory.stopAecDump();
        }
        String str = TAG;
        Logging.d(str, "Closing peer connection.");
        this.peerConnectionParameters.renderView = null;
        this.mDataChannel = null;
        this.mInputHelper.deleteInputchannel(null);
        HmDataChannelManager.getInstance().disposeAllDataChannel();
        destroyStreamerStatsCollector();
        destroyStreamerInfoCollector();
        this.mHmRemoteVQAStats = null;
        DCManager dCManager = this.mDCManager;
        if (dCManager != null) {
            dCManager.release();
            this.mDCManager = null;
        }
        this.mCommandChannel.release();
        HmTransDeviceManager hmTransDeviceManager = this.mTransDeviceManager;
        if (hmTransDeviceManager != null) {
            hmTransDeviceManager.release();
            this.mTransDeviceManager = null;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CLOSE_DATA_CHANNEL, "data channel destroyed:" + this);
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection != null) {
            peerConnection.dispose();
            this.peerConnection = null;
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CLOSE_PC, "peer connection disposed:" + this);
        this.remoteSinks = null;
        if (this.factory != null) {
            Logging.d(str, "Closing peer connection factory.");
            this.factory.dispose();
            Logging.d(str, "Closing peer connection factory end.");
            this.factory = null;
        }
        this.rootEglBase.release();
        this.mCacheAccProxyIp = "";
        this.mCacheAccProxyPort = 0;
        this.mCacheAccProxyUser = "";
        this.mCacheAccProxyPW = "";
        Logging.d(str, "Closing peer connection done.");
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CLOSE_PC_CLIENT, "Closing peer connection done:" + this);
        AudioDeviceModule audioDeviceModule = this.adm;
        if (audioDeviceModule != null) {
            audioDeviceModule.release();
        }
    }

    private void createDataChannel() {
        if (this.peerConnection != null) {
            DataChannel.Init init = new DataChannel.Init();
            init.ordered = true;
            init.f95353id = 1;
            DataChannel dataChannelCreateDataChannel = this.peerConnection.createDataChannel("ggp-tcp-like", init);
            this.mDataChannel = dataChannelCreateDataChannel;
            dataChannelCreateDataChannel.registerObserver(this.dcObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createPeerConnectionFactoryInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$createPeerConnectionFactory$1(PeerConnectionFactory.Options options) {
        VideoEncoderFactory softwareVideoEncoderFactory;
        VideoDecoderFactory softwareVideoDecoderFactory;
        boolean z10 = false;
        this.isError = false;
        String str = this.peerConnectionParameters.audioCodec;
        if (str != null && str.equals(AUDIO_CODEC_ISAC)) {
            z10 = true;
        }
        this.preferIsac = z10;
        this.adm = createJavaAudioDevice();
        if (options != null) {
            Logging.d(TAG, "Factory networkIgnoreMask option: " + options.networkIgnoreMask);
        }
        boolean z11 = HmRtcGlobalConfig.rtcEnableEncoderH264HP;
        String str2 = TAG;
        Logging.d(str2, "enableH264HighProfile is :" + z11);
        if (this.peerConnectionParameters.videoCodecHwAcceleration) {
            softwareVideoEncoderFactory = new DefaultVideoEncoderFactory(this.rootEglBase.getEglBaseContext(), true, z11);
            if (this.peerConnectionParameters.renderView == null) {
                Logging.i(str2, "new DefaultVideoDecoderFactory without direct surface");
                softwareVideoDecoderFactory = new DefaultVideoDecoderFactory(this.rootEglBase.getEglBaseContext());
            } else {
                softwareVideoDecoderFactory = new DefaultVideoDecoderFactory(this.peerConnectionParameters.renderView, this.peerConnectionParameters.rotationDegree, this.rootEglBase.getEglBaseContext());
                Logging.i(str2, "new DefaultVideoDecoderFactory with direct surface");
            }
        } else {
            Logging.i(str2, "new DefaultVideoDecoderFactory with software");
            softwareVideoEncoderFactory = new SoftwareVideoEncoderFactory();
            softwareVideoDecoderFactory = new SoftwareVideoDecoderFactory();
        }
        this.factory = PeerConnectionFactory.builder().setOptions(options).setAudioDeviceModule(this.adm).setVideoEncoderFactory(softwareVideoEncoderFactory).setVideoDecoderFactory(softwareVideoDecoderFactory).createPeerConnectionFactory();
        Logging.d(str2, "Peer connection factory created.");
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            HmCameraManager.getInstance().setPeerConnectFactory(this.factory);
        }
        this.webRtcAudioTrackRef = new WeakReference<>(((JavaAudioDeviceModule) this.adm).getWebRtcAudioTrack());
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CREATE_PC_FACTORY, "Peer connection factory created:" + this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean createStreamerInfoCollector(DataChannel dataChannel) {
        if (dataChannel == null || !dataChannel.label().equalsIgnoreCase("info_chn")) {
            return false;
        }
        StreamerInfoCollector streamerInfoCollector = this.mStreamerInfoCollector;
        if (streamerInfoCollector != null) {
            streamerInfoCollector.release();
        }
        this.mStreamerInfoCollector = new StreamerInfoCollector(dataChannel);
        Logging.d("info_chn:", "createStreamerInfoCollector:" + dataChannel.label());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean createStreamerStatsCollector(DataChannel dataChannel) {
        if (dataChannel == null || !dataChannel.label().equalsIgnoreCase("stats_chn")) {
            return false;
        }
        StreamerStatsCollector streamerStatsCollector = this.mStreamerStatsCollector;
        if (streamerStatsCollector != null) {
            streamerStatsCollector.release();
        }
        this.mStreamerStatsCollector = new StreamerStatsCollector(dataChannel);
        Logging.d("stats_chn:", "createStreamerStatsCollector:" + dataChannel.label());
        return true;
    }

    private HmTransDevice createTransDevice(String str, int i10, HmTransDevice.Observer observer) {
        PeerConnection peerConnection;
        HmTransDeviceManager hmTransDeviceManager = this.mTransDeviceManager;
        if (hmTransDeviceManager != null && (peerConnection = this.peerConnection) != null) {
            return hmTransDeviceManager.createDevice(peerConnection, str, i10, observer);
        }
        Logging.e(TAG, "createTransDevice - mTransDeviceManager or peerConnection is null");
        return null;
    }

    private void destroyStreamerInfoCollector() {
        StreamerInfoCollector streamerInfoCollector = this.mStreamerInfoCollector;
        if (streamerInfoCollector != null) {
            streamerInfoCollector.release();
            this.mStreamerInfoCollector = null;
        }
    }

    private void destroyStreamerStatsCollector() {
        StreamerStatsCollector streamerStatsCollector = this.mStreamerStatsCollector;
        if (streamerStatsCollector != null) {
            streamerStatsCollector.release();
            this.mStreamerStatsCollector = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drainCandidates() {
        if (this.queuedRemoteCandidates != null) {
            Logging.d(TAG, "Add " + this.queuedRemoteCandidates.size() + " remote candidates");
            for (IceCandidate iceCandidate : this.queuedRemoteCandidates) {
                this.events.onThrowPeerExceptionMsg("Add candidate into peer connection in drainCandidates: " + iceCandidate, this.myself);
                if (HM_RETURN_OK.equals(this.peerConnection.addIceCandidate(iceCandidate))) {
                    Logging.d(TAG, "Add candidate succeed.");
                } else {
                    this.events.onThrowPeerExceptionMsg("Add candidate into peer connection failed: unknown_error", this.myself);
                }
            }
            this.queuedRemoteCandidates = null;
        }
    }

    private static int findMediaDescriptionLine(boolean z10, String[] strArr) {
        String str = z10 ? "m=audio " : "m=video ";
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].startsWith(str)) {
                return i10;
            }
        }
        return -1;
    }

    @SuppressLint({"DefaultLocale"})
    private static String getFieldTrials(PeerConnectionParameters peerConnectionParameters) {
        String str;
        String str2;
        String str3 = "" + VIDEO_VP8_INTEL_HW_ENCODER_FIELDTRIAL;
        if (peerConnectionParameters.disableWebRtcAGCAndHPF) {
            str3 = str3 + DISABLE_WEBRTC_AGC_FIELDTRIAL;
            Logging.d(TAG, "Disable WebRTC AGC field trial.");
        }
        int iRtcFecType = HmRtcGlobalConfig.rtcFecType();
        String str4 = TAG;
        Logging.d(str4, "config fec_type: " + iRtcFecType);
        if (iRtcFecType == -1) {
            str = HmRtcGlobalConfig.isFlexFecOpen() ? str3 + VIDEO_FLEXFEC_ENABLE_FIELDTRIAL : str3 + VIDEO_FLEXFEC_DISABLE_FIELDTRIAL;
        } else if (iRtcFecType == 1) {
            str = str3 + VIDEO_FLEXFEC_ENABLE_FIELDTRIAL;
        } else if (iRtcFecType == 2) {
            str = (str3 + VIDEO_FLEXFEC_ENABLE_FIELDTRIAL) + VIDEO_RSFEC_FIELDTRIAL;
        } else {
            str = str3 + VIDEO_FLEXFEC_DISABLE_FIELDTRIAL;
        }
        if (HmRtcGlobalConfig.rtcEnableWeaklyNetReport) {
            str = str + WEAKLY_NET_REPORT_FIELDTRIAL;
        }
        if (HmRtcGlobalConfig.rtcEnableVideoFrameElapsedTimeReport) {
            str = str + VIDEO_FRAME_ELAPSED_TIME_REPORT_FIELDTRIAL;
        }
        String str5 = str + String.format(HM_NACK_BUFFER_CONFIG_FIELDTRIAL, Integer.valueOf(HmRtcGlobalConfig.hmNackBufferLimit), Integer.valueOf(HmRtcGlobalConfig.hmNackBufferSalt), Integer.valueOf(HmRtcGlobalConfig.hmNackBufferForceLimit));
        if (HmRtcGlobalConfig.rtcEnableSmoothlyDecoding) {
            str5 = str5 + String.format(SMOOTHLY_DECODING, Integer.valueOf(HmRtcGlobalConfig.rtcSmoothlyMaxDecoderBuffers), Integer.valueOf(HmRtcGlobalConfig.rtcSmoothlyMinDecoderBuffers), Integer.valueOf(HmRtcGlobalConfig.rtcSmoothlyMaxWaitDelay), Integer.valueOf(HmRtcGlobalConfig.rtcSmoothlyMinWaitDelay));
            if (HmRtcGlobalConfig.rtcEnableSmoothlyDecodingDebug) {
                str5 = str5 + "WebRTC-Smoothly-Decoding-Debug/Enabled/";
            }
        }
        int i10 = HmRtcGlobalConfig.rtcNackReportDelayTime;
        if (i10 <= 0 || i10 >= 100) {
            Logging.e(str4, "WebRTC-SendNackDelayMs is incorrect: " + HmRtcGlobalConfig.rtcNackReportDelayTime);
        } else {
            str5 = str5 + String.format("WebRTC-SendNackDelayMs/%d/", Integer.valueOf(HmRtcGlobalConfig.rtcNackReportDelayTime));
        }
        int i11 = HmRtcGlobalConfig.rtcMaxWaitForFrameMs;
        if (i11 <= 0 || i11 > 3000) {
            Logging.e(str4, "WebRTC-MaxWaitForFrameMs is incorrect: " + HmRtcGlobalConfig.rtcMaxWaitForFrameMs);
        } else {
            str5 = str5 + String.format("WebRTC-MaxWaitForFrameMs/%d/", Integer.valueOf(HmRtcGlobalConfig.rtcMaxWaitForFrameMs));
        }
        int i12 = HmRtcGlobalConfig.rtcRtcpIntervalTime;
        if (i12 <= 0 || i12 > 1000) {
            Logging.e(str4, "WebRTC-RtcpIntervalTime is incorrect: " + HmRtcGlobalConfig.rtcRtcpIntervalTime);
        } else {
            str5 = str5 + String.format("WebRTC-RtcpIntervalTime/%d/", Integer.valueOf(HmRtcGlobalConfig.rtcRtcpIntervalTime));
        }
        if (HmRtcGlobalConfig.rtcOperationDelaySdk.isEnable()) {
            str5 = str5 + String.format("WebRTC-RtcOperationDelaySdk/enable:true,debug_log:%b/", Boolean.valueOf(HmRtcGlobalConfig.rtcOperationDelaySdk.isDebugLog()));
        }
        if (HmRtcGlobalConfig.rtcEnableRemoveSei) {
            str5 = str5 + "WebRTC-RtcEnableRemoveSei/Enabled/";
        }
        if (HmRtcGlobalConfig.rtcEnableShareStreaming) {
            str5 = str5 + "WebRTC-RtcEnableShareStreaming/Enabled/";
        }
        Logging.i(str4, "parseGlobalConfig PlayoutDelayMode value: " + HmRtcGlobalConfig.playout_delay_mode);
        int i13 = HmRtcGlobalConfig.playout_delay_mode;
        if (i13 == 1 || i13 == 2) {
            str2 = str5 + "WebRTC-LowLatencyRenderer/enabled:false/";
            if (HmRtcGlobalConfig.playout_delay_mode == 2) {
                str2 = str2 + String.format("WebRTC-ForcePlayoutDelay/min_ms:%d,max_ms:%d/", Integer.valueOf(HmRtcGlobalConfig.forced_playout_delay_min), Integer.valueOf(HmRtcGlobalConfig.forced_playout_delay_max));
            }
        } else {
            str2 = str5 + String.format("WebRTC-ForcePlayoutDelay/min_ms:%d,max_ms:%d/", 0, 0);
        }
        if (HmRtcGlobalConfig.max_allowed_framebuffer_size_in_normal > 0) {
            str2 = str2 + String.format("WebRTC-MaxAllowedFrameBufferSizeInNormalCase/max_allowed_framebuffer_size_in_normal:%d/", Integer.valueOf(HmRtcGlobalConfig.max_allowed_framebuffer_size_in_normal));
        }
        String str6 = str2 + HmRtcGlobalConfig.getCloudRtcFieldTrials();
        String hMRTCValue = HmRtcGlobalConfig.getHMRTCValue("HMRTC_VideoJank_V1", "");
        if (!TextUtils.isEmpty(hMRTCValue)) {
            str6 = (str6 + "HMRTC_VideoJank_V1/" + hMRTCValue + net.lingala.zip4j.util.e.F0) + "HMRTC-VideoJank-V1/" + hMRTCValue + net.lingala.zip4j.util.e.F0;
        }
        if (!peerConnectionParameters.enableRtcEventLog) {
            str6 = str6 + "WebRTC-RtcEventLogKillSwitch/Enabled/";
        }
        if (!HmRtcGlobalConfig.videoRemoteResourceAdaptationOn) {
            str6 = str6 + "WebRTC-VideoRemoteResourceAdaptation/Disabled/";
        }
        if (HmRtcGlobalConfig.updateNeworksContinuableOn) {
            str6 = str6 + "WebRTC-UpdateNetworksContinuable/Enabled/";
        }
        Map<String, String> hMRTCValueNativeMap = HmRtcGlobalConfig.getHMRTCValueNativeMap();
        if (hMRTCValueNativeMap != null) {
            for (Map.Entry<String, String> entry : hMRTCValueNativeMap.entrySet()) {
                String value = entry.getValue();
                if (!TextUtils.isEmpty(value)) {
                    String key = entry.getKey();
                    str6 = str6 + key + net.lingala.zip4j.util.e.F0 + value + net.lingala.zip4j.util.e.F0;
                    if ("HMRTC_VideoJank_V1".equals(key)) {
                        str6 = str6 + "HMRTC-VideoJank-V1/" + value + net.lingala.zip4j.util.e.F0;
                    }
                }
            }
        }
        return str6;
    }

    @Nullable
    private VideoTrack getRemoteVideoTrack() {
        Iterator<RtpTransceiver> it2 = this.peerConnection.getTransceivers().iterator();
        while (it2.hasNext()) {
            MediaStreamTrack mediaStreamTrackTrack = it2.next().getReceiver().track();
            if (mediaStreamTrackTrack instanceof VideoTrack) {
                return (VideoTrack) mediaStreamTrackTrack;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getSdpVideoCodecName(PeerConnectionParameters peerConnectionParameters) {
        String str = peerConnectionParameters.videoCodec;
        str.hashCode();
        switch (str) {
            case "H264 High":
            case "H264 Baseline":
                return VIDEO_CODEC_H264;
            case "VP8":
                return VIDEO_CODEC_VP8;
            case "VP9":
                return VIDEO_CODEC_VP9;
            case "H265":
                return VIDEO_CODEC_H265;
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getStats() {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection == null || this.isError || peerConnection.getStats(new StatsObserver() { // from class: org.webrtc.haima.PeerConnectionClient.6
            @Override // org.hmwebrtc.StatsObserver
            public void onComplete(StatsReport[] statsReportArr) {
                StatsReport.Value[] stats;
                StatsReport.Value[] weaklyNetStats;
                StatsReport.Value[] stats2 = PeerConnectionClient.this.mStreamerStatsCollector != null ? PeerConnectionClient.this.mStreamerStatsCollector.getStats() : null;
                if (PeerConnectionClient.this.mStreamerInfoCollector != null) {
                    stats = PeerConnectionClient.this.mStreamerInfoCollector.getStats();
                    weaklyNetStats = PeerConnectionClient.this.mStreamerInfoCollector.getWeaklyNetStats();
                } else {
                    stats = null;
                    weaklyNetStats = null;
                }
                PeerConnectionClient peerConnectionClient = PeerConnectionClient.this;
                StatsReport.Value[][] valueArr = peerConnectionClient.streamerReportsArray;
                valueArr[0] = stats2;
                valueArr[1] = stats;
                valueArr[2] = weaklyNetStats;
                if (peerConnectionClient.mHmRemoteVQAStats != null) {
                    PeerConnectionClient peerConnectionClient2 = PeerConnectionClient.this;
                    peerConnectionClient2.streamerReportsArray[3] = peerConnectionClient2.mHmRemoteVQAStats.getStatCollector().getStats();
                } else {
                    PeerConnectionClient.this.streamerReportsArray[3] = null;
                }
                PeerConnectionEvents peerConnectionEvents = PeerConnectionClient.this.events;
                PeerConnectionClient peerConnectionClient3 = PeerConnectionClient.this;
                peerConnectionEvents.onPeerConnectionStatsReady(statsReportArr, peerConnectionClient3.streamerReportsArray, peerConnectionClient3.myself);
            }
        }, null)) {
            return;
        }
        Logging.e(TAG, "getStats() returns false!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTerminalDevJsonInfo() {
        JSONObject jSONObject = new JSONObject();
        jsonPut(jSONObject, "os_type", "android");
        jsonPut(jSONObject, bm.f84422y, Build.VERSION.RELEASE);
        jsonPut(jSONObject, "os_api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        jsonPut(jSONObject, HmRtcEnvironment.kDeviceBrand, Build.BRAND);
        jsonPut(jSONObject, HmRtcEnvironment.kDeviceModel, Build.MODEL);
        jsonPut(jSONObject, "cpu_model", Build.HARDWARE + "_" + Build.CPU_ABI);
        return jSONObject.toString();
    }

    private int internalX86SendLargeDataBlcok(byte[] bArr, HaimaDataChannel.Listener listener) {
        synchronized (this.mx86SendLock) {
            if (this.mx86SendLargeDataBlcokListener != listener) {
                this.mx86SendLargeDataBlcokListener = listener;
            }
        }
        if (bArr == null) {
            return 0;
        }
        if (this.mDataChannel != null) {
            int i10 = this.mDataChannel.send(new DataChannel.Buffer(ByteBuffer.wrap(bArr), true), new DataChannel.SendOptoins(DC_MAX_BUFFER_SIZE)).result;
            if (i10 == 0) {
                return 0;
            }
            return i10 == 2 ? 1 : -1;
        }
        Logging.d(TAG, "internalX86SendLargeDataBlcok: length=" + bArr.length + ",mDataChannel: is null");
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isOutputJson(String str) {
        if (str == null || str.trim().isEmpty()) {
            return false;
        }
        String strTrim = str.trim();
        if (strTrim.contains("hm_internal_use")) {
            return false;
        }
        return (strTrim.startsWith("{") && strTrim.endsWith("}")) || (strTrim.startsWith("[") && strTrim.endsWith("]"));
    }

    private static String joinString(Iterable<? extends CharSequence> iterable, String str, boolean z10) {
        Iterator<? extends CharSequence> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(it2.next());
        while (it2.hasNext()) {
            sb2.append(str);
            sb2.append(it2.next());
        }
        if (z10) {
            sb2.append(str);
        }
        return sb2.toString();
    }

    private static void jsonPut(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ConnectAccProxy$10(String str, int i10, String str2, String str3) {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection != null) {
            peerConnection.ConnectAccPorxy(str, i10, str2, str3);
            return;
        }
        this.mCacheAccProxyIp = str;
        this.mCacheAccProxyPort = i10;
        this.mCacheAccProxyUser = str2;
        this.mCacheAccProxyPW = str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$DisconnectAccProxy$11() {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection != null) {
            peerConnection.DisconnectAccPorxy();
        }
        this.mCacheAccProxyIp = "";
        this.mCacheAccProxyPort = 0;
        this.mCacheAccProxyUser = "";
        this.mCacheAccProxyPW = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$SwitchToCellularConnection$12(boolean z10) {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection == null) {
            this.mCacheSwitchToCellularConnection = z10;
        } else {
            peerConnection.SwitchToCellularConnection(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRemoteIceCandidate$5(IceCandidate iceCandidate) {
        if (this.peerConnection == null || this.isError) {
            this.events.onThrowPeerExceptionMsg("PeerConnection is null when add remote candidate, isError: " + this.isError, this.myself);
            return;
        }
        List<IceCandidate> list = this.queuedRemoteCandidates;
        if (list != null) {
            list.add(iceCandidate);
            return;
        }
        this.events.onThrowPeerExceptionMsg("Add candidate into peer connection: " + iceCandidate, this.myself);
        if (HM_RETURN_OK.equals(this.peerConnection.addIceCandidate(iceCandidate))) {
            Logging.d(TAG, "Add candidate succeed.");
        } else {
            this.events.onThrowPeerExceptionMsg("Add candidate into peer connection failed: unknown_error", this.myself);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAnswer$4() {
        if (this.peerConnection == null || this.isError) {
            this.events.onThrowPeerExceptionMsg("PeerConnection is null when create answer, isError: " + this.isError, this.myself);
        } else {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_START_CREATE_LOCAL_ANSWER, "PeerConnection prepare to create answer, isError: " + this.isError + ",this:" + this);
            Logging.d(TAG, "PC create ANSWER");
            RtpTransceiver.RtpTransceiverDirection rtpTransceiverDirection = RtpTransceiver.RtpTransceiverDirection.INACTIVE;
            this.mVideoDirection = rtpTransceiverDirection;
            this.mAudioDirection = rtpTransceiverDirection;
            for (RtpTransceiver rtpTransceiver : this.peerConnection.getTransceivers()) {
                MediaStreamTrack.MediaType mediaType = rtpTransceiver.getMediaType();
                MediaStreamTrack.MediaType mediaType2 = MediaStreamTrack.MediaType.MEDIA_TYPE_AUDIO;
                if ((mediaType == mediaType2 && !HmRtcGlobalConfig.rtc_download_audio_on) || (rtpTransceiver.getMediaType() == MediaStreamTrack.MediaType.MEDIA_TYPE_VIDEO && !HmRtcGlobalConfig.rtc_download_video_on)) {
                    if (rtpTransceiver.getDirection() == RtpTransceiver.RtpTransceiverDirection.SEND_RECV) {
                        rtpTransceiver.setDirection(RtpTransceiver.RtpTransceiverDirection.SEND_ONLY);
                        Logging.d(TAG, "transceiver with type[" + rtpTransceiver.getMediaType() + "] is changed to SEND_ONLY from SEND_RECV.");
                    } else if (rtpTransceiver.getDirection() == RtpTransceiver.RtpTransceiverDirection.RECV_ONLY) {
                        rtpTransceiver.setDirection(RtpTransceiver.RtpTransceiverDirection.INACTIVE);
                        Logging.d(TAG, "transceiver with type[" + rtpTransceiver.getMediaType() + "] is changed to INACTIVE from RECV_ONLY.");
                    }
                }
                if ((rtpTransceiver.getMediaType() == mediaType2 && !HmRtcGlobalConfig.rtc_upload_audio_on) || (rtpTransceiver.getMediaType() == MediaStreamTrack.MediaType.MEDIA_TYPE_VIDEO && !HmRtcGlobalConfig.rtc_upload_video_on)) {
                    if (rtpTransceiver.getDirection() == RtpTransceiver.RtpTransceiverDirection.SEND_RECV) {
                        rtpTransceiver.setDirection(RtpTransceiver.RtpTransceiverDirection.RECV_ONLY);
                        Logging.d(TAG, "transceiver with type[" + rtpTransceiver.getMediaType() + "] is changed to RECV_ONLY from SEND_RECV.");
                    } else if (rtpTransceiver.getDirection() == RtpTransceiver.RtpTransceiverDirection.SEND_ONLY) {
                        rtpTransceiver.setDirection(RtpTransceiver.RtpTransceiverDirection.INACTIVE);
                        Logging.d(TAG, "transceiver with type[" + rtpTransceiver.getMediaType() + "] is changed to INACTIVE from SEND_ONLY.");
                    }
                }
                if (rtpTransceiver.getMediaType() == MediaStreamTrack.MediaType.MEDIA_TYPE_VIDEO && rtpTransceiver.getDirection() != RtpTransceiver.RtpTransceiverDirection.INACTIVE) {
                    this.mVideoDirection = rtpTransceiver.getDirection();
                    if (isRtcUploadVideoChannelAvailable()) {
                        HmDataChannelManager.getInstance().setVideoVirtualDeviceTransportType(VirtualDeviceTransportType.RTC_MEDIA_CHANNEL);
                        Logging.d(TAG, "isRtcUploadVideoChannelAvailable return true.");
                    } else {
                        HmDataChannelManager.getInstance().setVideoVirtualDeviceTransportType(VirtualDeviceTransportType.RTC_DATA_CHANNEL);
                        Logging.d(TAG, "isRtcUploadVideoChannelAvailable return false.");
                    }
                }
                if (rtpTransceiver.getMediaType() == mediaType2 && rtpTransceiver.getDirection() != RtpTransceiver.RtpTransceiverDirection.INACTIVE) {
                    this.mAudioDirection = rtpTransceiver.getDirection();
                    String str = TAG;
                    Logging.d(str, "Direction: " + rtpTransceiver.getDirection() + ", CurrentDirection: " + rtpTransceiver.getCurrentDirection() + ", Stopped: " + rtpTransceiver.isStopped());
                    if (isRtcUploadAudioChannelAvailable()) {
                        HmDataChannelManager.getInstance().setAudioVirtualDeviceTransportType(VirtualDeviceTransportType.RTC_MEDIA_CHANNEL);
                        Logging.d(str, "isRtcUploadAudioChannelAvailable return true.");
                    } else {
                        HmDataChannelManager.getInstance().setAudioVirtualDeviceTransportType(VirtualDeviceTransportType.WS_SOCKET);
                        Logging.d(str, "isRtcUploadAudioChannelAvailable return false.");
                    }
                }
            }
            this.peerConnection.createAnswer(this.answerObserver, this.sdpMediaConstraints);
            VideoTrack remoteVideoTrack = getRemoteVideoTrack();
            this.remoteVideoTrack = remoteVideoTrack;
            if (remoteVideoTrack != null) {
                remoteVideoTrack.setEnabled(this.renderVideo);
                this.events.onThrowPeerExceptionMsg("Get the remote Video Track when create ANSWER msg, isError: " + this.isError, this.myself);
            } else {
                Logging.e(TAG, "Can't get the remote Video Track when create ANSWER msg.");
                this.events.onThrowPeerExceptionMsg("Can't get the remote Video Track when create ANSWER msg, isError: " + this.isError, this.myself);
            }
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CREATE_LOCAL_ANSWER, "PeerConnection finish to create answer, isError: " + this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public /* synthetic */ void lambda$createPeerConnection$2() throws Exception {
        String str = TAG;
        Logging.w(str, "Begin to create a peer connection.");
        try {
            if (this.peerConnection != null) {
                this.events.onThrowPeerExceptionMsg("PeerConnection already created.", this.myself);
                synchronized (this.mPeerConnectionLock) {
                    this.mPeeConnectionOpening = false;
                    this.mPeerConnectionLock.notifyAll();
                }
                Logging.w(str, "End to create a peer connection: existed.");
                return;
            }
            createMediaConstraintsInternal();
            createPeerConnectionInternal();
            synchronized (this.mPeerConnectionLock) {
                this.mPeeConnectionOpening = false;
                this.mPeerConnectionLock.notifyAll();
            }
            Logging.w(str, "End to create a peer connection: succeed.");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_CREATE_PC, "PeerConnection created:" + this);
            return;
        } catch (Exception e10) {
            synchronized (this.mPeerConnectionLock) {
                this.mPeeConnectionOpening = false;
                this.mPeerConnectionLock.notifyAll();
                Logging.w(TAG, "End to create a peer connection: failed.");
                reportError("Failed to create peer connection: " + e10.getMessage());
                throw e10;
            }
        }
        synchronized (this.mPeerConnectionLock) {
            this.mPeeConnectionOpening = false;
            this.mPeerConnectionLock.notifyAll();
            Logging.w(TAG, "End to create a peer connection: failed.");
            reportError("Failed to create peer connection: " + e10.getMessage());
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(String str, PeerConnectionParameters peerConnectionParameters, Context context) {
        Logging.d(TAG, "Initialize WebRTC. Field trials: " + str + ", haimaCloudId: " + peerConnectionParameters.haimaCloudId);
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_BEGIN_INITIALIZE_WEBRTC, "begin Initialize WebRTC:" + this + ".haimaCloudId:" + peerConnectionParameters.haimaCloudId + ",elapsedRealtime:" + SystemClock.elapsedRealtime());
        PeerConnectionFactory.InitializationOptions.Builder builder = PeerConnectionFactory.InitializationOptions.builder(context);
        builder.setFieldTrials(str).setEnableInternalTracer(true);
        WebrtcLoggableHelp webrtcLoggableHelp = this.mWebrtcLoggable;
        if (webrtcLoggableHelp != null) {
            builder.setInjectableLogger(webrtcLoggableHelp, webrtcLoggableHelp.getLevel());
        }
        PeerConnectionFactory.initialize(builder.createInitializationOptions());
        if (this.mWebrtcLoggable == null) {
            Logging.enableLogToDebugOutput(Logging.Severity.LS_INFO);
        }
        String str2 = peerConnectionParameters.haimaCloudId;
        if (str2 != null) {
            PeerConnection.setNativeHaimaCloudId(str2);
            if (mGamePlatformType == GamePlatformType.ARM) {
                PeerConnection.setNativeFecParams(HmRtcGlobalConfig.getRtcMaxMediaPackets(), HmRtcGlobalConfig.getRtcMaxFecPackets());
            }
            if (HmRtcGlobalConfig.rtcStunReqResendCfg.isEnable()) {
                PeerConnection.setNativeSetStunRequestResendParams(HmRtcGlobalConfig.rtcStunReqResendCfg.getResendRto(), HmRtcGlobalConfig.rtcStunReqResendCfg.getResendCount());
            }
            PeerConnection.EnableNetAccelerate(HmRtcGlobalConfig.rtcEnableNetworkAccelerate);
        }
        PeerConnection.enableNativeSrtpCipherReport(HmRtcGlobalConfig.rtcEnableSrtpCipherReport);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRemoteIceCandidates$6(IceCandidate[] iceCandidateArr) {
        if (this.peerConnection != null && !this.isError) {
            drainCandidates();
            this.peerConnection.removeIceCandidates(iceCandidateArr);
            return;
        }
        this.events.onThrowPeerExceptionMsg("Remove candidate failed, isError: " + this.isError, this.myself);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reportError$9(String str) {
        if (this.isError) {
            return;
        }
        this.events.onPeerConnectionError(str, this.myself);
        this.isError = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reportErrorOnly$13(String str) {
        if (this.isError) {
            return;
        }
        this.events.onThrowPeerExceptionMsg(str, this.myself);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setRemoteDescription$7(SessionDescription sessionDescription) {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection == null || this.isError) {
            this.events.onThrowPeerExceptionMsg("PeerConnection is null when set remote SDP, isError: " + this.isError, this.myself);
            return;
        }
        if (peerConnection.getRemoteDescription() != null) {
            this.events.onThrowPeerExceptionMsg("There is no need to set remote description when peerconnection has one,", this.myself);
            return;
        }
        String startBitrate = sessionDescription.description;
        SessionDescription.Attribute attributeDeserialize = sessionDescription.Deserialize();
        receiveRemoteSessionAttribule(attributeDeserialize);
        this.mInputHelper.setRemoteVersion(null, attributeDeserialize != null ? attributeDeserialize.GetAttribute("input") : null);
        this.mInputHelper.newInputchannel(null);
        if (this.preferIsac) {
            startBitrate = preferCodec(startBitrate, AUDIO_CODEC_ISAC, true);
        }
        String str = this.peerConnectionParameters.videoCodec;
        if (str != null && !str.isEmpty()) {
            startBitrate = preferCodec(startBitrate, getSdpVideoCodecName(this.peerConnectionParameters), false);
        }
        int i10 = this.peerConnectionParameters.audioStartBitrate;
        if (i10 > 0) {
            startBitrate = setStartBitrate(AUDIO_CODEC_OPUS, false, startBitrate, i10);
        }
        Logging.d(TAG, "Set remote SDP.");
        this.peerConnection.setRemoteDescription(this.offerObserver, new SessionDescription(sessionDescription.type, startBitrate));
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_FINISH_SET_REMOTE_DESCRIPTION, "Set remote SDP finished:" + this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setX86RemoteDescription$8(SessionDescription sessionDescription) {
        if (this.peerConnection != null && !this.isError) {
            Logging.d(TAG, "Set remote SDP received from x86 http.");
            this.peerConnection.setRemoteDescription(this.mRemoteObserver, sessionDescription);
            return;
        }
        this.events.onThrowPeerExceptionMsg("PeerConnection is null when set remote SDP, isError: " + this.isError, this.myself);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$x86SendLargeDataBlcok$3(byte[] bArr, HaimaDataChannel.Listener listener) throws Exception {
        return Integer.valueOf(internalX86SendLargeDataBlcok(bArr, listener));
    }

    @Nullable
    private static String movePayloadTypesToFront(List<String> list, String str) {
        List listAsList = Arrays.asList(str.split(" "));
        if (listAsList.size() <= 3) {
            Logging.e(TAG, "Wrong SDP media description format: " + str);
            return null;
        }
        List listSubList = listAsList.subList(0, 3);
        ArrayList arrayList = new ArrayList(listAsList.subList(3, listAsList.size()));
        arrayList.removeAll(list);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(listSubList);
        arrayList2.addAll(list);
        arrayList2.addAll(arrayList);
        return joinString(arrayList2, " ", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String preferCodec(String str, String str2, boolean z10) {
        String str3 = TAG;
        Logging.d(str3, "start to change sdp preferred codec to : " + str2);
        if (str2 == null || str2.isEmpty()) {
            Logging.w(str3, "change sdp preferred codec failed because expected codec is null");
            return str;
        }
        String[] strArrSplit = str.split("\r\n");
        int iFindMediaDescriptionLine = findMediaDescriptionLine(z10, strArrSplit);
        if (iFindMediaDescriptionLine == -1) {
            Logging.w(str3, "No mediaDescription line, so can't prefer " + str2);
            return str;
        }
        ArrayList arrayList = new ArrayList();
        Pattern patternCompile = Pattern.compile("^a=rtpmap:(\\d+) " + str2 + "(/\\d+)+[\r]?$");
        for (String str4 : strArrSplit) {
            Matcher matcher = patternCompile.matcher(str4);
            if (matcher.matches()) {
                arrayList.add(matcher.group(1));
            }
        }
        if (arrayList.isEmpty()) {
            Logging.w(TAG, "No payload types with name " + str2);
            return str;
        }
        String strMovePayloadTypesToFront = movePayloadTypesToFront(arrayList, strArrSplit[iFindMediaDescriptionLine]);
        if (strMovePayloadTypesToFront == null) {
            return str;
        }
        Logging.d(TAG, "Change media description from: " + strArrSplit[iFindMediaDescriptionLine] + " to " + strMovePayloadTypesToFront);
        strArrSplit[iFindMediaDescriptionLine] = strMovePayloadTypesToFront;
        return joinString(Arrays.asList(strArrSplit), "\r\n", true);
    }

    private void receiveRemoteSessionAttribule(SessionDescription.Attribute attribute) {
        if (attribute == null) {
            return;
        }
        String strGetDeviceModel = attribute.GetDeviceModel();
        String str = "";
        if (strGetDeviceModel != null) {
            str = "model=" + strGetDeviceModel;
        }
        String strGetDeviceVersion = attribute.GetDeviceVersion();
        if (strGetDeviceVersion != null) {
            str = str + "device=" + strGetDeviceVersion;
        }
        String strGetLibVersion = attribute.GetLibVersion();
        if (strGetLibVersion != null) {
            str = str + "lib=" + strGetLibVersion;
        }
        String strGetDebugInfo = attribute.GetDebugInfo();
        if (strGetDebugInfo != null) {
            str = str + "debuginfo=" + strGetDebugInfo;
            WebrtcLoggableHelp.DispatchCommand(strGetDebugInfo);
        }
        Logging.v(TAG, " receiveRemoteSessionAttr: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportError(final String str) {
        Logging.e(TAG, "Peerconnection error: " + str);
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f96137b.lambda$reportError$9(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportErrorOnly(final String str) {
        Logging.e(TAG, "Peer connection error, report error only: " + str);
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f96172b.lambda$reportErrorOnly$13(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendLocalSessionAttribule(SessionDescription.Attribute attribute) {
        if (attribute == null) {
            Logging.d(TAG, " sendLocalSessionAttribule: false ");
            return false;
        }
        attribute.SetDeviceModel(Build.BRAND + com.join.mgps.Util.o0.f49827a + Build.MODEL);
        attribute.SetLibVersion("3.0.2.8.5396d74.12041040");
        attribute.SetDeviceVersion(Build.VERSION.RELEASE);
        Logging.d(TAG, " sendLocalSessionAttribule: true ");
        return true;
    }

    private static String setStartBitrate(String str, boolean z10, String str2, int i10) {
        boolean z11;
        String strGroup;
        String[] strArrSplit = str2.split("\r\n");
        Pattern patternCompile = Pattern.compile("^a=rtpmap:(\\d+) " + str + "(/\\d+)+[\r]?$");
        int i11 = 0;
        while (true) {
            z11 = true;
            if (i11 >= strArrSplit.length) {
                i11 = -1;
                strGroup = null;
                break;
            }
            Matcher matcher = patternCompile.matcher(strArrSplit[i11]);
            if (matcher.matches()) {
                strGroup = matcher.group(1);
                break;
            }
            i11++;
        }
        if (strGroup == null) {
            Logging.w(TAG, "No rtpmap for " + str + " codec");
            return str2;
        }
        Logging.d(TAG, "Found " + str + " rtpmap " + strGroup + " at " + strArrSplit[i11]);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("^a=fmtp:");
        sb2.append(strGroup);
        sb2.append(" \\w+=\\d+.*[\r]?$");
        Pattern patternCompile2 = Pattern.compile(sb2.toString());
        int i12 = 0;
        while (true) {
            if (i12 >= strArrSplit.length) {
                z11 = false;
                break;
            }
            if (patternCompile2.matcher(strArrSplit[i12]).matches()) {
                String str3 = TAG;
                Logging.d(str3, "Found " + str + " " + strArrSplit[i12]);
                if (z10) {
                    strArrSplit[i12] = strArrSplit[i12] + "; x-google-start-bitrate=" + i10;
                } else {
                    strArrSplit[i12] = strArrSplit[i12] + "; maxaveragebitrate=" + (i10 * 1000);
                }
                Logging.d(str3, "Update remote SDP line: " + strArrSplit[i12]);
                break;
            }
            i12++;
        }
        StringBuilder sb3 = new StringBuilder();
        for (int i13 = 0; i13 < strArrSplit.length; i13++) {
            sb3.append(strArrSplit[i13]);
            sb3.append("\r\n");
            if (!z11 && i13 == i11) {
                String str4 = z10 ? "a=fmtp:" + strGroup + " " + VIDEO_CODEC_PARAM_START_BITRATE + SimpleComparison.EQUAL_TO_OPERATION + i10 : "a=fmtp:" + strGroup + " " + AUDIO_CODEC_PARAM_BITRATE + SimpleComparison.EQUAL_TO_OPERATION + (i10 * 1000);
                Logging.d(TAG, "Add remote SDP line: " + str4);
                sb3.append(str4);
                sb3.append("\r\n");
            }
        }
        return sb3.toString();
    }

    private void setUserInfo() {
        PeerConnection peerConnection = this.peerConnection;
        if (peerConnection == null) {
            return;
        }
        String str = Build.BRAND;
        peerConnection.setPropertyString(HaimaPropertyNames.USER_BRAND, str);
        this.peerConnection.setPropertyString(HaimaPropertyNames.USER_MODEL, str + com.join.mgps.Util.o0.f49827a + Build.MODEL);
        this.peerConnection.setPropertyString(HaimaPropertyNames.USER_OS, "andr" + Build.VERSION.RELEASE);
        String str2 = this.peerConnectionParameters.haimaCloudId;
        if (str2 != null) {
            this.peerConnection.setPropertyString(HaimaPropertyNames.USER_CID, str2);
        }
        long totalMemory = HmUtilsHelper.getTotalMemory();
        String str3 = TAG;
        Logging.d(str3, "getTotalMemory:" + totalMemory);
        if (totalMemory > 0) {
            long j10 = ((totalMemory + 1000000000) - 1) / 1000000000;
            long j11 = (j10 != 0 || totalMemory <= 0) ? j10 : 1L;
            Logging.d(str3, "user.device.mem:" + j11);
            this.peerConnection.setPropertyString(HaimaPropertyNames.USER_DEVICE_MEM, "" + j11);
        }
    }

    public void ConnectAccProxy(final String str, final int i10, final String str2, final String str3) {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f96141b.lambda$ConnectAccProxy$10(str, i10, str2, str3);
            }
        });
    }

    public void DisconnectAccProxy() {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f96120b.lambda$DisconnectAccProxy$11();
            }
        });
    }

    public void SwitchToCellularConnection(final boolean z10) {
        if (HmRtcGlobalConfig.rtcEnableSwitchCellularNetwork) {
            this.executor.execute(new Runnable() { // from class: org.webrtc.haima.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f96152b.lambda$SwitchToCellularConnection$12(z10);
                }
            });
        }
    }

    public void addRemoteIceCandidate(final IceCandidate iceCandidate) {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f96133b.lambda$addRemoteIceCandidate$5(iceCandidate);
            }
        });
    }

    public void close() {
        if (this.mCountDownLatch != null) {
            Logging.e(TAG, "Fatal error: repeat call close.");
            return;
        }
        this.mCountDownLatch = new CountDownLatch(1);
        this.statsTimer.cancel();
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f96171b.closeInternal();
            }
        });
        try {
            try {
                this.mCountDownLatch.await(2L, TimeUnit.SECONDS);
            } catch (Exception unused) {
                RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOSE_PC_CLIENT_TIMEOUT, "closing peer connection client timeout:" + this);
            }
        } finally {
            this.mCountDownLatch = null;
        }
    }

    public void createAnswer() {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f96129b.lambda$createAnswer$4();
            }
        });
    }

    @Nullable
    public HmDCDevice createHmDCDevice(String str) {
        if (this.peerConnection != null && !this.isError) {
            return HmDataChannelManager.getInstance().createDataChannel(this.peerConnection, str);
        }
        Logging.e(TAG, "Creating data channel without non peer connection or in error state.");
        return null;
    }

    AudioDeviceModule createJavaAudioDevice() {
        if (!this.peerConnectionParameters.useOpenSLES) {
            Logging.w(TAG, "External OpenSLES ADM not implemented yet.");
        }
        JavaAudioDeviceModule.AudioRecordErrorCallback audioRecordErrorCallback = new JavaAudioDeviceModule.AudioRecordErrorCallback() { // from class: org.webrtc.haima.PeerConnectionClient.2
            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioRecordErrorCallback
            public void onWebRtcAudioRecordError(String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioRecordError: " + str);
                PeerConnectionClient.this.reportError(str);
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioRecordErrorCallback
            public void onWebRtcAudioRecordInitError(String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioRecordInitError: " + str);
                PeerConnectionClient.this.reportError(str);
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioRecordErrorCallback
            public void onWebRtcAudioRecordStartError(JavaAudioDeviceModule.AudioRecordStartErrorCode audioRecordStartErrorCode, String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioRecordStartError: " + audioRecordStartErrorCode + ". " + str);
                PeerConnectionClient.this.reportError(str);
            }
        };
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = new JavaAudioDeviceModule.AudioTrackErrorCallback() { // from class: org.webrtc.haima.PeerConnectionClient.3
            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioTrackErrorCallback
            public void onWebRtcAudioTrackError(String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioTrackError: " + str);
                PeerConnectionClient.this.reportErrorOnly(str);
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioTrackErrorCallback
            public void onWebRtcAudioTrackInitError(String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioTrackInitError: " + str);
                PeerConnectionClient.this.reportErrorOnly(str);
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioTrackErrorCallback
            public void onWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode audioTrackStartErrorCode, String str) {
                Logging.e(PeerConnectionClient.TAG, "onWebRtcAudioTrackStartError: " + audioTrackStartErrorCode + ". " + str);
                PeerConnectionClient.this.reportErrorOnly(str);
            }
        };
        JavaAudioDeviceModule.Builder useStereoOutput = JavaAudioDeviceModule.builder(this.appContext).setUseHardwareAcousticEchoCanceler(!this.peerConnectionParameters.disableBuiltInAEC).setUseHardwareNoiseSuppressor(!this.peerConnectionParameters.disableBuiltInNS).setAudioRecordErrorCallback(audioRecordErrorCallback).setAudioTrackErrorCallback(audioTrackErrorCallback).setAudioRecordStateCallback(new JavaAudioDeviceModule.AudioRecordStateCallback() { // from class: org.webrtc.haima.PeerConnectionClient.4
            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioRecordStateCallback
            public void onWebRtcAudioRecordStart() {
                Logging.i(PeerConnectionClient.TAG, "Audio recording starts");
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioRecordStateCallback
            public void onWebRtcAudioRecordStop() {
                Logging.i(PeerConnectionClient.TAG, "Audio recording stops");
            }
        }).setAudioTrackStateCallback(new JavaAudioDeviceModule.AudioTrackStateCallback() { // from class: org.webrtc.haima.PeerConnectionClient.5
            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioTrackStateCallback
            public void onWebRtcAudioTrackStart() {
                Logging.i(PeerConnectionClient.TAG, "Audio playout starts");
            }

            @Override // org.hmwebrtc.audio.JavaAudioDeviceModule.AudioTrackStateCallback
            public void onWebRtcAudioTrackStop() {
                Logging.i(PeerConnectionClient.TAG, "Audio playout stops");
            }
        }).setUseStereoOutput(true);
        if (HmRtcGlobalConfig.rtc_upload_audio_on) {
            AudioAttributes audioAttributesBuild = HmRtcAdapter.externalAudioAttributes;
            if (audioAttributesBuild == null) {
                audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
            } else {
                Logging.d(TAG, "Using external AudioAttributes with Usage: " + audioAttributesBuild.getUsage() + ", ContentType: " + audioAttributesBuild.getContentType() + ", flags: " + audioAttributesBuild.getFlags());
            }
            useStereoOutput.setAudioAttributes(audioAttributesBuild);
            useStereoOutput.setAudioSource(1);
            HmAudioManager.getInstance().prepare(null, useStereoOutput);
        } else if (HmRtcGlobalConfig.rtc_download_audio_on) {
            AudioAttributes audioAttributesBuild2 = HmRtcAdapter.externalAudioAttributes;
            if (audioAttributesBuild2 == null) {
                audioAttributesBuild2 = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
            } else {
                Logging.d(TAG, "Using external AudioAttributes with Usage: " + audioAttributesBuild2.getUsage() + ", ContentType: " + audioAttributesBuild2.getContentType() + ", flags: " + audioAttributesBuild2.getFlags());
            }
            useStereoOutput.setAudioAttributes(audioAttributesBuild2);
        }
        JavaAudioDeviceModule javaAudioDeviceModuleCreateAudioDeviceModule = useStereoOutput.createAudioDeviceModule();
        if (HmRtcGlobalConfig.rtc_upload_audio_on) {
            HmAudioManager.getInstance().setAdm(javaAudioDeviceModuleCreateAudioDeviceModule);
        }
        return javaAudioDeviceModuleCreateAudioDeviceModule;
    }

    protected void createMediaConstraintsInternal() {
        this.audioConstraints = new MediaConstraints();
        if (this.peerConnectionParameters.noAudioProcessing) {
            Logging.d(TAG, "Disabling audio processing");
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_ECHO_CANCELLATION_CONSTRAINT, "false"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_AUTO_GAIN_CONTROL_CONSTRAINT, "false"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_HIGH_PASS_FILTER_CONSTRAINT, "false"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_NOISE_SUPPRESSION_CONSTRAINT, "false"));
        } else {
            Logging.d(TAG, "Enabling audio processing");
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_ECHO_CANCELLATION_CONSTRAINT, "true"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_AUTO_GAIN_CONTROL_CONSTRAINT, "true"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_HIGH_PASS_FILTER_CONSTRAINT, "true"));
            this.audioConstraints.mandatory.add(new MediaConstraints.KeyValuePair(AUDIO_NOISE_SUPPRESSION_CONSTRAINT, "true"));
        }
        MediaConstraints mediaConstraints = new MediaConstraints();
        this.sdpMediaConstraints = mediaConstraints;
        mediaConstraints.mandatory.add(new MediaConstraints.KeyValuePair("OfferToReceiveAudio", "true"));
        this.sdpMediaConstraints.mandatory.add(new MediaConstraints.KeyValuePair("OfferToReceiveVideo", "true"));
    }

    public void createPeerConnection(VideoSink videoSink, List<VideoSink> list, VideoCapturer videoCapturer, List<PeerConnection.IceServer> list2) {
        this.mPeeConnectionOpening = true;
        if (this.peerConnectionParameters == null) {
            Logging.e(TAG, "Creating peer connection without initializing factory.");
            return;
        }
        this.iceServers = list2;
        this.remoteSinks = list;
        if (videoCapturer != null) {
            HmCameraManager.getInstance().setVideo(videoCapturer, videoSink);
        }
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.v
            @Override // java.lang.Runnable
            public final void run() throws Exception {
                this.f96163b.lambda$createPeerConnection$2();
            }
        });
        Logging.w(TAG, "Begin to waiting a peer connection creation.");
        synchronized (this.mPeerConnectionLock) {
            while (this.mPeeConnectionOpening) {
                try {
                    this.mPeerConnectionLock.wait();
                } catch (InterruptedException unused) {
                    Logging.w(TAG, "Call createPeerConnection interrupted while waiting for done.");
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
        Logging.w(TAG, "End to waiting a peer connection creation.");
    }

    public void createPeerConnectionFactory(final PeerConnectionFactory.Options options) {
        if (this.factory != null) {
            throw new IllegalStateException("PeerConnectionFactory has already been constructed");
        }
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f96148b.lambda$createPeerConnectionFactory$1(options);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected void createPeerConnectionInternal() {
        int i10;
        if (this.factory == null || this.isError) {
            Logging.e(TAG, "Peerconnection factory is not created");
            this.events.onThrowPeerExceptionMsg("createPeerConnectionInternal error: " + this.factory + ", isError: " + this.isError, this.myself);
            return;
        }
        String str = TAG;
        Logging.d(str, "Create peer connection.");
        this.mIsRTCConnected = false;
        this.queuedRemoteCandidates = new ArrayList();
        PeerConnection.RTCConfiguration rTCConfiguration = new PeerConnection.RTCConfiguration(this.iceServers);
        rTCConfiguration.tcpCandidatePolicy = PeerConnection.TcpCandidatePolicy.DISABLED;
        rTCConfiguration.bundlePolicy = PeerConnection.BundlePolicy.MAXBUNDLE;
        rTCConfiguration.rtcpMuxPolicy = PeerConnection.RtcpMuxPolicy.REQUIRE;
        rTCConfiguration.continualGatheringPolicy = PeerConnection.ContinualGatheringPolicy.GATHER_CONTINUALLY;
        rTCConfiguration.keyType = PeerConnection.KeyType.ECDSA;
        rTCConfiguration.enableDtlsSrtp = Boolean.valueOf(!this.peerConnectionParameters.loopback);
        rTCConfiguration.sdpSemantics = PeerConnection.SdpSemantics.UNIFIED_PLAN;
        if (HmRtcGlobalConfig.rtcUdpPortCfg.isEnable()) {
            HmRtcUdpPortCfg.HmRtcUdpPortRangeCfg portRange = HmRtcGlobalConfig.rtcUdpPortCfg.getPortRange();
            rTCConfiguration.udpMinPort = Integer.valueOf(portRange.udpMinPort);
            rTCConfiguration.udpMaxPort = Integer.valueOf(portRange.udpMaxPort);
        }
        if (HmRtcGlobalConfig.getConnectionPingInterval() > 0) {
            rTCConfiguration.iceStableWritableConnectionPingInterval = Integer.valueOf(HmRtcGlobalConfig.getConnectionPingInterval());
            Logging.d(str, "Set connection ping interval by Saas: " + rTCConfiguration.iceStableWritableConnectionPingInterval);
            if (rTCConfiguration.iceStableWritableConnectionPingInterval.intValue() <= 480) {
                reportErrorOnly("StableWritableConnectionPingInterval from Saas is incorrect, it have to longer than 480.");
                return;
            }
        }
        if (!this.peerConnectionParameters.isDirectSurfaceOn && HmRtcGlobalConfig.getHmBadFrameDetectConfigParams().length() > 0) {
            rTCConfiguration.rtcBadFrameDetectConfig = HmRtcGlobalConfig.getHmBadFrameDetectConfigParams();
        }
        if (HmRtcGlobalConfig.getIceUnwritableMinChecks() > 0) {
            rTCConfiguration.iceUnwritableMinChecks = Integer.valueOf(HmRtcGlobalConfig.getIceUnwritableMinChecks());
            Logging.d(str, "Set un-writable min checks by Saas: " + rTCConfiguration.iceUnwritableMinChecks);
        }
        if (HmRtcGlobalConfig.getIceUnwritableTimeMs() > 0) {
            rTCConfiguration.iceUnwritableTimeMs = Integer.valueOf(HmRtcGlobalConfig.getIceUnwritableTimeMs());
            Logging.d(str, "Set un-writable timeout by Saas: " + rTCConfiguration.iceUnwritableTimeMs);
            if (rTCConfiguration.iceUnwritableTimeMs.intValue() > 15000) {
                reportErrorOnly("Unwritable timeout from Saas is incorrect, it have to less than 15000 ms");
                return;
            }
        }
        rTCConfiguration.countlyObserver = this.pcCountlyObserver;
        this.peerConnection = this.factory.createPeerConnection(rTCConfiguration, this.pcObserver);
        CountlyController countlyController = this.mCountlyController;
        if (countlyController != null) {
            countlyController.lambda$enableUpstream$0(false);
        }
        if (this.peerConnection == null) {
            reportErrorOnly("Create peer connection failed. Maybe some config from Saas is incorrect.");
            return;
        }
        setUserInfo();
        if (HmRtcGlobalConfig.rtc_upload_video_on) {
            HmCameraManager.getInstance().addPeerConnectTrack(this.peerConnection);
        }
        if (HmRtcGlobalConfig.rtc_upload_audio_on) {
            HmAudioManager.getInstance().addPeerConnectTrack(this.peerConnection, this.audioConstraints, this.factory);
        }
        Logging.d(str, "Peer connection created.");
        if (mGamePlatformType == GamePlatformType.X86) {
            this.events.onCreatePeerConnectionSuccess(this.myself);
        } else {
            VideoTrack remoteVideoTrack = getRemoteVideoTrack();
            this.remoteVideoTrack = remoteVideoTrack;
            if (remoteVideoTrack != null) {
                remoteVideoTrack.setEnabled(this.renderVideo);
                this.events.onThrowPeerExceptionMsg("Get the remote Video Track when create ANSWER msg, isError: " + this.isError, this.myself);
            } else {
                Logging.e(str, "Can't get the remote Video Track when create ANSWER msg.");
                this.events.onThrowPeerExceptionMsg("Can't get the remote Video Track when create ANSWER msg, isError: " + this.isError, this.myself);
            }
        }
        if (HmRtcGlobalConfig.rtc_debug_mode && this.mWebrtcLoggable != null) {
            this.mWebrtcLoggable.setLogMemSinkCB(new HmDCLog(HmDataChannelManager.getInstance().createDataChannel(this.peerConnection, HmDCLog.LOGDCNAME, 1)));
        }
        HmDataChannelManager.getInstance().disposed.set(false);
        if (!TextUtils.isEmpty(this.mCacheAccProxyIp) && (i10 = this.mCacheAccProxyPort) != 0) {
            this.peerConnection.ConnectAccPorxy(this.mCacheAccProxyIp, i10, this.mCacheAccProxyUser, this.mCacheAccProxyPW);
        }
        boolean z10 = this.mCacheSwitchToCellularConnection;
        if (z10) {
            SwitchToCellularConnection(z10);
            this.mCacheSwitchToCellularConnection = false;
        }
        if (this.mDCManager != null) {
            Logging.e(str, "Peerconnection dcmanager already created");
            this.mDCManager.release();
        }
        this.mDCManager = new DCManager();
        DataChannel dataChannelCreateChannel = DCManager.createChannel(this.peerConnection, "fectl_chn", true);
        if (dataChannelCreateChannel != null) {
            this.mDCManager.addDC("fectl_chn", new HmDCSimple("fectl_chn", dataChannelCreateChannel, new HmDCObserverFectl(this.peerConnection), null));
        }
        DataChannel dataChannelCreateChannel2 = DCManager.createChannel(this.peerConnection, "vqa_chn", true);
        if (dataChannelCreateChannel2 != null) {
            HmDCObserverVQA hmDCObserverVQA = new HmDCObserverVQA();
            this.mHmRemoteVQAStats = hmDCObserverVQA;
            this.mDCManager.addDC("vqa_chn", new HmDCSimple("vqa_chn", dataChannelCreateChannel2, hmDCObserverVQA, null));
        }
        if (this.mTransDeviceManager != null) {
            Logging.e(str, "Transport device manager already created");
            this.mTransDeviceManager.release();
        }
        this.mTransDeviceManager = new HmTransDeviceManager();
        this.mCommandChannel.init(isRealX86() ? null : createTransDevice("HaimaTransInput", 0, this.mCommandChannel), this.mCommandListener);
    }

    public void enableStatsEvents(boolean z10, int i10) {
        if (!z10) {
            this.statsTimer.cancel();
            return;
        }
        try {
            this.statsTimer.schedule(new AnonymousClass7(), 0L, i10);
        } catch (Exception e10) {
            Logging.e(TAG, "Can not schedule statistics timer", e10);
        }
    }

    protected AudioAttributes getInUsedAudioAttributes() {
        WebRtcAudioTrack webRtcAudioTrack = this.webRtcAudioTrackRef.get();
        if (webRtcAudioTrack != null) {
            return webRtcAudioTrack.getInUsedAudioAttributes();
        }
        return null;
    }

    public boolean isICEConnected() {
        return this.mIsRTCConnected;
    }

    boolean isRealX86() {
        return mRealGamePlatformType == GamePlatformType.X86;
    }

    protected boolean isRtcUploadAudioChannelAvailable() {
        RtpTransceiver.RtpTransceiverDirection rtpTransceiverDirection = RtpTransceiver.RtpTransceiverDirection.SEND_RECV;
        RtpTransceiver.RtpTransceiverDirection rtpTransceiverDirection2 = this.mAudioDirection;
        return rtpTransceiverDirection == rtpTransceiverDirection2 || RtpTransceiver.RtpTransceiverDirection.SEND_ONLY == rtpTransceiverDirection2;
    }

    protected boolean isRtcUploadVideoChannelAvailable() {
        RtpTransceiver.RtpTransceiverDirection rtpTransceiverDirection = RtpTransceiver.RtpTransceiverDirection.SEND_RECV;
        RtpTransceiver.RtpTransceiverDirection rtpTransceiverDirection2 = this.mVideoDirection;
        return rtpTransceiverDirection == rtpTransceiverDirection2 || RtpTransceiver.RtpTransceiverDirection.SEND_ONLY == rtpTransceiverDirection2;
    }

    public boolean peerconnectionCreated() {
        return this.peerConnection != null;
    }

    public void removeRemoteIceCandidates(final IceCandidate[] iceCandidateArr) {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f96165b.lambda$removeRemoteIceCandidates$6(iceCandidateArr);
            }
        });
    }

    boolean sendData(byte[] bArr) {
        return isRealX86() ? sendDataX86(bArr) : this.mCommandChannel.sendData(bArr);
    }

    boolean sendDataX86(byte[] bArr) {
        DataChannel dataChannel = this.mDataChannel;
        if (dataChannel != null) {
            return dataChannel.send(bArr, true);
        }
        return false;
    }

    boolean sendText(String str) {
        return isRealX86() ? sendTextX86(str) : this.mCommandChannel.sendText(str);
    }

    boolean sendTextX86(String str) {
        if (this.mDataChannel != null && str != null && !str.isEmpty()) {
            try {
                byte[] bytes = str.getBytes();
                if (bytes == null || bytes.length <= 0) {
                    return false;
                }
                return this.mDataChannel.send(bytes, false);
            } catch (Exception e10) {
                Logging.e(TAG, "sendText str getBytes Exception" + e10.toString());
            }
        }
        return false;
    }

    public int sendToRemoteInput(int i10, byte[] bArr) {
        try {
            if (this.mIsRTCConnected && bArr != null && bArr.length < 1024 && this.mInputHelper.isValidInputChannel() && this.mInputHelper.sendToRemoteInput(null, i10, bArr) == 0) {
                return 0;
            }
            return (this.mIsRTCConnected && sendData(bArr)) ? 0 : -1;
        } catch (Exception e10) {
            Logging.e(TAG, "SendToRemoteInput ex:" + e10.toString());
            return -1;
        }
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        AudioDeviceModule audioDeviceModule;
        WebRtcAudioTrack webRtcAudioTrack = this.webRtcAudioTrackRef.get();
        if (webRtcAudioTrack == null) {
            Logging.d(TAG, "Not setAudioAttributes");
            return;
        }
        Logging.d(TAG, "setAudioAttributes");
        webRtcAudioTrack.setAudioAttributes(audioAttributes);
        PeerConnectionFactory peerConnectionFactory = this.factory;
        if (peerConnectionFactory == null || (audioDeviceModule = this.adm) == null) {
            return;
        }
        peerConnectionFactory.restartAudioTrack(audioDeviceModule.getNativeAudioDeviceModulePointer());
    }

    public void setGamePlatform(GamePlatformType gamePlatformType) {
        mGamePlatformType = gamePlatformType;
    }

    public void setRealGamePlatform(GamePlatformType gamePlatformType) {
        mRealGamePlatformType = gamePlatformType;
    }

    public void setRemoteDescription(final SessionDescription sessionDescription) {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f96159b.lambda$setRemoteDescription$7(sessionDescription);
            }
        });
    }

    public void setX86RemoteDescription(final SessionDescription sessionDescription) {
        this.executor.execute(new Runnable() { // from class: org.webrtc.haima.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f96065b.lambda$setX86RemoteDescription$8(sessionDescription);
            }
        });
    }

    public int x86SendLargeDataBlcok(final byte[] bArr, final HaimaDataChannel.Listener listener) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Callable() { // from class: org.webrtc.haima.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f96168b.lambda$x86SendLargeDataBlcok$3(bArr, listener);
            }
        });
        try {
            return ((Integer) ((Future) this.executor.invokeAll(arrayList).get(0)).get()).intValue();
        } catch (Exception e10) {
            Logging.d(TAG, "x86SendLargeDataBlcok failed: ex=" + e10.toString());
            return -1;
        }
    }

    public void createPeerConnection(List<VideoSink> list, List<PeerConnection.IceServer> list2) {
        createPeerConnection(null, list, null, list2);
    }
}
