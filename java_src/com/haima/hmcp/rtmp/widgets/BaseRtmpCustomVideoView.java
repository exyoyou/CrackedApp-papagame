package com.haima.hmcp.rtmp.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.MotionEventCompat;
import com.alibaba.fastjson.JSONObject;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.ContronResult;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.FrameDelayInfo;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.KeepAlivePayload;
import com.haima.hmcp.beans.Message;
import com.haima.hmcp.beans.PlayStreamPayload;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.ReportBaseError;
import com.haima.hmcp.beans.ReportGetStreamSuc;
import com.haima.hmcp.beans.ReportSaasWSMessage;
import com.haima.hmcp.beans.RequestPreCheck;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ResolutionInfoExtra;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.beans.StopServicePayload;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.HmcpRequestManager;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.RecordHelper;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.SendSceneState;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.cloud.CloudFileManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.enums.ExitQueueInBGCancelType;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.input.HMInput;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.OnGetControlResultListener;
import com.haima.hmcp.listeners.OnRequestAliveListener;
import com.haima.hmcp.rtmp.widgets.beans.RtmpVideoDelayInfo;
import com.haima.hmcp.utils.CountDownUtil;
import com.haima.hmcp.utils.ErrorInfo;
import com.haima.hmcp.utils.FileDownloadUtil;
import com.haima.hmcp.utils.FrameNetDelayInfo;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetworkUtil;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.TimeUtil;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.EmptyImpStreamMode;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: loaded from: classes5.dex */
public class BaseRtmpCustomVideoView extends RtmpCustomVideoViewPlatform {
    public static final int STATE_CLOUD_SERVICE_PREPARED = 2;
    public static final int STATE_CONNECT_PREPARED = 1;
    public static final int STATE_GAME_OVER = 5;
    public static final int STATE_SHOW_PROMPT = 4;
    private static final String TAG = "BaseRtmpCustomVideoView";
    protected int SHOW_MOUSE_TIME;
    private IHmcpIJKVideoView customIJKVideoView;
    private HashSet<Integer> dpadKeyDown;
    protected String mAudioUrl;
    private long mClockDiffTime;
    private int mClockDiffUse;
    protected IRenderView mRenderView;
    protected String mVideoUrl;
    protected boolean nativeDpadGame;

    public BaseRtmpCustomVideoView(Context context) {
        super(context);
        this.SHOW_MOUSE_TIME = 500;
        this.mClockDiffTime = 0L;
        this.mClockDiffUse = 0;
        this.dpadKeyDown = new HashSet<>();
        LogUtils.d(TAG, "BaseRtmpARVideoView");
        init(context);
    }

    private void cleanListeners() {
        if (this.mOnLivingListener != null) {
            this.mOnLivingListener = null;
        }
        if (this.mOnContronListener != null) {
            this.mOnContronListener = null;
        }
        if (this.mCloudOperationListener != null) {
            this.mCloudOperationListener = null;
        }
    }

    private float formatValue(float f10) {
        if (f10 < 0.0f) {
            return 0.0f;
        }
        if (f10 >= 1.0f) {
            return 0.9999f;
        }
        return f10;
    }

    private void init(Context context) {
        LogUtils.d("HmcpUIManager", "HmcpVideoView.init");
        this.mHmcpManager = HmcpManager.getInstance();
        this.mHandler = new Handler();
        initView(context);
        initIME(context);
        AbsIjkVideoView.cloudPlayInfo = new CloudPlayInfo();
        initHandler();
        this.streamModel = new EmptyImpStreamMode();
    }

