package com.haima.hmcp.rtc.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewTreeObserver;
import android.widget.Toast;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.PlayStreamPayload;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.beans.WebRtcInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.display.HmScreenMonitor;
import com.haima.hmcp.countly.CountlyUtil;
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
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.rtc.widgets.beans.RtcTurnInfo;
import com.haima.hmcp.rtc.widgets.beans.RtcVideoDelayInfo;
import com.haima.hmcp.utils.GameActionUtil;
import com.haima.hmcp.utils.HmNetWorkManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.ProtoBufUtil;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.VolleyError;
import com.haima.hmcp.volley.toolbox.JsonObjectRequest;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.BaseVideoView;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hmwebrtc.SessionDescription;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HaimaDataChannel;
import org.webrtc.haima.HmFrameDelayInfo;
import org.webrtc.haima.HmRtcAdapter;
import org.webrtc.haima.HmRtcGlobalConfig;
import org.webrtc.haima.audio.HmAudioManager;
import org.webrtc.haima.listeners.HmGSCallback;
import org.webrtc.haima.listeners.HmProtoCallback;
import org.webrtc.haima.util.RtcProtoBufUtil;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class RtcModel implements IStreamModel {
    private static final String AUTH_SEPARATOR = ":";
    private static final String TAG = "RtcModel";
    protected String boardType;
    private AbsIjkVideoView ijkVideoView;
    protected Context mAppContext;
    protected String mCoTurnUrl;
    protected String mInstanceIP;
    protected String mIpV6TurnUrl;
    protected HmcpRequest mRequestManager;
    protected String mRoomId;
    protected String mSignalUrl;
    protected String mSignalV2Url;
    protected String mTurnPassword;
    protected String mTurnUrl;
    protected String mTurnUserName;
    private RtcPlayer rtcPlayer;

    /* JADX INFO: renamed from: com.haima.hmcp.rtc.widgets.RtcModel$1, reason: invalid class name */
    class AnonymousClass1 implements HmGSCallback {
        final /* synthetic */ String val$gsmUrl;

        AnonymousClass1(String str) {
            this.val$gsmUrl = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$callBackToSaasSdk$0(boolean z10, JSONObject jSONObject) {
            try {
                LogUtils.d(RtcModel.TAG, jSONObject.toString());
                int iOptInt = new JSONObject(jSONObject.optString("ret")).optInt("result");
                if (iOptInt == 0) {
                    if (!z10) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_RECEIVE_CANDIDATE);
                        CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_SUCCESS);
                        return;
                    }
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SIGNAL_CONNECT_SUCCESS);
                    String strOptString = jSONObject.optString("gsproxy_sdp");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_SCCUESS, strOptString);
                    JSONObject jSONObject2 = new JSONObject(new String(Base64.decode(strOptString.getBytes(), 0)));
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SENT_JOIN);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_RECEIVE_OFFER);
                    SessionDescription sessionDescription = new SessionDescription(SessionDescription.Type.OFFER, jSONObject2.optString("sdp"));
                    if (RtcModel.this.rtcPlayer.getmHmRtcAdapter() != null) {
                        RtcModel.this.rtcPlayer.getmHmRtcAdapter().onRemoteDescription(sessionDescription);
                        return;
                    } else {
                        LogUtils.e(RtcModel.TAG, "peerConnectionClient is null ");
                        return;
                    }
                }
                if (z10) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_FAILED, "errorCode = " + iOptInt);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SIGNALING_TIME_OUT);
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_ERROR, "errorCode = " + iOptInt);
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CONNECT_FAIL);
                LogUtils.e(RtcModel.TAG, "rtc sdp connect errorCode = " + iOptInt);
                RtcModel.this.rtcPlayer.getmHmRtcAdapter().connectFailedInternal("rtc sdp connect error   (isAskOffer = " + z10 + ") errorCode = " + iOptInt);
            } catch (JSONException e10) {
                if (z10) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_FAILED, e10.getMessage());
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SIGNALING_TIME_OUT);
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_ERROR, e10.getMessage());
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CONNECT_FAIL);
                LogUtils.e(RtcModel.TAG, "rtc sdp connect error =" + e10.getMessage(), e10);
                RtcModel.this.rtcPlayer.getmHmRtcAdapter().connectFailedInternal("rtc sdp connect error   (isAskOffer = " + z10 + ") msg = " + e10.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$callBackToSaasSdk$1(boolean z10, VolleyError volleyError) {
            if (z10) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_FAILED, volleyError.getMessage());
                CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SIGNALING_TIME_OUT);
            } else {
                CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_ERROR, volleyError.getMessage());
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CONNECT_FAIL);
            LogUtils.e(RtcModel.TAG, "rtc sdp connect error =" + volleyError.getMessage(), volleyError);
            RtcModel.this.rtcPlayer.getmHmRtcAdapter().connectFailedInternal("rtc sdp connect error   (isAskOffer = " + z10 + ") msg = " + volleyError.getMessage());
        }

        @Override // org.webrtc.haima.listeners.HmGSCallback
        public void callBackToSaasSdk(SessionDescription sessionDescription, final boolean z10) {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                LogUtils.e(RtcModel.TAG, "setGSMUrl gs = " + this.val$gsmUrl);
                String queryParameter = Uri.parse(this.val$gsmUrl).getQueryParameter("cid");
                if (z10) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_START);
                    jSONObject2.put("type", "AskOffer");
                    jSONObject2.put("sdp", "");
                    jSONObject.put("option", 1);
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_START);
                    jSONObject2.put("type", "Answer");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_SENT_ANSWER, sessionDescription.description);
                    jSONObject2.put("sdp", sessionDescription.description);
                    jSONObject.put("option", 2);
                }
                String string = jSONObject2.toString();
                jSONObject.put("cid", Long.parseLong(queryParameter));
                jSONObject.put("client_sdp", Base64.encodeToString(string.getBytes(), 0));
                LogUtils.d(RtcModel.TAG, "request = " + jSONObject.toString() + "; jsonSDP=" + jSONObject2.toString());
                HmNetWorkManager.getRequestQueue().add(new JsonObjectRequest(this.val$gsmUrl, jSONObject, new Response.Listener() { // from class: com.haima.hmcp.rtc.widgets.a
                    @Override // com.haima.hmcp.volley.Response.Listener
                    public final void onResponse(Object obj) {
                        this.f34066b.lambda$callBackToSaasSdk$0(z10, (JSONObject) obj);
                    }
                }, new Response.ErrorListener() { // from class: com.haima.hmcp.rtc.widgets.b
                    @Override // com.haima.hmcp.volley.Response.ErrorListener
                    public final void onErrorResponse(VolleyError volleyError) {
                        this.f34068b.lambda$callBackToSaasSdk$1(z10, volleyError);
                    }
                }));
            } catch (JSONException e10) {
                LogUtils.e(RtcModel.TAG, "error = " + e10.getMessage());
                CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CONNECT_FAIL);
                if (z10) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_HTTP_REMOTE_SDP_FAILED, e10.getMessage());
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_X86_REMOTE_SDP_POST_ANSWER_ERROR, e10.getMessage());
                }
                RtcModel.this.rtcPlayer.getmHmRtcAdapter().connectFailedInternal("rtc sdp connect error   (isAskOffer = " + z10 + ")  msg = " + e10.getMessage());
            }
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void changeRenderRotation(int i10) {
        final IRenderView renderView;
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer == null || (renderView = rtcPlayer.getRenderView()) == null) {
            return;
        }
        renderView.getView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.rtc.widgets.RtcModel.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            @RequiresApi(api = 16)
            public void onGlobalLayout() {
                if (renderView == null || RtcModel.this.ijkVideoView == null) {
                    return;
                }
                int width = renderView.getView().getWidth();
                int height = renderView.getView().getHeight();
                int i11 = RtcModel.this.ijkVideoView.getmShowWidth();
                int i12 = RtcModel.this.ijkVideoView.getmShowHeight();
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
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.connectAccProxy(str, i10, str2, str3);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void disconnectAccProxy() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.disconnectAccProxy();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doOperationNetTraceRoute(String str) {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void doPlayerRelease() {
        if (isPlayerNull()) {
            return;
        }
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.stopUploadX86();
        }
        this.rtcPlayer.release(true);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void enableShareStream(boolean z10) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            rtcPlayer.enableShareStream(z10);
        } else {
            LogUtils.e(TAG, "enableShareStream failed because rtcPlayer=null");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getBoardType() {
        return this.boardType;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        RtcPlayer rtcPlayer;
        HmFrameDelayInfo frameDelayInfo;
        if (this.mRequestManager == null || (rtcPlayer = this.rtcPlayer) == null || rtcPlayer.getmHmRtcAdapter() == null || this.ijkVideoView == null || (frameDelayInfo = this.rtcPlayer.getmHmRtcAdapter().getFrameDelayInfo()) == null) {
            return null;
        }
        LogUtils.d(TAG, "hmFrameDelayInfo :" + frameDelayInfo);
        RtcVideoDelayInfo rtcVideoDelayInfo = new RtcVideoDelayInfo(frameDelayInfo, this.ijkVideoView.getmClockDiffUse(), false);
        rtcVideoDelayInfo.setBoardType(getBoardType());
        rtcVideoDelayInfo.setGameRealFps((int) rtcVideoDelayInfo.getVideoFps());
        rtcVideoDelayInfo.setRealFrameRateDecode(rtcVideoDelayInfo.getFrameRateDecode());
        rtcVideoDelayInfo.setRealFrameRateOutput(rtcVideoDelayInfo.getFrameRateOutput());
        return rtcVideoDelayInfo;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getCurrentBitRate() {
        if (isPlayerNull()) {
            return 0;
        }
        return this.rtcPlayer.getCurrentBitRate();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getEncodeVideoUrl() {
        return URLEncoder.encode(this.mSignalUrl + "," + this.mCoTurnUrl + "," + this.mRoomId);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IMediaPlayer getIMediaPlayer(boolean z10) {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtcPlayer.getIMediaPlayer(z10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ELivingCapabilityStatus getLivingCapabilityStatus(ELivingCapabilityStatus eLivingCapabilityStatus) {
        if (isPlayerNull() || this.rtcPlayer.getmHmRtcAdapter() == null) {
            return ELivingCapabilityStatus.UNKNOWN;
        }
        HmFrameDelayInfo frameDelayInfo = this.rtcPlayer.getmHmRtcAdapter().getFrameDelayInfo();
        if (frameDelayInfo == null) {
            return ELivingCapabilityStatus.UNKNOWN;
        }
        String codecName = frameDelayInfo.getCodecName();
        if (TextUtils.isEmpty(codecName)) {
            return ELivingCapabilityStatus.UNKNOWN;
        }
        return (!"h265".equalsIgnoreCase(codecName) || Constants.CONFIG_FORCE_H264) ? eLivingCapabilityStatus : ELivingCapabilityStatus.UNSUPPORTED;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public IRenderViewBase getRenderView() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtcPlayer.getRenderView();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtcPlayer.getResolution(list, str, str2);
    }

    public RtcPlayer getRtcPlayer() {
        return this.rtcPlayer;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public Bitmap getShortcut() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtcPlayer.getShortcut();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int getStreamType() {
        return 1;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamUrl() {
        if (isPlayerNull()) {
            return null;
        }
        return this.rtcPlayer.getStreamUrl();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public String getStreamingDomain() {
        if (TextUtils.isEmpty(this.mCoTurnUrl)) {
            return null;
        }
        String[] strArrSplit = this.mCoTurnUrl.split(":");
        if (strArrSplit.length == 3) {
            return strArrSplit[1];
        }
        if (strArrSplit.length <= 1) {
            return null;
        }
        return this.mCoTurnUrl.replace(strArrSplit[0] + ":", "").replace(":" + strArrSplit[strArrSplit.length - 1], "");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public SwitchStreamTypeData getSwitchStreamTypeData(int i10, PlayStreamPayloadData playStreamPayloadData) {
        HmRtcAdapter.setCountlyEventRecorderCallback(null);
        SwitchStreamTypeData switchStreamTypeData = new SwitchStreamTypeData();
        switchStreamTypeData.mCloudId = this.mRequestManager.getCloudId();
        switchStreamTypeData.streamType = StreamType.RTMP;
        switchStreamTypeData.apkType = i10;
        switchStreamTypeData.playData = playStreamPayloadData;
        return switchStreamTypeData;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean getVideoLatency() {
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean handlePermissionResult() {
        return true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void handleSpecialBundle(Bundle bundle) {
        AbsIjkVideoView absIjkVideoView;
        if (bundle == null || (absIjkVideoView = this.ijkVideoView) == null) {
            return;
        }
        absIjkVideoView.setmSeiDataSwitch(bundle.getInt(BaseVideoView.SEI, 0));
        String str = TAG;
        LogUtils.d(str, "sei data-> app sei: " + this.ijkVideoView.getmSeiDataSwitch());
        AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
        absIjkVideoView2.setmSeiDataSwitch(Math.max(absIjkVideoView2.getmSeiDataSwitch(), 0));
        AbsIjkVideoView absIjkVideoView3 = this.ijkVideoView;
        absIjkVideoView3.setmSeiDataSwitch(Math.min(absIjkVideoView3.getmSeiDataSwitch(), 1));
        LogUtils.d(str, "sei data-> app sei after check: " + this.ijkVideoView.getmSeiDataSwitch());
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void imageEnhancement(boolean z10, float f10) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            rtcPlayer.imageEnhancement(z10, f10);
        } else {
            CountlyUtil.recordErrorEvent("imageEnhancement rtcPlayer is null");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void init(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest) {
        if (context != null && absIjkVideoView != null && hmcpRequest != null) {
            this.ijkVideoView = absIjkVideoView;
            this.mAppContext = context.getApplicationContext();
            this.mRequestManager = hmcpRequest;
            RtcPlayer rtcPlayer = new RtcPlayer(context, absIjkVideoView, hmcpRequest);
            this.rtcPlayer = rtcPlayer;
            rtcPlayer.initVideoView(context);
            return;
        }
        String str = "init fail, context is " + context + " ijkVideoView is " + absIjkVideoView + " hmcpRequest is " + hmcpRequest;
        LogUtils.e(TAG, str);
        CountlyUtil.recordEvent("12200", str);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initMetaInfo(HashMap<String, String> map) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            rtcPlayer.initMetaInfo(map);
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void initUrl(PlayStreamPayloadData playStreamPayloadData) {
        String str;
        if (playStreamPayloadData == null) {
            return;
        }
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null && absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
            this.mSignalUrl = playStreamPayloadData.signalUrl;
            this.mRoomId = playStreamPayloadData.roomId;
            this.mSignalV2Url = "";
            this.mTurnUrl = playStreamPayloadData.turnUrl;
            this.mIpV6TurnUrl = playStreamPayloadData.ipV6TurnUrl;
            this.mTurnUserName = playStreamPayloadData.turnUserName;
            this.mTurnPassword = playStreamPayloadData.turnPassword;
            LogUtils.d(TAG, "initUrl x86 for streamer2.0:roomId=" + this.mRoomId + " signalUrl=" + this.mSignalUrl + " mTurnUrl=" + this.mTurnUrl + " mIpV6TurnUrl=" + this.mIpV6TurnUrl + " mTurnUserName=" + this.mTurnUserName + " mTurnPassword=" + this.mTurnPassword);
        } else {
            WebRtcInfo webRtcInfo = playStreamPayloadData.webRtcInfo;
            if (webRtcInfo != null) {
                this.mSignalUrl = webRtcInfo.signalUrl;
                this.mRoomId = webRtcInfo.roomId;
                this.mSignalV2Url = playStreamPayloadData.signalV2Url;
                this.mCoTurnUrl = webRtcInfo.coTurnUrl;
                this.mTurnUrl = webRtcInfo.turnUrl;
                this.mIpV6TurnUrl = webRtcInfo.ipV6TurnUrl;
                str = webRtcInfo.auth;
                if (!TextUtils.isEmpty(str)) {
                    String[] strArrSplit = str.split(":");
                    if (strArrSplit.length > 0) {
                        this.mTurnUserName = strArrSplit[0];
                        this.mTurnPassword = strArrSplit[1];
                    }
                }
            } else {
                str = null;
            }
            LogUtils.d(TAG, "initUrl ARM:roomId=" + this.mRoomId + " mSignalUrl=" + this.mSignalUrl + " mSignalV2Url=" + this.mSignalV2Url + " mCoTurnUrl=" + this.mCoTurnUrl + " mTurnUrl=" + this.mTurnUrl + " mIpV6TurnUrl=" + this.mIpV6TurnUrl + " auth=" + str + " mTurnUserName=" + this.mTurnUserName + " mTurnPassword=" + this.mTurnPassword);
        }
        this.mInstanceIP = "";
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isDatachannelEnable() {
        return this.rtcPlayer.inputDatachannelEnable();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isMatchStreamType(PlayStreamPayloadData playStreamPayloadData) {
        if (this.ijkVideoView == null || playStreamPayloadData == null) {
            return false;
        }
        boolean zEquals = Constants.STREAM_TYPE_RTC.equals(playStreamPayloadData.streamType);
        if (this.ijkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().isMatchStreamType = zEquals;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isMatchStreamType = isMatch");
        }
        return zEquals;
    }

    public boolean isPlayerNull() {
        if (this.rtcPlayer != null) {
            return false;
        }
        LogUtils.e(TAG, "rtcPlayer is null");
        CountlyUtil.recordEvent("12200", "rtcPlayer is null");
        return true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isPlaying() {
        if (isPlayerNull()) {
            return false;
        }
        return this.rtcPlayer.isPlaying();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isSupportFirstFrameOptimization() {
        return true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean isValidate(PlayStreamPayload playStreamPayload) {
        PlayStreamPayloadData playStreamPayloadData;
        WebRtcInfo webRtcInfo;
        if (playStreamPayload == null || (playStreamPayloadData = playStreamPayload.data) == null || (webRtcInfo = playStreamPayloadData.webRtcInfo) == null) {
            return false;
        }
        return (TextUtils.isEmpty(webRtcInfo.signalUrl) || TextUtils.isEmpty(webRtcInfo.coTurnUrl) || TextUtils.isEmpty(webRtcInfo.roomId)) ? false : true;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onAttachedToWindow() {
        if (isPlayerNull() || this.ijkVideoView == null) {
            return;
        }
        this.rtcPlayer.getmHmRtcAdapter().registerPermissionHandler(this.ijkVideoView);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onClockDiffChange(int i10) {
        if (this.ijkVideoView == null) {
            return;
        }
        this.rtcPlayer.setInputPingPongMs(i10);
        this.ijkVideoView.setmClockDiffUse(i10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onDestroy() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.getmHmRtcAdapter().registerGSCallback(null);
        this.rtcPlayer.disconnectRtc(true);
        stopFrameDataProxy();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetListeners();
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onDetachedFromWindow() {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null && rtcPlayer.getmHmRtcAdapter() != null) {
            this.rtcPlayer.getmHmRtcAdapter().unRegisterPermissionHandler();
        } else {
            LogUtils.i(TAG, "mHmRtcAdapter.unRegisterPermissionHandler failed, cause HmRtcAdapter is null when onDetachedFromWindow");
            CountlyUtil.recordErrorEvent("mHmRtcAdapter.unRegisterPermissionHandler failed, cause HmRtcAdapter is null when onDetachedFromWindow");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onFirstDiffClockSuccess() {
        LogUtils.i(TAG, "==start2Play first diff clock success");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onFirstFrameArrival() {
        this.ijkVideoView.startReportClockDiffLatency();
        String str = TAG;
        LogUtils.d(str, "onFirstFrameArrival rtc_upload_audio_on = " + HmRtcGlobalConfig.rtc_upload_audio_on);
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86 && HmRtcGlobalConfig.rtc_upload_audio_on && absIjkVideoView.mHasOperatePermission) {
            if (Constants.CONFIG_RECORD_MODE == Constants.RECORD_MODE_AUTO || absIjkVideoView.isRecordOn) {
                if (GameActionUtil.isRecordPermissionAllowed(this.mAppContext)) {
                    HmAudioManager.getInstance().startRecord();
                    this.ijkVideoView.isRecordOn = true;
                } else if (this.ijkVideoView.getHmcpPlayerListener() != null) {
                    this.ijkVideoView.requestPermission("android.permission.RECORD_AUDIO");
                } else {
                    LogUtils.e(str, "playerListener is empty");
                }
            }
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onPLayerError() {
        this.ijkVideoView.refreshStoken(Constants.REFRESH_STOKEN_DELAY * 1000, "MediaPlayer onError");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onReceiveMetaInfos(Map<String, List<ResolutionInfo>> map) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setmResolutionList(map.get(Constants.STREAM_TYPE_RTC));
        if (this.ijkVideoView.getResolutionList() == null || this.ijkVideoView.getCurrenteResolutionID() == null) {
            return;
        }
        AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
        absIjkVideoView2.setResolutionList(absIjkVideoView2.getResolutionList(), this.ijkVideoView.getCurrenteResolutionID(), false, false);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void onStopInternal() {
        if (isPlayerNull() || this.rtcPlayer.getmHmRtcAdapter() == null) {
            return;
        }
        this.rtcPlayer.getmHmRtcAdapter().unRegisterPermissionHandler();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void parseBoardType(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "inputUrl is empty");
            this.boardType = null;
            return;
        }
        String str2 = new String(str);
        int iIndexOf = str2.indexOf("url=");
        int iIndexOf2 = str2.indexOf("st=");
        if (iIndexOf < 0 || iIndexOf2 < 0) {
            this.boardType = null;
            return;
        }
        String strSubstring = str2.substring(iIndexOf, iIndexOf2);
        if (TextUtils.isEmpty(strSubstring)) {
            this.boardType = null;
            return;
        }
        Matcher matcher = Pattern.compile("(\\d+\\.\\d+\\.\\d+\\.\\d+)\\:(\\d+)").matcher(strSubstring);
        if (!matcher.find()) {
            this.boardType = null;
            return;
        }
        matcher.group(1);
        String strGroup = matcher.group(2);
        if (TextUtils.isEmpty(strGroup)) {
            return;
        }
        if ("7681".equals(strGroup)) {
            this.boardType = ResourceManager.getString(R.string.haima_hmcp_board_type_i_ii);
        } else {
            this.boardType = ResourceManager.getString(R.string.haima_hmcp_board_type_iii);
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean playForTesting(PlayTestData playTestData) {
        Context context = this.mAppContext;
        if (context != null && this.ijkVideoView != null) {
            Toast.makeText(context.getApplicationContext(), "RTC not support", 0).show();
            this.ijkVideoView.setOrientationInit(playTestData.orientation);
        }
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void release() {
        AbsIjkVideoView absIjkVideoView;
        if (isPlayerNull() || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.getmFrameDataProxy() == null) {
            return;
        }
        this.rtcPlayer.stopPlay();
        this.ijkVideoView.getmFrameDataProxy().setHmFrameCallback(null);
        this.ijkVideoView.getmFrameDataProxy().reset();
        this.ijkVideoView.stopUploadX86();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void releaseNotStop() {
        AbsIjkVideoView absIjkVideoView;
        if (isPlayerNull() || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.getmFrameDataProxy() == null) {
            return;
        }
        this.rtcPlayer.stopPlay();
        this.ijkVideoView.getmFrameDataProxy().setHmFrameCallback(null);
        this.ijkVideoView.getmFrameDataProxy().reset();
        this.ijkVideoView.stopUploadX86();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void releaseScreenShot() {
        this.rtcPlayer.unbindEGLSurface();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void replay() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.disconnectRtc(false);
        CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CLOSE, "rePlay");
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void requestKeyFrame() {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            rtcPlayer.requestKeyFrame();
        } else {
            LogUtils.e(TAG, "requestKeyFrame failed because rtcPlayer=null");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void rfreshStoken() {
        AbsIjkVideoView absIjkVideoView;
        if (isPlayerNull() || (absIjkVideoView = this.ijkVideoView) == null) {
            return;
        }
        absIjkVideoView.cleanTimerNoAccess();
        this.rtcPlayer.cancelConnectTimeOutTimer();
        this.rtcPlayer.cancelFirstFrameTimer();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean sendEvent(byte[] bArr) {
        if (this.rtcPlayer.getmHmRtcAdapter() != null) {
            return this.rtcPlayer.getmHmRtcAdapter().sendData(bArr);
        }
        LogUtils.e(TAG, "RtcAdapter is null");
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean sendEventByDataType(int i10, byte[] bArr) {
        if (this.rtcPlayer.getmHmRtcAdapter() != null) {
            return this.rtcPlayer.getmHmRtcAdapter().sendToRemoteInput(i10, bArr) != -1;
        }
        LogUtils.e(TAG, "RtcAdapter is null");
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public int sendLargeData(byte[] bArr, HaimaDataChannel.Listener listener) {
        if (this.rtcPlayer.getmHmRtcAdapter() != null) {
            return this.rtcPlayer.getmHmRtcAdapter().x86SendLargeDataBlcok(bArr, listener);
        }
        LogUtils.e(TAG, "RtcAdapter is null");
        return -1;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            rtcPlayer.setColorMode(colorMode, colorModeListener);
            return;
        }
        LogUtils.d(TAG, "setColorMode play is not init");
        if (colorModeListener != null) {
            colorModeListener.onColorModeResult(false, "setColorMode play is not init");
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setGSMUrl(String str) {
        this.rtcPlayer.getmHmRtcAdapter().setGSUrl(str);
        this.rtcPlayer.getmHmRtcAdapter().registerGSCallback(new AnonymousClass1(str));
        this.rtcPlayer.getmHmRtcAdapter().registerProtoUtilsCallback(new HmProtoCallback() { // from class: com.haima.hmcp.rtc.widgets.RtcModel.2
            @Override // org.webrtc.haima.listeners.HmProtoCallback
            public byte[] handleProtoResult(RtcProtoBufUtil.StatusType statusType) {
                GSSDK.StatusType statusType2 = GSSDK.StatusType.STATUS_HIDE;
                RtcProtoBufUtil.StatusType statusType3 = RtcProtoBufUtil.StatusType.STATUS_HIDE;
                return ProtoBufUtil.getIMStatusData(statusType2);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setHmFrameCallback(hmFrameCallback);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setHmStreamerIPCallback(hmStreamerIPCallback);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setHmcpVideoPlayerListener(HmcpVideoPlayerListener hmcpVideoPlayerListener) {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setHmcpVideoPlayerListener(hmcpVideoPlayerListener);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setImageSize() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setImageSize();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setInputPingPongMs(int i10) {
        if (this.rtcPlayer == null) {
            LogUtils.e(TAG, "setStreamingCallback rtcPlayer is null");
        }
        this.rtcPlayer.setInputPingPongMs(i10);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setOperationDelayCallback(iOperationDelayCallback);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setRender() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.setRender(HmcpManager.getInstance().getVideoViewType());
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void setStreamingCallback(StreamingCallback streamingCallback) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer == null) {
            LogUtils.e(TAG, "setStreamingCallback rtcPlayer is null");
        } else {
            rtcPlayer.setStreamingCallback(streamingCallback);
        }
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void start2Play(SdkStreamPayloadData sdkStreamPayloadData) {
        AbsIjkVideoView absIjkVideoView;
        if (isPlayerNull() || (absIjkVideoView = this.ijkVideoView) == null) {
            return;
        }
        absIjkVideoView.start2Play(sdkStreamPayloadData);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void startPlay(SdkStreamPayloadData sdkStreamPayloadData) {
        if (isPlayerNull() || this.ijkVideoView == null) {
            return;
        }
        this.rtcPlayer.startPlay(this.mSignalUrl, this.mCoTurnUrl, this.mSignalV2Url, this.mRoomId, this.mInstanceIP, sdkStreamPayloadData, new RtcTurnInfo(this.mTurnUrl, this.mIpV6TurnUrl, this.mTurnUserName, this.mTurnPassword));
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stop() {
        if (isPlayerNull()) {
            return;
        }
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.stopUploadX86();
        }
        this.rtcPlayer.stopPlay();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopFrameDataProxy() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null || absIjkVideoView.getmFrameDataProxy() == null) {
            return;
        }
        this.ijkVideoView.getmFrameDataProxy().setHmFrameCallback(null);
        this.ijkVideoView.getmFrameDataProxy().reset();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay(boolean z10, boolean z11) {
        if (isPlayerNull()) {
            return;
        }
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.stopUploadX86();
        }
        this.rtcPlayer.stopPlay(z10, z11);
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public boolean switchBandWidthDetection(boolean z10) {
        RtcPlayer rtcPlayer = this.rtcPlayer;
        if (rtcPlayer != null) {
            return rtcPlayer.switchBandWidthDetection(z10);
        }
        LogUtils.e(TAG, "switchBandWidthDetection rtcPlayer is null");
        return false;
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void switchMobileNetworkTransport(boolean z10) {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.switchMobileNetworkTransport(z10);
    }

    public void turnDownSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.turnDownSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOffSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.turnOffSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void turnOnSound() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.turnOnSound();
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void updateRenderview() {
    }

    @Override // com.haima.hmcp.listeners.IBaseStreamModel
    public void stopPlay() {
        if (isPlayerNull()) {
            return;
        }
        this.rtcPlayer.stopPlay();
    }
}