    private boolean isRtmpValidate(PlayStreamPayload playStreamPayload) {
        PlayStreamPayloadData playStreamPayloadData;
        return (playStreamPayload == null || (playStreamPayloadData = playStreamPayload.data) == null || TextUtils.isEmpty(playStreamPayloadData.videoUrl) || TextUtils.isEmpty(playStreamPayloadData.audioUrl) || TextUtils.isEmpty(playStreamPayloadData.inputUrl)) ? false : true;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected FPoint calculatePoint(MotionEvent motionEvent, int i10) {
        float f10;
        float f11;
        FPoint fPoint = new FPoint();
        if (this.mRenderView == null) {
            return fPoint;
        }
        float x10 = MotionEventCompat.getX(motionEvent, i10);
        float y10 = MotionEventCompat.getY(motionEvent, i10);
        Point point = new Point();
        point.x = this.mRenderView.getView().getMeasuredWidth();
        point.y = this.mRenderView.getView().getMeasuredHeight();
        float x11 = this.mRenderView.getView().getX();
        float y11 = this.mRenderView.getView().getY();
        LogUtils.d(TAG, x11 + ", " + y11 + ", " + x10 + ", " + y10 + ", " + point.x + ", " + point.y);
        float bottom = (float) this.mRenderView.getView().getBottom();
        float right = (float) this.mRenderView.getView().getRight();
        if (this.mOrientation == ScreenOrientation.PORTRAIT) {
            float f12 = y11 + bottom;
            int i11 = point.x;
            f11 = (((y10 - ((f12 - i11) / 2.0f)) / i11) * 100.0f) / 100.0f;
            int i12 = point.y;
            f10 = (((i12 - (x10 - (((x11 + right) - i12) / 2.0f))) / i12) * 100.0f) / 100.0f;
        } else {
            float f13 = (((x10 - x11) / point.x) * 100.0f) / 100.0f;
            f10 = (((y10 - y11) / point.y) * 100.0f) / 100.0f;
            f11 = f13;
        }
        fPoint.f33815x = formatValue(f11);
        fPoint.f33816y = formatValue(f10);
        return fPoint;
    }

    protected FPoint calculateUpPointer(MotionEvent motionEvent) {
        FPoint fPointCalculatePoint = calculatePoint(motionEvent);
        sendMotionEvent(3, fPointCalculatePoint);
        LogUtils.d(TAG, "send movePoint : " + fPointCalculatePoint);
        this.mHistoryPoints.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
        return fPointCalculatePoint;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void controlLost(PlayStreamPayload playStreamPayload) {
        OnContronListener onContronListener = this.mOnContronListener;
        if (onContronListener != null) {
            onContronListener.contronLost();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
        this.customIJKVideoView.stopPlay();
        setPlayerState(5);
        onStopInternal();
    }

    public void contronPlay(String str, String str2, String str3, boolean z10, String str4, String str5, String str6, OnContronListener onContronListener) {
        if (this.isBackground) {
            return;
        }
        HmcpManager.getInstance();
        if (!HmcpManager.INIT_SUCCESS) {
            if (onContronListener != null) {
                onContronListener.contronResult(false, ResourceManager.getString(R.string.Error_000003));
                return;
            }
            return;
        }
        this.isGetControl = true;
        this.mOnContronListener = onContronListener;
        initManager();
        this.mRequestManager.setUserInfo(this.mUserInfo);
        HmcpRequestManager.clientISP = str4;
        HmcpRequestManager.clientProvince = str5;
        HmcpRequestManager.clientCity = str6;
        this.mRequestManager.requestControl(str, str2, str3, !TextUtils.isEmpty("") && z10, Boolean.FALSE, onContronListener, new OnGetControlResultListener() { // from class: com.haima.hmcp.rtmp.widgets.BaseRtmpCustomVideoView.2
            @Override // com.haima.hmcp.listeners.OnGetControlResultListener
            public void getControlResult(ContronResult contronResult) {
                if (contronResult != null) {
                    ((AbsIjkVideoView) BaseRtmpCustomVideoView.this).mAppName = contronResult.pkgName;
                }
            }
        }, null);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void doOperationPausedSaasServer(String str, String str2) {
        this.SASS_SERVER_MAINTENANCE = true;
        StopServicePayload stopServicePayload = (StopServicePayload) com.alibaba.fastjson.a.parseObject(str, StopServicePayload.class);
        if (stopServicePayload != null && stopServicePayload.data != null) {
            String strChooseMsg = chooseMsg(str2, StringUtils.replaceString(getMetaInfoByKey(Constants.TIPS_SAAS_ALREAY_STOPPED), stopServicePayload.data.endTimeText));
            this.promptMsg = strChooseMsg;
            this.mPlayerState = 4;
            UiMessageSend(getCallbackData(19, strChooseMsg));
            CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
            this.customIJKVideoView.stopPlay();
        }
        sendSceneMaitMessage(ResourceManager.getString(R.string.haima_hmcp_scene_start));
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void doPlayerRelease() {
        this.customIJKVideoView.release();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        if (this.mRequestManager == null || FrameNetDelayInfo.getInstance().getClockDiffTime() == 0) {
            return null;
        }
        FrameDelayInfo frameDelayInfo = new FrameDelayInfo();
        LogUtils.d(TAG, "frameDelayInfo :" + frameDelayInfo);
        RtmpVideoDelayInfo rtmpVideoDelayInfo = new RtmpVideoDelayInfo(frameDelayInfo);
        int i10 = this.mFPSPeriod;
        if (i10 > 0) {
            rtmpVideoDelayInfo.setVideoFps(this.mPlayerFPS / ((long) i10));
        }
        int i11 = this.mBandWidthPeriod;
        if (i11 > 0) {
            rtmpVideoDelayInfo.setBitRate(this.mPlayerBitRate / ((long) i11));
        }
        return rtmpVideoDelayInfo;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getCloudPlayStatusCode() {
        CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo != null) {
            return cloudPlayInfo.toStatusCode();
        }
        LogUtils.d(TAG, "cloudPlayInfo == null,can't get cloudPlayInfo.toStatusCode()");
        return "";
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ELivingCapabilityStatus getLivingCapabilityStatus() {
        return this.mLivingCapabilityStatus;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        return null;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public Bitmap getShortcut() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getStreamUrl() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
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

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getVideoLatency() {
        if (!isPlaying() || this.mClockDiffTime == 0) {
            return 0;
        }
        return Math.max(0, (this.videoViewDelayReportManager == null || this.videoViewDelayReportManager.getReportDelayInfo() == null) ? 0 : this.videoViewDelayReportManager.getReportDelayInfo().getNetDelay());
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void handleMessage(String str) {
        int i10;
        int i11;
        PlayStreamPayloadData playStreamPayloadData;
        ResolutionInfo resolutionInfo;
        if (TextUtils.isEmpty(str)) {
            CountlyUtil.recordEvent("12230", JsonUtil.toJsonString(new ReportBaseError("-1000", "empty")));
            return;
        }
        try {
            Message message = (Message) com.alibaba.fastjson.a.parseObject(str, Message.class);
            String str2 = TAG;
            LogUtils.e(str2, "handleMessage: " + str);
            String str3 = "";
            try {
                if (message.type != 2) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, JsonUtil.toJsonString(new ReportSaasWSMessage("1", "", StringUtils.encodeToBase64String(message.payload))));
                    forwardMessageToApplication(message);
                    return;
                }
                String str4 = message.payload;
                JSONObject object = com.alibaba.fastjson.a.parseObject(str4);
                if (!object.containsKey(AbsIjkVideoView.JSON_TAG_OPERATION)) {
                    return;
                }
                Integer integer = object.getInteger(AbsIjkVideoView.JSON_TAG_OPERATION);
                String string = object.getString("errorCode");
                String string2 = object.getString("msg");
                String string3 = object.getString("errorMsg");
                String string4 = object.getString("data");
                StringBuilder sb2 = new StringBuilder();
                try {
                    sb2.append("error code: ");
                    sb2.append(string);
                    sb2.append("  msg: ");
                    sb2.append(string3);
                    LogUtils.e(str2, sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("");
                    sb3.append(message.type);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, JsonUtil.toJsonString(new ReportSaasWSMessage(sb3.toString(), "" + integer, StringUtils.encodeToBase64String(message.payload))));
                    int iIntValue = integer.intValue();
                    if (iIntValue == 18) {
                        LogUtils.d(str2, "==OPERATION_GAME_CRASH===");
                        sendSceneGameRestart();
                        return;
                    }
                    if (iIntValue == 19) {
                        LogUtils.d(str2, "==OPERATION_GAME_RESTART===");
                        sendSceneGameRestart();
                        return;
                    }
                    if (iIntValue == 21) {
                        doOperationOpenMoreSameGame(string, string3);
                        return;
                    }
                    if (iIntValue == 22) {
                        doOperationForcedOffline(string, string3);
                        return;
                    }
                    if (iIntValue == 32) {
                        LogUtils.d(str2, "==OPERATION_GAME_ARCHIVING===");
                        showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, string, string3);
                        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_instance_err));
                        return;
                    }
                    if (iIntValue == 45) {
                        int i12 = 0;
                        if (TextUtils.isEmpty(this.mVideoUrl)) {
                            return;
                        }
                        PlayStreamPayloadData playStreamPayloadData2 = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class)).data;
                        if (playStreamPayloadData2 != null) {
                            int i13 = playStreamPayloadData2.traceTimes;
                            str3 = playStreamPayloadData2.host;
                            int i14 = playStreamPayloadData2.pingTimes;
                            i10 = playStreamPayloadData2.pingSize;
                            i12 = i13;
                            i11 = i14;
                        } else {
                            i10 = 0;
                            i11 = 0;
                        }
                        HmcpManager.getInstance().doNetPing(str3, i11, i10, null);
                        HmcpManager.getInstance().doTraceRoute(this.mAppContext, this.mVideoUrl, i12, null);
                        return;
                    }
                    if (iIntValue == 62) {
                        LogUtils.d(str2, "=OperationStream==receive op4.5");
                        CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_OPERATION_FOUR_POINT_FIVE, "receive op4.5");
                        if (this.isOperationStreamUrlReceived) {
                            LogUtils.d(str2, "already receive op5, this op4.5 is untreated");
                            CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, "already receive op5, this op4.5 is untreated");
                            return;
                        }
                        this.isOperationStreamUrlPreReceived = true;
                        PlayStreamPayload playStreamPayload = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class);
                        if (playStreamPayload != null && playStreamPayload.data != null) {
                            rePreparation();
                            playPreparation(1, playStreamPayload.data);
                        }
                        long j10 = Constants.FIRST_FRAME_TIMEOUT;
                        startTimer(j10, j10, 3, "wait operation five");
                        return;
                    }
                    if (iIntValue == 65) {
                        maintenanceInQueued(str4, string4);
                        return;
                    }
                    if (iIntValue == 100) {
                        LogUtils.e(str2, "===================OPERATION_DEBUG_SWITCH===============");
                        return;
                    }
                    if (iIntValue == 57) {
                        this.mPlayerState = 0;
                        TimeUtil.StreamUrl = System.currentTimeMillis();
                        org.json.JSONObject jSONObject = new org.json.JSONObject();
                        this.object = jSONObject;
                        jSONObject.put("currentNetType", this.currentNetType);
                        this.object.put("currentApkType", this.currentApkType);
                        PlayStreamPayload playStreamPayload2 = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class);
                        if (!isRtmpValidate(playStreamPayload2)) {
                            if (playStreamPayload2 == null || (playStreamPayloadData = playStreamPayload2.data) == null) {
                                CountlyUtil.recordEvent(Constants.COUNTYLY_STREAM_DATA_ERROR);
                                SendSceneState.exchangeControlOtherFail(getContext(), this.mListener);
                            } else if (playStreamPayloadData.restore) {
                                CountlyUtil.recordEvent(Constants.COUNTYLY_EXCHANGE_CONTRON_RESTORE_FAIL);
                                SendSceneState.exchangeControlRestoreFail(getContext(), this.mListener);
                            } else {
                                CountlyUtil.recordEvent(Constants.COUNTYLY_EXCHANGE_CONTRON_FAIL);
                                SendSceneState.exchangeControlFail(getContext(), this.mListener);
                            }
                            this.mPlayerState = 3;
                            return;
                        }
                        if (playStreamPayload2.data.restore) {
                            this.isExchangeControl = false;
                            CountlyUtil.recordEvent(Constants.COUNTYLY_EXCHANGE_CONTRON_RESTORE_SUCCESS);
                            SendSceneState.exchangeControlRestoreSuccess(getContext(), this.mListener);
                            this.mPlayerState = 3;
                        } else {
                            this.isExchangeControl = true;
                            CountlyUtil.recordEvent(Constants.COUNTYLY_EXCHANGE_CONTRON_SUCCESS);
                            SendSceneState.exchangeControlSuccess(getContext(), this.mListener);
                        }
                        this.curCloudServiceState = 2;
                        CloudStateSend(2);
                        PlayStreamPayloadData playStreamPayloadData3 = playStreamPayload2.data;
                        if (playStreamPayloadData3 != null && playStreamPayloadData3.resolutionInfo != null) {
                            setResolutionList(this.mHmcpManager.getResolutionDatas(), playStreamPayload2.data.resolutionInfo.f33828id, false, false);
                        }
                        if (playStreamPayload2.data != null) {
                            this.customIJKVideoView.release();
                            disconnectSocketIo(true, true, true);
                            playPreparation(2, playStreamPayload2.data);
                        }
                        UiMessageSend(getCallbackData(14, this.object.toString()));
                        return;
                    }
                    if (iIntValue == 58) {
                        doOperationStateChangeReason(str4, string, string3);
                        return;
                    }
                    switch (iIntValue) {
                        case 1:
                            doOperationIntervalTime(str4, string3);
                            return;
                        case 2:
                            doOperationKicked(string, string3);
                            return;
                        case 3:
                            LogUtils.d(str2, "==OPERATION_HMCP_ERROR===");
                            showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, string, string3);
                            sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_instance_err));
                            if (TextUtils.isEmpty(string4)) {
                                return;
                            }
                            UiMessageSend(48, string4);
                            LogUtils.d(str2, "OP-3,KQIInfoList = " + string4);
                            return;
                        case 4:
                            doOperationGameOver(str4, string, string3);
                            return;
                        case 5:
                            LogUtils.d(str2, "=OperationStream==receive op5");
                            this.isOperationStreamUrlReceived = true;
                            break;
                        case 6:
                            doOperationQueue(str4);
                            return;
                        case 7:
                            doOperationRefuseQueue(str4, string3);
                            return;
                        case 8:
                            this.curCloudServiceState = 2;
                            CloudStateSend(2);
                            cancelRefreshStokenTask();
                            CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
                            this.customIJKVideoView.stopPlay();
                            return;
                        case 9:
                            this.mPlayerState = 4;
                            String strChooseMsg = chooseMsg(string3, getMetaInfoByKey(Constants.TIPS_TOAST_INSTANCE_APPLY));
                            this.promptMsg = strChooseMsg;
                            UiMessageSend(getCallbackData(16, strChooseMsg));
                            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_wait), null);
                            this.mCurResolution = null;
                            return;
                        case 10:
                            LogUtils.d(str2, "timeframe--OPERATION_INSTANCE_INITIATING---10");
                            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_wait), null);
                            this.mCurResolution = null;
                            return;
                        case 11:
                            this.mPlayerState = 0;
                            UiMessageSend(getCallbackData(8, ""));
                            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_wait), null);
                            this.mCurResolution = null;
                            return;
                        case 12:
                            LogUtils.e(str2, "timeframe===================OPERATION_SWITCHING_RESOLUTION===============");
                            return;
                        case 13:
                            LogUtils.i(str2, "===================OPERATION_RESUME_SAAS_SERVER===============");
                            return;
                        case 14:
                            doOperationReadyPauseSaasServer(str4, string3);
                            return;
                        case 15:
                            this.promptMsg = chooseMsg(string3, getMetaInfoByKey(Constants.TIPS_SAAS_TO_STOP));
                            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                            this.object = jSONObject2;
                            jSONObject2.put("errorMessage", this.promptMsg);
                            UiMessageSend(getCallbackData(18, this.object.toString()));
                            if (this.mPlayerState != 3) {
                                this.mPlayerState = 4;
                                sendSceneMaitMessage(ResourceManager.getString(R.string.haima_hmcp_scene_soon));
                                return;
                            }
                            return;
                        case 16:
                            doOperationPausedSaasServer(str4, string3);
                            return;
                        default:
                            switch (iIntValue) {
                                case 35:
                                    doOperationGameTimeCountDown(str4);
                                    return;
                                case 36:
                                    PlayStreamPayloadData playStreamPayloadData4 = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class)).data;
                                    if (playStreamPayloadData4 == null || TextUtils.isEmpty(playStreamPayloadData4.tip)) {
                                        return;
                                    }
                                    org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                                    this.object = jSONObject3;
                                    jSONObject3.put("tip", playStreamPayloadData4.tip);
                                    UiMessageSend(getCallbackData(31, this.object.toString()));
                                    return;
                                case 37:
                                    doOperationGameTimeHighlight(str4);
                                    return;
                                default:
                                    switch (iIntValue) {
                                        case 40:
                                            doOperationNoInputTimeout(str4);
                                            return;
                                        case 41:
                                            KeepAlivePayload keepAlivePayload = (KeepAlivePayload) com.alibaba.fastjson.a.parseObject(str4).getObject("data", KeepAlivePayload.class);
                                            OnRequestAliveListener onRequestAliveListener = this.mRequestKeepAliveListener;
                                            if (onRequestAliveListener == null) {
                                                CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, "mRequestKeepAliveListener = null");
                                                return;
                                            }
                                            if (keepAlivePayload == null) {
                                                onRequestAliveListener.onRequestAliveResult(false, "saas msg must be wrong");
                                                return;
                                            }
                                            boolean z10 = keepAlivePayload.flag;
                                            if (!z10) {
                                                str3 = "request keepAlive failed";
                                            }
                                            onRequestAliveListener.onRequestAliveResult(z10, str3);
                                            Runnable runnable = this.mRequestAliveTimer;
                                            if (runnable != null) {
                                                removeCallbacks(runnable);
                                            }
                                            if (keepAlivePayload.flag) {
                                                return;
                                            }
                                            CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, "keep-alive flag is false");
                                            return;
                                        case 42:
                                            keepAliveTimeUp(message);
                                            OnRequestAliveListener onRequestAliveListener2 = this.mRequestKeepAliveListener;
                                            if (onRequestAliveListener2 != null) {
                                                onRequestAliveListener2.onKeepAliveTimeUp();
                                                return;
                                            }
                                            return;
                                        case 43:
                                            KeepAlivePayload keepAlivePayload2 = (KeepAlivePayload) com.alibaba.fastjson.a.parseObject(str4).getObject("data", KeepAlivePayload.class);
                                            OnRequestAliveListener onRequestAliveListener3 = this.mRequestKeepAliveListener;
                                            if (onRequestAliveListener3 == null) {
                                                CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, "mRequestKeepAliveListener = null");
                                                return;
                                            }
                                            if (keepAlivePayload2 == null) {
                                                onRequestAliveListener3.onStopAliveResult(false, "saas msg must be wrong");
                                                return;
                                            }
                                            boolean z11 = keepAlivePayload2.flag;
                                            if (!z11) {
                                                str3 = "stop keepAlive failed";
                                            }
                                            onRequestAliveListener3.onStopAliveResult(z11, str3);
                                            Runnable runnable2 = this.mStopAliveTimer;
                                            if (runnable2 != null) {
                                                removeCallbacks(runnable2);
                                            }
                                            if (keepAlivePayload2.flag) {
                                                return;
                                            }
                                            CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, "stop-alive flag is false");
                                            return;
                                        default:
                                            switch (iIntValue) {
                                                case 51:
                                                    doOperationStartLiving(object, string, string3);
                                                    break;
                                                case 52:
                                                    doOperationPinCode(str4, object, string, string3);
                                                    break;
                                                case 53:
                                                    doOperationStopLiving(object, string, string3);
                                                    break;
                                                case 54:
                                                    CountlyUtil.recordEvent(Constants.COUNTYLY_LOST_CONTRON_FAIL);
                                                    controlLost((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class));
                                                    break;
                                            }
                                            return;
                                    }
                            }
                    }
                    this.mPlayerState = 0;
                    TimeUtil.StreamUrl = System.currentTimeMillis();
                    cleanTimer();
                    org.json.JSONObject jSONObject4 = new org.json.JSONObject();
                    this.object = jSONObject4;
                    jSONObject4.put("currentNetType", this.currentNetType);
                    this.object.put("currentApkType", this.currentApkType);
                    PlayStreamPayload playStreamPayload3 = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str4, PlayStreamPayload.class);
                    if (playStreamPayload3 != null && playStreamPayload3.data != null) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_OPERATION_FIVE, "receive op5, reconnectStream = " + playStreamPayload3.data.reconnectStream);
                        if (playStreamPayload3.data.reconnectStream) {
                            LogUtils.d(str2, "reconnectStream call rePreparation() =OperationStream");
                            rePreparation();
                        }
                        if (integer.intValue() == 55) {
                            boolean z12 = object.getInteger("code").intValue() == 0;
                            if (z12) {
                                CountlyUtil.recordEvent(Constants.COUNTYLY_HAVE_CONTRON_SUCCESS);
                                getContronResult(z12, string2);
                            } else {
                                CountlyUtil.recordEvent(Constants.COUNTYLY_HAVE_CONTRON_FAIL, string);
                                getContronResult(z12, ResourceManager.getString(R.string.haima_hmcp_pin_code_error));
                            }
                            this.curCloudServiceState = 2;
                            CloudStateSend(2);
                            PlayStreamPayloadData playStreamPayloadData5 = playStreamPayload3.data;
                            if (playStreamPayloadData5 != null && (resolutionInfo = playStreamPayloadData5.resolutionInfo) != null) {
                                this.currenteResolutionID = resolutionInfo.f33828id;
                                setResolutionList(this.mHmcpManager.getResolutionDatas(), playStreamPayload3.data.resolutionInfo.f33828id, false, false);
                            }
                        }
                        if (this.currentApkType == 1) {
                            if (!this.isAudioMute) {
                                LogUtils.d(str2, "=OperationStream==turn on Video and Sound");
                                turnOnSound();
                            }
                            turnOnVideo();
                            this.currentApkType = 2;
                            CountlyUtil.recordEvent("12045");
                            SendSceneState.firstFrameArrival(getContext(), this.mListener);
                            UiMessageSend(getCallbackData(102, ""));
                        }
                        LogUtils.e(str2, "OperationStream--OPERATION_STREAM_URL---5===" + this.curConnectState + "  " + this.currentApkType);
                        PlayStreamPayloadData playStreamPayloadData6 = playStreamPayload3.data;
                        if (playStreamPayloadData6 != null && this.curConnectState == 0) {
                            playPreparation(2, playStreamPayloadData6);
                        }
                        UiMessageSend(getCallbackData(14, this.object.toString()));
                        PlayStreamPayloadData playStreamPayloadData7 = playStreamPayload3.data;
                        if (playStreamPayloadData7 == null || TextUtils.isEmpty(playStreamPayloadData7.kqiInfoList)) {
                            return;
                        }
                        UiMessageSend(48, playStreamPayload3.data.kqiInfoList);
                        LogUtils.d(str2, "OP-5,KQIInfoList = " + playStreamPayload3.data.kqiInfoList);
                        return;
                    }
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
        LogUtils.e(TAG, e.getLocalizedMessage());
        CountlyUtil.recordEvent("12230", JsonUtil.toJsonString(new ReportBaseError("-1000", e.getMessage())));
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void handlePermissionResult(String str, boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void hideKeyboard() {
        this.localKeyboardModel.hideInput();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isNativeDpadGame() {
        return this.nativeDpadGame;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public boolean isPlaying() {
        return true;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void notifyNetworkChanged() {
        if (this.isNetworkOk) {
            return;
        }
        LogUtils.i(TAG, "===notifyNetworkChanged  showNetworkErrorPrompt  = " + getMetaInfoByKey(Constants.TIPS_PROMPT_NETWORK_UNAVAILABLE));
        HmcpRequest hmcpRequest = this.mRequestManager;
        String str = Constants.ERRORCODE_OTHER_011;
        if (hmcpRequest != null && !TextUtils.isEmpty(hmcpRequest.getCloudId())) {
            str = Constants.ERRORCODE_OTHER_011 + "-" + this.mRequestManager.getCloudId();
        }
        String str2 = ResourceManager.getString(R.string.haima_hmcp_net_timeout) + "[" + str + "]";
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        this.object = jSONObject;
        try {
            jSONObject.put("errorMsg", str2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        UiMessageSend(getCallbackData(6, this.object.toString()));
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onPlayerError(str2, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
        this.customIJKVideoView.stopPlay(false, true);
        resetState();
        cancelRefreshStokenTask();
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_network_off));
        this.mPlayerState = 4;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        LogUtils.i(TAG, "=====onAttachedToWindow===========");
        registerReceiver();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onDestroy() {
        recordLifeCycleEvent("onDestroy");
        this.localKeyboardModel.release();
        GamePadManager.getInstance().sendStopAllGamePad(this.mWebSocketManager, true);
        this.curConnectState = 0;
        cleanTimer();
        CountDownUtil.cancelAll();
        stop();
        HmcpManager hmcpManager = this.mHmcpManager;
        if (hmcpManager != null) {
            hmcpManager.stopTraceRoute();
            this.mHmcpManager.stopNetPing();
        }
        cleanListeners();
        super.onDestroy();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LogUtils.i(TAG, "=====onDetachedFromWindow===========");
        unregisterReceiver();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveMetaInfos(int i10, HashMap<String, String> map, List<TipsInfo> list, Map<String, List<ResolutionInfo>> map2, List<IntroImageInfo> list2) {
        String str = TAG;
        LogUtils.i(str, "--------------onReceiveMetaInfos--------" + this.mAppName);
        super.onReceiveMetaInfos(i10, map, list, map2, list2);
        if (i10 != -16711936) {
            return;
        }
        this.mMetaInfos = map;
        this.mTipsInfo = list;
        this.mResolutionList = map2.get(Constants.STREAM_TYPE_RTMP);
        if (list2 != null && list2.size() > 0) {
            this.mIntroImageInfo = list2.get(0);
        }
        UiMessageSend(getCallbackData(33, ""));
        LogUtils.i(str, "--------------onReceiveMetaInfos--------" + getMetaInfoByKey(Constants.BUTTON_MAP_CONTENT));
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onResponse(int i10, String str) {
        if (i10 == -1) {
            if (this.isBackground) {
                return;
            }
            if (this.mWsReconnectCount < Constants.SAAS_WS_MAX_TIMES) {
                LogUtils.e(TAG, "--------------connect2Access---------refresh after 1s--" + this.mPlayerState + " mWsReconnectCount = " + this.mWsReconnectCount);
                if (this.mPlayerState <= 3) {
                    reconnectAccess("access disconnect " + str);
                    return;
                }
                return;
            }
            HmcpRequest hmcpRequest = this.mRequestManager;
            String str2 = Constants.ERRORCODE_OTHER_001;
            if (hmcpRequest != null && !TextUtils.isEmpty(hmcpRequest.getCloudId())) {
                str2 = Constants.ERRORCODE_OTHER_001 + "-" + this.mRequestManager.getCloudId();
            }
            if (this.isGetControl) {
                getContronResult(false, str2);
            } else {
                showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, str2, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_DISCONNECT);
            return;
        }
        if (i10 == 0) {
            LogUtils.e(TAG, "--------------connect2Access---------refreshStoken--");
            refreshStoken(0, "connect2Access Success type OPTYPE_REFRESH");
            return;
        }
        if (i10 == 1) {
            if (this.isGameStart) {
                return;
            }
            UiMessageSend(getCallbackData(8, ""));
            return;
        }
        if (i10 == 2) {
            LogUtils.e(TAG, "--------------connect2Access---------heartBeatSuccess--");
            this.mWsReconnectCount = 0;
            return;
        }
        if (i10 == 3) {
            try {
                doStateChangeReason(str);
                return;
            } catch (JSONException e10) {
                LogUtils.e(TAG, e10.getLocalizedMessage());
                return;
            }
        }
        if (i10 == 4) {
            doSwitchStreamType();
            return;
        }
        if (i10 != 102) {
            if (i10 != 201) {
                return;
            }
            onSwitchResolutionError();
        } else if (str.equals(Constants.MINIMUM_BITRATE)) {
            UiMessageSend(getCallbackData(26, getMetaInfoByKey(Constants.TOAST_SPEED_LOWER_BITRATE)));
            sendSceneStopMessage(0L, ResourceManager.getString(R.string.haima_hmcp_scene_start_less_minimum));
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onStop() {
        recordLifeCycleEvent("onStop");
        startExitQueueInBGTimer();
        this.isBackground = true;
        CountlyUtil.recordEvent(Constants.COUNTLY_APP_BACKGROUND);
        stopSensor();
        if (this.closeStream) {
            LogUtils.i(TAG, "===onStop====");
            this.curConnectState = 5;
            doPlayerRelease();
            cleanTimer();
            RecordHelper.getsInstance().stop(true);
            CountDownUtil.cancel(CountDownUtil.CID_CACHE_TIMER, getContext());
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void onStopInternal() {
        resetState();
        stopRomRecord();
        disconnectWebSocket();
        stopReportClockDiffLatency();
        cleanTimer();
        HmIMEManager.getInstance().hideInput();
        CountDownUtil.cancel(CountDownUtil.CID_CACHE_TIMER);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        return onSwitchResolution(i10, resolutionInfo, i11, null);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void playForTesting(PlayTestData playTestData) {
        LogUtils.i(TAG, "===playForTesting====");
        initManager();
        UiMessageSend(getCallbackData(34, ""));
        this.mVideoUrl = playTestData.videoUrl;
        this.mAudioUrl = playTestData.audioUrl;
        this.mVInputUrl = playTestData.inputUrl;
        setOrientationInit(playTestData.orientation);
        Constants.PLAY_PREPARE = false;
        start2Play(null);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void playPreparation(int i10, PlayStreamPayloadData playStreamPayloadData) {
        if (playStreamPayloadData == null) {
            CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
            if (cloudPlayInfo != null) {
                cloudPlayInfo.isGetStreamUrlSuccess = false;
                return;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isGetStreamUrlSuccess = false");
                return;
            }
        }
        CloudPlayInfo cloudPlayInfo2 = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.isGetStreamUrlSuccess = true;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isGetStreamUrlSuccess = true");
        }
        this.mEntryQueue = false;
        this.mInQueued = false;
        cancelExitQueueInBGTimer(ExitQueueInBGCancelType.QUEUE_COMPLETE);
        String str = TAG;
        LogUtils.i(str, "reset mRefreshStokenCount: " + this.mRefreshStokenCount + " -> 0reset mInstanceReconnectCount: " + this.mInstanceReconnectCount + " -> 0reset mInstanceWsReconnectCount: " + this.mInstanceWsReconnectCount + " -> 0");
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        boolean zEquals = Constants.STREAM_TYPE_RTMP.equals(playStreamPayloadData.streamType);
        CloudPlayInfo cloudPlayInfo3 = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo3 != null) {
            cloudPlayInfo3.isMatchStreamType = zEquals;
        } else {
            LogUtils.d(str, "cloudPlayInfo == null,can't set cloudPlayInfo.isMatchStreamType");
        }
        if (!zEquals) {
            changeStreamType(i10, playStreamPayloadData);
            return;
        }
        this.currentApkType = i10;
        this.mVideoUrl = playStreamPayloadData.videoUrl;
        this.mAudioUrl = playStreamPayloadData.audioUrl;
        this.mVInputUrl = playStreamPayloadData.inputUrl;
        this.screenUrl = playStreamPayloadData.screenUrl;
        if (!TextUtils.isEmpty(playStreamPayloadData.idcId) && !TextUtils.isEmpty(playStreamPayloadData.idcName)) {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                jSONObject.put("idcId", playStreamPayloadData.idcId);
                jSONObject.put("idcName", playStreamPayloadData.idcName);
            } catch (JSONException unused) {
            }
            UiMessageSend(getCallbackData(44, jSONObject.toString()));
        }
        markWebSocketUrlTimeStamp();
        checkHangUpTask();
        setSupportLiving(playStreamPayloadData.supportLiving);
        ResolutionInfo resolutionInfo = playStreamPayloadData.resolutionInfo;
        String str2 = resolutionInfo == null ? "" : resolutionInfo.resolution;
        this.screenResolution = str2;
        if (!TextUtils.isEmpty(str2)) {
            String[] strArrSplit = this.screenResolution.split("x");
            if (strArrSplit.length == 2) {
                this.streamHeight = parseScreenResolution(strArrSplit[1]);
                this.streamWidth = parseScreenResolution(strArrSplit[0]);
                LogUtils.d(TAG, "parse screen resolution streamWidth = " + this.streamWidth + ", streamHeight" + this.streamHeight);
            }
        }
        this.encryption = playStreamPayloadData.encryption;
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_STREAM_URL, JsonUtil.toJsonString(new ReportGetStreamSuc("videoUrl=" + URLEncoder.encode(this.mVideoUrl) + "; apkType = " + i10 + "; " + currentStatusInfo(), LiveConfigKey.RTMP)));
        if (this.curConnectState != 5) {
            this.curConnectState = 1;
        }
        String str3 = TAG;
        LogUtils.e(str3, "=OperationStream==playPreparation() curCloudServiceState : " + this.curCloudServiceState + " apkType : " + i10);
        if (this.curCloudServiceState == 2) {
            syncSpeedVsPlay();
        }
        if (i10 != 1) {
            cleanTimer();
            return;
        }
        LogUtils.d(str3, "=OperationStream==turn off Video and Sound");
        turnOffSound();
        turnOffVideo();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void rePlay() {
        String str = TAG;
        LogUtils.e(str, "===rePlay ====");
        if (isWaitStreamUrlPre()) {
            LogUtils.d(str, "rePlay cancel because pooled restart receive op4.5 but not receive op5");
            CountlyUtil.recordEvent("12200", "rePlay cancel because pooled restart receive op4.5 but not receive op5");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null && hmcpRequest.isGetCloudServiceRequestV2Requesting()) {
            LogUtils.d(str, "replay cancel because last 211 not response");
            return;
        }
        if (getCurrentNetType() < 0) {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            this.object = jSONObject;
            try {
                jSONObject.put("errorCode", Constants.ERRORCODE_OTHER_011);
                this.object.put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_net_error));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            UiMessageSend(getCallbackData(6, this.object.toString()));
            return;
        }
        if (TextUtils.isEmpty(this.mAppName) && TextUtils.isEmpty(this.mGid)) {
            LogUtils.e(str, "===rePlay mAppName==null ==");
            return;
        }
        if (this.mWebSocketManager != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("===rePlay mWebSocketManager====");
            IWebSocket iWebSocket = this.mWebSocketManager;
            WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_ACCESS;
            sb2.append(iWebSocket.isConnect(webSocketType));
            sb2.append(":");
            HMInput hMInput = this.mHMInput;
            sb2.append(hMInput == null ? "false" : Boolean.valueOf(hMInput.isConnected()));
            sb2.append(":");
            sb2.append(this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER));
            LogUtils.e(str, sb2.toString());
            resetState();
            this.mPlayerState = 0;
            this.isNeedShowSwitchSuccess = false;
            disconnectSocketIo(true, true, true);
            HmcpRequest hmcpRequest2 = this.mRequestManager;
            if (hmcpRequest2 != null) {
                if (!this.isGetControl) {
                    hmcpRequest2.getReCloudServiceRequestV2();
                    return;
                }
                hmcpRequest2.getCloudService(0, 1, false);
                if (this.mWebSocketManager.isConnect(webSocketType)) {
                    return;
                }
                this.mRequestManager.connect2Access(1, false);
            }
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public void refreshStoken(int i10, String str, boolean z10, boolean z11) {
        String str2 = TAG;
        LogUtils.i(str2, "===start refresh stoken====");
        if (this.isBackground) {
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null || !hmcpRequest.isStopPlay) {
            if (this.isGameStart && z10) {
                CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
                this.customIJKVideoView.stopPlay(z11, true);
            }
            if (this.mPlayerState == 5 || this.curConnectState == 5) {
                LogUtils.e(str2, "===game over no refresh ====");
                cleanTimer();
                return;
            }
            if (this.mRefreshStokenCount < Constants.REFRESH_STOKEN_MAX_TIMES) {
                this.mResfreshStokenReasons += "(" + this.mRefreshStokenCount + ":" + str + ")";
                this.mRefreshStokenCount++;
                setSupportLiving(-1);
                long j10 = i10;
                startTimer(j10, j10, 0, str);
                return;
            }
            HmcpRequest hmcpRequest2 = this.mRequestManager;
            String str3 = Constants.ERRORCODE_OTHER_010;
            if (hmcpRequest2 != null && !TextUtils.isEmpty(hmcpRequest2.getCloudId())) {
                str3 = Constants.ERRORCODE_OTHER_010 + "-" + this.mRequestManager.getCloudId();
            }
            org.json.JSONObject jSONObjectCallbackHmcpError = callbackHmcpError(new ErrorInfo().put("errorCode", str3).put("rootCause", this.mResfreshStokenReasons).put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_refresh_stoken_over_max)), 23);
            this.object = jSONObjectCallbackHmcpError;
            release(jSONObjectCallbackHmcpError.toString());
            this.mPlayerState = 4;
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void release(String str) {
        String string;
        CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.reset();
        }
        recordLifeCycleEvent("release: " + str);
        LogUtils.i(TAG, "==release===");
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME, "1 ; " + currentStatusInfo());
        try {
            string = new org.json.JSONObject(str).getString("errorCode");
        } catch (JSONException e10) {
            e10.printStackTrace();
            string = "";
        }
        recordStopGameError(string, "null".equals(str) ? 1 : 0);
        cancelRefreshStokenTask();
        stopRomRecord();
        disconnectWebSocket();
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.stopCloudService();
        }
        cleanTimer();
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
        this.customIJKVideoView.release();
        resetState();
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void releaseNotStop() {
        this.mPlayerState = 5;
        CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.reset();
        }
        cancelRefreshStokenTask();
        stopRomRecord();
        disconnectWebSocket();
        cleanTimer();
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
        this.customIJKVideoView.stopPlay();
        resetState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCustomVideoView(IHmcpIJKVideoView iHmcpIJKVideoView) {
        CountlyUtil.recordEvent(Constants.COUNTLY_ON_CUSTOM_PLAYER_INIT);
        this.customIJKVideoView = iHmcpIJKVideoView;
        if (iHmcpIJKVideoView instanceof View) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
            if (getChildCount() > 1) {
                addView((View) iHmcpIJKVideoView, 0, layoutParams);
            } else {
                addView((View) iHmcpIJKVideoView, layoutParams);
            }
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void setHmcpIJKVideoViewListener() {
        if (this.customIJKVideoView != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_SET_LISTENER);
            this.customIJKVideoView.setHmcpIJKVideoViewListener(new HmcpIJKVideoViewListener() { // from class: com.haima.hmcp.rtmp.widgets.BaseRtmpCustomVideoView.1
                @Override // com.haima.hmcp.rtmp.widgets.HmcpIJKVideoViewListener
                public void onError() {
                    CountlyUtil.recordEvent(Constants.COUNTLY_ON_CUSTOM_PLAYER_ERROR);
                    LogUtils.i(BaseRtmpCustomVideoView.TAG, "=====play======onError=====");
                    BaseRtmpCustomVideoView.this.resetState();
                    BaseRtmpCustomVideoView.this.refreshStoken(Constants.REFRESH_STOKEN_DELAY * 1000, "MediaPlayer onError", NetworkUtil.isNetworkConnected(((AbsIjkVideoView) BaseRtmpCustomVideoView.this).mAppContext));
                }

                @Override // com.haima.hmcp.rtmp.widgets.HmcpIJKVideoViewListener
                public void onFirstFrameArrival() {
                    CountlyUtil.recordEvent(Constants.COUNTLY_ON_CUSTOM_PLAYER_FIRST_FRAME_ARRIVAL);
                    CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
                    if (cloudPlayInfo != null) {
                        cloudPlayInfo.reset();
                    }
                    BaseRtmpCustomVideoView.this.cleanTimer();
                    BaseRtmpCustomVideoView baseRtmpCustomVideoView = BaseRtmpCustomVideoView.this;
                    baseRtmpCustomVideoView.mPlayerState = 3;
                    ((AbsIjkVideoView) baseRtmpCustomVideoView).mResfreshStokenReasons = "";
                    HMInput hMInput = BaseRtmpCustomVideoView.this.mHMInput;
                    if (hMInput != null) {
                        hMInput.sendPing2();
                    }
                    BaseRtmpCustomVideoView.this.sendScreenBrightness();
                    ((AbsIjkVideoView) BaseRtmpCustomVideoView.this).mHmcpHandler.sendEmptyMessage(7);
                    SendSceneState.firstFrameArrival(BaseRtmpCustomVideoView.this.getContext(), BaseRtmpCustomVideoView.this.mListener);
                    CountlyUtil.recordEvent("12045");
                    ((AbsIjkVideoView) BaseRtmpCustomVideoView.this).mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.BaseRtmpCustomVideoView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseRtmpCustomVideoView baseRtmpCustomVideoView2 = BaseRtmpCustomVideoView.this;
                            baseRtmpCustomVideoView2.UiMessageSend(baseRtmpCustomVideoView2.getCallbackData(102, ""));
                        }
                    });
                }

                @Override // com.haima.hmcp.rtmp.widgets.HmcpIJKVideoViewListener
                public void onPlayerRelease() {
                    CountlyUtil.recordEvent(Constants.COUNTLY_ON_CUSTOM_PLAYER_RELEASE);
                    BaseRtmpCustomVideoView.this.stopReportClockDiffLatency();
                }

                @Override // com.haima.hmcp.rtmp.widgets.HmcpIJKVideoViewListener
                public void onPlayerStop() {
                    CountlyUtil.recordEvent(Constants.COUNTLY_ON_CUSTOM_PLAYER_STOP);
                }
            });
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setImageSize() {
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public void setRenderView(IRenderViewBase iRenderViewBase) {
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    public void start2Play(SdkStreamPayloadData sdkStreamPayloadData) {
        LogUtils.i(TAG, "==== start2Play =====");
        if (this.mWebSocketManager == null) {
            CountlyUtil.recordErrorEvent("start2Play() mWebSocketManager == null" + Log.getStackTraceString(new Throwable()));
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_START);
        this.customIJKVideoView.startPlay(this.mVideoUrl, this.mAudioUrl);
        UiMessageSend(getCallbackData(2, ""));
        if (this.mIsFirstGetCloudService) {
            this.startPlayTime = System.currentTimeMillis();
        }
        this.mListener.onSuccess();
        this.isGameStart = true;
        connect2Instance(this.mVInputUrl);
        connectWsServer(this.screenUrl);
        connectTransferServer(this.screenUrl);
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView
    protected void stop() {
        LogUtils.i(TAG, "timeframe====stop======");
        this.mAppName = null;
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME, "0 ; " + currentStatusInfo());
        recordStopGameError("", 1);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.isAllowConnect2Access(false);
        }
        FileDownloadUtil fileDownloadUtil = this.mFileDownloadUtil;
        if (fileDownloadUtil != null) {
            fileDownloadUtil.stopSpeedTest();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                jSONObject.put("status", ConstantsInternal.STOP);
                jSONObject.put("stopByApp", "0");
                jSONObject.put("msg", "internal stop called");
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject.toString());
        }
        unregisterReceiver();
        CountlyUtil.recordEvent(Constants.COUNTLY_CALL_CUSTOM_PLAYER_STOP);
        this.customIJKVideoView.stopPlay();
        stopRomRecord();
        if (getTransferDelegate() != null) {
            getTransferDelegate().disconnect();
        }
        quitManager();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
    }

    public void syncSpeedVsPlay() {
        CloudStateSend(3);
        this.curCloudServiceState = 3;
        LogUtils.i(TAG, this.mIsFirstGetCloudService + ":" + this.mPlayerState + "--------------- = syncSpeedVsPlay = " + this.mBitRate + "=curConnectState=" + this.curConnectState);
        if (this.curConnectState == 1 && this.mPlayerState != 5) {
            start2Play(null);
            this.curConnectState = 3;
        }
    }

    @Override // com.haima.hmcp.widgets.AbsIjkVideoView, com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11, ResolutionInfoExtra resolutionInfoExtra) {
        String str;
        recordLifeCycleEvent("onSwitchResolution_level");
        if (isWaitStreamUrlPre()) {
            LogUtils.d(TAG, "onSwitchResolution cancel because pooled restart receive op4.5 but not receive op5");
            CountlyUtil.recordEvent("12200", "onSwitchResolution cancel because pooled restart receive op4.5 but not receive op5");
            return false;
        }
        if (this.isExchangeControl) {
            LogUtils.e(TAG, "exchange control, can not switch resolution!");
            onSwitchResolutionError();
            return false;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            callbackSwitchResolutionFailed();
            CountlyUtil.recordErrorEvent("onSwitchResolution() mRequestManager == null : " + Log.getStackTraceString(new Throwable()));
            return false;
        }
        RequestPreCheck requestPreCheckPreCheck = hmcpRequest.preCheck(201);
        if (!requestPreCheckPreCheck.requestAllow) {
            callbackSwitchResolutionFailed();
            CountlyUtil.recordErrorEvent("onSwitchResolution() failed, cause: quest pre check " + requestPreCheckPreCheck);
            return false;
        }
        if (resolutionInfo == null) {
            return false;
        }
        setSupportLiving(-1);
        resetState();
        this.mSetResolution = resolutionInfo;
        disconnectSocketIo(true, true, true);
        this.isNeedShowSwitchSuccess = true;
        this.mRequestManager.switchResolution(resolutionInfo.f33828id, i11, resolutionInfoExtra != null ? resolutionInfoExtra.viewFrameRate : 0);
        ResolutionInfo resolutionInfo2 = this.mCurResolution;
        if (resolutionInfo2 != null) {
            String str2 = resolutionInfo2.bitRate;
            String str3 = resolutionInfo2.f33828id;
            str = resolutionInfo2.peakBitRate;
        } else {
            str = "";
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_source), (Object) str);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_des), (Object) resolutionInfo.peakBitRate);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_method), (Object) Integer.valueOf(this.mSwitchAuto ? 1 : 0));
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_crst), jSONObject.toJSONString());
        this.mSwitchAuto = false;
        return true;
    }

    public BaseRtmpCustomVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.SHOW_MOUSE_TIME = 500;
        this.mClockDiffTime = 0L;
        this.mClockDiffUse = 0;
        this.dpadKeyDown = new HashSet<>();
        init(context);
    }

    public BaseRtmpCustomVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.SHOW_MOUSE_TIME = 500;
        this.mClockDiffTime = 0L;
        this.mClockDiffUse = 0;
        this.dpadKeyDown = new HashSet<>();
        init(context);
    }
}
