package com.haima.hmcp.business;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.alibaba.fastjson.JSONObject;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.BaseResult;
import com.haima.hmcp.beans.BaseResultImp;
import com.haima.hmcp.beans.Battle;
import com.haima.hmcp.beans.BattleMode;
import com.haima.hmcp.beans.CheckCloudServiceResult;
import com.haima.hmcp.beans.ClientInfo;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.CommonMeta;
import com.haima.hmcp.beans.ConfigureResult;
import com.haima.hmcp.beans.ControlDistributeParam;
import com.haima.hmcp.beans.ControlDistributeResult;
import com.haima.hmcp.beans.ControlInfo;
import com.haima.hmcp.beans.ControlParameters;
import com.haima.hmcp.beans.ControlQueryParam;
import com.haima.hmcp.beans.ControlQueryResult;
import com.haima.hmcp.beans.ContronResult;
import com.haima.hmcp.beans.DeviceIdParameters;
import com.haima.hmcp.beans.DeviceIdResult;
import com.haima.hmcp.beans.DeviceInfo;
import com.haima.hmcp.beans.DistanceLimit;
import com.haima.hmcp.beans.ExtraConfigureResult;
import com.haima.hmcp.beans.ForceKeepAliveParameters;
import com.haima.hmcp.beans.GSMAddressInfo;
import com.haima.hmcp.beans.GSMUsbNatData;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.GameStreamingType;
import com.haima.hmcp.beans.GameStreamingTypeResult;
import com.haima.hmcp.beans.GetCloudServiceParameters;
import com.haima.hmcp.beans.GetCloudServiceParametersV2;
import com.haima.hmcp.beans.GetCloudServiceParametersV3;
import com.haima.hmcp.beans.GetCloudServiceResult;
import com.haima.hmcp.beans.GetCloudServiceResult2;
import com.haima.hmcp.beans.GetCloudServiceResult3;
import com.haima.hmcp.beans.GetStartStreamingParameters;
import com.haima.hmcp.beans.GetStartStreamingResult;
import com.haima.hmcp.beans.GetSwitchStreamTypeParameters;
import com.haima.hmcp.beans.GetSwitchStreamTypeResult;
import com.haima.hmcp.beans.IParameter;
import com.haima.hmcp.beans.IntentExtraData;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.IntroVideoInfo;
import com.haima.hmcp.beans.JoinBattle;
import com.haima.hmcp.beans.JoinBattleResult;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.beans.LanguageReport;
import com.haima.hmcp.beans.LivingParameters;
import com.haima.hmcp.beans.LivingResult;
import com.haima.hmcp.beans.MessagePayload;
import com.haima.hmcp.beans.MessageServerInfo;
import com.haima.hmcp.beans.MsgServInfo;
import com.haima.hmcp.beans.NetTestData;
import com.haima.hmcp.beans.PinCodeParameters;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PostJson;
import com.haima.hmcp.beans.ProtoDataGameInfo;
import com.haima.hmcp.beans.RawPostJson;
import com.haima.hmcp.beans.RecordStreamInfo;
import com.haima.hmcp.beans.RelaunchGameParameters;
import com.haima.hmcp.beans.RelaunchGameResult;
import com.haima.hmcp.beans.RemoteCaptureParameters;
import com.haima.hmcp.beans.ReportBaseFailed;
import com.haima.hmcp.beans.ReportGetCloudService;
import com.haima.hmcp.beans.ReportGetCloudService2;
import com.haima.hmcp.beans.ReportGetCloudService2Failed;
import com.haima.hmcp.beans.ReportGetCloudService3;
import com.haima.hmcp.beans.ReportGetCloudService3Failed;
import com.haima.hmcp.beans.ReportGetCloudServiceFailed;
import com.haima.hmcp.beans.ReportGetConfig;
import com.haima.hmcp.beans.ReportGetConfigInfoFailed;
import com.haima.hmcp.beans.ReportIPV4;
import com.haima.hmcp.beans.ReportInitFailed;
import com.haima.hmcp.beans.ReportRemoteCapture;
import com.haima.hmcp.beans.ReportSaas;
import com.haima.hmcp.beans.ReportStopCloudService;
import com.haima.hmcp.beans.ReportStopCloudServiceFailed;
import com.haima.hmcp.beans.RequestCheckPlayingGame;
import com.haima.hmcp.beans.RequestConfigure;
import com.haima.hmcp.beans.RequestGameStreamingType;
import com.haima.hmcp.beans.RequestJoinBattle;
import com.haima.hmcp.beans.RequestPreCheck;
import com.haima.hmcp.beans.RequestReleaseCid;
import com.haima.hmcp.beans.RequestReleaseCidResult;
import com.haima.hmcp.beans.RequestSaveGame;
import com.haima.hmcp.beans.RequestSaveGameResult;
import com.haima.hmcp.beans.RequestSpecialInfo;
import com.haima.hmcp.beans.RequestUpdataUID;
import com.haima.hmcp.beans.RequestUpdataUIDResult;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ResponseSpecialInfo;
import com.haima.hmcp.beans.RetryErrorcodeConfig;
import com.haima.hmcp.beans.SerializableMap;
import com.haima.hmcp.beans.SetStreamingModeParameters;
import com.haima.hmcp.beans.SetStreamingModeResult;
import com.haima.hmcp.beans.StartRecordStreamParameters;
import com.haima.hmcp.beans.StopRecordStreamParameters;
import com.haima.hmcp.beans.StopRecordStreamResult;
import com.haima.hmcp.beans.StopServiceParameters;
import com.haima.hmcp.beans.StopServiceResult;
import com.haima.hmcp.beans.SwitchInfo;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.UpdateInstanceTimeParameters;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.beans.UserInfo2;
import com.haima.hmcp.beans.WebRtcInfo;
import com.haima.hmcp.beans.WebSocketConfig;
import com.haima.hmcp.beans.report.ReportGetGameStreamingType;
import com.haima.hmcp.beans.report.ReportGetGameStreamingTypeFailed;
import com.haima.hmcp.beans.report.ReportGetJoinBattle;
import com.haima.hmcp.business.sensor.HmSensorConfig;
import com.haima.hmcp.cloud.CloudFileManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.dns.entity.DnsRequestIpParameters;
import com.haima.hmcp.dns.entity.DnsRequestIpResult;
import com.haima.hmcp.dns.interfaces.OnDnsRequestServiceIpListener;
import com.haima.hmcp.enums.ErrorType;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.SwitchStreamTypeError;
import com.haima.hmcp.language.AbsLanguageManager;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.OnConfigListener;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.OnEnableHighBitrateListener;
import com.haima.hmcp.listeners.OnForceKeepAliveListener;
import com.haima.hmcp.listeners.OnGameIsAliveListener;
import com.haima.hmcp.listeners.OnGameStreamingTypeListener;
import com.haima.hmcp.listeners.OnGetControlResultListener;
import com.haima.hmcp.listeners.OnGetPublicIPV4Listener;
import com.haima.hmcp.listeners.OnGetResolutionsCallBackListener;
import com.haima.hmcp.listeners.OnGetSwitchStreamTypeResultListener;
import com.haima.hmcp.listeners.OnIdcQueryCallBackListener;
import com.haima.hmcp.listeners.OnInitCallBackListener;
import com.haima.hmcp.listeners.OnJoinBattleListener;
import com.haima.hmcp.listeners.OnLivingListener;
import com.haima.hmcp.listeners.OnRelaunchGameListener;
import com.haima.hmcp.listeners.OnSaveGameCallBackListener;
import com.haima.hmcp.listeners.OnSetStreamingModeListener;
import com.haima.hmcp.listeners.OnSpeedTestCallBackListener;
import com.haima.hmcp.listeners.OnStartStreamingListener;
import com.haima.hmcp.listeners.OnSwitchStreamTypeListener;
import com.haima.hmcp.listeners.OnUpdataGameUIDListener;
import com.haima.hmcp.listeners.OnUpdateInstanceTimeListener;
import com.haima.hmcp.listeners.OnVolleyListener;
import com.haima.hmcp.listeners.RemoteCaptureListener;
import com.haima.hmcp.listeners.StartRecordStreamListener;
import com.haima.hmcp.listeners.StopRecordStreamListener;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.ConnectivityCheck;
import com.haima.hmcp.utils.CountDownUtil;
import com.haima.hmcp.utils.CryptoUtils;
import com.haima.hmcp.utils.DataUtils;
import com.haima.hmcp.utils.FileDownloadUtil;
import com.haima.hmcp.utils.FollowCidCacheUtil;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.NetTestUtil;
import com.haima.hmcp.utils.NetworkUtil;
import com.haima.hmcp.utils.SpeedGather;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.utils.ping.PingManager;
import com.haima.hmcp.utils.ping.PingPara;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.Util.o0;
import com.join.mgps.cloud.bean.HMMessage;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.WMConstants;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.webrtc.haima.HmDataChannelDeviceSwitch;
import org.webrtc.haima.HmRtcGlobalConfig;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpRequestManager extends BaseManager implements IHmcpRequest {
    protected static final String ACCESS_KEY_ID = "HMCP_ACCESS_KEY_ID";
    protected static final String CHANNEL_ID = "HMCP_CHANNEL_ID";
    public static final String CID_KEY = "HMCP_CID";
    public static final String CID_VALUE = "HMCP_CID_VALUE";
    public static final String HMCP_CID_BATTLE_TYPE = "HMCP_CID_BATTLE_TYPE";
    public static final String JSON_TAG_ERROR_CODE = "errorCode";
    public static final String JSON_TAG_ERROR_MESSAGE = "errorMsg";
    public static final String JSON_TAG_STATE_CHANGE_REASON = "stateChangeReason";
    private static final String KEY_PREFERENCE_DID = "key_preference_did";
    public static final int NOT_REPORT = -1;
    public static final int OPTYPE_NORMAL = 0;
    public static final int OPTYPE_REFRESH = 1;
    public static final int OPTYPE_RESOLUTION = 2;
    public static final int OPTYPE_V2 = 3;
    public static final int QUEUE_CONFIRM = 1;
    public static final int QUEUE_DEFAULT = 0;
    public static final int REPORT_INTERVAL_MIN = 5;
    private static final int REQUEST_MAX_TIME = 3;
    public static final long SDK_ABILITY_APK_TYPE_POOL_BINTANG = 128;
    public static final long SDK_ABILITY_CTOKEN_CHECK = 16;
    public static final long SDK_ABILITY_H265_FEC_SUPPORT = 64;
    public static final long SDK_ABILITY_NO_NEW_CID = 1;
    public static final long SDK_ABILITY_OPEN_STREAMER_PARALLEL = 512;
    public static final long SDK_ABILITY_RTC = 4;
    public static final long SDK_ABILITY_SURFACE_FACEID_MEGRE = 32;
    public static final long SDK_ABILITY_TV = 8;
    private static final String TAG = "HmcpRequestManager";
    public static String clientCity;
    public static String clientISP;
    public static String clientProvince;
    public static int mArchiveMinSeconds;
    private StringBuilder builder;
    private Long cTokenTimeStamp;
    private int confirm;
    private int currentOPType;
    private Boolean enableHighBitrate;
    public boolean isAccessConnecting;
    protected boolean isAccessWebSocketConnected;
    public boolean isAllowConnect2Access;
    private boolean isChangeStreamType;
    private boolean isCloudIdChange;
    private boolean isCustomPlayer;
    private boolean isGetCloudServiceRequestV2Requesting;
    public boolean isStopPlay;
    private boolean isTransfer;
    protected Boolean keepLoginStatus;
    private String languageFromApp;
    protected String mAccessKeyId;
    private String mAccessReconnectURL;
    protected String mAccessURL;
    private List<String> mAccessURList;
    private String mAction;
    public float mAnomalousLeft;
    public float mAnomalousRight;
    private String mAppChannel;
    private int mAppId;
    private String mAppName;
    public boolean mArchive;
    public String mArchiveFromBid;
    public String mArchiveFromUserId;
    protected BattleMode mBattleMode;
    private int mBitRate;
    protected String mCToken;
    protected OnInitCallBackListener mCallBack;
    protected String mChannelId;
    private ClientInfo mClientInfo;
    protected String mCloudId;
    private CloudPlayInfo mCloudPlayInfo;
    private String mComponentName;
    private int mComponentType;
    private String mConfigInfo;
    protected String mDeviceId;
    private DeviceInfo mDeviceInfo;
    private Integer mDevicePixelRation;
    private boolean mDisableAutoStream;
    private IntentExtraData mExtraData;
    private String mExtraId;
    private FileDownloadUtil mFileDownloadUtil;
    protected Boolean mFinishByServer;
    private String mGid;
    protected IHmcpHttp mHttpManager;
    public boolean mIsAhead;
    private boolean mIsAllowCompatibleIPV6;
    private boolean mIsInTvRtcBlackList;
    private Integer mKeepAliveTimeSeconds;
    protected AbsLanguageManager mLanguageManager;
    protected String mLinkSt;
    private MessageServerInfo mMessageServerInfo;
    HashMap<String, String> mMetaMap;
    private int mNoInputLimitTime;
    private Boolean mOpenMultiArchive;
    private ScreenOrientation mOrientation;
    private String mPasswordKey;
    public String mPayStr;
    private long mPlayTime;
    private int mPriority;
    public String mProtoData;
    private String mRandomKey;
    protected int mRequestTime;
    protected String mResolutionID;
    private Timer mRetryTimer;
    protected OnHmcpSaasRequestListener mSaasListener;
    private String mSaveArchiveBidMultiArchive;
    private Boolean mSaveArchiveMultiArchive;
    private String mSaveArchiveUidMultiArchive;
    private String mSecretKey;
    private boolean mSeiEnable;
    protected String mSignature;
    private int mStreamingMode;
    private SerializableMap mTransmissionDataToSaas;
    private String mUserDeviceInfo;
    private UserInfo mUserInfo;
    private UserInfo2 mUserInfo2;
    private int mViewFrameRate;
    private int mViewResolutionHeight;
    private int mViewResolutionWidth;
    protected IWebSocket mWebSocketManager;
    private ArrayList<NetTestData> netTestList;
    private NetTestUtil netTestUtil;
    private OnEnableHighBitrateListener onEnableHighBitrateListener;
    private int opType;
    private String packageName;
    private ProtoDataGameInfo protoDataGameInfo;
    private int reportFrameDelayInterval;
    private String saasAuthUrl;
    private String streamType;

    public interface OnHmcpSaasRequestListener {
        void handleMessage(String str);

        void onGSMUsbNatData(GSMUsbNatData gSMUsbNatData);

        void onGetCloudServiceSuccess(String str, boolean z10, String str2, int i10, boolean z11);

        void onReceiveDistance(long j10);

        void onReceiveExtraConfigs(HashMap<String, String> map, boolean z10);

        void onReceiveMetaInfos(int i10, HashMap<String, String> map, List<TipsInfo> list, Map<String, List<ResolutionInfo>> map2, List<IntroImageInfo> list2);

        void onResponse(int i10, String str);

        void playPreparation(int i10, PlayStreamPayloadData playStreamPayloadData);

        void setGamePlatformType(GamePlatformType gamePlatformType);

        void showRetryPrompt(String str, String str2, String str3);

        void waitStreamUrl(String str);
    }

    public HmcpRequestManager(Context context) {
        super(context);
        this.currentOPType = 0;
        this.packageName = "";
        this.mMetaMap = null;
        this.isStopPlay = false;
        this.netTestList = new ArrayList<>();
        this.netTestUtil = new NetTestUtil();
        this.isTransfer = false;
        this.mIsInTvRtcBlackList = false;
        this.reportFrameDelayInterval = -1;
        this.mSeiEnable = false;
        this.isChangeStreamType = false;
        this.isCustomPlayer = false;
        this.mAnomalousLeft = 0.0f;
        this.mAnomalousRight = 0.0f;
        this.languageFromApp = null;
        this.mDisableAutoStream = false;
        this.enableHighBitrate = null;
        this.mKeepAliveTimeSeconds = null;
        this.mDevicePixelRation = null;
        this.mBattleMode = new BattleMode();
        this.isGetCloudServiceRequestV2Requesting = false;
        initConfigInfo();
        LogUtils.e(TAG, "DownFirstFrame---HmcpRequestManager==constructor=");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doConfigureResultNull() {
        String string = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
        IRetryPolicy cuRetryPolicy = getCuRetryPolicy(ConfigureResult.class);
        ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed("-1001", string, -1001, string, cuRetryPolicy.getCurrentTimeout(), this.mChannelId, this.packageName);
        reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
        notifyPlayerListener(ErrorType.OTHER, "Failed to get config");
        notifyGetConfigureErrorListener(this.packageName);
        notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_004, ResourceManager.getString(R.string.haima_hmcp_errorMsg_null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doGetCloudServiceResult2Null(@NonNull IRetryPolicy iRetryPolicy) {
        int currentRetryCount;
        int i10;
        this.mCloudId = "";
        if (iRetryPolicy != null) {
            int currentTimeout = iRetryPolicy.getCurrentTimeout();
            currentRetryCount = iRetryPolicy.getCurrentRetryCount();
            i10 = currentTimeout;
        } else {
            currentRetryCount = 0;
            i10 = 0;
        }
        ReportGetCloudService2Failed reportGetCloudService2Failed = new ReportGetCloudService2Failed("-1001", "result is null", 200, "", i10, this.streamType, "");
        reportGetCloudService2Failed.retryRequestCount = currentRetryCount;
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed));
        notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service v2");
        notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
    }

    private Long getCTokenTimeStamp(Bundle bundle) {
        long j10 = bundle.containsKey(BaseVideoView.C_TOKEN_TIME_STAMP) ? bundle.getLong(BaseVideoView.C_TOKEN_TIME_STAMP, -1L) : -1L;
        if (j10 != -1) {
            return Long.valueOf(j10);
        }
        return null;
    }

    private GetCloudServiceParametersV2 getCloudServiceParametersV2(String str, boolean z10) {
        int preferences;
        int i10;
        GetCloudServiceParametersV2 getCloudServiceParametersV2 = new GetCloudServiceParametersV2();
        boolean z11 = false;
        if (TextUtils.isEmpty(this.mCloudId)) {
            DataUtils.getSharedInstance(this.mContext).putPreferences(HMCP_CID_BATTLE_TYPE, 0);
            preferences = 0;
        } else {
            preferences = DataUtils.getSharedInstance(this.mContext).getPreferences(HMCP_CID_BATTLE_TYPE, 0);
        }
        String str2 = TAG;
        LogUtils.d(str2, "tv_battle->current player: " + this.mBattleMode.player + ", cache player: " + preferences);
        boolean z12 = this.mIsAhead;
        getCloudServiceParametersV2.ahead = z12;
        if (!z12) {
            if (TextUtils.isEmpty(CountlyUtil.mLastCloudID)) {
                getCloudServiceParametersV2.cloudId = z10 ? this.mCloudId : "";
                if (this.mBattleMode.player == 1 && preferences == 2) {
                    getCloudServiceParametersV2.cloudId = "";
                    LogUtils.d(str2, "isRequestWithCid --- false, cid: ");
                } else {
                    LogUtils.d(str2, "isRequestWithCid --- " + z10 + ", cid: " + getCloudServiceParametersV2.cloudId);
                }
            } else {
                getCloudServiceParametersV2.cloudId = CountlyUtil.mLastCloudID;
                CountlyUtil.mLastCloudID = "";
            }
        }
        this.mIsAhead = false;
        getCloudServiceParametersV2.extraId = this.mExtraId;
        getCloudServiceParametersV2.appName = this.mAppName;
        getCloudServiceParametersV2.archiveFromBid = this.mArchiveFromBid;
        getCloudServiceParametersV2.archiveFromUserId = this.mArchiveFromUserId;
        getCloudServiceParametersV2.appChannel = this.mAppChannel;
        UserInfo2 userInfo2 = this.mUserInfo2;
        getCloudServiceParametersV2.userInfo = userInfo2;
        getCloudServiceParametersV2.configInfo = this.mConfigInfo;
        getCloudServiceParametersV2.cToken = this.mCToken;
        getCloudServiceParametersV2.envType = Constants.ENV_TYPE;
        getCloudServiceParametersV2.playingTime = this.mPlayTime;
        getCloudServiceParametersV2.priority = this.mPriority;
        getCloudServiceParametersV2.resolution = this.mResolutionID;
        if (userInfo2 != null) {
            LogUtils.d(str2, HMMessage.ACTION_USER_INFO + this.mUserInfo2.toString());
        }
        LogUtils.d(str2, "timeframe--getCloudServiceRequestV3--request-->" + this.mResolutionID + "  " + this.mBitRate);
        getCloudServiceParametersV2.payStr = this.mPayStr;
        getCloudServiceParametersV2.bitRate = this.mBitRate;
        getCloudServiceParametersV2.clientType = Constants.ANDROID_TYPE;
        getCloudServiceParametersV2.orientation = this.mOrientation == ScreenOrientation.LANDSCAPE ? 0 : 1;
        getCloudServiceParametersV2.envType = Constants.ENV_TYPE;
        getCloudServiceParametersV2.isArchive = this.mArchive;
        getCloudServiceParametersV2.protoData = this.mProtoData;
        getCloudServiceParametersV2.noInputTimeout = this.mNoInputLimitTime;
        getCloudServiceParametersV2.clientISP = clientISP;
        getCloudServiceParametersV2.clientProvince = clientProvince;
        getCloudServiceParametersV2.clientCity = clientCity;
        getCloudServiceParametersV2.syncRefresh = true;
        getCloudServiceParametersV2.routingIp = str;
        getCloudServiceParametersV2.viewResolution = getViewResolutionStr(this.mViewResolutionWidth, this.mViewResolutionHeight);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.streamType);
        getCloudServiceParametersV2.streamingTypes = arrayList;
        getCloudServiceParametersV2.support2k = true;
        getCloudServiceParametersV2.anomalousLeft = this.mAnomalousLeft;
        getCloudServiceParametersV2.anomalousRight = this.mAnomalousRight;
        Integer num = this.mKeepAliveTimeSeconds;
        if (num != null) {
            getCloudServiceParametersV2.keepAliveTimeSeconds = num;
        }
        Integer num2 = this.mDevicePixelRation;
        if (num2 != null) {
            getCloudServiceParametersV2.devicePixelRatio = num2;
        }
        if (Constants.ANDROID_TYPE == 2) {
            getCloudServiceParametersV2.imeType = Constants.CONFIG_IME_TYPE;
        }
        getCloudServiceParametersV2.clientImeType = Constants.IME_TYPE_SOURCE;
        IntentExtraData intentExtraData = this.mExtraData;
        getCloudServiceParametersV2.extraData = intentExtraData;
        if (intentExtraData == null || TextUtils.isEmpty(intentExtraData.getAppLink())) {
            getCloudServiceParametersV2.componentType = this.mComponentType;
            getCloudServiceParametersV2.action = this.mAction;
            getCloudServiceParametersV2.componentName = this.mComponentName;
        }
        LogUtils.i(str2, "post ExtraData = " + com.alibaba.fastjson.a.toJSONString(this.mExtraData));
        int i11 = Constants.DEMO_TEST_INTERFACE_ID;
        if (i11 > 0) {
            getCloudServiceParametersV2.demoTest = true;
            getCloudServiceParametersV2.demoTestInterfaceId = Integer.valueOf(i11);
            int i12 = Constants.DEMO_TEST_INSTANCE_ID;
            if (i12 > 0) {
                getCloudServiceParametersV2.demoTestInstanceId = Integer.valueOf(i12);
            }
        }
        if (!TextUtils.isEmpty(Constants.DEMO_TEST_C_ID)) {
            getCloudServiceParametersV2.cloudId = Constants.DEMO_TEST_C_ID;
        }
        getCloudServiceParametersV2.freeFlowTag = Constants.ENABLE_FREE_FLOW_TAG;
        if (z10 && !TextUtils.isEmpty(getCloudServiceParametersV2.cloudId)) {
            z11 = true;
        }
        getCloudServiceParametersV2.sdkAbility = getSdkAbility(z11);
        getCloudServiceParametersV2.h264SeiDataReportEnable = this.mSeiEnable;
        getCloudServiceParametersV2.enlargeBitRate = this.enableHighBitrate;
        try {
            getCloudServiceParametersV2.sdkUserDeviceInfo = com.alibaba.fastjson.a.parseObject(this.mUserDeviceInfo);
        } catch (Exception unused) {
        }
        if (getCloudServiceParametersV2.sdkUserDeviceInfo == null) {
            getCloudServiceParametersV2.sdkUserDeviceInfo = new JSONObject();
        }
        SerializableMap serializableMap = this.mTransmissionDataToSaas;
        if (serializableMap != null) {
            getCloudServiceParametersV2.richData = serializableMap.getMap();
        }
        getCloudServiceParametersV2.disableAutoStream = Boolean.valueOf(this.mDisableAutoStream);
        getCloudServiceParametersV2.gameId = this.mGid;
        getCloudServiceParametersV2.streamingMode = this.mStreamingMode;
        getCloudServiceParametersV2.timestamp = this.cTokenTimeStamp;
        getCloudServiceParametersV2.keepLoginStatus = this.keepLoginStatus;
        getCloudServiceParametersV2.openMultiArchive = this.mOpenMultiArchive;
        getCloudServiceParametersV2.saveArchiveMultiArchive = this.mSaveArchiveMultiArchive;
        getCloudServiceParametersV2.saveArchiveBidMultiArchive = this.mSaveArchiveBidMultiArchive;
        getCloudServiceParametersV2.saveArchiveUidMultiArchive = this.mSaveArchiveUidMultiArchive;
        if (this.mViewFrameRate > 0) {
            getCloudServiceParametersV2.viewFrameRate = this.mViewFrameRate + "";
        }
        BattleMode battleMode = this.mBattleMode;
        getCloudServiceParametersV2.battleOnlineType = battleMode.player;
        Battle battle = battleMode.battle;
        if (battle == null || (i10 = battle.gamePad) == 0) {
            getCloudServiceParametersV2.gamePad = null;
        } else {
            getCloudServiceParametersV2.gamePad = Integer.valueOf(i10);
        }
        getCloudServiceParametersV2.finishByServer = this.mFinishByServer;
        return getCloudServiceParametersV2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IRetryPolicy getCuRetryPolicy(Class cls) {
        return getHttpManager(this.mContext).isNeedRetry(cls) ? new HmRetryPolicy(Constants.CUSTOM_RETRY_CONFIG, true) : new HmRetryPolicy(Constants.RETRY_CONFIG, false);
    }

    private DeviceIdParameters getDeviceIdParameters() {
        DeviceIdParameters deviceIdParameters = new DeviceIdParameters();
        deviceIdParameters.type = Constants.ANDROID_TYPE;
        deviceIdParameters.envType = Constants.ENV_TYPE;
        return deviceIdParameters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getJoinBattleInternetProtocol(boolean z10, final JoinBattle joinBattle, final OnJoinBattleListener onJoinBattleListener) {
        this.mIsAllowCompatibleIPV6 = z10;
        if (z10) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.52
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getJoinBattle(joinBattle, "", onJoinBattleListener);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getJoinBattle(joinBattle, str, onJoinBattleListener);
                }
            });
        } else {
            getJoinBattle(joinBattle, "", onJoinBattleListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public org.json.JSONObject getJsonObject(String str, String str2, String str3) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            jSONObject.put("errorCode", str);
            jSONObject.put("errorMsg", str2);
            jSONObject.put("stateChangeReason", str3);
        } catch (JSONException e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, e10.toString());
        }
        return jSONObject;
    }

    private NetTestData getNetTestData(String str, long j10) {
        synchronized (this.netTestList) {
            ArrayList<NetTestData> arrayList = this.netTestList;
            if (arrayList != null && arrayList.size() > 0) {
                for (int i10 = 0; i10 < this.netTestList.size(); i10++) {
                    NetTestData netTestData = this.netTestList.get(i10);
                    if (TextUtils.equals(str, netTestData.action) && j10 == netTestData.startTime) {
                        if (!TextUtils.isEmpty(netTestData.result)) {
                            return null;
                        }
                        netTestData.index = i10;
                        return netTestData;
                    }
                    if (TextUtils.equals(str, netTestData.action) && !"fail".equals(netTestData.result)) {
                        netTestData.index = i10;
                        return netTestData;
                    }
                }
            }
            return null;
        }
    }

    private PostJson getPostJson(int i10, IParameter iParameter, boolean z10, long j10, String str) {
        if (!z10 && "0".equals(this.mDeviceId)) {
            notifyRetryPromptListener(Constants.ERRORCODE_DID_005, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return null;
        }
        PostJson postJson = getPostJson(i10, iParameter, j10, str);
        if (postJson != null) {
            return postJson;
        }
        notifyRetryPromptListener(Constants.ERRORCODE_ERROR_000005, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00ca A[Catch: all -> 0x01ce, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003e, B:7:0x0054, B:9:0x0061, B:44:0x00c3, B:45:0x00c6, B:55:0x012c, B:59:0x0136, B:61:0x015f, B:63:0x0163, B:65:0x017f, B:70:0x019c, B:71:0x01b6, B:64:0x017b, B:47:0x00ca, B:50:0x00de, B:51:0x00e7, B:54:0x010d), top: B:77:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00dc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x010d A[Catch: all -> 0x01ce, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003e, B:7:0x0054, B:9:0x0061, B:44:0x00c3, B:45:0x00c6, B:55:0x012c, B:59:0x0136, B:61:0x015f, B:63:0x0163, B:65:0x017f, B:70:0x019c, B:71:0x01b6, B:64:0x017b, B:47:0x00ca, B:50:0x00de, B:51:0x00e7, B:54:0x010d), top: B:77:0x0001 }] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private synchronized com.haima.hmcp.beans.RawPostJson getRawPostJson(int r8, com.haima.hmcp.beans.IParameter r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.haima.hmcp.business.HmcpRequestManager.getRawPostJson(int, com.haima.hmcp.beans.IParameter, java.lang.String):com.haima.hmcp.beans.RawPostJson");
    }

    private RequestConfigure getRequestConfigureData() {
        RequestConfigure requestConfigure = new RequestConfigure();
        requestConfigure.accessKeyId = this.mAccessKeyId;
        requestConfigure.packageName = this.packageName;
        requestConfigure.appChannel = this.mAppChannel;
        requestConfigure.envType = Constants.ENV_TYPE;
        requestConfigure.isReduce = true;
        requestConfigure.sdkAbility = getSdkAbility(false);
        requestConfigure.gameId = this.mGid;
        if (!TextUtils.isEmpty(this.packageName)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.streamType);
            requestConfigure.streamingTypes = arrayList;
        }
        if (this.mViewFrameRate > 0) {
            requestConfigure.viewFrameRate = this.mViewFrameRate + "";
        }
        return requestConfigure;
    }

    private String getSaasLanguage() {
        if (!TextUtils.isEmpty(this.languageFromApp)) {
            return this.languageFromApp;
        }
        String systemLocalStr = HmcpManager.getInstance().getSystemLocalStr(1);
        return !TextUtils.isEmpty(systemLocalStr) ? systemLocalStr : Language.getCurrentLanguage().getConfig();
    }

    private String getSaasLanguageReport() {
        String systemLocalStr = HmcpManager.getInstance().getSystemLocalStr(1);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("app language: ");
        stringBuffer.append(TextUtils.isEmpty(this.languageFromApp) ? "null" : this.languageFromApp);
        stringBuffer.append(", ");
        stringBuffer.append("android os language: ");
        if (TextUtils.isEmpty(systemLocalStr)) {
            systemLocalStr = "null";
        }
        stringBuffer.append(systemLocalStr);
        stringBuffer.append(", ");
        stringBuffer.append("sdk language: ");
        stringBuffer.append(Language.getCurrentLanguage().getConfig());
        return stringBuffer.toString();
    }

    private long[] getSdkAbility(boolean z10) {
        long j10;
        long j11 = z10 ? 1L : 0L;
        if (!Utils.isTV()) {
            if (!this.isCustomPlayer) {
                j11 = j11 | 4 | 16 | 32;
                j10 = 64;
            }
            return new long[]{j11 | 128 | 512};
        }
        j10 = 8;
        j11 |= j10;
        return new long[]{j11 | 128 | 512};
    }

    private String getViewResolutionStr(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return "";
        }
        if (i10 > i11) {
            return i10 + "x" + i11;
        }
        return i11 + "x" + i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:191:0x0818  */
    /* JADX WARN: Code duplicated, block: B:281:0x0b28  */
    public void handleConfigureMetaInfo(ConfigureResult configureResult, boolean z10, int i10) {
        int i11;
        int i12;
        int i13;
        long jLongValue;
        boolean z11;
        int iIntValue;
        int i14;
        boolean z12;
        boolean z13;
        HmcpPlayerListener hmcpPlayerListener;
        String str = TAG;
        LogUtils.d(str, "handleConfigureMetaInfo--start");
        if (configureResult == null) {
            LogUtils.d(str, "handleConfigureMetaInfo--result is null.");
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONFIG_ARG_FAIL, JsonUtil.toJsonString(new ReportGetConfigInfoFailed(Constants.ERRORCODE_CONFIG_003, "handleConfigureMetaInfo--result is null.", 200, "", getCuRetryPolicy(ConfigureResult.class).getCurrentTimeout(), this.mAppChannel, this.packageName)));
            return;
        }
        List<CommonMeta> list = configureResult.setDataInfo;
        List<CommonMeta> list2 = configureResult.interactiveTalkInfo;
        List<SwitchInfo> list3 = configureResult.switchInfo;
        HashMap map = new HashMap();
        List arrayList = configureResult.webrtcResolutionInfo;
        if (arrayList == null) {
            if (Constants.STREAM_TYPE_RTC.equals(this.streamType)) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_RESOLUTION_LIST_NUlL);
            }
            arrayList = new ArrayList();
        }
        List list4 = arrayList;
        map.put(Constants.STREAM_TYPE_RTC, list4);
        List arrayList2 = configureResult.resolutionInfo;
        if (arrayList2 == null) {
            if (Constants.STREAM_TYPE_RTMP.equals(this.streamType)) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_RESOLUTION_LIST_NUlL);
            }
            arrayList2 = new ArrayList();
        }
        List list5 = arrayList2;
        map.put(Constants.STREAM_TYPE_RTMP, list5);
        List<TipsInfo> list6 = configureResult.tipsInfo;
        List<IntroVideoInfo> list7 = configureResult.introAnimationInfo;
        List<IntroImageInfo> list8 = configureResult.introImageInfo;
        if (list != null && list2 != null) {
            list.addAll(list2);
            this.mMetaMap = new HashMap<>();
            for (CommonMeta commonMeta : list) {
                this.mMetaMap.put(commonMeta.f33813k, commonMeta.f33814v);
                if (TextUtils.equals(commonMeta.f33813k, Constants.LOADING_BG_COLOR_VALUE)) {
                    String str2 = commonMeta.f33814v;
                    LogUtils.i(TAG, "loading_bg_color_value = " + str2);
                    try {
                        Constants.LOADING_BG = Color.parseColor("#" + str2);
                    } catch (Exception unused) {
                        Constants.LOADING_BG = -16777216;
                    }
                }
            }
            for (SwitchInfo switchInfo : list3) {
                this.mMetaMap.put(switchInfo.name, switchInfo.enable);
            }
        }
        HashMap<String, String> map2 = this.mMetaMap;
        if (map2 != null && map2.containsKey(Constants.KEY_NEW_RESOURCE_MIN_OS_VERSION_CODE)) {
            try {
                ResourceManager.getInstance().updateResourceByOSVersionCode(Integer.parseInt(this.mMetaMap.get(Constants.KEY_NEW_RESOURCE_MIN_OS_VERSION_CODE)));
            } catch (NumberFormatException unused2) {
                LogUtils.e(TAG, "KEY_RESOURCE_MANAGER_LEVEL config parse occurs exception!");
            }
        }
        processSaasLanguageConfig(configureResult.langList, i10);
        if (this.mMetaMap.containsKey(Constants.RETRY_ERRORCODE_INFO)) {
            String str3 = this.mMetaMap.get(Constants.RETRY_ERRORCODE_INFO);
            if (!TextUtils.isEmpty(str3)) {
                try {
                    LogUtils.d(TAG, "retryErrorcodeInfo: " + str3);
                    RetryErrorcodeConfig.requestRetryConfigList = new ArrayList(com.alibaba.fastjson.a.parseArray(str3, RetryErrorcodeConfig.RetryErrorcodeBean.class));
                } catch (Exception e10) {
                    LogUtils.e(TAG, "retryErrorcodeInfoerror:" + e10.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.CONFIG_SENSOR_COUNTLY_SWITCH)) {
            try {
                i11 = Integer.parseInt(this.mMetaMap.get(Constants.CONFIG_SENSOR_COUNTLY_SWITCH));
            } catch (NumberFormatException unused3) {
                LogUtils.e(TAG, "sensor_countly_switch config parse occurs exception!");
                i11 = 0;
            }
        } else {
            i11 = 0;
        }
        HmSensorConfig.getInstance().setSensorCountlySwitch(i11);
        if (this.mMetaMap.containsKey(Constants.CONFIG_SENSOR_COUNTLY_DATA_INTERVAL_MS)) {
            try {
                i12 = Integer.parseInt(this.mMetaMap.get(Constants.CONFIG_SENSOR_COUNTLY_DATA_INTERVAL_MS));
            } catch (NumberFormatException unused4) {
                LogUtils.e(TAG, "sensor_data_countly_interval_ms config parse occurs exception!");
                i12 = 10000;
            }
        } else {
            i12 = 10000;
        }
        HmSensorConfig.getInstance().setCountlyDataIntervalMs(i12);
        if (this.mMetaMap.containsKey(Constants.CONFIG_SENSOR_SAMPLING_MIN_INTERVAL_US)) {
            try {
                i13 = Integer.parseInt(this.mMetaMap.get(Constants.CONFIG_SENSOR_SAMPLING_MIN_INTERVAL_US));
            } catch (NumberFormatException unused5) {
                LogUtils.e(TAG, "sensor_sampling_min_interval_us config parse occurs exception!");
                i13 = 20000;
            }
        } else {
            i13 = 20000;
        }
        HmSensorConfig.getInstance().setSensorSamplingMinUs(i13);
        if (this.mMetaMap.containsKey(Constants.CONFIG_RETRY_CONFIG)) {
            Constants.RETRY_CONFIG = this.mMetaMap.get(Constants.CONFIG_RETRY_CONFIG);
        } else {
            Constants.RETRY_CONFIG = "";
        }
        if (this.mMetaMap.containsKey(Constants.CONFIG_CUSTOM_RETRY_CONFIG)) {
            Constants.CUSTOM_RETRY_CONFIG = this.mMetaMap.get(Constants.CONFIG_CUSTOM_RETRY_CONFIG);
        } else {
            Constants.CUSTOM_RETRY_CONFIG = "";
        }
        if (this.mMetaMap.containsKey(Constants.CONFIG_CUSTOM_ERROR_RETRY_CONFIG)) {
            Constants.CUSTOM_ERROR_RETRY_CONFIG = this.mMetaMap.get(Constants.CONFIG_CUSTOM_ERROR_RETRY_CONFIG);
        } else {
            Constants.CUSTOM_ERROR_RETRY_CONFIG = "";
        }
        LogUtils.d(TAG, "==网络重试配置 RETRY_CONFIG=" + Constants.RETRY_CONFIG + "; CUSTOM_RETRY_CONFIG=" + Constants.CUSTOM_RETRY_CONFIG + "; CUSTOM_ERROR_RETRY_CONFIG=" + Constants.CUSTOM_ERROR_RETRY_CONFIG);
        if (this.mMetaMap.containsKey(Constants.KEY_WEBRTC_FPS_TIMEOUT)) {
            try {
                Constants.WEBRTC_FPS_TIMEOUT = Integer.parseInt(this.mMetaMap.get(Constants.KEY_WEBRTC_FPS_TIMEOUT));
                CountlyUtil.recordErrorEventRaw("WEBRTC_FPS_TIMEOUT " + Constants.WEBRTC_FPS_TIMEOUT);
            } catch (NumberFormatException e11) {
                LogUtils.e(TAG, "first_frame_timeout_ms error:" + e11.getLocalizedMessage());
            }
        } else {
            Constants.WEBRTC_FPS_TIMEOUT = Constants.DEFAULT_WEBRTC_FPS_TIMEOUT_MS;
        }
        String str4 = this.mMetaMap.get(Constants.FIRST_FRAME_TIMEOUT_MS);
        LogUtils.d(TAG, "config: first_frame_timeout_ms = " + str4);
        if (str4 != null) {
            try {
                Constants.FIRST_FRAME_TIMEOUT = Integer.parseInt(this.mMetaMap.get(Constants.FIRST_FRAME_TIMEOUT_MS));
            } catch (NumberFormatException e12) {
                LogUtils.e(TAG, "first_frame_timeout_ms error:" + e12.getLocalizedMessage());
                Constants.FIRST_FRAME_TIMEOUT = Constants.FIRST_FRAME_TIMEOUT_DEFAULT;
            }
        } else {
            Constants.FIRST_FRAME_TIMEOUT = Constants.FIRST_FRAME_TIMEOUT_DEFAULT;
        }
        LogUtils.d(TAG, "config: Constants.FIRST_FRAME_TIMEOUT = " + Constants.FIRST_FRAME_TIMEOUT);
        Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND = 0L;
        if (this.mMetaMap.containsKey(Constants.TIMEOUT_SECOND_OF_EXIT_QUEUE_IN_BG)) {
            try {
                Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND = Integer.parseInt(this.mMetaMap.get(Constants.TIMEOUT_SECOND_OF_EXIT_QUEUE_IN_BG));
            } catch (NumberFormatException e13) {
                LogUtils.e(TAG, "timeout_second_of_exit_queue_in_bg error:" + e13.getLocalizedMessage());
            }
        }
        LogUtils.d(TAG, "EXIT_QUEUE_IN_BG_TIMEOUT_SECOND:" + Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND);
        if (this.mMetaMap.containsKey(Constants.REFRESH_STOKEN_TIMES)) {
            try {
                Constants.REFRESH_STOKEN_MAX_TIMES = Integer.parseInt(this.mMetaMap.get(Constants.REFRESH_STOKEN_TIMES));
            } catch (NumberFormatException e14) {
                LogUtils.e(TAG, "refresh_stoken_times error:" + e14.getLocalizedMessage());
            }
        }
        if (this.mMetaMap.containsKey(Constants.SDK_STOKEN_VALID_TIME)) {
            try {
                Constants.REFRESH_STOKEN_VALID_TIME = Integer.parseInt(this.mMetaMap.get(Constants.SDK_STOKEN_VALID_TIME));
            } catch (NumberFormatException e15) {
                LogUtils.e(TAG, "sdk_stoken_valid_time error:" + e15.getLocalizedMessage());
            }
        }
        if (this.mMetaMap.containsKey(Constants.IME_TYPE)) {
            try {
                Constants.CONFIG_IME_TYPE = Integer.parseInt(this.mMetaMap.get(Constants.IME_TYPE));
            } catch (NumberFormatException e16) {
                LogUtils.e(TAG, "ime_typeerror:" + e16.getLocalizedMessage());
                Constants.CONFIG_IME_TYPE = 0;
            }
        } else {
            Constants.CONFIG_IME_TYPE = 0;
        }
        if (this.mMetaMap.containsKey(Constants.FORCE_H264)) {
            try {
                Constants.CONFIG_FORCE_H264 = Boolean.parseBoolean(this.mMetaMap.get(Constants.FORCE_H264));
            } catch (NumberFormatException e17) {
                LogUtils.e(TAG, "ime_typeerror:" + e17.getLocalizedMessage());
                Constants.CONFIG_FORCE_H264 = true;
            }
        } else {
            Constants.CONFIG_FORCE_H264 = true;
        }
        if (this.mMetaMap.containsKey(Constants.WEBRTC_FRAME_WAIT_TIME)) {
            String str5 = this.mMetaMap.get(Constants.WEBRTC_FRAME_WAIT_TIME);
            if (!TextUtils.isEmpty(str5)) {
                try {
                    Constants.wertcConnectTimeout = Double.valueOf(str5).intValue();
                } catch (NumberFormatException e18) {
                    LogUtils.e(TAG, "webrtc_frame_wait_time error:" + e18.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.WEBRTC_SIGNAL_TIME_OUT)) {
            String str6 = this.mMetaMap.get(Constants.WEBRTC_SIGNAL_TIME_OUT);
            if (!TextUtils.isEmpty(str6)) {
                try {
                    Constants.webrtcSignalTimeout = Double.valueOf(str6).intValue();
                } catch (NumberFormatException e19) {
                    LogUtils.e(TAG, "webrtc_socket_timeout error:" + e19.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.WEBRTC_SIGNAL_RECONNECTION_DELAY_MAX)) {
            String str7 = this.mMetaMap.get(Constants.WEBRTC_SIGNAL_RECONNECTION_DELAY_MAX);
            if (!TextUtils.isEmpty(str7)) {
                try {
                    Constants.webrtcSignalReconnectionDelayMax = Double.valueOf(str7).intValue();
                } catch (NumberFormatException e20) {
                    LogUtils.e(TAG, "webrtc_reconnection_delayMax error:" + e20.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.WEBRTC_SIGNAL_RECONNECTION_ATTEMPTS)) {
            String str8 = this.mMetaMap.get(Constants.WEBRTC_SIGNAL_RECONNECTION_ATTEMPTS);
            if (!TextUtils.isEmpty(str8)) {
                try {
                    Constants.webrtcSignalReconnectionAttempts = Double.valueOf(str8).intValue();
                } catch (NumberFormatException e21) {
                    LogUtils.e(TAG, "webrtc_reconnection_attempts error:" + e21.getLocalizedMessage());
                }
            }
        }
        int[] iArr = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.USE_SURFACE_TEXTURE_FLAG_KEY, 0, iArr);
        Constants.USE_SURFACE_TEXTURE_FLAG = iArr[0];
        Constants.rtmpUseSoftwareDecoder = false;
        if (Utils.isTV()) {
            if (this.mMetaMap.containsKey(Constants.RTMP_USE_SOFTWARE_DECODER_VIA_MODEL)) {
                Constants.rtmpUseSoftwareDecoder = Utils.matchModel(true, this.mMetaMap.get(Constants.RTMP_USE_SOFTWARE_DECODER_VIA_MODEL), Constants.rtmpUseSoftwareDecoder, false);
                LogUtils.i(TAG, "RTMP Filter Model for useSoftwareDecoder model: " + Constants.rtmpUseSoftwareDecoder);
            }
            if (this.mMetaMap.containsKey(Constants.RTMP_USE_SOFTWARE_DECODER_VIA_MODEL_EXACT)) {
                Constants.rtmpUseSoftwareDecoder = Utils.matchModel(true, this.mMetaMap.get(Constants.RTMP_USE_SOFTWARE_DECODER_VIA_MODEL_EXACT), Constants.rtmpUseSoftwareDecoder, true);
                LogUtils.i(TAG, "RTMP Filter Model for useSoftwareDecoder exact model: " + Constants.rtmpUseSoftwareDecoder);
            }
        }
        KeyMapUtil.parseKeyboardConsumedConfig(this.mMetaMap);
        int[] iArr2 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.OPEN_MULTI_CONNECT_KEY, 0, iArr2);
        Constants.OPEN_MULTI_CONNECT = iArr2[0];
        Constants.CONFIG_RTC_CONNECT_FAILURE_TO_RTMP_SWITCH = parseBooleanFlag(this.mMetaMap, Constants.RTC_CONNECT_FAILURE_TO_RTMP_SWITCH);
        if (this.mMetaMap.containsKey(Constants.RTC_CONNECT_RETRY_COUNT)) {
            try {
                Constants.CONFIG_RTC_RETRY_COUNT = Integer.parseInt(this.mMetaMap.get(Constants.RTC_CONNECT_RETRY_COUNT));
            } catch (NumberFormatException e22) {
                LogUtils.e(TAG, "rtc_connect_retry_count error:" + e22.getLocalizedMessage());
            }
        }
        if (this.mMetaMap.containsKey(Constants.WEBSOCKET_CONNECT_TIMEOUT_SWITCH)) {
            Constants.CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH = "true".equalsIgnoreCase(this.mMetaMap.get(Constants.WEBSOCKET_CONNECT_TIMEOUT_SWITCH));
        } else {
            Constants.CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH = false;
        }
        Constants.CONFIG_COUNTLY_DEBUG_SWITCH = parseBooleanFlag(this.mMetaMap, Constants.COUNTLY_DEBUG_SWITCH);
        Constants.CONFIG_COMPUTE_DELAY_TIME_SWITCH = parseBooleanFlag(this.mMetaMap, Constants.COMPUTE_DELAY_TIME_SWITCH);
        int[] iArr3 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.COMPUTE_DELAY_TIME_INTERVAL, Constants.COMPUTE_DELAY_TIME_INTERVAL_DEFAULT, iArr3);
        Constants.CONFIG_COMPUTE_DELAY_TIME_INTERVAL = iArr3[0];
        int[] iArr4 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.INPUT_PROTOCOL_VERSION, 1, iArr4);
        Constants.CONFIG_INPUT_PROTOCOL_VERSION = iArr4[0];
        int[] iArr5 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.RECORD_MODE_X86, Constants.RECORD_MODE_AUTO, iArr5);
        Constants.CONFIG_RECORD_MODE = iArr5[0];
        int[] iArr6 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.MAX_CLIPBOARD_DATA_SIZE, 1024, iArr6);
        Constants.CONFIG_CLIPBOARD_DATA_SIZE = iArr6[0];
        int[] iArr7 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.MAX_UPLOAD_FILE_SIZE_X86, 5242880, iArr7);
        Constants.CONFIG_UPLOAD_FILE_SIZE_X86 = iArr7[0];
        float[] fArr = new float[1];
        parseFloatFlag(this.mMetaMap, Constants.KEY_GYROSCOPE_SENSOR_DEGREE_THRESHOLD, Constants.CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD, fArr);
        Constants.CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD = fArr[0];
        int[] iArr8 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.KEY_SENSOR_SEND_INTERVAL_MS, Constants.CONFIG_SENSOR_SEND_INTERVAL_MS, iArr8);
        Constants.CONFIG_SENSOR_SEND_INTERVAL_MS = iArr8[0];
        int[] iArr9 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.KEY_SENSOR_SAMPLING_INTERVAL_US, Constants.CONFIG_SENSOR_SAMPLING_INTERVAL_US, iArr9);
        Constants.CONFIG_SENSOR_SAMPLING_INTERVAL_US = iArr9[0];
        int[] iArr10 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.KEY_GYROSCOPE_SENSOR_X_SENSITIVITY, Constants.CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY, iArr10);
        Constants.CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY = iArr10[0];
        int[] iArr11 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.KEY_GYROSCOPE_SENSOR_Y_SENSITIVITY, Constants.CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY, iArr11);
        Constants.CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY = iArr11[0];
        LogUtils.i(TAG, "GyroscopeConfig: sensorDegreeThreshold=" + Constants.CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD + " sensorSendIntervalMs=" + Constants.CONFIG_SENSOR_SEND_INTERVAL_MS + " sensorSamplingIntervalUs=" + Constants.CONFIG_SENSOR_SAMPLING_INTERVAL_US + " gyroToMouseXSensitivity=" + Constants.CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY + " gyroToMouseYSensitivity=" + Constants.CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY);
        Constants.CONFIG_IS_CLIPBOARD_AUTO_SEND = parseBooleanFlag(this.mMetaMap, Constants.IS_CLIPBOARD_AUTO_SEND);
        Constants.CONFIG_GAMEPAD_PS_VENDOR_IDS = parseStringFlag(this.mMetaMap, Constants.PS_GAMEPAD_VENDOR_IDS, Constants.GAMEPAD_PS_VENDOR_ID_DEFAULT);
        Constants.CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP = parseBooleanFlag(this.mMetaMap, Constants.IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP);
        Constants.CONFIG_VIRTUAL_KEYBOARD_OVERLAP_SWITCH = parseBooleanFlag(this.mMetaMap, Constants.VIRTUAL_KEYBOARD_OVERLAP_SWITCH);
        int[] iArr12 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.VIRTUAL_KEYBOARD_SCALE_MIN_SIZE, 20, iArr12);
        Constants.CONFIG_VIRTUAL_KEYBOARD_SCALE_MIN_SIZE = iArr12[0];
        Constants.CONFIG_IS_UPLOAD_PATH_CONTAINS_NAME = parseBooleanFlag(this.mMetaMap, Constants.IS_UPLOAD_PATH_CONTAINS_NAME);
        Constants.CONFIG_IS_LOCAL_IME_X86 = parseBooleanFlag(this.mMetaMap, Constants.IS_LOCAL_IME_X86);
        Constants.CONFIG_IS_ADAPT_FOLD_SCREEN = parseBooleanFlag(this.mMetaMap, Constants.IS_ADAPT_FOLD_SCREEN);
        int[] iArr13 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE, 0, iArr13);
        Constants.CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE = iArr13[0] == 1;
        int[] iArr14 = new int[1];
        parseIntegerFlag(this.mMetaMap, Constants.IS_KEYBOARD_EDIT_SHOW_ANIMATION, 0, iArr14);
        Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION = iArr14[0] == 1;
        Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID = parseStringFlag(this.mMetaMap, Constants.FIXED_GAMEPAD_VENDOR_ID, "");
        Constants.CONFIG_IS_SINGLE_GAMEPAD_MODE = parseBooleanFlag(this.mMetaMap, Constants.IS_SINGLE_GAMEPAD_MODE);
        HmRtcGlobalConfig.parseRtcConfig(this.mMetaMap);
        long j10 = DnsManager.DEFAULT_DNS_GET_TIME_OUT;
        long jLongValue2 = DnsManager.DEFAULT_DNS_CHECK_INTERVAL;
        long jLongValue3 = DnsManager.DEFAULT_DNS_RESET_IPV6_FLAG_TIME;
        long jLongValue4 = DnsManager.DEFAULT_DNS_GRAY_ENABLE_PERCENT;
        if (this.mMetaMap.containsKey(Constants.DNS_GET_TIMEOUT_CFG_NAME)) {
            String str9 = this.mMetaMap.get(Constants.DNS_GET_TIMEOUT_CFG_NAME);
            if (!TextUtils.isEmpty(str9)) {
                try {
                    jLongValue = Double.valueOf(str9).longValue();
                } catch (NumberFormatException e23) {
                    LogUtils.e(TAG, "dns_get_timeout error:" + e23.getLocalizedMessage());
                    jLongValue = j10;
                }
            }
            jLongValue = j10;
        } else {
            jLongValue = j10;
        }
        if (this.mMetaMap.containsKey(Constants.DNS_CHECK_INTERVAL_CFG_NAME)) {
            String str10 = this.mMetaMap.get(Constants.DNS_CHECK_INTERVAL_CFG_NAME);
            if (!TextUtils.isEmpty(str10)) {
                try {
                    jLongValue2 = Double.valueOf(str10).longValue();
                } catch (NumberFormatException e24) {
                    LogUtils.e(TAG, "dns_check_interval error:" + e24.getLocalizedMessage());
                }
            }
        }
        long j11 = jLongValue2;
        if (this.mMetaMap.containsKey(Constants.DNS_RESET_IPV6_FLAG_TIME_CFG_NAME)) {
            String str11 = this.mMetaMap.get(Constants.DNS_RESET_IPV6_FLAG_TIME_CFG_NAME);
            if (!TextUtils.isEmpty(str11)) {
                try {
                    jLongValue3 = Double.valueOf(str11).longValue();
                } catch (NumberFormatException e25) {
                    LogUtils.e(TAG, "dns_reset_ipv6_flag_time error:" + e25.getLocalizedMessage());
                }
            }
        }
        long j12 = jLongValue3;
        if (this.mMetaMap.containsKey(Constants.DNS_GRAY_ENABLE_PERCENT_CFG_NAME)) {
            String str12 = this.mMetaMap.get(Constants.DNS_GRAY_ENABLE_PERCENT_CFG_NAME);
            if (!TextUtils.isEmpty(str12)) {
                try {
                    jLongValue4 = Double.valueOf(str12).longValue();
                } catch (NumberFormatException e26) {
                    LogUtils.e(TAG, "dns_gray_enable_percent error:" + e26.getLocalizedMessage());
                }
            }
        }
        long j13 = jLongValue4;
        boolean z14 = this.mMetaMap.containsKey(Constants.DNS_IPV4_PRIORITY_CFG_NAME) ? Boolean.parseBoolean(this.mMetaMap.get(Constants.DNS_IPV4_PRIORITY_CFG_NAME)) : false;
        if (this.mMetaMap.containsKey(Constants.ENABLE_DNS_IP_TYPE_FROM_SAAS)) {
            try {
                z11 = Boolean.parseBoolean(this.mMetaMap.get(Constants.ENABLE_DNS_IP_TYPE_FROM_SAAS));
            } catch (Exception unused6) {
                LogUtils.e(TAG, "ENABLE_DNS_IP_TYPE_FROM_SAAS parse exception");
                z11 = false;
            }
        } else {
            z11 = false;
        }
        DnsManager.getInstance().config(jLongValue, j11, j12, j13, z14, this.mMetaMap.containsKey(Constants.DNS_OPEN_RESOLVE_IP_CFG_NAME) ? Boolean.parseBoolean(this.mMetaMap.get(Constants.DNS_OPEN_RESOLVE_IP_CFG_NAME)) : false, this.mMetaMap.containsKey(Constants.DNS_OPEN_ASYNC_PARSER_CFG_NAME) ? Boolean.parseBoolean(this.mMetaMap.get(Constants.DNS_OPEN_ASYNC_PARSER_CFG_NAME)) : true, z11);
        PingPara pingPara = new PingPara();
        if (this.mMetaMap.containsKey(Constants.PING_GRAY_ENABLE_PERCENT_NAME)) {
            String str13 = this.mMetaMap.get(Constants.PING_GRAY_ENABLE_PERCENT_NAME);
            if (!TextUtils.isEmpty(str13)) {
                try {
                    pingPara.pingGrayPercent = Double.valueOf(str13).longValue();
                    LogUtils.d(TAG, "ping_gray_enable_percent: " + str13);
                } catch (NumberFormatException e27) {
                    LogUtils.e(TAG, "dns_gray_enable_percent error:" + e27.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.PING_INTERVAL_NAME)) {
            String str14 = this.mMetaMap.get(Constants.PING_INTERVAL_NAME);
            if (!TextUtils.isEmpty(str14)) {
                try {
                    pingPara.pingInterval = Double.valueOf(str14).longValue();
                    LogUtils.d(TAG, "ping_interval: " + str14);
                } catch (NumberFormatException e28) {
                    LogUtils.e(TAG, "dns_gray_enable_percent error:" + e28.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.PING_COUNT_NAME)) {
            String str15 = this.mMetaMap.get(Constants.PING_COUNT_NAME);
            if (!TextUtils.isEmpty(str15)) {
                try {
                    pingPara.pingCount = Double.valueOf(str15).longValue();
                    LogUtils.d(TAG, "ping_count: " + str15);
                } catch (NumberFormatException e29) {
                    LogUtils.e(TAG, "dns_gray_enable_percent error:" + e29.getLocalizedMessage());
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.PING_HOST_NAME)) {
            String str16 = this.mMetaMap.get(Constants.PING_HOST_NAME);
            if (!TextUtils.isEmpty(str16)) {
                pingPara.pingHost = str16.trim();
                LogUtils.d(TAG, "ping_host: " + str16);
            }
        }
        PingManager.getInstance().setPingPara(pingPara);
        if (this.mMetaMap.containsKey(Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT_KEY)) {
            String str17 = this.mMetaMap.get(Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT_KEY);
            if (!TextUtils.isEmpty(str17)) {
                try {
                    Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT = Double.valueOf(str17).longValue();
                } catch (NumberFormatException e30) {
                    Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT = 0L;
                    LogUtils.e(TAG, Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT + " error:" + e30.getLocalizedMessage());
                }
            }
        } else {
            Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT = 0L;
        }
        if (this.mMetaMap.containsKey(Constants.CONN_CHECK_ENABLE)) {
            String str18 = this.mMetaMap.get(Constants.CONN_CHECK_ENABLE);
            if (TextUtils.isEmpty(str18)) {
                iIntValue = 0;
            } else {
                try {
                    iIntValue = Double.valueOf(str18).intValue();
                } catch (NumberFormatException e31) {
                    LogUtils.e(TAG, "conn_check_gray_enable_percent error:" + e31.getLocalizedMessage());
                    iIntValue = 0;
                }
            }
        } else {
            iIntValue = 0;
        }
        ConnectivityCheck.config(iIntValue);
        if (this.mMetaMap.containsKey(Constants.IS_COMPATIBLE_IPV6)) {
            Constants.CONFIG_IS_COMPATIBLE_IPV6 = "true".equalsIgnoreCase(this.mMetaMap.get(Constants.IS_COMPATIBLE_IPV6));
        } else {
            Constants.CONFIG_IS_COMPATIBLE_IPV6 = false;
        }
        if (this.mMetaMap.containsKey(Constants.CHECK_QR_CODE_DATA)) {
            Constants.GET_QR_CODE_DATA = !"1".equals(this.mMetaMap.get(Constants.CHECK_QR_CODE_DATA));
        } else {
            Constants.GET_QR_CODE_DATA = true;
        }
        if (this.mMetaMap.containsKey(Constants.CHECK_ERROR_SWITCH)) {
            CountlyUtil.isCheckErrorCode = "1".equals(this.mMetaMap.get(Constants.CHECK_ERROR_SWITCH));
        } else {
            CountlyUtil.isCheckErrorCode = false;
        }
        if (this.mMetaMap.containsKey(Constants.KEYMAP_STICK_RADIUS_X)) {
            float f10 = Float.parseFloat(this.mMetaMap.get(Constants.KEYMAP_STICK_RADIUS_X));
            if (f10 > 0.0f && f10 < 1.0f) {
                Constants.KEYBOARD_RX = f10;
            }
        }
        if (this.mMetaMap.containsKey(Constants.KEYMAP_STICK_RADIUS_Y)) {
            float f11 = Float.parseFloat(this.mMetaMap.get(Constants.KEYMAP_STICK_RADIUS_Y));
            if (f11 > 0.0f && f11 < 1.0f) {
                Constants.KEYBOARD_RY = f11;
            }
        }
        if (this.mMetaMap.containsKey(Constants.STREAMER_URL_TIMEOUT)) {
            try {
                Constants.VIDEO_URL_TIMER_INTVAL = Math.min(Math.max(Integer.parseInt(this.mMetaMap.get(Constants.STREAMER_URL_TIMEOUT)), 5), 300);
            } catch (Exception e32) {
                LogUtils.e(TAG, "streamer_url_timeouterror:" + e32.getLocalizedMessage());
            }
        }
        if (this.mMetaMap.containsKey(Constants.TRACK_BALL_TIME)) {
            try {
                Constants.TRACK_BALL_TASK_TIMER = Math.min(Math.max(Integer.parseInt(this.mMetaMap.get(Constants.STREAMER_URL_TIMEOUT)), 20), 500);
            } catch (Exception e33) {
                LogUtils.e(TAG, "trackball_timeerror:" + e33.getLocalizedMessage());
            }
        }
        if (this.mMetaMap.containsKey(Constants.AUTO_SCREEN_BRIGHTNESS)) {
            Constants.SCREEN_BRIGHTNESS = Float.parseFloat(this.mMetaMap.get(Constants.AUTO_SCREEN_BRIGHTNESS));
        }
        parseRenderType(this.mMetaMap);
        if (this.mMetaMap.containsKey("transfer")) {
            this.isTransfer = Boolean.parseBoolean(this.mMetaMap.get("transfer"));
            LogUtils.e(TAG, "Transfer isTransfer =  " + this.isTransfer);
        }
        ArrayList arrayList3 = new ArrayList();
        if (this.mMetaMap.containsKey(Constants.CHECK_VIDEOVIEW_TYPE)) {
            String[] strArrSplit = this.mMetaMap.get(Constants.CHECK_VIDEOVIEW_TYPE).split(",");
            if (list2 != null && !list2.isEmpty()) {
                for (String str19 : strArrSplit) {
                    arrayList3.add(str19);
                    LogUtils.i(TAG, str19);
                }
            }
        }
        Constants.MINIMUM_BITRATE = configureResult.minimumBitRate;
        LogUtils.d(TAG, "handleConfigureMetaInfo--minimumBitRate = " + configureResult.minimumBitRate);
        HmcpManager.getInstance().setRecommandInfo(configureResult.recommendInfo);
        CloudFileConfig cloudFileConfig = new CloudFileConfig();
        if (this.mMetaMap.containsKey(Constants.FILE_CACHE_SIZE)) {
            String str20 = this.mMetaMap.get(Constants.FILE_CACHE_SIZE);
            if (!TextUtils.isEmpty(str20)) {
                try {
                    cloudFileConfig.setFileCacheSize(Integer.parseInt(str20));
                } catch (NumberFormatException unused7) {
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.FILE_SEGMENT_COUNT)) {
            String str21 = this.mMetaMap.get(Constants.FILE_SEGMENT_COUNT);
            if (!TextUtils.isEmpty(str21)) {
                try {
                    cloudFileConfig.setFileSegmentCount(Integer.parseInt(str21));
                } catch (NumberFormatException unused8) {
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.FILE_SEGMENT_COEFFICIENT)) {
            String str22 = this.mMetaMap.get(Constants.FILE_SEGMENT_COEFFICIENT);
            if (!TextUtils.isEmpty(str22)) {
                try {
                    cloudFileConfig.setFileSegmentCoefficient(Integer.parseInt(str22));
                } catch (NumberFormatException unused9) {
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.STOKEN_VALID_TIME)) {
            String str23 = this.mMetaMap.get(Constants.STOKEN_VALID_TIME);
            if (!TextUtils.isEmpty(str23)) {
                try {
                    cloudFileConfig.setStokenValidTime(Integer.parseInt(str23));
                } catch (NumberFormatException unused10) {
                }
            }
        }
        if (this.mMetaMap.containsKey(Constants.CLOUD_ROM_ACK_TIMEOUT)) {
            String str24 = this.mMetaMap.get(Constants.CLOUD_ROM_ACK_TIMEOUT);
            if (!TextUtils.isEmpty(str24)) {
                try {
                    cloudFileConfig.setAckTimeout(Long.parseLong(str24));
                } catch (NumberFormatException unused11) {
                }
            }
        }
        CloudFileManager.getInstance().setConfig(cloudFileConfig);
        ConfigureManager.getInstance().parseConfig(this.mMetaMap);
        if (this.mMetaMap.containsKey(Constants.ACC_PROXY_CONNECT_ENABLE)) {
            Constants.CONFIG_ACC_CONNECT_ENABLE = Boolean.parseBoolean(this.mMetaMap.get(Constants.ACC_PROXY_CONNECT_ENABLE));
        } else {
            Constants.CONFIG_ACC_CONNECT_ENABLE = false;
        }
        if (this.mMetaMap.containsKey(Constants.INPUT_TRANS_DEVICE_ENABLE)) {
            Constants.CONFIG_INPUT_TRANS_DEVICE = this.mMetaMap.get(Constants.INPUT_TRANS_DEVICE_ENABLE);
        } else {
            Constants.CONFIG_INPUT_TRANS_DEVICE = "enable:0";
        }
        if (z10) {
            DataUtils.getSharedInstance(this.mContext).putPreferences(DataUtils.CONFIG_INFO_KEY, com.alibaba.fastjson.a.toJSONString(configureResult));
            if (list7 == null || list7.size() <= 0) {
                DataUtils.getSharedInstance(this.mContext).putPreferences(DataUtils.ADVERT_NAME, "");
            } else {
                FileDownloadUtil fileDownloadUtil = new FileDownloadUtil(this.mContext);
                fileDownloadUtil.isAllowDownloadFlag = true;
                fileDownloadUtil.advertDownloadFile(this.mContext, list7.get(0).getUrl(), list7.get(0).getVersion() + list7.get(0).getName());
                HmcpManager.getInstance().setAdvertFileDownload(fileDownloadUtil);
            }
            if (Utils.isTV()) {
                HmcpManager.getInstance().setSurfaceViewList(arrayList3);
            }
            i14 = 0;
        } else {
            i14 = 0;
            HmcpManager.getInstance().onReceiveMetaInfos(Constants.LEVEL_SDK, this.mMetaMap, list6, map, list8);
            if (this.mWebSocketManager != null && this.mMetaMap != null) {
                WebSocketConfig webSocketConfig = new WebSocketConfig();
                String str25 = this.mMetaMap.get(Constants.PING_INTERVAL_TIME);
                try {
                    webSocketConfig.setPing2Interval(TextUtils.isEmpty(str25) ? 0 : Integer.valueOf(str25).intValue());
                } catch (NumberFormatException unused12) {
                }
                String str26 = this.mMetaMap.get(Constants.PING_DELAY_TIME);
                try {
                    webSocketConfig.setInstancePingPongCost(TextUtils.isEmpty(str26) ? 0 : Integer.valueOf(str26).intValue());
                } catch (NumberFormatException unused13) {
                }
                String str27 = this.mMetaMap.get(Constants.TRACE_DELAY_TIME);
                try {
                    webSocketConfig.setTrace(TextUtils.isEmpty(str27) ? 0 : Integer.valueOf(str27).intValue());
                } catch (NumberFormatException unused14) {
                }
                String str28 = this.mMetaMap.get(Constants.WEBSOCKET_HEART_BEAT_INTERVAL);
                try {
                    webSocketConfig.setAccessPingInterval(TextUtils.isEmpty(str28) ? 0 : Integer.valueOf(str28).intValue());
                } catch (NumberFormatException unused15) {
                }
                String str29 = this.mMetaMap.get(Constants.WEBSOCKET_HEART_BEAT_TIME_OUT_COUNT_MAX);
                try {
                    webSocketConfig.setAccessPingTimeoutCountMax(TextUtils.isEmpty(str29) ? 0 : Integer.valueOf(str29).intValue());
                } catch (NumberFormatException unused16) {
                }
                String str30 = this.mMetaMap.get(Constants.INPUT_PING_INTERVAL);
                try {
                    webSocketConfig.setInputPingInterval(TextUtils.isEmpty(str30) ? 0 : Integer.valueOf(str30).intValue());
                } catch (NumberFormatException e34) {
                    e34.printStackTrace();
                }
                String str31 = this.mMetaMap.get(Constants.INPUT_PING_TIMEOUT_COUNT_MAX);
                try {
                    webSocketConfig.setInputPingTimeoutCountMax(TextUtils.isEmpty(str31) ? 0 : Integer.valueOf(str31).intValue());
                } catch (NumberFormatException e35) {
                    e35.printStackTrace();
                }
                String str32 = this.mMetaMap.get(Constants.WEBSOCKET_PAYLOAD_MAX_SIZE);
                try {
                    int iIntValue2 = TextUtils.isEmpty(str32) ? 0 : Integer.valueOf(str32).intValue();
                    webSocketConfig.setFramePayloadMaxSize(iIntValue2);
                    webSocketConfig.setMessagePayloadMaxSize(iIntValue2);
                } catch (NumberFormatException e36) {
                    e36.printStackTrace();
                    LogUtils.e(TAG, e36.toString());
                }
                String str33 = this.mMetaMap.get(Constants.SAAS_LINK_TIME_OUT);
                try {
                    webSocketConfig.setSaasLinkTimeOutSec(TextUtils.isEmpty(str33) ? 0 : Integer.valueOf(str33).intValue());
                } catch (NumberFormatException e37) {
                    e37.printStackTrace();
                    LogUtils.e(TAG, e37.toString());
                }
                String str34 = this.mMetaMap.get(Constants.INSTANCE_TIME_OUT);
                try {
                    webSocketConfig.setWsLinkTimeOutSec(TextUtils.isEmpty(str34) ? 0 : Integer.valueOf(str34).intValue());
                } catch (NumberFormatException e38) {
                    e38.printStackTrace();
                    LogUtils.e(TAG, e38.toString());
                }
                if (this.mMetaMap.containsKey(Constants.SAAS_LINK_MAX_TIME)) {
                    try {
                        Constants.SAAS_WS_MAX_TIMES = Integer.parseInt(this.mMetaMap.get(Constants.SAAS_LINK_MAX_TIME));
                    } catch (NumberFormatException e39) {
                        LogUtils.e(TAG, "saas_link_max_timeerror:" + e39.getLocalizedMessage());
                    }
                }
                if (this.mMetaMap.containsKey("websocket_retry_max_times")) {
                    try {
                        Constants.WS_RETRY_MAX_TIMES = Integer.parseInt(this.mMetaMap.get("websocket_retry_max_times"));
                    } catch (NumberFormatException e40) {
                        LogUtils.e(TAG, "websocket_retry_max_timeserror:" + e40.getLocalizedMessage());
                    }
                }
                this.mWebSocketManager.setConfig(webSocketConfig);
                this.mMetaMap.get(Constants.PING2_INTERVAL_TIMES);
                String str35 = this.mMetaMap.get(Constants.REPORT_FRAME_DELAY_INTERVAL_TIMES);
                try {
                    if (TextUtils.isEmpty(str35)) {
                        this.reportFrameDelayInterval = -1;
                    } else {
                        this.reportFrameDelayInterval = Integer.parseInt(str35);
                    }
                } catch (Exception unused17) {
                }
            }
        }
        int size = list4.size() + i14;
        Iterator it2 = list4.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (TextUtils.equals(((ResolutionInfo) it2.next()).f33828id, this.mResolutionID)) {
                    z12 = true;
                    break;
                }
            } else {
                z12 = false;
                break;
            }
        }
        int size2 = size + list5.size();
        if (z12) {
            z13 = z12;
            break;
        }
        Iterator it3 = list5.iterator();
        while (true) {
            if (it3.hasNext()) {
                if (TextUtils.equals(((ResolutionInfo) it3.next()).f33828id, this.mResolutionID)) {
                    z13 = true;
                    break;
                }
            } else {
                z13 = z12;
                break;
            }
        }
        if (!z13) {
            this.mResolutionID = WMConstants.TIMER_STAGE_NONE;
        }
        if (this.mSaasListener != null) {
            if (size2 == 0 && (hmcpPlayerListener = this.mPlayerListener) != null) {
                hmcpPlayerListener.onPlayerError(Constants.ERRORCODE_ERROR_000004, ResourceManager.getString(R.string.Error_000004));
            }
            this.mSaasListener.onReceiveMetaInfos(Constants.LEVEL_SDK, this.mMetaMap, list6, map, list8);
        }
        LogUtils.d(TAG, "handleConfigureMetaInfo--finsh");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initX86Data(PlayStreamPayloadData playStreamPayloadData, GSMAddressInfo gSMAddressInfo) {
        if (playStreamPayloadData == null || gSMAddressInfo == null) {
            return;
        }
        String roomId = gSMAddressInfo.getRoomId();
        String signalUrl = gSMAddressInfo.getSignalUrl();
        String turnUrl = gSMAddressInfo.getTurnUrl();
        String ipV6TurnUrl = gSMAddressInfo.getIpV6TurnUrl();
        String turnUserName = gSMAddressInfo.getTurnUserName();
        String turnPassword = gSMAddressInfo.getTurnPassword();
        String instanceAccessUrl = gSMAddressInfo.getInstanceAccessUrl();
        LogUtils.d(TAG, "initX86Data roomId=" + roomId + " signalUrl=" + signalUrl + " turnUrl=" + turnUrl + " ipV6TurnUrl=" + ipV6TurnUrl + " turnUserName=" + turnUserName + " turnPassword=" + turnPassword + " instanceAccessUrl=" + instanceAccessUrl);
        playStreamPayloadData.roomId = roomId;
        playStreamPayloadData.signalUrl = signalUrl;
        playStreamPayloadData.turnUrl = turnUrl;
        playStreamPayloadData.ipV6TurnUrl = ipV6TurnUrl;
        playStreamPayloadData.turnUserName = turnUserName;
        playStreamPayloadData.turnPassword = turnPassword;
        playStreamPayloadData.instanceAccessUrl = instanceAccessUrl;
    }

    private boolean isHasInArray(String[] strArr, String str) {
        if (strArr != null && !TextUtils.isEmpty(str)) {
            for (String str2 : strArr) {
                if (!TextUtils.isEmpty(str2) && str2.trim().contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isRequestWithCid() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long preferences = DataUtils.getSharedInstance(this.mContext).getPreferences(DataUtils.CID_CACHE_EXPIRE_TIME, 0L);
        if (DataUtils.getSharedInstance(this.mContext).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL) == Constants.NEVER_CID_CACHE_INTERVAL) {
            return true;
        }
        boolean z10 = jCurrentTimeMillis < preferences;
        LogUtils.d(TAG, "currentTime: " + CountDownUtil.toDateStr(jCurrentTimeMillis) + ", cidExpireTime: " + CountDownUtil.toDateStr(preferences));
        if (!z10) {
            DataUtils.getSharedInstance(this.mContext).putPreferences(CID_VALUE, "");
        }
        return z10;
    }

    private void needReinitRender(int i10, String str) {
        LogUtils.d(TAG, "needReinitRender : fromCountylyId " + str + " set render to " + i10);
        HmcpManager.getInstance().setVideoViewType(i10);
        notifySaasListenerResponse(5, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyGetConfigureErrorListener(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "notifyGetConfigureErrorListener");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String preferences = DataUtils.getSharedInstance(this.mContext).getPreferences(DataUtils.CONFIG_INFO_KEY, "");
        if (TextUtils.isEmpty(preferences)) {
            return;
        }
        LogUtils.d(str2, "notifyGetConfigureErrorListener ---" + preferences);
        handleConfigureMetaInfo((ConfigureResult) com.alibaba.fastjson.a.parseObject(preferences, ConfigureResult.class), false, 108);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayerListener(ErrorType errorType, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRetryPromptListener(String str, String str2) {
        this.mRequestTime = 0;
        if (this.mSaasListener != null) {
            if (!TextUtils.isEmpty(this.mCloudId)) {
                str = str + "-" + this.mCloudId;
            }
            this.mSaasListener.showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, str, str2);
            return;
        }
        CountlyUtil.recordErrorEvent("notifyRetryPromptListener got mSaasListener == null; errorCode = " + str + "; errorMsg = " + str2 + "; isStopPlay = " + this.isStopPlay);
    }

    private static boolean parseBooleanFlag(Map<String, String> map, String str) {
        if (map.containsKey(str)) {
            return "true".equalsIgnoreCase(map.get(str));
        }
        return false;
    }

    private static void parseFloatFlag(Map<String, String> map, String str, float f10, float[] fArr) {
        if (!map.containsKey(str)) {
            fArr[0] = f10;
            return;
        }
        String str2 = map.get(str);
        if (TextUtils.isEmpty(str2) || "null".equals(str2)) {
            fArr[0] = f10;
            return;
        }
        try {
            fArr[0] = Float.valueOf(str2).floatValue();
        } catch (NumberFormatException unused) {
            fArr[0] = f10;
        }
    }

    private static void parseIntegerFlag(Map<String, String> map, String str, int i10, int[] iArr) {
        if (!map.containsKey(str)) {
            iArr[0] = i10;
            return;
        }
        String str2 = map.get(str);
        if (TextUtils.isEmpty(str2) || "null".equals(str2)) {
            iArr[0] = i10;
            return;
        }
        try {
            iArr[0] = Integer.valueOf(str2).intValue();
        } catch (NumberFormatException unused) {
            iArr[0] = i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:88:0x023d  */
    private void parseRenderType(HashMap<String, String> map) {
        String str;
        boolean z10;
        boolean z11;
        boolean z12;
        String[] strArr;
        int i10;
        String str2;
        if (Utils.isTV()) {
            return;
        }
        int videoViewType = HmcpManager.getInstance().getVideoViewType();
        int i11 = Build.VERSION.SDK_INT;
        String str3 = Constants.COUNTYLY_RANDER_FROM_SDK_DEFAULT_RENDER_TYPE;
        if (map == null) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SDK_DEFAULT_RENDER_TYPE, videoViewType);
            LogUtils.d(TAG, "parseRenderType: map is null return render = " + videoViewType);
            return;
        }
        String lowerCase = Build.MODEL.toLowerCase();
        String str4 = lowerCase + "," + i11;
        String str5 = TAG;
        LogUtils.d(str5, "modelAndApiLevel = " + str4);
        if (map.containsKey(Constants.RENDER_SURFACE_WHITE_LIST_FROM_SAAS) && map.containsKey(Constants.RENDER_SURFACE_WHITE_LIST_FROM_SAAS)) {
            String str6 = map.get(Constants.RENDER_SURFACE_WHITE_LIST_FROM_SAAS);
            if (!TextUtils.isEmpty(str6) && isHasInArray(str6.toLowerCase().replace("[", "").split("]"), str4)) {
                if (videoViewType != 1) {
                    needReinitRender(1, Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST);
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST);
                LogUtils.d(str5, "parseRenderType: render from saas surfaceWhiteList");
                return;
            }
        }
        if (map.containsKey(Constants.RENDER_TEXTURE_WHITE_LIST_FROM_SAAS)) {
            String str7 = map.get(Constants.RENDER_TEXTURE_WHITE_LIST_FROM_SAAS);
            if (!TextUtils.isEmpty(str7) && isHasInArray(str7.toLowerCase().replace("[", "").split("]"), str4)) {
                if (videoViewType != 2) {
                    needReinitRender(2, Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST);
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST);
                LogUtils.d(str5, "parseRenderType: render from saas textureWhiteList");
                return;
            }
        }
        if (map.containsKey(Constants.RENDER_TEXTURE_WHITE_LIST_BY_MODEL_AND_VERSION_DOWN_MATCHING_FROM_SAAS)) {
            String str8 = map.get(Constants.RENDER_TEXTURE_WHITE_LIST_BY_MODEL_AND_VERSION_DOWN_MATCHING_FROM_SAAS);
            if (!TextUtils.isEmpty(str8)) {
                String strReplace = str8.toLowerCase().replace("[", "");
                if (strReplace.contains(lowerCase + ",")) {
                    String[] strArrSplit = strReplace.split("]");
                    int length = strArrSplit.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length) {
                            str2 = "";
                            break;
                        }
                        str2 = strArrSplit[i12];
                        if (!TextUtils.isEmpty(str2)) {
                            if (str2.contains(lowerCase + ",")) {
                                break;
                            }
                        }
                        i12++;
                    }
                    String[] strArrSplit2 = str2.split(",");
                    if (strArrSplit2.length > 1) {
                        if (String.valueOf(i11).compareTo(strArrSplit2[1]) < 1) {
                            String str9 = TAG;
                            LogUtils.d(str9, "parseRenderType textureWhiteListByModelAndVersionDownMatch match is" + str2);
                            if (videoViewType != 2) {
                                needReinitRender(2, Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST_BY_MODEL_AND_VERSION_DOWN_MATCHING);
                            }
                            CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST_BY_MODEL_AND_VERSION_DOWN_MATCHING);
                            LogUtils.d(str9, "parseRenderType: render from saas textureWhiteListByModelAndVersionDownMatch");
                            return;
                        }
                    }
                }
            }
        }
        if (map.containsKey(Constants.RENDER_TEXTURE_WHITE_LIST_BY_VAGUE_MODEL_AND_VERSION_DOWN_MATCHING_FROM_SAAS)) {
            String str10 = map.get(Constants.RENDER_TEXTURE_WHITE_LIST_BY_VAGUE_MODEL_AND_VERSION_DOWN_MATCHING_FROM_SAAS);
            if (TextUtils.isEmpty(str10)) {
                str = Constants.COUNTYLY_RANDER_FROM_SDK_DEFAULT_RENDER_TYPE;
            } else {
                String[] strArrSplit3 = str10.toLowerCase().replace("[", "").split("]");
                int length2 = strArrSplit3.length;
                int i13 = 0;
                loop1: while (true) {
                    if (i13 >= length2) {
                        str = str3;
                        z11 = false;
                        z12 = false;
                        break;
                    }
                    String str11 = strArrSplit3[i13];
                    if (TextUtils.isEmpty(str11)) {
                        str = str3;
                        strArr = strArrSplit3;
                        i10 = length2;
                    } else {
                        String[] strArrSplit4 = str11.split(",");
                        strArr = strArrSplit3;
                        i10 = length2;
                        if (strArrSplit4.length < 1) {
                            str = str3;
                        } else {
                            String[] strArrSplit5 = strArrSplit4[0].split(" ");
                            String str12 = strArrSplit4[1];
                            int length3 = strArrSplit5.length;
                            str = str3;
                            int i14 = 0;
                            while (i14 < length3) {
                                int i15 = length3;
                                if (lowerCase.contains(strArrSplit5[i14])) {
                                    z11 = String.valueOf(i11).compareTo(str12) < 1;
                                    LogUtils.d(TAG, "parseRenderType textureWhiteListByVagueModelAndVersionDownMatch match " + str11);
                                    z12 = true;
                                    break loop1;
                                }
                                i14++;
                                length3 = i15;
                            }
                        }
                    }
                    i13++;
                    strArrSplit3 = strArr;
                    length2 = i10;
                    str3 = str;
                }
                String str13 = TAG;
                LogUtils.d(str13, "parseRenderType: render from saas textureWhiteListByVagueModelAndVersionDownMatch, isLocalModelContainSaasModel = " + z12 + " isVersionDownMatch = " + z11);
                if (z12 && z11) {
                    if (videoViewType != 2) {
                        needReinitRender(2, Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST_BY_VAGUE_MODEL_AND_VERSION_DOWN_MATCHING);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_TEXTURE_WHITE_LIST_BY_VAGUE_MODEL_AND_VERSION_DOWN_MATCHING);
                    LogUtils.d(str13, "parseRenderType: render from saas textureWhiteListByVagueModelAndVersionDownMatch");
                    return;
                }
            }
        } else {
            str = Constants.COUNTYLY_RANDER_FROM_SDK_DEFAULT_RENDER_TYPE;
        }
        if (map.containsKey(Constants.RENDER_SURFACE_WHITE_LIST_BY_VERSION_FROM_SAAS)) {
            String str14 = map.get(Constants.RENDER_SURFACE_WHITE_LIST_BY_VERSION_FROM_SAAS);
            if (!TextUtils.isEmpty(str14)) {
                String[] strArrSplit6 = str14.replace("[", "").replace("]", "").split(",");
                int length4 = strArrSplit6.length;
                int i16 = 0;
                while (true) {
                    if (i16 >= length4) {
                        z10 = false;
                        break;
                    }
                    if (String.valueOf(i11).compareTo(strArrSplit6[i16]) == 0) {
                        LogUtils.d(TAG, "parseRenderType strSurfaceWhiteListByVersion = " + str14);
                        z10 = true;
                        break;
                    }
                    i16++;
                }
                if (z10) {
                    if (videoViewType != 1) {
                        needReinitRender(1, Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST_BY_VERSION);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST_BY_VERSION);
                    LogUtils.d(TAG, "parseRenderType: render from saas surfaceWhiteListByVersion");
                    return;
                }
            }
        }
        if (map.containsKey(Constants.RENDER_DEFAULT_RENDER_TYPE_FROM_SAAS) && map.containsKey(Constants.RENDER_DEFAULT_RENDER_TYPE_FROM_SAAS)) {
            String str15 = map.get(Constants.RENDER_DEFAULT_RENDER_TYPE_FROM_SAAS);
            if (!TextUtils.isEmpty(str15)) {
                boolean z13 = videoViewType == 2;
                if (!TextUtils.equals(str15, String.valueOf(videoViewType))) {
                    if (z13) {
                        needReinitRender(1, Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST);
                    } else {
                        needReinitRender(2, Constants.COUNTYLY_RANDER_FROM_SAAS_SURFACE_WHITE_LIST);
                    }
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_RANDER_FROM_SAAS_DEFAULT_RENDER_TYPE, str15);
                LogUtils.d(TAG, "parseRenderType: render from saas defaultRenderType,render = " + str15);
                return;
            }
        }
        CountlyUtil.recordEvent(str, videoViewType);
        LogUtils.d(TAG, "parseRenderType: render from sdk defaultRenderType, render = " + videoViewType);
    }

    private static String parseStringFlag(Map<String, String> map, String str, String str2) {
        return (!map.containsKey(str) || TextUtils.isEmpty(map.get(str))) ? str2 : map.get(str);
    }

    private void processSaasLanguageConfig(List<String> list, int i10) {
        if (list == null || list.size() < 1) {
            LogUtils.d(TAG, "SaasLanguageConfig is null or is empty,return");
            return;
        }
        LogUtils.d(TAG, "SaasLanguageConfig is " + JsonUtil.toJsonString(list) + " , actionId = " + i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            String str = list.get(i11);
            if (Language.isSupportConfig(str)) {
                LogUtils.d(TAG, "LanguageConfig " + str + " is support by index is " + i11);
                this.mLanguageManager.updateLanguage(str, "languageConfigFromSaas by actionId is " + i10, i11 % 2 == 0 ? 20 : 30);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void quitVolleyManager() {
        if (this.mHttpManager != null) {
            LogUtils.i(TAG, "====quitVolleyManager==");
            this.mHttpManager.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resolveDistanceInfo(DistanceLimit distanceLimit) {
        OnHmcpSaasRequestListener onHmcpSaasRequestListener;
        if (distanceLimit == null || !distanceLimit.distanceLimitExceeded || (onHmcpSaasRequestListener = this.mSaasListener) == null) {
            return;
        }
        onHmcpSaasRequestListener.onReceiveDistance(distanceLimit.minDistance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean retryByErrorCode(String str) {
        List<RetryErrorcodeConfig.RetryErrorcodeBean> list = RetryErrorcodeConfig.requestRetryConfigList;
        if (list != null && list.size() != 0) {
            for (final RetryErrorcodeConfig.RetryErrorcodeBean retryErrorcodeBean : RetryErrorcodeConfig.requestRetryConfigList) {
                if (retryErrorcodeBean != null && retryErrorcodeBean.actionId == 222 && TextUtils.equals(str, retryErrorcodeBean.errorCode) && retryErrorcodeBean.currentRetryTimes < retryErrorcodeBean.retryMaxTimes) {
                    TimerTask timerTask = new TimerTask() { // from class: com.haima.hmcp.business.HmcpRequestManager.49
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            retryErrorcodeBean.currentRetryTimes++;
                            LogUtils.i(HmcpRequestManager.TAG, "" + retryErrorcodeBean.actionId + "=retryByErrorCode=接口第" + retryErrorcodeBean.currentRetryTimes + "次重试");
                            HmcpRequestManager.this.getCloudServiceRequestV3(true);
                        }
                    };
                    if (this.mRetryTimer == null) {
                        this.mRetryTimer = new Timer();
                    }
                    this.mRetryTimer.schedule(timerTask, retryErrorcodeBean.retryDelayTime * 1000);
                    return true;
                }
            }
        }
        return false;
    }

    private void setAuthUrl(String str, int i10, String str2, long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("t=" + str);
        sb2.append("&a=" + i10);
        sb2.append("&b=" + this.mAccessKeyId);
        if (!TextUtils.isEmpty(str2)) {
            sb2.append("&d=" + str2);
        }
        if (!TextUtils.isEmpty(CountlyUtil.mUID)) {
            sb2.append("&u=" + StringUtils.encodeToBase64String(CountlyUtil.mUID));
        }
        if (!TextUtils.isEmpty(this.packageName)) {
            sb2.append("&p=" + this.packageName);
        }
        if (!TextUtils.isEmpty(this.mAppChannel)) {
            sb2.append("&g=" + this.mAppChannel);
        }
        if (!TextUtils.isEmpty(this.mCloudId)) {
            sb2.append("&c=" + this.mCloudId);
        }
        if (i10 == 201) {
            sb2.append("&o=" + this.opType);
            sb2.append("&f=" + this.confirm);
        }
        IHmcpHttp iHmcpHttp = this.mHttpManager;
        if (iHmcpHttp != null) {
            iHmcpHttp.setURL(this.saasAuthUrl + "?" + sb2.toString());
        }
        setStartNetData(i10 + "", this.saasAuthUrl, j10);
    }

    public void cancelRetryTimer() {
        if (this.mRetryTimer == null) {
            return;
        }
        LogUtils.i(TAG, "=====cancelRetryTimer called====");
        this.mRetryTimer.cancel();
        this.mRetryTimer = null;
    }

    public void checkPlayingCidStatus(UserInfo userInfo, String str, final OnGameIsAliveListener onGameIsAliveListener) {
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
        RequestCheckPlayingGame requestCheckPlayingGame = new RequestCheckPlayingGame();
        requestCheckPlayingGame.envType = Constants.ENV_TYPE;
        requestCheckPlayingGame.userInfo = userInfo2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(Constants.CHECK_PLAYING_CID_ACTION, requestCheckPlayingGame, false, jCurrentTimeMillis, str);
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_PLAYING_CID_STATUS);
        LogUtils.d(TAG, "timeframe--checkPlayingCidStatus--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_CHECK_PLAYING_CID_STAUTS, postJson, CheckCloudServiceResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.12
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                HmcpRequestManager.this.setResultNetData("228", "fail", i10 + ":" + str2, jCurrentTimeMillis);
                LogUtils.d(HmcpRequestManager.TAG, "checkPlayingCidStatus--response-->onError-->" + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_PLAYING_CID_STATUS_FAIL, i10 + "");
                if (i10 == -1000) {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_CHECK_PLAYING_CID_004));
                } else if (i10 == -1002) {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_CHECK_PLAYING_CID_001));
                } else {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_CHECK_PLAYING_CID_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("228", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_PLAYING_CID_STATUS_FAIL, "-1001");
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_CHECK_PLAYING_CID_003));
                    return;
                }
                if (baseResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_PLAYING_CID_STATUS_SUCCESS, (System.currentTimeMillis() - jCurrentTimeMillis) + "");
                    CheckCloudServiceResult checkCloudServiceResult = (CheckCloudServiceResult) baseResult;
                    List<CheckCloudServiceResult.ChannelInfo> list = checkCloudServiceResult.channelInfoList;
                    if (list == null || list.size() <= 0) {
                        onGameIsAliveListener.success(null);
                    } else {
                        onGameIsAliveListener.success(checkCloudServiceResult.channelInfoList);
                    }
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_PLAYING_CID_STATUS_FAIL, baseResult.code + "");
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
                LogUtils.d(HmcpRequestManager.TAG, "checkPlayingCidStatus--response-->Success");
            }
        });
    }

    public void checkPlayingGameRequest(UserInfo userInfo, String str, final OnGameIsAliveListener onGameIsAliveListener) {
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
        RequestCheckPlayingGame requestCheckPlayingGame = new RequestCheckPlayingGame();
        requestCheckPlayingGame.envType = Constants.ENV_TYPE;
        requestCheckPlayingGame.userInfo = userInfo2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(217, requestCheckPlayingGame, false, jCurrentTimeMillis, str);
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_RESERVED_INSTANCE);
        LogUtils.d(TAG, "timeframe--checkPlayingGameRequest--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest("12170", postJson, CheckCloudServiceResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.11
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                HmcpRequestManager.this.setResultNetData("217", "fail", i10 + ":" + str2, jCurrentTimeMillis);
                LogUtils.d(HmcpRequestManager.TAG, "checkPlayingGameRequest--response-->onError-->" + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_RESERVED_INSTANCE_FAIL, i10 + "");
                if (i10 == -1000) {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_PLAYING_GAME_004));
                } else if (i10 == -1002) {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_PLAYING_GAME_001));
                } else {
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_PLAYING_GAME_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("217", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_RESERVED_INSTANCE_FAIL, "-1001");
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_PLAYING_GAME_003));
                    return;
                }
                if (baseResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_RESERVED_INSTANCE_SUCCESS, (System.currentTimeMillis() - jCurrentTimeMillis) + "");
                    CheckCloudServiceResult checkCloudServiceResult = (CheckCloudServiceResult) baseResult;
                    List<CheckCloudServiceResult.ChannelInfo> list = checkCloudServiceResult.channelInfoList;
                    if (list == null || list.size() <= 0) {
                        onGameIsAliveListener.success(null);
                    } else {
                        onGameIsAliveListener.success(checkCloudServiceResult.channelInfoList);
                    }
                } else {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_RESERVED_INSTANCE_FAIL, baseResult.code + "");
                    onGameIsAliveListener.fail(HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
                LogUtils.d(HmcpRequestManager.TAG, "checkPlayingGameRequest--response-->Success");
            }
        });
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void clearCloudId() {
        this.mCloudId = null;
        CountlyUtil.mCloudID = null;
        DataUtils.getSharedInstance(this.mContext).putPreferences(CID_VALUE, "");
        LogUtils.d(TAG, "===clearCloudId===");
    }

    public void clearNetText() {
        synchronized (this.netTestList) {
            this.netTestList.clear();
        }
    }

    public String concatErrorCode(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (!HmcpManager.getInstance().isJson) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("[");
            if (!TextUtils.isEmpty(this.mCloudId)) {
                str2 = str2 + "-" + this.mCloudId;
            }
            sb2.append(str2);
            sb2.append("]");
            return sb2.toString();
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(this.mCloudId)) {
            str3 = str2;
        } else {
            str3 = str2 + "-" + this.mCloudId;
        }
        jSONObject.put("errorCode", (Object) str3);
        jSONObject.put("errorMessage", (Object) str);
        jSONObject.put("errorCodeWithoutCid", (Object) str2);
        LogUtils.e(TAG, "concatErrorCode：" + jSONObject.toString());
        return jSONObject.toString();
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void connect2Access(final int i10, final boolean z10) {
        if (this.mWebSocketManager == null) {
            LogUtils.e(TAG, "connect2Access is called but mWebSocketManager is null");
            CountlyUtil.recordErrorEvent("connect2Access is called but mWebSocketManager is null");
            return;
        }
        if (this.isAccessConnecting) {
            LogUtils.e(TAG, "connect2Access-----is connecting");
            return;
        }
        if (!this.isAllowConnect2Access) {
            this.mRequestTime = 0;
            LogUtils.e(TAG, "connect2Access-----not allow");
            return;
        }
        this.isAccessConnecting = true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("userId=" + StringUtils.encodeToBase64String(this.mUserInfo.userId));
        sb2.append("&cid=" + this.mCloudId);
        sb2.append("&did=" + this.mDeviceId);
        sb2.append("&appId=" + this.mAccessKeyId);
        sb2.append("&sign=" + this.mSignature);
        if (Constants.OPEN_MULTI_CONNECT > 0 && !TextUtils.isEmpty(this.mLinkSt)) {
            sb2.append("&ts=" + this.mLinkSt);
        }
        if (!TextUtils.isEmpty(HmcpManager.getInstance().getAccessUrl())) {
            this.mAccessURL = HmcpManager.getInstance().getAccessUrl();
        } else if (!TextUtils.isEmpty("")) {
            this.mAccessURL = "";
        }
        if (z10) {
            this.mAccessURL = this.mAccessReconnectURL;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final String str = this.mAccessURL + "/websocket?" + sb2.toString() + ConstantsInternal.KEY_CLI_PARAM;
        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS, JsonUtil.toJsonString(new ReportSaas(URLEncoder.encode(str), "" + i10)));
        setStartNetData(bm.Q, str, jCurrentTimeMillis);
        LogUtils.e(TAG, "timeframe--connect2Access-----connect2Access----->start = " + this.isAccessWebSocketConnected);
        LogUtils.e(WebSocketConnection.TAG, "start connect2Access, accessUrl=" + str + ",当前连接状态:" + this.isAccessWebSocketConnected);
        this.mWebSocketManager.connect2Access(str, new WebSocketManager.SimpleAccessConnectionHandler() { // from class: com.haima.hmcp.business.HmcpRequestManager.17
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z11) {
                LogUtils.e(WebSocketConnection.TAG, "connect2Access onConnect：" + str + ",目前连接状态:" + HmcpRequestManager.this.isAccessWebSocketConnected + ",是否重连:" + z11);
                String str2 = HmcpRequestManager.TAG;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("timeframe--connect2Access----->onConnect Success = ");
                sb3.append(HmcpRequestManager.this.isAccessWebSocketConnected);
                sb3.append(", ");
                sb3.append(z11);
                LogUtils.e(str2, sb3.toString());
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                if (hmcpRequestManager.isStopPlay) {
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--connect2Access-----> is already close ");
                    CountlyUtil.recordErrorEvent("access: isStopPlay = " + HmcpRequestManager.this.isStopPlay + "when onConnect");
                    return;
                }
                hmcpRequestManager.setResultNetData(bm.Q, "success", "", jCurrentTimeMillis);
                HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                hmcpRequestManager2.isAccessWebSocketConnected = true;
                hmcpRequestManager2.isAccessConnecting = false;
                CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_SUCCESS, (System.currentTimeMillis() - jCurrentTimeMillis) + "; opType = " + i10 + "; isNeedReconnect = " + z10 + "; isReconnect = " + z11);
                if (z11) {
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--connect2Access----->onConnect Success = reconnect, nothing to do");
                } else {
                    HmcpRequestManager.this.notifySaasListenerResponse(1, null);
                }
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i11, String str2, boolean z11) {
                LogUtils.e(WebSocketConnection.TAG, "connect2Access onDisconnect：" + str + ",目前连接状态:" + HmcpRequestManager.this.isAccessWebSocketConnected + ",errorCode:" + i11 + ",reason:" + str2);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("");
                sb3.append(i11);
                CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_FAIL, JsonUtil.toJsonString(new ReportBaseFailed(sb3.toString(), str2, 0, "", 0)));
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                if (hmcpRequestManager.isStopPlay) {
                    return;
                }
                hmcpRequestManager.setResultNetData(bm.Q, "fail", i11 + ":" + str2, jCurrentTimeMillis);
                LogUtils.e(HmcpRequestManager.TAG, "connect2Access----->onDisconnect");
                HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                hmcpRequestManager2.isAccessWebSocketConnected = false;
                hmcpRequestManager2.isAccessConnecting = false;
                if (z11) {
                    LogUtils.e(HmcpRequestManager.TAG, "connect2Access----->onDisconnect-- mRequestTime = " + HmcpRequestManager.this.mRequestTime);
                    StringUtils.replaceSpecialStr(str2);
                    HmcpRequestManager.this.notifySaasListenerResponse(-1, null);
                }
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
                HmcpRequestManager.this.notifySaasListenerResponse(2, null);
                LogUtils.e(WebSocketConnection.TAG, "connect2Access onHeartBeatSuccess：" + str);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleAccessConnectionHandler
            public void onTextMessage(String str2) {
                LogUtils.e(WebSocketConnection.TAG, "connect2Access-----onTextMessage----->" + str2);
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                if (hmcpRequestManager.isStopPlay || hmcpRequestManager.mSaasListener == null) {
                    CountlyUtil.recordErrorEvent("onTextMessage in bad status; isStopPlay = " + HmcpRequestManager.this.isStopPlay + "; mSaasListener = " + HmcpRequestManager.this.mSaasListener + "; payload = " + StringUtils.encodeToBase64String(str2));
                }
                if (HmcpRequestManager.this.isStopPlay) {
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "connect2Access-----onTextMessage----->" + str2);
                OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                if (onHmcpSaasRequestListener != null) {
                    onHmcpSaasRequestListener.handleMessage(str2);
                }
            }
        });
    }

    public void dis2Access() {
        this.isAccessConnecting = false;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.disconnect2Access();
        }
    }

    public void enableHighBitrate(final Boolean bool, final OnEnableHighBitrateListener onEnableHighBitrateListener) {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.18
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.enableHighBitrate(bool, onEnableHighBitrateListener, "");
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.enableHighBitrate(bool, onEnableHighBitrateListener, str);
                }
            });
        } else {
            enableHighBitrate(bool, onEnableHighBitrateListener, "");
        }
    }

    @Deprecated
    public void gameArchived(String str, UserInfo userInfo, String str2, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        gameArchived(str, userInfo, str2, this.mAppChannel, onSaveGameCallBackListener);
    }

    public String getAccessKeyId() {
        return this.mAccessKeyId;
    }

    public List<String> getAccessURList() {
        List<String> list = this.mAccessURList;
        return (list == null || list.size() == 0) ? Arrays.asList(this.mAccessURL) : this.mAccessURList;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0187  */
    public synchronized RawPostJson getApplyInstanceParams(Bundle bundle) {
        GetCloudServiceParametersV2 getCloudServiceParametersV2;
        IntentExtraData intentExtraData;
        String str = TAG;
        LogUtils.d(str, "---getApplyInstanceParams->");
        if (TextUtils.isEmpty(this.mDeviceId)) {
            this.mDeviceId = DataUtils.getSharedInstance(this.mContext).getPreferences(KEY_PREFERENCE_DID, "0");
        }
        getCloudServiceParametersV2 = new GetCloudServiceParametersV2();
        getCloudServiceParametersV2.ahead = false;
        getCloudServiceParametersV2.extraId = Utils.getStringFromBundle(bundle, "extraId");
        getCloudServiceParametersV2.appName = Utils.getStringFromBundle(bundle, "appName");
        getCloudServiceParametersV2.gameId = Utils.getStringFromBundle(bundle, "gameId");
        getCloudServiceParametersV2.archiveFromBid = Utils.getStringFromBundle(bundle, "archiveFromBid");
        getCloudServiceParametersV2.archiveFromUserId = Utils.getStringFromBundle(bundle, "archiveFromUserId");
        getCloudServiceParametersV2.appChannel = Utils.getStringFromBundle(bundle, "appChannel");
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = Utils.getStringFromBundle(bundle, "userid");
        userInfo2.userToken = Utils.getStringFromBundle(bundle, BaseVideoView.USER_TOKEN);
        userInfo2.userLevel = Utils.getIntFromBundle(bundle, BaseVideoView.USER_LEVEL);
        userInfo2.userType = Utils.getIntFromBundle(bundle, BaseVideoView.USER_TYPE);
        getCloudServiceParametersV2.userInfo = userInfo2;
        getCloudServiceParametersV2.configInfo = Utils.getStringFromBundle(bundle, BaseVideoView.CONFIG_INFO);
        getCloudServiceParametersV2.cToken = Utils.getStringFromBundle(bundle, "cToken");
        getCloudServiceParametersV2.playingTime = Utils.getLongFromBundle(bundle, "playTime");
        getCloudServiceParametersV2.priority = Utils.getLongFromBundle(bundle, "priority");
        getCloudServiceParametersV2.resolution = String.valueOf(Utils.getIntFromBundle(bundle, "resolutionId"));
        getCloudServiceParametersV2.payStr = Utils.getStringFromBundle(bundle, "payStr");
        getCloudServiceParametersV2.bitRate = Utils.getIntFromBundle(bundle, "internetSpeed");
        getCloudServiceParametersV2.clientType = Constants.ANDROID_TYPE;
        ScreenOrientation screenOrientation = ScreenOrientation.LANDSCAPE;
        Serializable serializable = bundle.getSerializable("orientation");
        getCloudServiceParametersV2.orientation = (serializable instanceof ScreenOrientation ? (ScreenOrientation) serializable : screenOrientation) == screenOrientation ? 0 : 1;
        getCloudServiceParametersV2.envType = Constants.ENV_TYPE;
        getCloudServiceParametersV2.isArchive = Utils.getBooleanFromBundle(bundle, "archived", true);
        getCloudServiceParametersV2.protoData = Utils.getStringFromBundle(bundle, "protoData");
        getCloudServiceParametersV2.noInputTimeout = Utils.getIntFromBundle(bundle, "noInputLimitTime");
        getCloudServiceParametersV2.clientISP = Utils.getStringFromBundle(bundle, "clientISP");
        getCloudServiceParametersV2.clientProvince = Utils.getStringFromBundle(bundle, "clientProvince");
        getCloudServiceParametersV2.clientCity = Utils.getStringFromBundle(bundle, "clientCity");
        getCloudServiceParametersV2.syncRefresh = true;
        getCloudServiceParametersV2.routingIp = "";
        getCloudServiceParametersV2.viewResolution = getViewResolutionStr(Utils.getIntFromBundle(bundle, "viewResolutionWidth"), Utils.getIntFromBundle(bundle, "viewResolutionHeight"));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Utils.getIntFromBundle(bundle, "streamType", StreamType.WEBRTC.ordinal()) == StreamType.RTMP.ordinal() ? Constants.STREAM_TYPE_RTMP : Constants.STREAM_TYPE_RTC);
        getCloudServiceParametersV2.streamingTypes = arrayList;
        getCloudServiceParametersV2.support2k = true;
        getCloudServiceParametersV2.anomalousLeft = Utils.getFloatFromBundle(bundle, BaseVideoView.ANOMALOUS_LEFT);
        getCloudServiceParametersV2.anomalousRight = Utils.getFloatFromBundle(bundle, BaseVideoView.ANOMALOUS_Right);
        if (Constants.ANDROID_TYPE == 2) {
            getCloudServiceParametersV2.imeType = Utils.getIntFromBundle(bundle, BaseVideoView.IME_TYPE, Constants.CONFIG_IME_TYPE);
        }
        getCloudServiceParametersV2.clientImeType = Utils.getIntFromBundle(bundle, BaseVideoView.CLIENT_IME_TYPE, -1);
        SerializableMap serializableMap = null;
        if (bundle.containsKey(BaseVideoView.INTENT_EXTRA_DATA)) {
            Serializable serializable2 = bundle.getSerializable(BaseVideoView.INTENT_EXTRA_DATA);
            if (serializable2 instanceof IntentExtraData) {
                intentExtraData = (IntentExtraData) serializable2;
            } else {
                intentExtraData = null;
            }
        } else {
            intentExtraData = null;
        }
        getCloudServiceParametersV2.extraData = intentExtraData;
        if (intentExtraData == null || TextUtils.isEmpty(intentExtraData.getAppLink())) {
            getCloudServiceParametersV2.componentType = Utils.getIntFromBundle(bundle, BaseVideoView.COMPONENT_TYPE);
            getCloudServiceParametersV2.action = Utils.getStringFromBundle(bundle, "action");
            getCloudServiceParametersV2.componentName = Utils.getStringFromBundle(bundle, BaseVideoView.COMPONENT_NAME);
        }
        LogUtils.i(str, "post ExtraData = " + com.alibaba.fastjson.a.toJSONString(getCloudServiceParametersV2.extraData));
        int intFromBundle = Utils.getIntFromBundle(bundle, "demoTestInterfaceId");
        if (intFromBundle > 0) {
            getCloudServiceParametersV2.demoTest = true;
            getCloudServiceParametersV2.demoTestInterfaceId = Integer.valueOf(intFromBundle);
            int intFromBundle2 = Utils.getIntFromBundle(bundle, "demoTesInstanceId");
            if (intFromBundle2 > 0) {
                getCloudServiceParametersV2.demoTestInstanceId = Integer.valueOf(intFromBundle2);
            }
        }
        getCloudServiceParametersV2.freeFlowTag = Constants.ENABLE_FREE_FLOW_TAG;
        getCloudServiceParametersV2.sdkAbility = getSdkAbility(false);
        getCloudServiceParametersV2.h264SeiDataReportEnable = Utils.getBooleanFromBundle(bundle, Constants.H264_SEI_DATA_ENABLE);
        getCloudServiceParametersV2.enlargeBitRate = Boolean.valueOf(Utils.getBooleanFromBundle(bundle, BaseVideoView.HIGH_BIT_RATE));
        try {
            getCloudServiceParametersV2.sdkUserDeviceInfo = com.alibaba.fastjson.a.parseObject(Utils.getStringFromBundle(bundle, BaseVideoView.USER_DEVICE_INFO));
        } catch (Exception unused) {
        }
        if (getCloudServiceParametersV2.sdkUserDeviceInfo == null) {
            getCloudServiceParametersV2.sdkUserDeviceInfo = new JSONObject();
        }
        if (bundle.containsKey(BaseVideoView.TRANSMISSION_DATA_TO_SAAS)) {
            Serializable serializable3 = bundle.getSerializable(BaseVideoView.TRANSMISSION_DATA_TO_SAAS);
            if (serializable3 instanceof SerializableMap) {
                serializableMap = (SerializableMap) serializable3;
            }
        }
        if (serializableMap != null) {
            String mapJson = serializableMap.getMapJson();
            if (!TextUtils.isEmpty(mapJson)) {
                LogUtils.d(TAG, "transmissionDataToSaas is " + mapJson);
                getCloudServiceParametersV2.richData = serializableMap.getMap();
            }
        }
        if (bundle.containsKey(BaseVideoView.FINISH_BY_SERVER)) {
            getCloudServiceParametersV2.finishByServer = Boolean.valueOf(bundle.getBoolean(BaseVideoView.FINISH_BY_SERVER));
        }
        LogUtils.d(TAG, "getApplyInstanceParams--data-->" + getCloudServiceParametersV2);
        return getRawPostJson(211, getCloudServiceParametersV2, getCloudServiceParametersV2.gameId);
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public String getCloudId() {
        return this.mCloudId;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getCloudService(final int i10, final int i11, final boolean z10) {
        if (i11 != 1 && i11 != 0) {
            getCloudService(i10, i11, "", z10);
        } else if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.20
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getCloudService(i10, i11, "", z10);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getCloudService(i10, i11, str, z10);
                }
            });
        } else {
            getCloudService(i10, i11, "", z10);
        }
    }

    public void getCloudServiceRequestV2() {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.43
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getCloudServiceRequestV2("");
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getCloudServiceRequestV2(str);
                }
            });
        } else {
            getCloudServiceRequestV2("");
        }
    }

    public void getCloudServiceRequestV3(final boolean z10) {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.44
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getCloudServiceRequestV3("", z10);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getCloudServiceRequestV3(str, z10);
                }
            });
        } else {
            getCloudServiceRequestV3("", z10);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getConfigure(final String str, final OnConfigListener onConfigListener) {
        String str2 = TAG;
        LogUtils.e(str2, "getConfigure" + str);
        resetHttpStatus();
        final ReportGetConfig reportGetConfig = new ReportGetConfig(this.mAppChannel, str);
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG, JsonUtil.toJsonString(reportGetConfig));
        LogUtils.d(str2, "DownFirstFrame--getConfigure---12084--->");
        this.packageName = str;
        RequestConfigure requestConfigure = new RequestConfigure();
        requestConfigure.accessKeyId = this.mAccessKeyId;
        requestConfigure.packageName = str;
        requestConfigure.appChannel = this.mAppChannel;
        requestConfigure.envType = Constants.ENV_TYPE;
        requestConfigure.sdkAbility = getSdkAbility(false);
        if (this.mViewFrameRate > 0) {
            requestConfigure.viewFrameRate = this.mViewFrameRate + "";
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.streamType);
            requestConfigure.streamingTypes = arrayList;
        }
        LogUtils.d(str2, "timeframe--getConfigure---request--->" + requestConfigure);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(108, (IParameter) requestConfigure, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--getConfigure---request--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_CONFIGURE, postJson, ConfigureResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.13
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                HmcpRequestManager.this.setResultNetData("108", "fail", i10 + ":" + str3, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                if (TextUtils.isEmpty(str)) {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    try {
                        if (i10 == -1000) {
                            jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_parse_error));
                            jSONObject.put("volleyMessage", str3);
                            HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_004, jSONObject.toString());
                        } else if (i10 == -1002) {
                            jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_error));
                            jSONObject.put("volleyMessage", str3);
                            HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_001, jSONObject.toString());
                        } else if (i10 == -1003) {
                            jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                            jSONObject.put("volleyMessage", str3);
                            jSONObject.put(AnalyticsConfig.RTD_START_TIME, jCurrentTimeMillis);
                            jSONObject.put("errorTime", System.currentTimeMillis());
                            HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_002, jSONObject.toString());
                        } else {
                            jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                            jSONObject.put("volleyMessage", str3);
                            HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_002, jSONObject.toString());
                        }
                    } catch (JSONException e10) {
                        LogUtils.e(HmcpRequestManager.TAG, e10.toString());
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    }
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                }
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed("" + i10, str3, i10, str3, cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
                onConfigListener.onFail(str3);
                HmcpRequestManager.this.notifyGetConfigureErrorListener(str);
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("108", "success", "", jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                if (baseResult == null) {
                    String string = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed("-1001", string, -1001, string, cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                    reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get config");
                    onConfigListener.onFail(string);
                    HmcpRequestManager.this.notifyGetConfigureErrorListener(str);
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONFIG_004, ResourceManager.getString(R.string.haima_hmcp_errorMsg_null));
                    return;
                }
                ConfigureResult configureResult = (ConfigureResult) baseResult;
                reportGetConfig.retryRequestCount = baseResult.retryRequestCount;
                LogUtils.d(HmcpRequestManager.TAG, str + "timeframe--:getConfigure---response--->" + JsonUtil.toJsonString(configureResult));
                if (configureResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_SUCCESS, JsonUtil.toJsonString(reportGetConfig));
                    LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame--getConfigure---12080--->");
                    HmcpRequestManager.this.handleConfigureMetaInfo(configureResult, TextUtils.isEmpty(str), 108);
                    onConfigListener.onSuccess();
                    return;
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getConfigure--errorMsg-->" + configureResult.errorMsg);
                IRetryPolicy cuRetryPolicy2 = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                ReportGetConfigInfoFailed reportGetConfigInfoFailed2 = new ReportGetConfigInfoFailed("" + configureResult.errorCode, configureResult.errorMsg, configureResult.code, configureResult.msg, cuRetryPolicy2.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                reportGetConfigInfoFailed2.retryRequestCount = cuRetryPolicy2.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed2));
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, configureResult.msg);
                onConfigListener.onFail(configureResult.msg);
                HmcpRequestManager.this.notifyGetConfigureErrorListener(str);
                HmcpRequestManager.this.notifyRetryPromptListener(configureResult.errorCode, configureResult.errorMsg);
            }
        });
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getDeviceId(OnInitCallBackListener onInitCallBackListener) {
        this.mCallBack = onInitCallBackListener;
        resetHttpStatus();
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID);
        String str = this.mChannelId;
        if (str == null || str.isEmpty()) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "mChannelId is null or empty", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
            notifyInitListener(Constants.ERRORCODE_ERROR_000001, ResourceManager.getString(R.string.Error_000001), null);
            return;
        }
        String str2 = this.mAccessKeyId;
        if (str2 == null || str2.isEmpty()) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "mChannelId is null or empty", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
            notifyInitListener(Constants.ERRORCODE_ERROR_000001, ResourceManager.getString(R.string.Error_000001), null);
            return;
        }
        Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.mRequestTime++;
        CountlyUtil.openCache();
        DeviceIdParameters deviceIdParameters = new DeviceIdParameters();
        deviceIdParameters.type = Constants.ANDROID_TYPE;
        deviceIdParameters.envType = Constants.ENV_TYPE;
        Serializable postJson = getPostJson(104, (IParameter) deviceIdParameters, true, jCurrentTimeMillis);
        LogUtils.e(TAG, "getDeviceId--request-->" + JsonUtil.toJsonString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_DEVICE_ID, postJson, DeviceIdResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.4
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "getDeviceId--response-->" + str3);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(DeviceIdResult.class);
                int currentTimeout = cuRetryPolicy.getCurrentTimeout();
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                ReportInitFailed reportInitFailed = new ReportInitFailed("" + i10, str3, i10, str3, currentTimeout, hmcpRequestManager.mAccessKeyId, hmcpRequestManager.mChannelId);
                reportInitFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                HmcpRequestManager.this.setResultNetData("104", "fail", i10 + ":" + str3, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                try {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    if (i10 == -1000) {
                        jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_parse_error));
                        jSONObject.put("volleyMessage", str3);
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_004, jSONObject.toString());
                        HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_004, jSONObject.toString(), null);
                    } else if (i10 == -1002) {
                        jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_error));
                        jSONObject.put("volleyMessage", str3);
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_001, jSONObject.toString());
                        HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_001, jSONObject.toString(), null);
                    } else if (i10 == -1003) {
                        jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                        jSONObject.put("volleyMessage", str3);
                        jSONObject.put(AnalyticsConfig.RTD_START_TIME, jCurrentTimeMillis);
                        jSONObject.put("errorTime", System.currentTimeMillis());
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_002, jSONObject.toString());
                        HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_002, jSONObject.toString(), null);
                    } else {
                        jSONObject.put("message", ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                        jSONObject.put("volleyMessage", str3 + i10);
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_002, jSONObject.toString());
                        HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_002, jSONObject.toString(), null);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID_FAILED, com.alibaba.fastjson.a.toJSONString(reportInitFailed));
                } catch (JSONException e10) {
                    LogUtils.e(HmcpRequestManager.TAG, e10.toString());
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID_FAILED, com.alibaba.fastjson.a.toJSONString(reportInitFailed));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("104", "success", "", jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(DeviceIdResult.class);
                if (baseResult == null) {
                    int currentTimeout = cuRetryPolicy.getCurrentTimeout();
                    HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                    ReportInitFailed reportInitFailed = new ReportInitFailed(Constants.ERRORCODE_DID_003, "result is null", 200, "result is null", currentTimeout, hmcpRequestManager.mAccessKeyId, hmcpRequestManager.mChannelId);
                    reportInitFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID_FAILED, com.alibaba.fastjson.a.toJSONString(reportInitFailed), System.currentTimeMillis() - jCurrentTimeMillis);
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "");
                    HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                    int i10 = R.string.haima_hmcp_network_no_data;
                    hmcpRequestManager2.notifyInitListener(Constants.ERRORCODE_DID_003, ResourceManager.getString(i10), null);
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_003, ResourceManager.getString(i10));
                    return;
                }
                DeviceIdResult deviceIdResult = (DeviceIdResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, " --- getDeviceId--response-->" + JsonUtil.toJsonString(deviceIdResult));
                if (deviceIdResult.code != 0) {
                    String str3 = deviceIdResult.errorCode;
                    int i11 = baseResult.code;
                    String str4 = deviceIdResult.errorMsg;
                    int currentTimeout2 = cuRetryPolicy.getCurrentTimeout();
                    HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                    ReportInitFailed reportInitFailed2 = new ReportInitFailed(str3, "result is null", i11, str4, currentTimeout2, hmcpRequestManager3.mAccessKeyId, hmcpRequestManager3.mChannelId);
                    reportInitFailed2.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID_FAILED, JsonUtil.toJsonString(reportInitFailed2));
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, deviceIdResult.msg);
                    HmcpRequestManager.this.notifyInitListener(deviceIdResult.errorCode, deviceIdResult.msg, null);
                    HmcpRequestManager.this.notifyRetryPromptListener(deviceIdResult.errorCode, deviceIdResult.errorMsg);
                    return;
                }
                int currentTimeout3 = cuRetryPolicy.getCurrentTimeout();
                HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                ReportInitFailed reportInitFailed3 = new ReportInitFailed("", "", 200, "", currentTimeout3, hmcpRequestManager4.mAccessKeyId, hmcpRequestManager4.mChannelId);
                reportInitFailed3.retryRequestCount = baseResult.retryRequestCount;
                if (deviceIdResult.deviceId <= 0) {
                    reportInitFailed3.errorCode = Constants.ERRORCODE_DID_005;
                    CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(reportInitFailed3));
                    HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_005, ResourceManager.getString(R.string.haima_hmcp_did_error), null);
                    return;
                }
                if (TextUtils.isEmpty(deviceIdResult.countlyUrl)) {
                    reportInitFailed3.errorCode = Constants.ERRORCODE_DID_006;
                    CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(reportInitFailed3));
                    HmcpRequestManager.this.notifyInitListener(Constants.ERRORCODE_DID_006, ResourceManager.getString(R.string.haima_hmcp_countly_error), null);
                    CountlyUtil.closeCache();
                    return;
                }
                HmcpRequestManager.this.mDeviceId = String.valueOf(deviceIdResult.deviceId);
                RemoteDeviceInfoManager.reset();
                RemoteDeviceInfoManager.getRemoteDeviceInfo().build(deviceIdResult.countlyUrl, deviceIdResult.countlyAppKey, deviceIdResult.serverTimestamp, HmcpRequestManager.this.mDeviceId);
                CountlyUtil.setCountlyInfo(deviceIdResult.countlyUrl, deviceIdResult.countlyAppKey);
                CountlyUtil.setCountlUrlList(deviceIdResult.countlyUrlList);
                CountlyUtil.mServerTimestamp = deviceIdResult.serverTimestamp;
                CountlyUtil.mDeviceID = HmcpRequestManager.this.mDeviceId;
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_DID_SUCCESS, JsonUtil.toJsonString(reportInitFailed3));
                DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.KEY_PREFERENCE_DID, HmcpRequestManager.this.mDeviceId);
                HmcpRequestManager.this.notifyInitListener(null, null, "");
            }
        });
    }

    public DeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }

    public void getDnsRequestIp(List<String> list, final OnDnsRequestServiceIpListener onDnsRequestServiceIpListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_GET_DNS_REQUES_IP);
        DnsRequestIpParameters dnsRequestIpParameters = new DnsRequestIpParameters();
        dnsRequestIpParameters.setType(0);
        dnsRequestIpParameters.setHost(list);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(307, (IParameter) dnsRequestIpParameters, false, jCurrentTimeMillis);
        LogUtils.d(TAG, "timeframe--getDnsRequestIp---request--->" + JsonUtil.toJsonString(postJson));
        getHttpManager(this.mContext).postRequest("", postJson, DnsRequestIpResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.32
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str) {
                LogUtils.e(HmcpRequestManager.TAG, "getDnsRequestIp onError: " + i10 + " " + str);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE_FAIL, i10);
                OnDnsRequestServiceIpListener onDnsRequestServiceIpListener2 = onDnsRequestServiceIpListener;
                if (onDnsRequestServiceIpListener2 != null) {
                    if (i10 == -1000) {
                        onDnsRequestServiceIpListener2.dnsRequestIpError(Constants.ERRORCODE_DNS_REQUEST_IP_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                    } else if (i10 == -1002) {
                        onDnsRequestServiceIpListener2.dnsRequestIpError(Constants.ERRORCODE_DNS_REQUEST_IP_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    } else {
                        onDnsRequestServiceIpListener2.dnsRequestIpError(Constants.ERRORCODE_DNS_REQUEST_IP_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--getDnsRequestIp---response---result--->" + JsonUtil.toJsonString(baseResult));
                HmcpRequestManager.this.setResultNetData("307", "success", "", jCurrentTimeMillis);
                if (baseResult == null || onDnsRequestServiceIpListener == null) {
                    OnDnsRequestServiceIpListener onDnsRequestServiceIpListener2 = onDnsRequestServiceIpListener;
                    if (onDnsRequestServiceIpListener2 != null) {
                        onDnsRequestServiceIpListener2.dnsRequestIpError(Constants.ERRORCODE_DNS_REQUEST_IP_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                        return;
                    }
                    return;
                }
                if (baseResult.code != 0) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_GET_DNS_REQUES_IP_FAIL, baseResult.errorMsg);
                    onDnsRequestServiceIpListener.dnsRequestIpError(baseResult.errorCode, baseResult.errorMsg);
                    return;
                }
                DnsRequestIpResult dnsRequestIpResult = (DnsRequestIpResult) baseResult;
                List<DnsRequestIpResult.Result> list2 = dnsRequestIpResult.result;
                if (list2 == null || list2.size() <= 0) {
                    onDnsRequestServiceIpListener.dnsRequestIpError(Constants.ERRORCODE_DNS_REQUEST_IP_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                } else {
                    onDnsRequestServiceIpListener.dnsRequestIpResult(dnsRequestIpResult.result);
                }
            }
        });
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getExtraConfigure(final String str, final OnConfigListener onConfigListener) {
        String str2 = TAG;
        LogUtils.e(str2, "getExtraConfigure" + str);
        resetHttpStatus();
        final ReportGetConfig reportGetConfig = new ReportGetConfig(this.mAppChannel, str);
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_EXTRA_CONFIG, JsonUtil.toJsonString(reportGetConfig));
        LogUtils.d(str2, "DownFirstFrame--getExtraConfigure---14094--->");
        this.packageName = str;
        RequestConfigure requestConfigure = new RequestConfigure();
        requestConfigure.accessKeyId = this.mAccessKeyId;
        requestConfigure.packageName = str;
        requestConfigure.appChannel = this.mAppChannel;
        requestConfigure.envType = Constants.ENV_TYPE;
        requestConfigure.sdkAbility = getSdkAbility(false);
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.streamType);
            requestConfigure.streamingTypes = arrayList;
        }
        LogUtils.d(str2, "timeframe--getExtraConfigure---request--->" + requestConfigure);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(115, (IParameter) requestConfigure, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--getExtraConfigure---request--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_EXTRA_CONFIGURE, postJson, ExtraConfigureResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.14
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                HmcpRequestManager.this.setResultNetData("115", "fail", i10 + ":" + str3, jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed("" + i10, str3, i10, str3, cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_EXTRA_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
                OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                if (onHmcpSaasRequestListener != null) {
                    onHmcpSaasRequestListener.onReceiveExtraConfigs(null, false);
                }
                onConfigListener.onFail(str3);
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("115", "success", "", jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(ExtraConfigureResult.class);
                if (baseResult == null) {
                    String string = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed("-1001", string, -1001, string, cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                    reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_EXTRA_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
                    OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                    if (onHmcpSaasRequestListener != null) {
                        onHmcpSaasRequestListener.onReceiveExtraConfigs(null, false);
                    }
                    onConfigListener.onFail(string);
                    return;
                }
                ExtraConfigureResult extraConfigureResult = (ExtraConfigureResult) baseResult;
                reportGetConfig.retryRequestCount = baseResult.retryRequestCount;
                LogUtils.d(HmcpRequestManager.TAG, str + "timeframe--:getExtraConfigure---response--->" + JsonUtil.toJsonString(extraConfigureResult));
                if (extraConfigureResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_EXTRA_CONFIG_SUCCESS, JsonUtil.toJsonString(reportGetConfig));
                    LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame--getExtraConfigure---14090--->");
                    OnHmcpSaasRequestListener onHmcpSaasRequestListener2 = HmcpRequestManager.this.mSaasListener;
                    if (onHmcpSaasRequestListener2 != null) {
                        onHmcpSaasRequestListener2.onReceiveExtraConfigs(extraConfigureResult.secondaryConfig, true);
                    }
                    onConfigListener.onSuccess();
                    return;
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getExtraConfigure--errorMsg-->" + extraConfigureResult.errorMsg);
                IRetryPolicy cuRetryPolicy2 = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                ReportGetConfigInfoFailed reportGetConfigInfoFailed2 = new ReportGetConfigInfoFailed("" + extraConfigureResult.errorCode, extraConfigureResult.errorMsg, extraConfigureResult.code, extraConfigureResult.msg, cuRetryPolicy2.getCurrentTimeout(), HmcpRequestManager.this.mChannelId, str);
                reportGetConfigInfoFailed2.retryRequestCount = cuRetryPolicy2.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_EXTRA_CONFIG_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed2));
                OnHmcpSaasRequestListener onHmcpSaasRequestListener3 = HmcpRequestManager.this.mSaasListener;
                if (onHmcpSaasRequestListener3 != null) {
                    onHmcpSaasRequestListener3.onReceiveExtraConfigs(null, false);
                }
                onConfigListener.onFail(extraConfigureResult.msg);
            }
        });
    }

    @Deprecated
    public void getGameArchiveStatus(String str, UserInfo userInfo, String str2, OnSaveGameCallBackListener onSaveGameCallBackListener) {
        getGameArchiveStatus(str, userInfo, str2, this.mAppChannel, onSaveGameCallBackListener);
    }

    protected HmcpHttpManager getHttpManager(Context context) {
        IHmcpHttp iHmcpHttp = this.mHttpManager;
        if (iHmcpHttp != null) {
            return (HmcpHttpManager) iHmcpHttp;
        }
        HmcpHttpManager hmcpHttpManager = new HmcpHttpManager(context);
        this.mHttpManager = hmcpHttpManager;
        return hmcpHttpManager;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getJoinBattle(final boolean z10, final InternalJoinBattle internalJoinBattle, final OnJoinBattleListener onJoinBattleListener) {
        final JoinBattle joinBattle;
        if (onJoinBattleListener == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "OnJoinBattleListener is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "OnJoinBattleListener is null");
            return;
        }
        if (internalJoinBattle == null || (joinBattle = internalJoinBattle.joinBattle) == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle is null");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (TextUtils.isEmpty(joinBattle.packageName)) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle.packageName is null or empty");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle.packageName is null or empty");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        int i10 = joinBattle.streamingType;
        if (i10 >= 0 && i10 <= 1) {
            this.mAppChannel = joinBattle.appChannel;
            this.streamType = i10 == 1 ? Constants.STREAM_TYPE_RTC : Constants.STREAM_TYPE_RTMP;
            getConfigure(joinBattle.packageName, new OnConfigListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.51
                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onFail(String str) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "get config fail, cause: " + str);
                    OnJoinBattleListener onJoinBattleListener2 = onJoinBattleListener;
                    if (onJoinBattleListener2 != null) {
                        onJoinBattleListener2.onJoinBattle(false, str);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onSuccess() {
                    if (internalJoinBattle.isChangeStreamType) {
                        HmcpRequestManager.this.notifySaasListenerResponse(4, "");
                    } else {
                        HmcpRequestManager.this.getJoinBattleInternetProtocol(z10, joinBattle, onJoinBattleListener);
                    }
                }
            });
            return;
        }
        String str = "JoinBattle.streamingType is not validate: " + joinBattle.streamingType;
        LogUtils.d(TAG, BattleMode.LOG_KEY + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str);
        onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
    }

    public HashMap<String, String> getMetaMap() {
        return this.mMetaMap;
    }

    public ArrayList getNetText() {
        ArrayList<NetTestData> arrayList;
        synchronized (this.netTestList) {
            arrayList = this.netTestList;
        }
        return arrayList;
    }

    public ProtoDataGameInfo getProtoDataGameInfo() {
        return this.protoDataGameInfo;
    }

    public void getPublicIPV4(final OnGetPublicIPV4Listener onGetPublicIPV4Listener) {
        LogUtils.d(TAG, "timeframe--getPublicIPV4--request-->");
        final ReportIPV4 reportIPV4 = new ReportIPV4(URLEncoder.encode(""), "");
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_IPV4, com.alibaba.fastjson.a.toJSONString(reportIPV4));
        new HttpVolleyImpl(this.mContext, 0).get(new IHttp.RequestWrapper.Builder().url("").retryPolicy(new HmRetryPolicy(2000, 0, 1.0f)).build(), new IHttp.OnResponseListener<String>() { // from class: com.haima.hmcp.business.HmcpRequestManager.31
            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onError(int i10, int i11, String str) {
                LogUtils.d(HmcpRequestManager.TAG, "getPublicIPV4--response-->onError-->" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_IPV4_FAIL, JsonUtil.toJsonString(new ReportBaseFailed("" + i11, str, i11, "", 2000)));
                onGetPublicIPV4Listener.fail(str);
            }

            @Override // com.haima.hmcp.business.IHttp.OnResponseListener
            public void onSuccess(String str) {
                LogUtils.d(HmcpRequestManager.TAG, "getPublicIPV4--response-->Success" + str);
                String string = com.alibaba.fastjson.a.parseObject(str).getString("ipv4");
                if (TextUtils.isEmpty(string)) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_IPV4_FAIL, JsonUtil.toJsonString(new ReportBaseFailed("-1001", "ipv4Address:null", 200, "ipv4Address:null", 2000)));
                    onGetPublicIPV4Listener.fail("ipv4Address:null");
                } else {
                    reportIPV4.ipv4Address = URLEncoder.encode(string);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_IPV4_SUCCESS, JsonUtil.toJsonString(reportIPV4));
                    onGetPublicIPV4Listener.success(string);
                }
            }
        });
    }

    public void getReCloudServiceRequestV2() {
        LogUtils.e(TAG, "==getReCloudServiceRequestV2");
        dis2Access();
        getCloudServiceRequestV2();
    }

    public int getReportFrameDelayInterval() {
        int i10 = this.reportFrameDelayInterval;
        if (i10 > 0 && i10 < 5) {
            this.reportFrameDelayInterval = 5;
        }
        if (Constants.isDebugFrameDelay) {
            return 15;
        }
        return this.reportFrameDelayInterval;
    }

    public void getResolutionInfos(String str, String str2, String str3, final StreamType streamType, final OnGetResolutionsCallBackListener onGetResolutionsCallBackListener) {
        if (onGetResolutionsCallBackListener == null) {
            LogUtils.e(TAG, "getResolutionInfos listener can't be null,return ");
            return;
        }
        if (streamType == null) {
            String string = ResourceManager.getString(R.string.haima_hmcp_errorMsg_null);
            LogUtils.e(TAG, "getResolutionInfos: " + string);
            onGetResolutionsCallBackListener.fail(string);
            return;
        }
        this.packageName = str;
        RequestConfigure requestConfigure = new RequestConfigure();
        if (TextUtils.isEmpty(str3)) {
            requestConfigure.accessKeyId = this.mAccessKeyId;
        } else {
            requestConfigure.accessKeyId = str3;
        }
        requestConfigure.packageName = str;
        requestConfigure.appChannel = str2;
        requestConfigure.envType = Constants.ENV_TYPE;
        ArrayList arrayList = new ArrayList();
        arrayList.add(streamType.name());
        requestConfigure.streamingTypes = arrayList;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(108, requestConfigure, false, jCurrentTimeMillis, str3);
        LogUtils.d(TAG, "timeframe--getResolutionInfos---request--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_CONFIGURE, postJson, ConfigureResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.28
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str4) {
                HmcpRequestManager.this.setResultNetData("108", "fail", i10 + ":" + str4, jCurrentTimeMillis);
                onGetResolutionsCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(str4, i10 + ""));
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("108", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    onGetResolutionsCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_CONFIG_003));
                    return;
                }
                ConfigureResult configureResult = (ConfigureResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--:getResolutionInfos---response--->" + JsonUtil.toJsonString(configureResult));
                if (configureResult.code != 0) {
                    onGetResolutionsCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(configureResult.msg, configureResult.errorCode));
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--:getResolutionInfos-: funStreamType = " + streamType);
                List<ResolutionInfo> arrayList2 = StreamType.WEBRTC == streamType ? configureResult.webrtcResolutionInfo : configureResult.resolutionInfo;
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                    ReportBaseFailed reportBaseFailed = new ReportBaseFailed(baseResult.errorCode, baseResult.errorMsg, 200, "streamType:" + streamType, cuRetryPolicy.getCurrentTimeout());
                    reportBaseFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RESOLUTION_LIST_NUlL, JsonUtil.toJsonString(reportBaseFailed));
                }
                onGetResolutionsCallBackListener.success(arrayList2);
            }
        });
    }

    public void getSpecialInfo(final int i10, String str, String str2, String str3, String str4, String str5, final OnSpeedTestCallBackListener onSpeedTestCallBackListener) {
        RequestSpecialInfo requestSpecialInfo = new RequestSpecialInfo();
        requestSpecialInfo.type = 1;
        requestSpecialInfo.clientISP = str;
        requestSpecialInfo.clientProvince = str2;
        requestSpecialInfo.clientCity = str3;
        requestSpecialInfo.routingIp = str4;
        int i11 = Constants.DEMO_TEST_INTERFACE_ID;
        if (i11 > 0) {
            requestSpecialInfo.demoTestInterfaceId = Integer.valueOf(i11);
            requestSpecialInfo.demoTest = true;
            int i12 = Constants.DEMO_TEST_INSTANCE_ID;
            if (i12 > 0) {
                requestSpecialInfo.demoTestInstanceId = Integer.valueOf(i12);
            }
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(110, requestSpecialInfo, true, jCurrentTimeMillis, str5);
        LogUtils.e(TAG, "timeframe--getSpecialInfo---request--->" + JsonUtil.toJsonString(postJson));
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO);
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_SPEED_URL, postJson, ResponseSpecialInfo.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.15
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i13, String str6) {
                String string;
                String str7;
                HmcpRequestManager.this.setResultNetData("110", "fail", i13 + ":" + str6, jCurrentTimeMillis);
                long jCurrentTimeMillis2 = -1;
                if (i13 == -1000) {
                    string = ResourceManager.getString(R.string.haima_hmcp_parse_error);
                    str7 = Constants.ERRORCODE_SPECIAL_INFO_004;
                } else if (i13 == -1002) {
                    string = ResourceManager.getString(R.string.haima_hmcp_net_error);
                    str7 = Constants.ERRORCODE_SPECIAL_INFO_001;
                } else {
                    string = ResourceManager.getString(R.string.haima_hmcp_net_timeout);
                    jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    str7 = Constants.ERRORCODE_SPECIAL_INFO_002;
                }
                HashMap map = new HashMap();
                map.put("errorCode", str7);
                map.put("errorMsg", string);
                map.put("httpStatusCode", Integer.valueOf(i13));
                map.put("httpMsg", str6);
                map.put("timeoutMS", Long.valueOf(jCurrentTimeMillis2));
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO_FAIL, JsonUtil.getJsonObj(map).toString());
                onSpeedTestCallBackListener.onComplete(true, 0, 0);
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                int i13;
                HmcpRequestManager.this.setResultNetData("110", "success", "", jCurrentTimeMillis);
                final HashMap map = new HashMap();
                if (baseResult == null) {
                    String string = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    map.clear();
                    map.put("errorCode", Constants.ERRORCODE_SPECIAL_INFO_003);
                    map.put("errorMsg", string);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO_FAIL, JsonUtil.getJsonObj(map).toString());
                    onSpeedTestCallBackListener.onComplete(true, 0, 0);
                    return;
                }
                final ResponseSpecialInfo responseSpecialInfo = (ResponseSpecialInfo) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--:getSpecialInfo---response--->" + JsonUtil.toJsonString(responseSpecialInfo));
                if (responseSpecialInfo.code != 0) {
                    String string2 = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    map.clear();
                    map.put("errorCode", Constants.ERRORCODE_SPECIAL_INFO_003);
                    map.put("errorMsg", string2);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO_FAIL, JsonUtil.getJsonObj(map).toString());
                    onSpeedTestCallBackListener.onComplete(true, 0, 0);
                    return;
                }
                if (TextUtils.isEmpty(responseSpecialInfo.url)) {
                    map.clear();
                    map.put("errorCode", Constants.ERRORCODE_SPECIAL_INFO_003);
                    map.put("errorMsg", "url is null");
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO_FAIL, JsonUtil.getJsonObj(map).toString());
                    String str6 = responseSpecialInfo.minimumSpeed;
                    if (TextUtils.isEmpty(str6)) {
                        i13 = 0;
                    } else {
                        try {
                            i13 = Integer.parseInt(str6);
                        } catch (NumberFormatException unused) {
                            i13 = 0;
                        }
                    }
                    onSpeedTestCallBackListener.onComplete(true, 0, i13);
                    return;
                }
                final String str7 = responseSpecialInfo.minimumSpeed;
                map.clear();
                map.put("url", responseSpecialInfo.url);
                map.put("minimum_speed", TextUtils.isEmpty(str7) ? "" : str7);
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_SPECIAL_INFO_SUCCESS, JsonUtil.getJsonObj(map).toString());
                map.clear();
                map.put("status", "start");
                map.put("duration", Integer.valueOf(i10));
                CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, JsonUtil.getJsonObj(map).toString());
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                hmcpRequestManager.mFileDownloadUtil = hmcpRequestManager.speedTest(responseSpecialInfo.url, i10, new FileDownloadUtil.OnSpeedTestCompletionListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.15.1
                    @Override // com.haima.hmcp.utils.FileDownloadUtil.OnSpeedTestCompletionListener
                    public void onCompletion(float f10, SpeedGather speedGather) {
                        int i14;
                        if (TextUtils.isEmpty(str7)) {
                            i14 = 0;
                        } else {
                            try {
                                i14 = Integer.parseInt(str7);
                            } catch (NumberFormatException unused2) {
                                i14 = 0;
                            }
                        }
                        boolean z10 = f10 >= ((float) i14);
                        map.clear();
                        map.put("url", responseSpecialInfo.url);
                        map.put("minimum_speed", TextUtils.isEmpty(str7) ? "" : str7);
                        map.put("duration", Integer.valueOf(i10));
                        onSpeedTestCallBackListener.onComplete(z10, (int) f10, i14);
                        if (z10) {
                            map.put("status", com.sigmob.sdk.base.common.a.f78868b);
                            map.put(BaseVideoView.GPS_SPEED, Float.valueOf(f10));
                        } else {
                            map.put("status", "error");
                            map.put("msg", "speed < 0 || gather == null");
                        }
                        CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, JsonUtil.getJsonObj(map).toString());
                    }
                });
            }
        });
    }

    public void getStartStreamingRequest(final OnStartStreamingListener onStartStreamingListener) {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.7
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getStartStreamingRequest("", onStartStreamingListener);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getStartStreamingRequest(str, onStartStreamingListener);
                }
            });
        } else {
            getStartStreamingRequest("", onStartStreamingListener);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void getStreamingType(final GameStreamingType gameStreamingType, final OnGameStreamingTypeListener onGameStreamingTypeListener) {
        if (gameStreamingType == null) {
            String str = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(BattleMode.LOG_KEY);
            String string = "GameStreamingType is null";
            sb2.append("GameStreamingType is null");
            LogUtils.d(str, sb2.toString());
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, "GameStreamingType is null");
            if (onGameStreamingTypeListener != null) {
                if (this.mContext != null) {
                    ResourceManager.getInstance();
                    string = ResourceManager.getString(R.string.haima_hmcp_sdk_params_error);
                }
                onGameStreamingTypeListener.onStreamingType(false, string);
                return;
            }
            return;
        }
        int i10 = gameStreamingType.streamingType;
        if (i10 != 0 && i10 != 1) {
            String string2 = "GameStreamingType.streamingType is not validate: " + gameStreamingType.streamingType;
            LogUtils.d(TAG, BattleMode.LOG_KEY + string2);
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, string2);
            if (onGameStreamingTypeListener != null) {
                if (this.mContext != null) {
                    ResourceManager.getInstance();
                    string2 = ResourceManager.getString(R.string.haima_hmcp_sdk_params_error);
                }
                onGameStreamingTypeListener.onStreamingType(false, string2);
                return;
            }
            return;
        }
        if (gameStreamingType.userInfo == null) {
            String str2 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(BattleMode.LOG_KEY);
            String string3 = "GameStreamingType.userInfo is null";
            sb3.append("GameStreamingType.userInfo is null");
            LogUtils.d(str2, sb3.toString());
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, "GameStreamingType.userInfo is null");
            if (onGameStreamingTypeListener != null) {
                if (this.mContext != null) {
                    ResourceManager.getInstance();
                    string3 = ResourceManager.getString(R.string.haima_hmcp_sdk_params_error);
                }
                onGameStreamingTypeListener.onStreamingType(false, string3);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(gameStreamingType.packageName)) {
            String str3 = TAG;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(BattleMode.LOG_KEY);
            String string4 = "GameStreamingType.packageName is null or empty";
            sb4.append("GameStreamingType.packageName is null or empty");
            LogUtils.d(str3, sb4.toString());
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, "GameStreamingType.packageName is null or empty");
            if (onGameStreamingTypeListener != null) {
                if (this.mContext != null) {
                    ResourceManager.getInstance();
                    string4 = ResourceManager.getString(R.string.haima_hmcp_sdk_params_error);
                }
                onGameStreamingTypeListener.onStreamingType(false, string4);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.mAccessKeyId)) {
            String str4 = TAG;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(BattleMode.LOG_KEY);
            String string5 = "GameStreamingType, mAccessKeyId is null or empty";
            sb5.append("GameStreamingType, mAccessKeyId is null or empty");
            LogUtils.d(str4, sb5.toString());
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, "GameStreamingType, mAccessKeyId is null or empty");
            if (onGameStreamingTypeListener != null) {
                if (this.mContext != null) {
                    ResourceManager.getInstance();
                    string5 = ResourceManager.getString(R.string.haima_hmcp_sdk_params_error);
                }
                onGameStreamingTypeListener.onStreamingType(false, string5);
                return;
            }
            return;
        }
        String str5 = TAG;
        LogUtils.d(str5, "tv_battle->getStreamingType: " + gameStreamingType);
        final ReportGetGameStreamingType reportGetGameStreamingType = new ReportGetGameStreamingType(gameStreamingType);
        CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE, JsonUtil.toJsonString(reportGetGameStreamingType));
        ArrayList arrayList = new ArrayList();
        arrayList.add(gameStreamingType.streamingType == 1 ? Constants.STREAM_TYPE_RTC : Constants.STREAM_TYPE_RTMP);
        RequestGameStreamingType requestGameStreamingType = new RequestGameStreamingType();
        requestGameStreamingType.streamingTypes = arrayList;
        UserInfo2 userInfo2 = new UserInfo2();
        UserInfo userInfo = gameStreamingType.userInfo;
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
        requestGameStreamingType.userInfo = userInfo2;
        requestGameStreamingType.packageName = gameStreamingType.packageName;
        requestGameStreamingType.appChannel = gameStreamingType.appChannel;
        requestGameStreamingType.accessKeyId = this.mAccessKeyId;
        requestGameStreamingType.envType = Constants.ENV_TYPE;
        requestGameStreamingType.sdkAbility = getSdkAbility(false);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        LogUtils.d(str5, "tv_battle->timeframe--getStreamingType---request encrypt before--->" + requestGameStreamingType);
        Serializable postJson = getPostJson(109, (IParameter) requestGameStreamingType, true, jCurrentTimeMillis);
        LogUtils.d(str5, "tv_battle->timeframe--getStreamingType---request encrypt after--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_GET_STREAM_TYPE, postJson, GameStreamingTypeResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.48
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i11, String str6) {
                String str7;
                HmcpRequestManager.this.setResultNetData("109", "fail", i11 + ":" + str6, jCurrentTimeMillis);
                if (i11 == -1002) {
                    str7 = "100109001-" + ResourceManager.getString(R.string.haima_hmcp_net_error);
                } else if (i11 != -1000) {
                    str7 = "100109002-" + ResourceManager.getString(R.string.haima_hmcp_net_timeout);
                } else {
                    str7 = "100109004-" + ResourceManager.getString(R.string.haima_hmcp_parse_error);
                }
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(GameStreamingTypeResult.class);
                ReportGetGameStreamingTypeFailed reportGetGameStreamingTypeFailed = new ReportGetGameStreamingTypeFailed("" + i11, str6, i11, str6, cuRetryPolicy.getCurrentTimeout(), gameStreamingType);
                reportGetGameStreamingTypeFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetGameStreamingTypeFailed));
                OnGameStreamingTypeListener onGameStreamingTypeListener2 = onGameStreamingTypeListener;
                if (onGameStreamingTypeListener2 != null) {
                    onGameStreamingTypeListener2.onStreamingType(false, str7);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("109", "success", "", jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(GameStreamingTypeResult.class);
                String str6 = "";
                if (baseResult == null) {
                    LogUtils.e(HmcpRequestManager.TAG, "tv_battle->timeframe--getStreamingType--result is empty");
                    String string6 = ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    ReportGetGameStreamingTypeFailed reportGetGameStreamingTypeFailed = new ReportGetGameStreamingTypeFailed("-1001", string6, -1001, string6, cuRetryPolicy.getCurrentTimeout(), gameStreamingType);
                    reportGetGameStreamingTypeFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetGameStreamingTypeFailed));
                    if (onGameStreamingTypeListener != null) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(Constants.ERRORCODE_GAME_STREAMING_003);
                        if (!TextUtils.isEmpty(string6)) {
                            str6 = "-" + string6;
                        }
                        sb6.append(str6);
                        onGameStreamingTypeListener.onStreamingType(false, sb6.toString());
                        return;
                    }
                    return;
                }
                GameStreamingTypeResult gameStreamingTypeResult = (GameStreamingTypeResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + HmcpRequestManager.this.packageName + " timeframe--:getStreamingType---response--->" + JsonUtil.toJsonString(gameStreamingTypeResult));
                if (gameStreamingTypeResult.code == 0) {
                    String jsonString = JsonUtil.toJsonString(reportGetGameStreamingType);
                    if (!TextUtils.isEmpty(gameStreamingTypeResult.streamType)) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_SUCCESS, jsonString);
                        if (onGameStreamingTypeListener != null) {
                            onGameStreamingTypeListener.onStreamingType(true, String.valueOf(Constants.STREAM_TYPE_RTC.equalsIgnoreCase(gameStreamingTypeResult.streamType) ? 1 : 0));
                            return;
                        }
                        return;
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, jsonString + "; result is empty");
                    if (onGameStreamingTypeListener != null) {
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(Constants.ERRORCODE_GAME_STREAMING_003);
                        if (!TextUtils.isEmpty(gameStreamingTypeResult.msg)) {
                            str6 = "-" + gameStreamingTypeResult.msg;
                        }
                        sb7.append(str6);
                        onGameStreamingTypeListener.onStreamingType(false, sb7.toString());
                        return;
                    }
                    return;
                }
                LogUtils.e(HmcpRequestManager.TAG, "tv_battle->timeframe--getStreamingType--errorMsg-->" + gameStreamingTypeResult.errorMsg);
                IRetryPolicy cuRetryPolicy2 = HmcpRequestManager.this.getCuRetryPolicy(GameStreamingTypeResult.class);
                ReportGetGameStreamingTypeFailed reportGetGameStreamingTypeFailed2 = new ReportGetGameStreamingTypeFailed("" + gameStreamingTypeResult.errorCode, gameStreamingTypeResult.errorMsg, gameStreamingTypeResult.code, gameStreamingTypeResult.msg, cuRetryPolicy2.getCurrentTimeout(), gameStreamingType);
                reportGetGameStreamingTypeFailed2.retryRequestCount = cuRetryPolicy2.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GAME_STREAMING_TYPE_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetGameStreamingTypeFailed2));
                if (onGameStreamingTypeListener != null) {
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(gameStreamingTypeResult.code);
                    if (!TextUtils.isEmpty(gameStreamingTypeResult.errorMsg)) {
                        str6 = "-" + gameStreamingTypeResult.errorMsg;
                    }
                    sb8.append(str6);
                    onGameStreamingTypeListener.onStreamingType(false, sb8.toString());
                }
            }
        });
    }

    public void getSwitchStreamTypeRequest(final StreamType streamType, final int i10, final OnSwitchStreamTypeListener onSwitchStreamTypeListener, final OnGetSwitchStreamTypeResultListener onGetSwitchStreamTypeResultListener) {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.5
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.getSwitchStreamTypeRequest("", streamType, i10, onSwitchStreamTypeListener, onGetSwitchStreamTypeResultListener);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.getSwitchStreamTypeRequest(str, streamType, i10, onSwitchStreamTypeListener, onGetSwitchStreamTypeResultListener);
                }
            });
        } else {
            getSwitchStreamTypeRequest("", streamType, i10, onSwitchStreamTypeListener, onGetSwitchStreamTypeResultListener);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public boolean getTransferOpen() {
        return this.isTransfer;
    }

    public int getViewResolutionHeight() {
        return this.mViewResolutionHeight;
    }

    public int getViewResolutionWidth() {
        return this.mViewResolutionWidth;
    }

    public void initConfigInfo() {
        LogUtils.e(TAG, "---initConfigInfo====:");
        this.mLanguageManager = new AbsLanguageManager() { // from class: com.haima.hmcp.business.HmcpRequestManager.1
        };
        if (TextUtils.isEmpty(CountlyUtil.mAccessKey) || TextUtils.isEmpty(CountlyUtil.mChannelId)) {
            try {
                Bundle bundle = this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128).metaData;
                this.mAccessKeyId = bundle.getString(ACCESS_KEY_ID);
                this.mChannelId = bundle.getString(CHANNEL_ID);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            CountlyUtil.mAccessKey = this.mAccessKeyId;
            CountlyUtil.mChannelId = this.mChannelId;
        } else {
            this.mAccessKeyId = CountlyUtil.mAccessKey;
            this.mChannelId = CountlyUtil.mChannelId;
        }
        String str = this.mChannelId;
        if (str == null || str.isEmpty()) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "mChannelId is null or empty", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
            throw new RuntimeException(this.mContext.toString() + " Must specify Channel ID");
        }
        String str2 = this.mAccessKeyId;
        if (str2 != null && !str2.isEmpty()) {
            initData();
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_SDK_INIT_FAILED, JsonUtil.toJsonString(new ReportInitFailed(Constants.ERRORCODE_DID_003, "mAccessKeyId is null or empty", 0, "", 0, CountlyUtil.mAccessKey, CountlyUtil.mChannelId)));
        throw new RuntimeException(this.mContext.toString() + " Must specify Access Key ID");
    }

    protected void initData() {
        this.mHttpManager = getHttpManager(this.mContext);
        this.mDeviceInfo = ConfigUtil.getDeviceInfo(this.mContext);
        ClientInfo clientInfo = new ClientInfo();
        this.mClientInfo = clientInfo;
        clientInfo.accessKeyId = this.mAccessKeyId;
        clientInfo.clientPkgName = this.mContext.getPackageName();
        this.mClientInfo.sdkVersion = ConfigUtil.getVersion();
        this.mClientInfo.channelId = this.mChannelId;
        this.mDeviceId = DataUtils.getSharedInstance(this.mContext).getPreferences(KEY_PREFERENCE_DID, "0");
        this.mLinkSt = String.valueOf(new Date().getTime());
        if (TextUtils.isEmpty(HmcpManager.getInstance().getHmcpSaasAuthUrl())) {
            this.saasAuthUrl = Constants.HMCP_SAAS_AUTH_URL;
        } else {
            this.saasAuthUrl = HmcpManager.getInstance().getHmcpSaasAuthUrl();
        }
        CountlyUtil.init(this.mContext, Constants.COUNTLY_URL, Constants.COUNTLY_KEY);
        CountlyUtil.mServerTimestamp = "";
        CountlyUtil.mDeviceID = this.mDeviceId;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void isAllowConnect2Access(boolean z10) {
        this.isAllowConnect2Access = z10;
    }

    public boolean isCloudIdChange() {
        return this.isCloudIdChange;
    }

    public boolean isDisableAutoStream() {
        return this.mDisableAutoStream;
    }

    public boolean isGetCloudServiceRequestV2Requesting() {
        return this.isGetCloudServiceRequestV2Requesting;
    }

    public boolean isInTvRtcBlackList() {
        return this.mIsInTvRtcBlackList;
    }

    protected void notifyInitListener(String str, String str2, String str3) {
        if (this.mCallBack != null) {
            if (TextUtils.isEmpty(str3)) {
                if (TextUtils.isEmpty(str)) {
                    this.mCallBack.success();
                    return;
                } else {
                    this.mCallBack.fail(concatErrorCode(str2, str));
                    return;
                }
            }
            return;
        }
        LogUtils.e(TAG, "mCallBack == null" + str + "  " + str2);
    }

    protected void notifySaasListenerResponse(int i10, String str) {
        OnHmcpSaasRequestListener onHmcpSaasRequestListener = this.mSaasListener;
        if (onHmcpSaasRequestListener != null) {
            onHmcpSaasRequestListener.onResponse(i10, str);
            return;
        }
        CountlyUtil.recordErrorEvent("notifySaasListenerResponse got mSaasListener == null; type = " + i10 + "; errorInfo = " + str + "; isStopPlay = " + this.isStopPlay);
    }

    public RequestPreCheck preCheck(int i10) {
        RequestPreCheck requestPreCheck = new RequestPreCheck();
        if (i10 == 201 || i10 == 202 || i10 == 214 || i10 == 312) {
            boolean zIsEmpty = TextUtils.isEmpty(this.mSecretKey);
            boolean zIsEmpty2 = TextUtils.isEmpty(this.mCloudId);
            if (zIsEmpty || zIsEmpty2) {
                requestPreCheck.requestAllow = false;
                requestPreCheck.msg = "mSecretKey is empty:" + zIsEmpty + "; mCloudId is empty:" + zIsEmpty2;
            }
        }
        return requestPreCheck;
    }

    public void queryX86ControlInfo(String str, final OnContronListener onContronListener) {
        LogUtils.i(TAG, "queryX86ControlInfo() cid=" + str);
        ControlQueryParam controlQueryParam = new ControlQueryParam();
        controlQueryParam.setCid(Long.parseLong(str));
        controlQueryParam.setEnvType(Constants.ENV_TYPE);
        getHttpManager(this.mContext).postRequest("", getPostJson(305, (IParameter) controlQueryParam, false, System.currentTimeMillis()), ControlQueryResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.37
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "queryX86ControlInfo error :" + i10 + ";" + str2);
                CountlyUtil.recordEvent(Constants.Countly.QUERY_CONTROL_FAIL, i10);
                OnContronListener onContronListener2 = onContronListener;
                if (onContronListener2 != null) {
                    onContronListener2.controlQuery(false, null, i10 + ";" + str2);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.e(HmcpRequestManager.TAG, "queryX86ControlInfo error, result is empty");
                    return;
                }
                LogUtils.i(HmcpRequestManager.TAG, "queryX86ControlInfo result = " + baseResult.toString());
                if (baseResult.code == 0) {
                    List<ControlInfo> controlInfos = ((ControlQueryResult) baseResult).getControlInfos();
                    CountlyUtil.recordEvent(Constants.Countly.QUERY_CONTROL_SUCCESS, com.alibaba.fastjson.a.toJSONString(controlInfos));
                    OnContronListener onContronListener2 = onContronListener;
                    if (onContronListener2 != null) {
                        onContronListener2.controlQuery(true, controlInfos, baseResult.msg);
                        return;
                    }
                    return;
                }
                CountlyUtil.recordEvent(Constants.Countly.QUERY_CONTROL_FAIL, baseResult.errorCode + ";" + baseResult.code);
                OnContronListener onContronListener3 = onContronListener;
                if (onContronListener3 != null) {
                    onContronListener3.controlQuery(false, null, baseResult.msg);
                }
            }
        });
    }

    public void relaunchGame(final OnRelaunchGameListener onRelaunchGameListener) {
        String str = TAG;
        LogUtils.d(str, "==relaunchGame");
        RequestPreCheck requestPreCheckPreCheck = preCheck(312);
        if (!requestPreCheckPreCheck.requestAllow) {
            if (onRelaunchGameListener != null) {
                onRelaunchGameListener.fail(requestPreCheckPreCheck.msg);
            }
            CountlyUtil.recordErrorEvent(requestPreCheckPreCheck.msg);
            return;
        }
        RelaunchGameParameters relaunchGameParameters = new RelaunchGameParameters();
        relaunchGameParameters.cloudId = this.mCloudId;
        relaunchGameParameters.envType = Constants.ENV_TYPE;
        CountlyUtil.recordEvent(Constants.COUNTLY_RELAUNCH_GAME, JsonUtil.toJsonString(relaunchGameParameters));
        LogUtils.e(str, JsonUtil.toJsonString(relaunchGameParameters));
        Serializable postJson = getPostJson(312, (IParameter) relaunchGameParameters, false, System.currentTimeMillis());
        LogUtils.i(str, "timeframe--relaunchGame--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_RELAUNCH_GAME, postJson, RelaunchGameResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.23
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.d(HmcpRequestManager.TAG, "relaunchGame--response-->onError-->" + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_RELAUNCH_GAME_FAIL, JsonUtil.toJsonString(new ReportBaseFailed("" + i10, str2, i10, str2, HmcpRequestManager.this.getCuRetryPolicy(RelaunchGameResult.class).getCurrentTimeout())));
                OnRelaunchGameListener onRelaunchGameListener2 = onRelaunchGameListener;
                if (onRelaunchGameListener2 == null) {
                    return;
                }
                if (i10 == -1000) {
                    onRelaunchGameListener2.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_RELAUNCH_GAME_PREFIX_004));
                } else if (i10 == -1002) {
                    onRelaunchGameListener2.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_RELAUNCH_GAME_PREFIX_001));
                } else {
                    onRelaunchGameListener2.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_RELAUNCH_GAME_PREFIX_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_RELAUNCH_GAME_FAIL, JsonUtil.toJsonString(baseResult));
                    OnRelaunchGameListener onRelaunchGameListener2 = onRelaunchGameListener;
                    if (onRelaunchGameListener2 != null) {
                        onRelaunchGameListener2.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_RELAUNCH_GAME_PREFIX_003));
                        return;
                    }
                    return;
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--relaunchGame--response-->" + baseResult);
                if (baseResult.code == 0) {
                    OnRelaunchGameListener onRelaunchGameListener3 = onRelaunchGameListener;
                    if (onRelaunchGameListener3 != null) {
                        onRelaunchGameListener3.success(true);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_RELAUNCH_GAME_SUCCESS, JsonUtil.toJsonString(baseResult));
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTLY_RELAUNCH_GAME_FAIL, JsonUtil.toJsonString(baseResult));
                if (onRelaunchGameListener != null) {
                    onRelaunchGameListener.fail(HmcpRequestManager.this.concatErrorCode(TextUtils.isEmpty(baseResult.errorMsg) ? baseResult.msg : baseResult.errorMsg, TextUtils.isEmpty(baseResult.errorCode) ? String.valueOf(baseResult.code) : baseResult.errorCode));
                }
            }
        });
    }

    public void remoteCapture(final RemoteCaptureParameters remoteCaptureParameters, final RemoteCaptureListener remoteCaptureListener) {
        ReportRemoteCapture reportRemoteCapture = new ReportRemoteCapture();
        reportRemoteCapture.opType = remoteCaptureParameters.opType;
        reportRemoteCapture.interval = remoteCaptureParameters.interval;
        CountlyUtil.recordEvent("12260", JsonUtil.toJsonString(reportRemoteCapture));
        getHttpManager(this.mContext).postRequest("", getPostJson(306, (IParameter) remoteCaptureParameters, false, System.currentTimeMillis()), BaseResultImp.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.34
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str) {
                LogUtils.e(HmcpRequestManager.TAG, " onError: " + i10 + " " + str);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(StopServiceResult.class);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(i10);
                CountlyUtil.recordEvent("12261", JsonUtil.toJsonString(new ReportBaseFailed(sb2.toString(), str, i10, str, cuRetryPolicy.getCurrentTimeout())));
                RemoteCaptureListener remoteCaptureListener2 = remoteCaptureListener;
                if (remoteCaptureListener2 != null) {
                    remoteCaptureListener2.onResult(false, "" + i10, str);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult != null) {
                    int i10 = baseResult.code;
                    if (i10 != 0) {
                        CountlyUtil.recordEvent("12261", i10);
                        RemoteCaptureListener remoteCaptureListener2 = remoteCaptureListener;
                        if (remoteCaptureListener2 != null) {
                            remoteCaptureListener2.onResult(false, baseResult.errorCode, baseResult.msg);
                            return;
                        }
                        return;
                    }
                    CountlyUtil.recordEvent("12261", JsonUtil.toJsonString(remoteCaptureParameters));
                    LogUtils.d(HmcpRequestManager.TAG, " onSuccess: " + baseResult);
                    remoteCaptureListener.onResult(true, baseResult.errorCode, "");
                }
            }
        });
    }

    public void requestControl(final String str, final String str2, final String str3, boolean z10, Boolean bool, final OnContronListener onContronListener, final OnGetControlResultListener onGetControlResultListener, final String str4) {
        this.enableHighBitrate = bool;
        if (z10) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.39
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str5) {
                    HmcpRequestManager.this.requestControl(str, str2, str3, "", onContronListener, onGetControlResultListener, str4);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str5) {
                    HmcpRequestManager.this.requestControl(str, str2, str3, str5, onContronListener, onGetControlResultListener, str4);
                }
            });
        } else {
            requestControl(str, str2, str3, "", onContronListener, onGetControlResultListener, str4);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void requestData(Bundle bundle) {
        this.mOrientation = (ScreenOrientation) bundle.getSerializable("orientation");
        this.mPlayTime = bundle.getLong("playTime");
        this.mPriority = bundle.getInt("priority");
        this.mAppId = bundle.getInt("appId");
        this.mAppName = bundle.getString("appName");
        this.mAppChannel = bundle.getString("appChannel");
        this.mArchiveFromBid = bundle.getString("archiveFromBid");
        this.mArchiveFromUserId = bundle.getString("archiveFromUserId");
        this.mCToken = bundle.getString("cToken");
        String str = TAG;
        LogUtils.i(str, "requestData, mCToken = " + this.mCToken);
        this.mExtraId = bundle.getString("extraId");
        this.mPayStr = bundle.getString("payStr");
        this.mBitRate = bundle.getInt("bitRate");
        this.mResolutionID = String.valueOf(bundle.getInt("resolutionId"));
        this.mArchive = bundle.getBoolean("archived");
        this.mProtoData = bundle.getString("protoData");
        this.mNoInputLimitTime = bundle.getInt("noInputLimitTime");
        this.mViewResolutionWidth = bundle.getInt("viewResolutionWidth");
        this.mViewResolutionHeight = bundle.getInt("viewResolutionHeight");
        int i10 = bundle.getInt(BaseVideoView.VIEW_FRAME_RATE);
        LogUtils.i(str, "requestData, VIEW_FRAME_RATE = " + i10);
        if (i10 > 0) {
            this.mViewFrameRate = i10;
        }
        LogUtils.i(str, "requestData, viewFrameRate = " + i10 + " and mViewFrameRate = " + this.mViewFrameRate);
        this.mIsAllowCompatibleIPV6 = bundle.getBoolean("allowCompatibleIpv6");
        this.mComponentType = bundle.getInt(BaseVideoView.COMPONENT_TYPE);
        this.mAction = bundle.getString("action");
        this.mComponentName = bundle.getString(BaseVideoView.COMPONENT_NAME);
        this.mUserDeviceInfo = bundle.getString(BaseVideoView.USER_DEVICE_INFO);
        this.mSeiEnable = bundle.getBoolean(Constants.H264_SEI_DATA_ENABLE, false);
        this.isChangeStreamType = bundle.getBoolean(Constants.RTC_IS_CHANGE_STREAM_TYPE, false);
        this.languageFromApp = bundle.getString(Language.LANGUAGE_CONFIG, null);
        this.mDisableAutoStream = bundle.getBoolean(BaseVideoView.DISABLE_AUTO_STREAM, false);
        this.mGid = bundle.getString("gid");
        this.mStreamingMode = bundle.getInt(BaseVideoView.STREAMING_MODE);
        if (bundle.containsKey(BaseVideoView.KEEP_LOGIN_STATUS)) {
            this.keepLoginStatus = Boolean.valueOf(bundle.getBoolean(BaseVideoView.KEEP_LOGIN_STATUS, false));
        } else {
            this.keepLoginStatus = null;
        }
        if (bundle.containsKey(BaseVideoView.OPEN_MULTI_ARCHIVE)) {
            this.mOpenMultiArchive = Boolean.valueOf(bundle.getBoolean(BaseVideoView.OPEN_MULTI_ARCHIVE, false));
        } else {
            this.mOpenMultiArchive = null;
        }
        if (bundle.containsKey(BaseVideoView.SAVE_ARCHIVE_MULTI_ARCHIVE)) {
            this.mSaveArchiveMultiArchive = Boolean.valueOf(bundle.getBoolean(BaseVideoView.SAVE_ARCHIVE_MULTI_ARCHIVE, false));
        } else {
            this.mSaveArchiveMultiArchive = null;
        }
        this.mSaveArchiveBidMultiArchive = Utils.getStringFromBundle(bundle, BaseVideoView.SAVE_ARCHIVE_BID_MULTI_ARCHIVE, null);
        this.mSaveArchiveUidMultiArchive = Utils.getStringFromBundle(bundle, BaseVideoView.SAVE_ARCHIVE_UID_MULTI_ARCHIVE, null);
        try {
            this.mTransmissionDataToSaas = null;
            if (bundle.containsKey(BaseVideoView.TRANSMISSION_DATA_TO_SAAS)) {
                this.mTransmissionDataToSaas = (SerializableMap) bundle.getSerializable(BaseVideoView.TRANSMISSION_DATA_TO_SAAS);
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "get transmissionDataToSaas from bundle has Exception", e10);
        }
        this.isCustomPlayer = bundle.getBoolean(BaseVideoView.IS_CUSTOM_PLAYER, false);
        this.streamType = bundle.getString("streamType");
        if (bundle.containsKey(BaseVideoView.KEEP_ALIVE_TIME_SEC)) {
            this.mKeepAliveTimeSeconds = Integer.valueOf(bundle.getInt(BaseVideoView.KEEP_ALIVE_TIME_SEC, -1));
        } else {
            this.mKeepAliveTimeSeconds = null;
        }
        if (bundle.containsKey(BaseVideoView.DEVICE_PIXEL_RATIO)) {
            this.mDevicePixelRation = Integer.valueOf(bundle.getInt(BaseVideoView.DEVICE_PIXEL_RATIO, -1));
        } else {
            this.mDevicePixelRation = null;
        }
        this.cTokenTimeStamp = getCTokenTimeStamp(bundle);
        setCutOutHeightPercent(bundle.getFloatArray(BaseVideoView.CUTOUT_HEIGHT_PERCENT));
        if (TextUtils.isEmpty(this.mUserInfo2.userId) || TextUtils.isEmpty(this.mUserInfo2.userToken)) {
            HmcpPlayerListener hmcpPlayerListener = this.mPlayerListener;
            if (hmcpPlayerListener != null) {
                hmcpPlayerListener.onPlayerError(Constants.ERRORCODE_ERROR_000002, ResourceManager.getString(R.string.Error_000002));
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONFIG_ARG_FAIL, JsonUtil.toJsonString(new ReportBaseFailed(Constants.ERRORCODE_ERROR_000002, "userInfo2.userId or userToken is empty", 0, "", 0)));
        }
        if (bundle.containsKey("battle")) {
            Serializable serializable = bundle.getSerializable("battle");
            if (serializable instanceof Battle) {
                Battle battle = (Battle) serializable;
                BattleMode battleMode = this.mBattleMode;
                battleMode.battle = battle;
                battleMode.player = battle.mode != 1 ? 0 : 1;
            }
        } else {
            this.mBattleMode.reset();
        }
        if (this.isChangeStreamType) {
            getConfigure(this.mAppName, new OnConfigListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.2
                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onFail(String str2) {
                    LogUtils.e(HmcpRequestManager.TAG, "getConfigure--onFail-->" + str2);
                    CountlyUtil.recordErrorEvent(str2);
                }

                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onSuccess() {
                    HmcpRequestManager.this.notifySaasListenerResponse(4, "");
                }
            });
            return;
        }
        getExtraConfigure(this.mAppName, new OnConfigListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.3
            @Override // com.haima.hmcp.listeners.OnConfigListener
            public void onFail(String str2) {
                String str3 = "getExtraConfigure--onFail-->" + str2;
                LogUtils.e(HmcpRequestManager.TAG, str3);
                CountlyUtil.recordErrorEvent(str3);
            }

            @Override // com.haima.hmcp.listeners.OnConfigListener
            public void onSuccess() {
                LogUtils.e(HmcpRequestManager.TAG, "getExtraConfigure--onSuccess-->");
            }
        });
        if (bundle.containsKey(BaseVideoView.FINISH_BY_SERVER)) {
            this.mFinishByServer = Boolean.valueOf(bundle.getBoolean(BaseVideoView.FINISH_BY_SERVER));
        } else {
            this.mFinishByServer = null;
        }
        getCloudServiceRequestV3(false);
    }

    public void requestPinCode(String str, final OnContronListener onContronListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE);
        PinCodeParameters pinCodeParameters = new PinCodeParameters();
        pinCodeParameters.cid = str;
        getHttpManager(this.mContext).postRequest("12200", getPostJson(220, (IParameter) pinCodeParameters, false, System.currentTimeMillis()), LivingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.36
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "requestPinCode onError: " + i10 + " " + str2);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE_FAIL, i10);
                OnContronListener onContronListener2 = onContronListener;
                if (onContronListener2 != null) {
                    if (i10 == -1000) {
                        onContronListener2.pinCodeResult(false, null, null, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_PIN_CODE_004));
                    } else if (i10 == -1002) {
                        onContronListener2.pinCodeResult(false, null, null, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_PIN_CODE_001));
                    } else {
                        onContronListener2.pinCodeResult(false, null, null, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_PIN_CODE_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    onContronListener.pinCodeResult(false, null, null, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_PIN_CODE_003));
                    return;
                }
                if (baseResult.code == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestPinCode onSuccess: " + baseResult.toString());
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE_FAIL, baseResult.errorMsg);
                OnContronListener onContronListener2 = onContronListener;
                if (onContronListener2 != null) {
                    onContronListener2.pinCodeResult(false, null, null, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void requestStartForceKeepAlive(String str, long j10, final OnForceKeepAliveListener onForceKeepAliveListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE);
        ForceKeepAliveParameters forceKeepAliveParameters = new ForceKeepAliveParameters();
        forceKeepAliveParameters.cid = str;
        forceKeepAliveParameters.hangupTimeSeconds = j10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = TAG;
        LogUtils.d(str2, "timeframe--requestStartForceKeepAlive--request-->" + forceKeepAliveParameters);
        Serializable postJson = getPostJson(308, (IParameter) forceKeepAliveParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--requestStartForceKeepAlive--request-->" + JsonUtil.toJsonString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START_FORCE_KEEP_ALIVE, postJson, LivingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.41
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "requestStartForceKeepAlive onError: " + i10 + " " + str3);
                CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, i10);
                OnForceKeepAliveListener onForceKeepAliveListener2 = onForceKeepAliveListener;
                if (onForceKeepAliveListener2 != null) {
                    if (i10 == -1000) {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_START_FORCE_KEEP_ALIVE_004));
                    } else if (i10 == -1002) {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_START_FORCE_KEEP_ALIVE_001));
                    } else {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_START_FORCE_KEEP_ALIVE_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStartForceKeepAlive onFail: result is null");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, "result is null");
                    onForceKeepAliveListener.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_START_FORCE_KEEP_ALIVE_003));
                    return;
                }
                if (baseResult.code == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStartForceKeepAlive onSuccess: " + baseResult);
                    OnForceKeepAliveListener onForceKeepAliveListener2 = onForceKeepAliveListener;
                    if (onForceKeepAliveListener2 != null) {
                        onForceKeepAliveListener2.onKeepAlive(true, "");
                        return;
                    }
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "requestStartForceKeepAlive onFail: " + baseResult);
                CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, baseResult.errorMsg);
                OnForceKeepAliveListener onForceKeepAliveListener3 = onForceKeepAliveListener;
                if (onForceKeepAliveListener3 != null) {
                    onForceKeepAliveListener3.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void requestStartLiving(String str, String str2, String str3, final OnLivingListener onLivingListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_GET_START_LIVING);
        LivingParameters livingParameters = new LivingParameters();
        livingParameters.livingId = str2;
        livingParameters.cid = str;
        livingParameters.pushStreamUrl = str3;
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START_LIVING, getPostJson(219, (IParameter) livingParameters, false, System.currentTimeMillis()), LivingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.33
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str4) {
                LogUtils.e(HmcpRequestManager.TAG, "requestStartLiving onError: " + i10 + " " + str4);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_START_LIVING_FAIL, i10);
                OnLivingListener onLivingListener2 = onLivingListener;
                if (onLivingListener2 != null) {
                    if (i10 == -1000) {
                        onLivingListener2.start(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_START_LIVING_004));
                    } else if (i10 == -1002) {
                        onLivingListener2.start(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_START_LIVING_001));
                    } else {
                        onLivingListener2.start(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_START_LIVING_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    onLivingListener.start(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_START_LIVING_003));
                    return;
                }
                int i10 = baseResult.code;
                if (i10 == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStartLiving onSuccess: " + baseResult.toString());
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_START_LIVING_FAIL, i10);
                OnLivingListener onLivingListener2 = onLivingListener;
                if (onLivingListener2 != null) {
                    onLivingListener2.start(false, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void requestStartRecordStream(String str, final StartRecordStreamListener startRecordStreamListener) {
        CountlyUtil.recordEvent(Constants.COUNTLY_START_RECORD_STREAM);
        StartRecordStreamParameters startRecordStreamParameters = new StartRecordStreamParameters();
        startRecordStreamParameters.cid = Long.valueOf(str);
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START_RECORD, getPostJson(320, (IParameter) startRecordStreamParameters, false, System.currentTimeMillis()), BaseResultImp.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.29
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "requestStartRecordStream onError: " + i10 + " " + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_START_RECORD_STREAM_FAIL, i10);
                StartRecordStreamListener startRecordStreamListener2 = startRecordStreamListener;
                if (startRecordStreamListener2 != null) {
                    if (i10 == -1000) {
                        startRecordStreamListener2.startRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), "100320004"));
                    } else if (i10 == -1002) {
                        startRecordStreamListener2.startRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), "100320001"));
                    } else {
                        startRecordStreamListener2.startRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), "100320002"));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStartRecordStream no response data");
                    StartRecordStreamListener startRecordStreamListener2 = startRecordStreamListener;
                    if (startRecordStreamListener2 != null) {
                        startRecordStreamListener2.startRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), "100320003"));
                        return;
                    }
                    return;
                }
                int i10 = baseResult.code;
                if (i10 != 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_START_RECORD_STREAM_FAIL, i10);
                    StartRecordStreamListener startRecordStreamListener3 = startRecordStreamListener;
                    if (startRecordStreamListener3 != null) {
                        startRecordStreamListener3.startRecord(false, HmcpRequestManager.this.concatErrorCode(baseResult.msg, String.valueOf(baseResult.code)));
                        return;
                    }
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "requestStartRecordStream onSuccess: " + baseResult.toString());
                StartRecordStreamListener startRecordStreamListener4 = startRecordStreamListener;
                if (startRecordStreamListener4 != null) {
                    startRecordStreamListener4.startRecord(true, "");
                }
            }
        });
    }

    public void requestStopForceKeepAlive(String str, final OnForceKeepAliveListener onForceKeepAliveListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE);
        ForceKeepAliveParameters forceKeepAliveParameters = new ForceKeepAliveParameters();
        forceKeepAliveParameters.cid = str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = TAG;
        LogUtils.d(str2, "timeframe--requestStopForceKeepAlive--request-->" + forceKeepAliveParameters);
        Serializable postJson = getPostJson(309, (IParameter) forceKeepAliveParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--requestStopForceKeepAlive--request-->" + JsonUtil.toJsonString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_STOP_FORCE_KEEP_ALIVE, postJson, LivingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.42
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "requestStopForceKeepAlive onError: " + i10 + " " + str3);
                CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, i10);
                OnForceKeepAliveListener onForceKeepAliveListener2 = onForceKeepAliveListener;
                if (onForceKeepAliveListener2 != null) {
                    if (i10 == -1000) {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_STOP_FORCE_KEEP_ALIVE_004));
                    } else if (i10 == -1002) {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_STOP_FORCE_KEEP_ALIVE_001));
                    } else {
                        onForceKeepAliveListener2.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_STOP_FORCE_KEEP_ALIVE_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStopForceKeepAlive onFail: result is null");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, "result is null");
                    onForceKeepAliveListener.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_STOP_FORCE_KEEP_ALIVE_003));
                    return;
                }
                if (baseResult.code == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStopForceKeepAlive onSuccess: " + baseResult);
                    OnForceKeepAliveListener onForceKeepAliveListener2 = onForceKeepAliveListener;
                    if (onForceKeepAliveListener2 != null) {
                        onForceKeepAliveListener2.onKeepAlive(true, "");
                        return;
                    }
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "requestStopForceKeepAlive onFail: " + baseResult);
                CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, baseResult.errorMsg);
                OnForceKeepAliveListener onForceKeepAliveListener3 = onForceKeepAliveListener;
                if (onForceKeepAliveListener3 != null) {
                    onForceKeepAliveListener3.onKeepAlive(false, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void requestStopLiving(String str, String str2, final OnLivingListener onLivingListener) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_GET_STOP_LIVING);
        LivingParameters livingParameters = new LivingParameters();
        livingParameters.cid = str;
        livingParameters.livingId = str2;
        getHttpManager(this.mContext).postRequest("12230", getPostJson(223, (IParameter) livingParameters, false, System.currentTimeMillis()), LivingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.35
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "requestStopLiving onError: " + i10 + " " + str3);
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_STOP_LIVING_FAIL, i10);
                OnLivingListener onLivingListener2 = onLivingListener;
                if (onLivingListener2 != null) {
                    if (i10 == -1000) {
                        onLivingListener2.stop(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_STOP_LIVING_004));
                    } else if (i10 == -1002) {
                        onLivingListener2.stop(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_STOP_LIVING_001));
                    } else {
                        onLivingListener2.stop(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_STOP_LIVING_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    OnLivingListener onLivingListener2 = onLivingListener;
                    if (onLivingListener2 != null) {
                        onLivingListener2.stop(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_STOP_LIVING_003));
                        return;
                    }
                    return;
                }
                int i10 = baseResult.code;
                if (i10 == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "requestStopLiving onSuccess: " + baseResult.toString());
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_STOP_LIVING_FAIL, i10);
                OnLivingListener onLivingListener3 = onLivingListener;
                if (onLivingListener3 != null) {
                    onLivingListener3.stop(false, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void requestX86ControlDistribute(String str, List<ControlInfo> list, final OnContronListener onContronListener) {
        if (list == null) {
            LogUtils.e(TAG, "requestX86ControlDistribute error  controls is empty");
            CountlyUtil.recordEvent(Constants.Countly.DISTRIBUTE_CONTROL_FAIL, "control info is null");
            if (onContronListener != null) {
                onContronListener.controlDistribute(false, null, "control info is null");
                return;
            }
            return;
        }
        ControlDistributeParam controlDistributeParam = new ControlDistributeParam();
        controlDistributeParam.setCid(Long.parseLong(str));
        controlDistributeParam.setControlInfos(list);
        controlDistributeParam.setEnvType(Constants.ENV_TYPE);
        getHttpManager(this.mContext).postRequest("", getPostJson(304, (IParameter) controlDistributeParam, false, System.currentTimeMillis()), ControlDistributeResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.38
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "requestX86OperateDistribute error :" + i10 + ";" + str2);
                CountlyUtil.recordEvent(Constants.Countly.DISTRIBUTE_CONTROL_FAIL, i10);
                OnContronListener onContronListener2 = onContronListener;
                if (onContronListener2 != null) {
                    onContronListener2.controlDistribute(false, null, str2);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult != null) {
                    LogUtils.i(HmcpRequestManager.TAG, "requestX86OperateDistribute result = " + baseResult.toString());
                    if (baseResult.code == 0) {
                        List<ControlInfo> controlInfos = ((ControlDistributeResult) baseResult).getControlInfos();
                        CountlyUtil.recordEvent(Constants.Countly.DISTRIBUTE_CONTROL_SUCCESS, com.alibaba.fastjson.a.toJSONString(controlInfos));
                        OnContronListener onContronListener2 = onContronListener;
                        if (onContronListener2 != null) {
                            onContronListener2.controlDistribute(true, controlInfos, baseResult.msg);
                            return;
                        }
                        return;
                    }
                    CountlyUtil.recordEvent(Constants.Countly.DISTRIBUTE_CONTROL_FAIL, baseResult.errorCode + ";" + baseResult.code);
                    OnContronListener onContronListener3 = onContronListener;
                    if (onContronListener3 != null) {
                        onContronListener3.controlDistribute(false, null, baseResult.msg);
                    }
                }
            }
        });
    }

    public void resetHttpStatus() {
        this.isStopPlay = false;
        getHttpManager(this.mContext).setIsStop(this.isStopPlay);
    }

    public void setAccessKeyId(String str) {
        if (this.mClientInfo != null && !TextUtils.isEmpty(str)) {
            this.mClientInfo.accessKeyId = str;
            return;
        }
        LogUtils.e(TAG, "setAccessKeyId:" + str + " Failed");
    }

    public void setAccessReconnectURL(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mAccessReconnectURL = str;
    }

    public void setCloudPlayInfo(CloudPlayInfo cloudPlayInfo) {
        this.mCloudPlayInfo = cloudPlayInfo;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void setConfigInfo(String str) {
        this.mConfigInfo = str;
    }

    public void setCutOutHeightPercent(float[] fArr) {
        if (fArr == null || fArr.length != 2) {
            return;
        }
        this.mAnomalousLeft = fArr[0];
        this.mAnomalousRight = fArr[1];
    }

    public void setDeviceInfo(DeviceInfo deviceInfo) {
        this.mDeviceInfo = deviceInfo;
    }

    public void setDevicePixelRatio(int i10) {
        if (i10 > 0) {
            this.mDevicePixelRation = Integer.valueOf(i10);
        } else {
            this.mDevicePixelRation = null;
        }
        LogUtils.d(TAG, "setDevicePixelRatio :" + i10);
    }

    public void setDisableAutoStream(boolean z10) {
        this.mDisableAutoStream = z10;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void setExtraData(IntentExtraData intentExtraData) {
        LogUtils.i(TAG, "IntentExtraData extraData = " + intentExtraData);
        this.mExtraData = intentExtraData;
    }

    public void setHighBitrateEnable(Boolean bool) {
        this.enableHighBitrate = bool;
    }

    public void setHmcpSaasRequestListener(OnHmcpSaasRequestListener onHmcpSaasRequestListener) {
        this.mSaasListener = onHmcpSaasRequestListener;
    }

    public void setIsAhead(boolean z10) {
        this.mIsAhead = z10;
    }

    public void setReleaseCid(final String str, final String str2, String str3, final String str4, UserInfo2 userInfo2, String str5, Long l10, Long l11, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        RequestReleaseCid requestReleaseCid = new RequestReleaseCid();
        requestReleaseCid.cid = str2;
        requestReleaseCid.cToken = str3;
        requestReleaseCid.pkgName = str;
        requestReleaseCid.userInfo = userInfo2;
        requestReleaseCid.appChannel = str4;
        requestReleaseCid.envType = Constants.ENV_TYPE;
        requestReleaseCid.timestamp = l10;
        if (l11 != null) {
            requestReleaseCid.playingTime = l11;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str6 = TAG;
        LogUtils.e(str6, "timeframe--setReleaseCid--request-->" + requestReleaseCid);
        Serializable postJson = getPostJson(218, requestReleaseCid, false, jCurrentTimeMillis, str5);
        LogUtils.e(str6, "timeframe--setReleaseCid--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        final ReportStopCloudService reportStopCloudService = new ReportStopCloudService("" + str2, str, str4);
        CountlyUtil.recordEvent(Constants.COUNTYLY_RELEASE_CID, JsonUtil.toJsonString(reportStopCloudService));
        final IRetryPolicy cuRetryPolicy = getCuRetryPolicy(RequestReleaseCidResult.class);
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_RELEASE_INSTANCE, postJson, RequestReleaseCidResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.25
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str7) {
                LogUtils.d(HmcpRequestManager.TAG, "setReleaseCid--response-->onError-->" + str7);
                CountlyUtil.recordEvent(Constants.COUNTYLY_RELEASE_CID_FAIL, JsonUtil.toJsonString(new ReportStopCloudServiceFailed("" + i10, str7, i10, "", cuRetryPolicy.getCurrentTimeout(), "" + str2, str, str4)));
                if (i10 == -1000) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_RELEASE_CID_004));
                } else if (i10 == -1002) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_RELEASE_CID_001));
                } else {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_RELEASE_CID_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                ReportStopCloudServiceFailed reportStopCloudServiceFailed = new ReportStopCloudServiceFailed("", "", 200, "", cuRetryPolicy.getCurrentTimeout(), "" + str2, str, str4);
                if (baseResult == null) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RELEASE_CID_FAIL, JsonUtil.toJsonString(reportStopCloudServiceFailed));
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_RELEASE_CID_003));
                    return;
                }
                reportStopCloudServiceFailed.retryRequestCount = baseResult.retryRequestCount;
                RequestReleaseCidResult requestReleaseCidResult = (RequestReleaseCidResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--setReleaseCid--response-->" + baseResult);
                if (requestReleaseCidResult.code == 0) {
                    onSaveGameCallBackListener.success(true);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_RELEASE_CID_SUCCESS, JsonUtil.toJsonString(reportStopCloudService));
                    return;
                }
                String strValueOf = !TextUtils.isEmpty(requestReleaseCidResult.errorCode) ? requestReleaseCidResult.errorCode : String.valueOf(requestReleaseCidResult.code);
                String strValueOf2 = !TextUtils.isEmpty(requestReleaseCidResult.errorMsg) ? requestReleaseCidResult.errorMsg : String.valueOf(requestReleaseCidResult.msg);
                reportStopCloudServiceFailed.errorCode = strValueOf;
                reportStopCloudServiceFailed.errorMsg = strValueOf2;
                CountlyUtil.recordEvent(Constants.COUNTYLY_RELEASE_CID_FAIL, JsonUtil.toJsonString(reportStopCloudServiceFailed));
                onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(strValueOf2, strValueOf));
            }
        });
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void setResolutionID(String str) {
        this.mResolutionID = str;
    }

    public void setResultNetData(String str, String str2, String str3, long j10) {
        final NetTestData netTestData = getNetTestData(str, j10);
        if (netTestData != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            netTestData.responseTime = jCurrentTimeMillis;
            netTestData.result = str2;
            netTestData.msg = str3;
            netTestData.time = jCurrentTimeMillis - j10;
            if ("fail".equals(str2)) {
                this.netTestUtil.isNetWorkAvailableOfDNS(netTestData.url, new Comparable<String>() { // from class: com.haima.hmcp.business.HmcpRequestManager.50
                    @Override // java.lang.Comparable
                    public int compareTo(@NonNull String str4) {
                        netTestData.DNS = str4;
                        return 0;
                    }
                });
            }
            synchronized (this.netTestList) {
                this.netTestList.set(netTestData.index, netTestData);
            }
        }
    }

    public void setStartNetData(String str, String str2, long j10) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(CountlyUtil.mTransid);
        if (CountlyUtil.mSEQ > 0) {
            str3 = o0.f49827a + CountlyUtil.mSEQ;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        String string = sb2.toString();
        NetTestData netTestData = getNetTestData(str, j10);
        if (netTestData == null) {
            netTestData = new NetTestData();
        }
        netTestData.action = str;
        netTestData.cid = this.mCloudId;
        netTestData.uid = CountlyUtil.mUID;
        netTestData.url = str2;
        netTestData.startTime = j10;
        netTestData.transId = string;
        netTestData.packageName = this.packageName;
        netTestData.result = "";
        netTestData.responseTime = 0L;
        netTestData.time = 0L;
        synchronized (this.netTestList) {
            int i10 = netTestData.index;
            if (i10 < 0) {
                this.netTestList.add(netTestData);
            } else {
                this.netTestList.set(i10, netTestData);
            }
        }
    }

    public void setStreamingModeRequest(final int i10, final OnSetStreamingModeListener onSetStreamingModeListener) {
        if (this.mIsAllowCompatibleIPV6) {
            getPublicIPV4(new OnGetPublicIPV4Listener() { // from class: com.haima.hmcp.business.HmcpRequestManager.9
                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void fail(String str) {
                    HmcpRequestManager.this.setStreamingModeRequest("", i10, onSetStreamingModeListener);
                }

                @Override // com.haima.hmcp.listeners.OnGetPublicIPV4Listener
                public void success(String str) {
                    HmcpRequestManager.this.setStreamingModeRequest(str, i10, onSetStreamingModeListener);
                }
            });
        } else {
            setStreamingModeRequest("", i10, onSetStreamingModeListener);
        }
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void setUserInfo(UserInfo userInfo) {
        this.mUserInfo = userInfo;
        UserInfo2 userInfo2 = new UserInfo2();
        this.mUserInfo2 = userInfo2;
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
    }

    public void setViewResolutionHeight(int i10) {
        this.mViewResolutionHeight = i10;
    }

    public void setViewResolutionWidth(int i10) {
        this.mViewResolutionWidth = i10;
    }

    public void setWebSocketManager(IWebSocket iWebSocket) {
        if (iWebSocket != null) {
            this.mWebSocketManager = iWebSocket;
        }
    }

    public void setmPlayTime(long j10) {
        if (j10 >= 0) {
            this.mPlayTime = j10;
        }
    }

    public FileDownloadUtil speedTest(String str, int i10, FileDownloadUtil.OnSpeedTestCompletionListener onSpeedTestCompletionListener) {
        LogUtils.d(TAG, "speed test->start to speed test");
        SpeedGather.URLInfo uRLInfo = new SpeedGather.URLInfo();
        uRLInfo.url = str;
        try {
            if (i10 > 0) {
                uRLInfo.playTime = i10;
            } else {
                HashMap<String, String> map = this.mMetaMap;
                if (map != null) {
                    String str2 = map.get(Constants.SPEED_TEST_DURATION);
                    String str3 = this.mMetaMap.get(Constants.SKIP_NUMBER);
                    String str4 = this.mMetaMap.get(Constants.PEAKRATE_COEF);
                    String str5 = this.mMetaMap.get(Constants.STD_COEF);
                    if (!TextUtils.isEmpty(str2)) {
                        uRLInfo.playTime = (int) Float.parseFloat(str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        uRLInfo.skipNumber = (int) Float.parseFloat(str3);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        uRLInfo.peakRateCoefficient = Float.parseFloat(str4);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        uRLInfo.standardDeviationCoefficient = Float.parseFloat(str5);
                    }
                }
            }
        } catch (Exception unused) {
            CountlyUtil.recordErrorEvent("speedTest::NumberFormatException");
        }
        FileDownloadUtil fileDownloadUtil = this.mFileDownloadUtil;
        if (fileDownloadUtil != null) {
            fileDownloadUtil.stopSpeedTest();
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                jSONObject.put("status", ConstantsInternal.STOP);
                jSONObject.put("stopByApp", "0");
                jSONObject.put("msg", "stop last speed task");
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject.toString());
            LogUtils.d(TAG, "speed test->stop the last speed test task");
        }
        FileDownloadUtil fileDownloadUtil2 = new FileDownloadUtil(this.mContext);
        fileDownloadUtil2.setURLInfo(uRLInfo);
        fileDownloadUtil2.speedTest(this.mContext, onSpeedTestCompletionListener);
        return fileDownloadUtil2;
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void stopCloudService() {
        Serializable postJson;
        String str = TAG;
        LogUtils.d(str, "==stopCloudService");
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_CLOUD_SERVER);
        this.isStopPlay = true;
        IHmcpHttp iHmcpHttp = this.mHttpManager;
        if (iHmcpHttp != null) {
            iHmcpHttp.setIsStop(true);
        }
        isAllowConnect2Access(false);
        if (TextUtils.isEmpty(this.mCloudId)) {
            LogUtils.d(str, "timeframe--stopCloudService--request-->mCloudId isEmpty");
            CountlyUtil.recordErrorEvent("mCloudId is null");
            return;
        }
        StopServiceParameters stopServiceParameters = new StopServiceParameters();
        stopServiceParameters.cloudId = this.mCloudId;
        stopServiceParameters.envType = Constants.ENV_TYPE;
        stopServiceParameters.archiveMinSeconds = Math.max(mArchiveMinSeconds, 0);
        mArchiveMinSeconds = 0;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        RequestPreCheck requestPreCheckPreCheck = preCheck(202);
        if (requestPreCheckPreCheck.requestAllow) {
            postJson = getPostJson(202, (IParameter) stopServiceParameters, false, jCurrentTimeMillis);
            LogUtils.e(str, "timeframe--stopCloudService--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        } else {
            String str2 = "202 request not allow, cause: " + requestPreCheckPreCheck.msg;
            CountlyUtil.recordErrorEvent(str2);
            LogUtils.e(str, "timeframe--stopCloudService--request-->" + str2);
            postJson = null;
        }
        this.isGetCloudServiceRequestV2Requesting = false;
        this.mCloudId = null;
        CountlyUtil.mCloudID = "";
        DataUtils.getSharedInstance(this.mContext).putPreferences(CID_VALUE, "");
        if (postJson == null) {
            quitVolleyManager();
        } else {
            getHttpManager(this.mContext).postRequest("12020", postJson, StopServiceResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.22
                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onError(int i10, String str3) {
                    IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(StopServiceResult.class);
                    ReportBaseFailed reportBaseFailed = new ReportBaseFailed("" + i10, str3, i10, str3, cuRetryPolicy.getCurrentTimeout());
                    reportBaseFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_CLOUD_SERVER_FAIL, JsonUtil.toJsonString(reportBaseFailed));
                    HmcpRequestManager.this.setResultNetData("202", "fail", i10 + ":" + str3, jCurrentTimeMillis);
                    LogUtils.d(HmcpRequestManager.TAG, "stopCloudService--response-->onError-->" + str3);
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                    HmcpRequestManager.this.quitVolleyManager();
                }

                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onSuccess(BaseResult baseResult) {
                    HmcpRequestManager.this.setResultNetData("202", "success", "", jCurrentTimeMillis);
                    IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(StopServiceResult.class);
                    if (baseResult != null) {
                        ReportBaseFailed reportBaseFailed = new ReportBaseFailed("" + baseResult.code, "", baseResult.code, "", cuRetryPolicy.getCurrentTimeout());
                        reportBaseFailed.retryRequestCount = baseResult.retryRequestCount;
                        if (baseResult.code == 0) {
                            CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_CLOUD_SERVER_SUCCESS, JsonUtil.toJsonString(reportBaseFailed));
                        } else {
                            CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_CLOUD_SERVER_FAIL, JsonUtil.toJsonString(reportBaseFailed));
                        }
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_CLOUD_SERVER_FAIL, JsonUtil.toJsonString(new ReportBaseFailed(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "result is null", -1001, "", cuRetryPolicy.getCurrentTimeout())));
                    }
                    LogUtils.d(HmcpRequestManager.TAG, "stopCloudService--response-->Success");
                    HmcpRequestManager.this.quitVolleyManager();
                }
            });
        }
    }

    public void stopRecordStream(String str, final StopRecordStreamListener stopRecordStreamListener) {
        CountlyUtil.recordEvent(Constants.COUNTLY_STOP_RECORD_STREAM);
        StopRecordStreamParameters stopRecordStreamParameters = new StopRecordStreamParameters();
        stopRecordStreamParameters.cid = Long.valueOf(str);
        getHttpManager(this.mContext).postRequest("13210", getPostJson(321, (IParameter) stopRecordStreamParameters, false, System.currentTimeMillis()), StopRecordStreamResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.30
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "stopRecordStream onError: " + i10 + " " + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_STOP_RECORD_STREAM_FAIL, i10);
                StopRecordStreamListener stopRecordStreamListener2 = stopRecordStreamListener;
                if (stopRecordStreamListener2 != null) {
                    if (i10 == -1000) {
                        stopRecordStreamListener2.stopRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), "100320004"), null);
                    } else if (i10 == -1002) {
                        stopRecordStreamListener2.stopRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), "100320001"), null);
                    } else {
                        stopRecordStreamListener2.stopRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), "100320002"), null);
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.d(HmcpRequestManager.TAG, "stopRecordStream no response data");
                    StopRecordStreamListener stopRecordStreamListener2 = stopRecordStreamListener;
                    if (stopRecordStreamListener2 != null) {
                        stopRecordStreamListener2.stopRecord(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), "100320003"), null);
                        return;
                    }
                    return;
                }
                int i10 = baseResult.code;
                if (i10 != 0) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_STOP_RECORD_STREAM_FAIL, i10);
                    StopRecordStreamListener stopRecordStreamListener3 = stopRecordStreamListener;
                    if (stopRecordStreamListener3 != null) {
                        stopRecordStreamListener3.stopRecord(false, HmcpRequestManager.this.concatErrorCode(baseResult.msg, String.valueOf(baseResult.code)), null);
                        return;
                    }
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "stopRecordStream onSuccess: " + baseResult.toString());
                StopRecordStreamResult stopRecordStreamResult = (StopRecordStreamResult) baseResult;
                StopRecordStreamListener stopRecordStreamListener4 = stopRecordStreamListener;
                if (stopRecordStreamListener4 != null) {
                    stopRecordStreamListener4.stopRecord(true, "", new RecordStreamInfo(stopRecordStreamResult.filePath));
                }
            }
        });
    }

    public void stopSpeedTesting() {
        if (this.mFileDownloadUtil == null) {
            return;
        }
        LogUtils.d(TAG, "speed test->stop speed test called");
        this.mFileDownloadUtil.stopSpeedTest();
    }

    @Override // com.haima.hmcp.business.IHmcpRequest
    public void switchResolution(String str, int i10, int i11) {
        LogUtils.d(TAG, "switchResolution===resolutionID == >" + str + ": mBitRate = " + i10 + " viewFrameRate=" + i11);
        this.mResolutionID = str;
        this.mBitRate = i10;
        if (i11 > 0) {
            this.mViewFrameRate = i11;
        }
        getCloudService(0, 2, false);
    }

    public void updateCTokenData(String str, Long l10) {
        this.mCToken = str;
        this.cTokenTimeStamp = l10;
    }

    public void updateGameUID(final Bundle bundle, final OnUpdataGameUIDListener onUpdataGameUIDListener) {
        RequestPreCheck requestPreCheckPreCheck = preCheck(214);
        if (!requestPreCheckPreCheck.requestAllow) {
            if (onUpdataGameUIDListener != null) {
                onUpdataGameUIDListener.fail(requestPreCheckPreCheck.msg);
            }
            CountlyUtil.recordErrorEvent(requestPreCheckPreCheck.msg);
            return;
        }
        final UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = bundle.getString("userid");
        UserInfo2 userInfo3 = this.mUserInfo2;
        if (userInfo3 != null) {
            userInfo2.userToken = userInfo3.userToken;
        }
        String string = bundle.getString("cToken");
        final String string2 = bundle.getString("protoData");
        final RequestUpdataUID requestUpdataUID = new RequestUpdataUID();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        requestUpdataUID.playingTime = bundle.getLong("playTime");
        requestUpdataUID.userInfo = userInfo2;
        if (!TextUtils.isEmpty(this.mCloudId)) {
            requestUpdataUID.cloudId = this.mCloudId;
        }
        requestUpdataUID.tip = bundle.getString("message");
        requestUpdataUID.protoData = string2;
        requestUpdataUID.sdkType = Constants.ANDROID_TYPE;
        requestUpdataUID.cToken = string;
        requestUpdataUID.sdkAbility = getSdkAbility(false);
        final Long cTokenTimeStamp = getCTokenTimeStamp(bundle);
        requestUpdataUID.timestamp = cTokenTimeStamp;
        if (bundle.containsKey(BaseVideoView.FINISH_BY_SERVER)) {
            requestUpdataUID.finishByServer = Boolean.valueOf(bundle.getBoolean(BaseVideoView.FINISH_BY_SERVER));
        }
        String str = TAG;
        LogUtils.e(str, "timeframe--updateGameUID--request-->" + requestUpdataUID);
        Serializable postJson = getPostJson(214, (IParameter) requestUpdataUID, false, jCurrentTimeMillis);
        LogUtils.e(str, "timeframe--updateGameUID--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest("12140", postJson, RequestUpdataUIDResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.27
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str2) {
                LogUtils.e(HmcpRequestManager.TAG, "updateGameUID--response-->onError-->" + i10 + str2);
                HmcpRequestManager.this.setResultNetData("214", "fail", i10 + ":" + str2, jCurrentTimeMillis);
                if (i10 == -1000) {
                    onUpdataGameUIDListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_UPDATA_GAME_004));
                } else if (i10 == -1002) {
                    onUpdataGameUIDListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_UPDATA_GAME_001));
                } else {
                    onUpdataGameUIDListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_UPDATA_GAME_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("214", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    onUpdataGameUIDListener.success(false);
                    onUpdataGameUIDListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_UPDATA_GAME_003));
                    return;
                }
                RequestUpdataUIDResult requestUpdataUIDResult = (RequestUpdataUIDResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--updateGameUID--response-->" + requestUpdataUIDResult);
                if (requestUpdataUIDResult.code != 0) {
                    onUpdataGameUIDListener.success(false);
                    onUpdataGameUIDListener.fail(HmcpRequestManager.this.concatErrorCode(requestUpdataUIDResult.errorMsg, requestUpdataUIDResult.errorCode));
                    return;
                }
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                hmcpRequestManager.mSignature = requestUpdataUIDResult.sign;
                hmcpRequestManager.mProtoData = string2;
                hmcpRequestManager.mCToken = bundle.getString("cToken");
                HmcpRequestManager.this.cTokenTimeStamp = cTokenTimeStamp;
                HmcpRequestManager.this.mPlayTime = requestUpdataUID.playingTime;
                HmcpRequestManager.this.mUserInfo2 = userInfo2;
                HmcpRequestManager.this.builder = new StringBuilder();
                if (HmcpRequestManager.this.mUserInfo2 != null) {
                    StringBuilder sb2 = HmcpRequestManager.this.builder;
                    sb2.append(HmcpRequestManager.this.mUserInfo2.userId);
                    sb2.append(HmcpRequestManager.this.mAppName);
                    sb2.append(HmcpRequestManager.this.mAccessKeyId);
                    sb2.append(HmcpRequestManager.this.mAppChannel);
                }
                DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_KEY, CryptoUtils.md5(HmcpRequestManager.this.builder.toString()));
                onUpdataGameUIDListener.success(true);
            }
        });
    }

    public void updateInstanceTimeRequest(String str, int i10, int i11, final OnUpdateInstanceTimeListener onUpdateInstanceTimeListener) {
        CountlyUtil.recordEvent(Constants.Countly.UPDATE_INSTANCE_TIME_START);
        UpdateInstanceTimeParameters updateInstanceTimeParameters = new UpdateInstanceTimeParameters();
        updateInstanceTimeParameters.cid = str;
        updateInstanceTimeParameters.keepAliveTimeSeconds = i10;
        updateInstanceTimeParameters.noInputTimeSeconds = i11;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = TAG;
        LogUtils.d(str2, "timeframe--updateInstanceTimeRequest--request-->" + updateInstanceTimeParameters);
        Serializable postJson = getPostJson(Constants.UPDATE_INSTANCE_TIME, (IParameter) updateInstanceTimeParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--updateInstanceTimeRequest--request-->" + JsonUtil.toJsonString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_UPDATE_INSTANCE_TIME, postJson, BaseResultImp.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.47
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i12, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "updateInstanceTimeRequest onError: " + i12 + " " + str3);
                CountlyUtil.recordEvent(Constants.Countly.UPDATE_INSTANCE_TIME_FAIL, i12);
                OnUpdateInstanceTimeListener onUpdateInstanceTimeListener2 = onUpdateInstanceTimeListener;
                if (onUpdateInstanceTimeListener2 != null) {
                    if (i12 == -1000) {
                        onUpdateInstanceTimeListener2.onUpdateInstanceTimeResult(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_UPDATE_INSTANCE_TIME_004));
                    } else if (i12 == -1002) {
                        onUpdateInstanceTimeListener2.onUpdateInstanceTimeResult(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_UPDATE_INSTANCE_TIME_001));
                    } else {
                        onUpdateInstanceTimeListener2.onUpdateInstanceTimeResult(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_UPDATE_INSTANCE_TIME_002));
                    }
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    LogUtils.d(HmcpRequestManager.TAG, "updateInstanceTimeRequest onFail: result is null");
                    CountlyUtil.recordEvent(Constants.Countly.UPDATE_INSTANCE_TIME_FAIL, "result is null");
                    onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_STOP_FORCE_KEEP_ALIVE_003));
                    return;
                }
                if (baseResult.code == 0) {
                    LogUtils.d(HmcpRequestManager.TAG, "updateInstanceTimeRequest onSuccess: " + baseResult);
                    if (onUpdateInstanceTimeListener != null) {
                        CountlyUtil.recordEvent(Constants.Countly.UPDATE_INSTANCE_TIME_SUCCESS);
                        onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(true, "");
                        return;
                    }
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "updateInstanceTimeRequest onFail: " + baseResult);
                CountlyUtil.recordEvent(Constants.Countly.UPDATE_INSTANCE_TIME_FAIL, baseResult.errorMsg);
                OnUpdateInstanceTimeListener onUpdateInstanceTimeListener2 = onUpdateInstanceTimeListener;
                if (onUpdateInstanceTimeListener2 != null) {
                    onUpdateInstanceTimeListener2.onUpdateInstanceTimeResult(false, HmcpRequestManager.this.concatErrorCode(baseResult.errorMsg, baseResult.errorCode));
                }
            }
        });
    }

    public void gameArchived(String str, UserInfo userInfo, String str2, String str3, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
        RequestSaveGame requestSaveGame = new RequestSaveGame();
        requestSaveGame.appChannel = str3;
        requestSaveGame.envType = Constants.ENV_TYPE;
        requestSaveGame.pkgName = str;
        requestSaveGame.userInfo = userInfo2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str4 = TAG;
        LogUtils.e(str4, "timeframe--gameArchived--request-->" + userInfo2.userId);
        Serializable postJson = getPostJson(113, requestSaveGame, false, jCurrentTimeMillis, str2);
        LogUtils.e(str4, "timeframe--gameArchived--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_ARCHIVED, postJson, RequestSaveGameResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.24
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str5) {
                HmcpRequestManager.this.setResultNetData("113", "fail", i10 + ":" + str5, jCurrentTimeMillis);
                if (i10 == -1000) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_GAME_ARCHIVE_004));
                } else if (i10 == -1002) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_GAME_ARCHIVE_001));
                } else {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_GAME_ARCHIVE_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("113", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    onSaveGameCallBackListener.success(false);
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_GAME_ARCHIVE_003));
                    return;
                }
                RequestSaveGameResult requestSaveGameResult = (RequestSaveGameResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--gameArchived--response-->" + baseResult);
                onSaveGameCallBackListener.success(requestSaveGameResult.hasArchive);
                if (requestSaveGameResult.code != 0) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(requestSaveGameResult.errorMsg, requestSaveGameResult.errorCode));
                }
            }
        });
    }

    public void getGameArchiveStatus(String str, UserInfo userInfo, String str2, String str3, final OnSaveGameCallBackListener onSaveGameCallBackListener) {
        UserInfo2 userInfo2 = new UserInfo2();
        userInfo2.userId = userInfo.userId;
        userInfo2.userToken = userInfo.userToken;
        userInfo2.userLevel = userInfo.userLevel;
        userInfo2.userType = userInfo.userType;
        RequestSaveGame requestSaveGame = new RequestSaveGame();
        requestSaveGame.appChannel = str3;
        requestSaveGame.envType = Constants.ENV_TYPE;
        requestSaveGame.pkgName = str;
        requestSaveGame.userInfo = userInfo2;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str4 = TAG;
        LogUtils.e(str4, "timeframe--getSaveGameStatus--request-->" + userInfo2.userId);
        Serializable postJson = getPostJson(112, requestSaveGame, false, jCurrentTimeMillis, str2);
        LogUtils.e(str4, "timeframe--getSaveGameStatus--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_ARCHIVE_QUERY, postJson, RequestSaveGameResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.26
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str5) {
                HmcpRequestManager.this.setResultNetData("112", "fail", i10 + ":" + str5, jCurrentTimeMillis);
                if (i10 == -1000) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_SAVE_GAME_004));
                } else if (i10 == -1002) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_SAVE_GAME_001));
                } else {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_SAVE_GAME_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("112", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    onSaveGameCallBackListener.success(false);
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_SAVE_GAME_003));
                    return;
                }
                RequestSaveGameResult requestSaveGameResult = (RequestSaveGameResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getSaveGameStatus--response-->" + baseResult);
                if (requestSaveGameResult.code != 0) {
                    onSaveGameCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(requestSaveGameResult.errorMsg, requestSaveGameResult.errorCode));
                }
                onSaveGameCallBackListener.success(requestSaveGameResult.ifCanPlay);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableHighBitrate(Boolean bool, OnEnableHighBitrateListener onEnableHighBitrateListener, String str) {
        String str2 = TAG;
        LogUtils.d(str2, "==enableHighBitrate() enable : " + bool);
        this.enableHighBitrate = bool;
        this.onEnableHighBitrateListener = onEnableHighBitrateListener;
        final int i10 = 0;
        final int i11 = 1;
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE, JsonUtil.toJsonString(new ReportGetCloudService(0, 1)));
        if (TextUtils.isEmpty(this.mCloudId)) {
            LogUtils.e(str2, "enableHighBitrate-----empty cid");
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_SERVICE_ARG_FAIL, JsonUtil.toJsonString(new ReportGetCloudServiceFailed(Constants.ERRORCODE_SERVICE_003, "cloudId is empty", 0, "", 0, 0, 1)));
            OnEnableHighBitrateListener onEnableHighBitrateListener2 = this.onEnableHighBitrateListener;
            if (onEnableHighBitrateListener2 != null) {
                onEnableHighBitrateListener2.onFail("-1001-cid null");
                return;
            }
            return;
        }
        if (!NetworkUtil.isNetworkConnected(this.mContext)) {
            this.mRequestTime = 0;
            LogUtils.e(str2, "enableHighBitrate-----Network unavailable");
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_SERVICE_ARG_FAIL, JsonUtil.toJsonString(new ReportGetCloudServiceFailed(Constants.ERRORCODE_SERVICE_003, "Network unavailable", 0, "", 0, 0, 1)));
            OnEnableHighBitrateListener onEnableHighBitrateListener3 = this.onEnableHighBitrateListener;
            if (onEnableHighBitrateListener3 != null) {
                onEnableHighBitrateListener3.onFail("-1002-network unavailable");
                return;
            }
            return;
        }
        LogUtils.e(str2, "enableHighBitrate-----Network available");
        this.opType = 1;
        this.confirm = 0;
        GetCloudServiceParameters getCloudServiceParameters = new GetCloudServiceParameters();
        getCloudServiceParameters.cloudId = this.mCloudId;
        getCloudServiceParameters.appId = this.mAppId;
        getCloudServiceParameters.appName = this.mAppName;
        getCloudServiceParameters.appChannel = this.mAppChannel;
        getCloudServiceParameters.signature = this.mSignature;
        getCloudServiceParameters.playingTime = this.mPlayTime;
        getCloudServiceParameters.priority = this.mPriority;
        getCloudServiceParameters.confirm = 0;
        getCloudServiceParameters.resolution = this.mResolutionID;
        getCloudServiceParameters.knockKnock = "";
        getCloudServiceParameters.opType = 1;
        getCloudServiceParameters.payStr = this.mPayStr;
        getCloudServiceParameters.bitRate = this.mBitRate;
        getCloudServiceParameters.clientType = Constants.ANDROID_TYPE;
        getCloudServiceParameters.orientation = this.mOrientation == ScreenOrientation.LANDSCAPE ? 0 : 1;
        getCloudServiceParameters.envType = Constants.ENV_TYPE;
        getCloudServiceParameters.isArchive = this.mArchive;
        getCloudServiceParameters.syncRefresh = true;
        getCloudServiceParameters.clientISP = clientISP;
        getCloudServiceParameters.clientProvince = clientProvince;
        getCloudServiceParameters.clientCity = clientCity;
        getCloudServiceParameters.viewResolution = getViewResolutionStr(this.mViewResolutionWidth, this.mViewResolutionHeight);
        getCloudServiceParameters.routingIp = str;
        getCloudServiceParameters.enlargeBitRate = this.enableHighBitrate;
        LogUtils.e(str2, "timeframe--enableHighBitrate--request-->" + getCloudServiceParameters);
        Serializable postJson = getPostJson(201, (IParameter) getCloudServiceParameters, false, System.currentTimeMillis());
        SendSceneState.applyCloudInstance(this.mContext, this.mPlayerListener);
        LogUtils.e(str2, "timeframe--enableHighBitrate--request-->" + JsonUtil.toJsonString(postJson));
        CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.resetCloudPlayInfo();
        }
        getHttpManager(this.mContext).postRequest("12011", new RequestDiscardPolicy(), postJson, GetCloudServiceResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.19
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i12, String str3) {
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(GetCloudServiceResult.class);
                ReportGetCloudServiceFailed reportGetCloudServiceFailed = new ReportGetCloudServiceFailed("" + i12, str3, i12, str3, cuRetryPolicy.getCurrentTimeout(), i10, i11);
                reportGetCloudServiceFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                LogUtils.d(HmcpRequestManager.TAG, "enableHighBitrate-->onError = " + i12 + "-" + str3);
                if (HmcpRequestManager.this.onEnableHighBitrateListener != null) {
                    HmcpRequestManager.this.onEnableHighBitrateListener.onFail(i12 + "-" + str3);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                ReportGetCloudServiceFailed reportGetCloudServiceFailed = new ReportGetCloudServiceFailed(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "", 200, "", HmcpRequestManager.this.getCuRetryPolicy(GetCloudServiceResult.class).getCurrentTimeout(), i10, i11);
                if (baseResult == null) {
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--enableHighBitrate--response-->result is null");
                    if (HmcpRequestManager.this.onEnableHighBitrateListener != null) {
                        HmcpRequestManager.this.onEnableHighBitrateListener.onFail("-1001-result is null");
                        return;
                    }
                    return;
                }
                GetCloudServiceResult getCloudServiceResult = (GetCloudServiceResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--enableHighBitrate--response-->status = " + JsonUtil.toJsonString(getCloudServiceResult));
                if (getCloudServiceResult.code == 0) {
                    reportGetCloudServiceFailed.retryRequestCount = baseResult.retryRequestCount;
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_SUCCESS, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--enableHighBitrate--response-->success");
                    if (HmcpRequestManager.this.onEnableHighBitrateListener != null) {
                        HmcpRequestManager.this.onEnableHighBitrateListener.onSuccess();
                        return;
                    }
                    return;
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--enableHighBitrate--response-->error = " + JsonUtil.toJsonString(getCloudServiceResult));
                if (HmcpRequestManager.this.onEnableHighBitrateListener != null) {
                    HmcpRequestManager.this.onEnableHighBitrateListener.onFail(getCloudServiceResult.errorCode + "-" + getCloudServiceResult.errorMsg);
                }
            }
        });
    }

    public void getCloudServiceRequestV2(String str) {
        int preferences;
        int i10;
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2, JsonUtil.toJsonString(new ReportGetCloudService2(this.streamType, "")));
        String str2 = TAG;
        LogUtils.d(str2, "DownFirstFrame--getCloudServiceRequestV2---12120--->");
        if (TextUtils.isEmpty(this.mDeviceId)) {
            this.mDeviceId = DataUtils.getSharedInstance(this.mContext).getPreferences(KEY_PREFERENCE_DID, "0");
        }
        if (!TextUtils.isEmpty(this.mCloudId) && this.mMessageServerInfo != null) {
            LogUtils.d(str2, "getCloudServiceRequestV2----request---->mCloudId = " + this.mCloudId);
        }
        if (!TextUtils.isEmpty(this.mCToken) && this.mUserInfo != null) {
            if (this.mHttpManager == null) {
                LogUtils.e(str2, "getCloudServiceRequestV2-----mVolleyManager==null");
                CountlyUtil.recordErrorEvent("getCloudServiceRequestV2() mVolleyManager == null; isStopPlay = " + this.isStopPlay + "; " + Log.getStackTraceString(new Throwable()));
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(new ReportGetCloudService2Failed(Constants.ERRORCODE_CONTROL_003, "getCloudServiceRequestV2() mVolleyManager == null", 0, "", 0, this.streamType, "")));
                return;
            }
            boolean zIsRequestWithCid = isRequestWithCid();
            resetHttpStatus();
            LogUtils.d(str2, this.mUserInfo2.userId + "  " + this.mAppName + "   " + this.mAccessKeyId + "   " + this.mAppChannel);
            this.builder = new StringBuilder();
            if (this.mUserInfo2 != null) {
                LogUtils.d(str2, this.mUserInfo2.userId + "  " + this.mAppName + "   " + this.mAccessKeyId + "   " + this.mAppChannel);
                StringBuilder sb2 = this.builder;
                sb2.append(this.mUserInfo2.userId);
                sb2.append(this.mAppName);
                sb2.append(this.mAccessKeyId);
                sb2.append(this.mAppChannel);
            }
            String cidPreferences = DataUtils.getSharedInstance(this.mContext).getCidPreferences(this.builder.toString(), "");
            this.mCloudId = cidPreferences;
            boolean z10 = false;
            if (!TextUtils.isEmpty(cidPreferences)) {
                preferences = DataUtils.getSharedInstance(this.mContext).getPreferences(HMCP_CID_BATTLE_TYPE, 0);
            } else {
                DataUtils.getSharedInstance(this.mContext).putPreferences(HMCP_CID_BATTLE_TYPE, 0);
                preferences = 0;
            }
            LogUtils.d(str2, "tv_battle->current player: " + this.mBattleMode.player + ", cache player: " + preferences);
            GetCloudServiceParametersV2 getCloudServiceParametersV2 = new GetCloudServiceParametersV2();
            boolean z11 = this.mIsAhead;
            getCloudServiceParametersV2.ahead = z11;
            if (!z11) {
                if (!TextUtils.isEmpty(CountlyUtil.mLastCloudID)) {
                    getCloudServiceParametersV2.cloudId = CountlyUtil.mLastCloudID;
                    CountlyUtil.mLastCloudID = "";
                } else {
                    getCloudServiceParametersV2.cloudId = zIsRequestWithCid ? this.mCloudId : "";
                    if (this.mBattleMode.player == 1 && preferences == 2) {
                        getCloudServiceParametersV2.cloudId = "";
                        LogUtils.d(str2, "isRequestWithCid --- false, cid: ");
                    } else {
                        LogUtils.d(str2, "isRequestWithCid --- " + zIsRequestWithCid + ", cid: " + getCloudServiceParametersV2.cloudId);
                    }
                }
            }
            this.mIsAhead = false;
            getCloudServiceParametersV2.extraId = this.mExtraId;
            getCloudServiceParametersV2.appName = this.mAppName;
            getCloudServiceParametersV2.gameId = this.mGid;
            getCloudServiceParametersV2.streamingMode = this.mStreamingMode;
            getCloudServiceParametersV2.archiveFromBid = this.mArchiveFromBid;
            getCloudServiceParametersV2.archiveFromUserId = this.mArchiveFromUserId;
            getCloudServiceParametersV2.appChannel = this.mAppChannel;
            UserInfo2 userInfo2 = this.mUserInfo2;
            getCloudServiceParametersV2.userInfo = userInfo2;
            getCloudServiceParametersV2.configInfo = this.mConfigInfo;
            getCloudServiceParametersV2.cToken = this.mCToken;
            getCloudServiceParametersV2.envType = Constants.ENV_TYPE;
            getCloudServiceParametersV2.playingTime = this.mPlayTime;
            getCloudServiceParametersV2.priority = this.mPriority;
            getCloudServiceParametersV2.resolution = this.mResolutionID;
            if (userInfo2 != null) {
                LogUtils.d(str2, HMMessage.ACTION_USER_INFO + this.mUserInfo2.toString());
                LogUtils.d(str2, "timeframe--getCloudServiceRequestV2--request-->" + this.mResolutionID + "  " + this.mBitRate);
            }
            getCloudServiceParametersV2.payStr = this.mPayStr;
            getCloudServiceParametersV2.bitRate = this.mBitRate;
            getCloudServiceParametersV2.clientType = Constants.ANDROID_TYPE;
            getCloudServiceParametersV2.orientation = this.mOrientation == ScreenOrientation.LANDSCAPE ? 0 : 1;
            getCloudServiceParametersV2.envType = Constants.ENV_TYPE;
            getCloudServiceParametersV2.isArchive = this.mArchive;
            getCloudServiceParametersV2.protoData = this.mProtoData;
            getCloudServiceParametersV2.noInputTimeout = this.mNoInputLimitTime;
            getCloudServiceParametersV2.clientISP = clientISP;
            getCloudServiceParametersV2.clientProvince = clientProvince;
            getCloudServiceParametersV2.clientCity = clientCity;
            getCloudServiceParametersV2.syncRefresh = true;
            getCloudServiceParametersV2.routingIp = str;
            getCloudServiceParametersV2.viewResolution = getViewResolutionStr(this.mViewResolutionWidth, this.mViewResolutionHeight);
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.streamType);
            getCloudServiceParametersV2.streamingTypes = arrayList;
            getCloudServiceParametersV2.support2k = true;
            getCloudServiceParametersV2.anomalousLeft = this.mAnomalousLeft;
            getCloudServiceParametersV2.anomalousRight = this.mAnomalousRight;
            Integer num = this.mKeepAliveTimeSeconds;
            if (num != null) {
                getCloudServiceParametersV2.keepAliveTimeSeconds = num;
            }
            Integer num2 = this.mDevicePixelRation;
            if (num2 != null) {
                getCloudServiceParametersV2.devicePixelRatio = num2;
            }
            if (Constants.ANDROID_TYPE == 2) {
                getCloudServiceParametersV2.imeType = Constants.CONFIG_IME_TYPE;
            }
            IntentExtraData intentExtraData = this.mExtraData;
            getCloudServiceParametersV2.extraData = intentExtraData;
            if (intentExtraData == null || TextUtils.isEmpty(intentExtraData.getAppLink())) {
                getCloudServiceParametersV2.componentType = this.mComponentType;
                getCloudServiceParametersV2.action = this.mAction;
                getCloudServiceParametersV2.componentName = this.mComponentName;
            }
            LogUtils.i(str2, "post ExtraData = " + com.alibaba.fastjson.a.toJSONString(this.mExtraData));
            int i11 = Constants.DEMO_TEST_INTERFACE_ID;
            if (i11 > 0) {
                getCloudServiceParametersV2.demoTest = true;
                getCloudServiceParametersV2.demoTestInterfaceId = Integer.valueOf(i11);
                int i12 = Constants.DEMO_TEST_INSTANCE_ID;
                if (i12 > 0) {
                    getCloudServiceParametersV2.demoTestInstanceId = Integer.valueOf(i12);
                }
            }
            getCloudServiceParametersV2.freeFlowTag = Constants.ENABLE_FREE_FLOW_TAG;
            if (zIsRequestWithCid && !TextUtils.isEmpty(getCloudServiceParametersV2.cloudId)) {
                z10 = true;
            }
            getCloudServiceParametersV2.sdkAbility = getSdkAbility(z10);
            getCloudServiceParametersV2.h264SeiDataReportEnable = this.mSeiEnable;
            getCloudServiceParametersV2.enlargeBitRate = this.enableHighBitrate;
            getCloudServiceParametersV2.disableAutoStream = Boolean.valueOf(this.mDisableAutoStream);
            getCloudServiceParametersV2.timestamp = this.cTokenTimeStamp;
            getCloudServiceParametersV2.keepLoginStatus = this.keepLoginStatus;
            getCloudServiceParametersV2.openMultiArchive = this.mOpenMultiArchive;
            getCloudServiceParametersV2.saveArchiveMultiArchive = this.mSaveArchiveMultiArchive;
            getCloudServiceParametersV2.saveArchiveBidMultiArchive = this.mSaveArchiveBidMultiArchive;
            getCloudServiceParametersV2.saveArchiveUidMultiArchive = this.mSaveArchiveUidMultiArchive;
            try {
                getCloudServiceParametersV2.sdkUserDeviceInfo = com.alibaba.fastjson.a.parseObject(this.mUserDeviceInfo);
            } catch (Exception unused) {
            }
            if (getCloudServiceParametersV2.sdkUserDeviceInfo == null) {
                getCloudServiceParametersV2.sdkUserDeviceInfo = new JSONObject();
            }
            SerializableMap serializableMap = this.mTransmissionDataToSaas;
            if (serializableMap != null) {
                String mapJson = serializableMap.getMapJson();
                if (!TextUtils.isEmpty(mapJson)) {
                    LogUtils.d(TAG, "transmissionDataToSaas is " + mapJson);
                    getCloudServiceParametersV2.richData = this.mTransmissionDataToSaas.getMap();
                }
            }
            if (this.mViewFrameRate > 0) {
                getCloudServiceParametersV2.viewFrameRate = this.mViewFrameRate + "";
            }
            BattleMode battleMode = this.mBattleMode;
            getCloudServiceParametersV2.battleOnlineType = battleMode.player;
            Battle battle = battleMode.battle;
            if (battle != null && (i10 = battle.gamePad) != 0) {
                getCloudServiceParametersV2.gamePad = Integer.valueOf(i10);
            } else {
                getCloudServiceParametersV2.gamePad = null;
            }
            getCloudServiceParametersV2.finishByServer = this.mFinishByServer;
            final long jCurrentTimeMillis = System.currentTimeMillis();
            String str3 = TAG;
            LogUtils.d(str3, "timeframe--getCloudServiceRequestV2--request-->" + getCloudServiceParametersV2.toString());
            Serializable postJson = getPostJson(211, (IParameter) getCloudServiceParametersV2, false, jCurrentTimeMillis);
            SendSceneState.applyCloudInstance(this.mContext, this.mPlayerListener);
            LogUtils.d(str3, "OperationStream=timeframe--getCloudServiceRequestV2--request-->" + JsonUtil.toJsonString(postJson));
            this.isGetCloudServiceRequestV2Requesting = true;
            CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
            if (cloudPlayInfo != null) {
                cloudPlayInfo.resetCloudPlayInfo();
            }
            RetryErrorcodeConfig.reset();
            final IRetryPolicy cuRetryPolicy = getCuRetryPolicy(GetCloudServiceResult2.class);
            getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START, postJson, GetCloudServiceResult2.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.45
                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onError(int i13, String str4) {
                    HmcpRequestManager.this.isGetCloudServiceRequestV2Requesting = false;
                    HmcpRequestManager.this.mCloudId = "";
                    ReportGetCloudService2Failed reportGetCloudService2Failed = new ReportGetCloudService2Failed("" + i13, str4, 0, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.streamType, "");
                    reportGetCloudService2Failed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed));
                    HmcpRequestManager.this.setResultNetData("211", "fail", i13 + ":" + str4, jCurrentTimeMillis);
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str4);
                    if (i13 == -1000) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                        return;
                    }
                    if (i13 == -1002) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                        return;
                    }
                    if (i13 == -1003) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_001, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    } else if (i13 == -1004) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    } else {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    }
                }

                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onSuccess(BaseResult baseResult) {
                    GSMAddressInfo gSMAddressInfo;
                    HmcpRequestManager.this.isGetCloudServiceRequestV2Requesting = false;
                    HmcpRequestManager.this.setResultNetData("211", "success", "", jCurrentTimeMillis);
                    if (baseResult == null) {
                        HmcpRequestManager.this.mCloudId = "";
                        ReportGetCloudService2Failed reportGetCloudService2Failed = new ReportGetCloudService2Failed("-1001", "result is null", 200, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.streamType, "");
                        reportGetCloudService2Failed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed));
                        HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service v2");
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                        return;
                    }
                    ReportGetCloudService2Failed reportGetCloudService2Failed2 = new ReportGetCloudService2Failed(Constants.ERRORCODE_SERVICE2_005, "Internal Error: Message server info is wrong", 200, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.streamType, "");
                    reportGetCloudService2Failed2.retryRequestCount = baseResult.retryRequestCount;
                    reportGetCloudService2Failed2.errorCode = baseResult.errorCode;
                    reportGetCloudService2Failed2.errorMsg = baseResult.errorMsg;
                    reportGetCloudService2Failed2.httpStatusCode = 200;
                    reportGetCloudService2Failed2.httpMsg = baseResult.msg;
                    GetCloudServiceResult2 getCloudServiceResult2 = (GetCloudServiceResult2) baseResult;
                    OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                    if (onHmcpSaasRequestListener != null && (gSMAddressInfo = getCloudServiceResult2.gsmAddressInfo) != null) {
                        onHmcpSaasRequestListener.onGSMUsbNatData(gSMAddressInfo.gsmUsbNatData);
                    }
                    HmcpRequestManager.this.mIsInTvRtcBlackList = getCloudServiceResult2.inTvRtcBlackList;
                    HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                    SendSceneState.inTvRtcBlackList(hmcpRequestManager.mContext, hmcpRequestManager.mPlayerListener, hmcpRequestManager.mIsInTvRtcBlackList);
                    LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV2--response-->" + JsonUtil.toJsonString(getCloudServiceResult2));
                    int i13 = getCloudServiceResult2.code;
                    if (i13 != 0) {
                        if (i13 == 21108) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTYLY_GAME_MAINTENANCE, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                            HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                            SendSceneState.gameMaintenance(hmcpRequestManager2.mContext, hmcpRequestManager2.mPlayerListener, false, getCloudServiceResult2.maintainBegin, getCloudServiceResult2.maintainEnd);
                            return;
                        }
                        if (i13 == 21106) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTYLY_NO_REMAINING_TIME, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                            HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                            SendSceneState.noRemainingTime(hmcpRequestManager3.mContext, hmcpRequestManager3.mPlayerListener);
                            return;
                        }
                        if (i13 == 20106) {
                            HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                            hmcpRequestManager4.mDeviceId = "";
                            hmcpRequestManager4.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                            DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.KEY_PREFERENCE_DID, HmcpRequestManager.this.mDeviceId);
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service v2");
                            if (TextUtils.isEmpty(getCloudServiceResult2.errorCode)) {
                                HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_005, ResourceManager.getString(R.string.haima_hmcp_did_error));
                                return;
                            } else {
                                HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                                return;
                            }
                        }
                        if (i13 == 10212) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            if (HmcpRequestManager.this.mPlayerListener != null) {
                                MessagePayload messagePayload = new MessagePayload();
                                messagePayload.code = 101;
                                messagePayload.uid = HmcpRequestManager.this.mUserInfo.userId;
                                messagePayload.description = "User token invalid...";
                                HmcpRequestManager.this.mPlayerListener.onMessage(JsonUtil.toJsonString(messagePayload));
                                return;
                            }
                            return;
                        }
                        if (i13 != 20303) {
                            LogUtils.e(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV2--errorMsg-->" + getCloudServiceResult2.errorMsg);
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getCloudServiceResult2.msg);
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            return;
                        }
                        HmcpRequestManager hmcpRequestManager5 = HmcpRequestManager.this;
                        hmcpRequestManager5.mCloudId = "";
                        DataUtils.getSharedInstance(hmcpRequestManager5.mContext).putPreferences(HmcpRequestManager.CID_VALUE, "");
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, "common code: " + getCloudServiceResult2.code);
                        if (Constants.OPEN_API_RELEASE_CODE.equals(getCloudServiceResult2.errorCode)) {
                            HmcpRequestManager.this.notifySaasListenerResponse(3, HmcpRequestManager.this.getJsonObject(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg, getCloudServiceResult2.stateChangeReason).toString());
                            return;
                        } else {
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getCloudServiceResult2.msg);
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            return;
                        }
                    }
                    LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV2--apkType-->" + getCloudServiceResult2.apkType);
                    int iApkTypeString2Int = Utils.apkTypeString2Int(getCloudServiceResult2.apkType);
                    reportGetCloudService2Failed2.apkType = getCloudServiceResult2.apkType;
                    LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame----apkType--" + iApkTypeString2Int);
                    if (TextUtils.isEmpty(getCloudServiceResult2.cid)) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_005, ResourceManager.getString(R.string.haima_hmcp_cid_error));
                        reportGetCloudService2Failed2.errorCode = Constants.ERRORCODE_SERVICE2_005;
                        reportGetCloudService2Failed2.errorMsg = "cid <=0";
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                        return;
                    }
                    boolean zEquals = TextUtils.equals(HmcpRequestManager.this.mCloudId, getCloudServiceResult2.cid);
                    String strValueOf = String.valueOf(getCloudServiceResult2.battleOnlineType);
                    BattleMode battleMode2 = HmcpRequestManager.this.mBattleMode;
                    battleMode2.player = getCloudServiceResult2.battleOnlineType;
                    Integer num3 = getCloudServiceResult2.gamePad;
                    if (num3 != null) {
                        battleMode2.battle.gamePad = num3.intValue();
                        strValueOf = strValueOf + "," + HmcpRequestManager.this.mBattleMode.battle.gamePad;
                    }
                    HmcpRequestManager.this.notifySaasListenerResponse(7, strValueOf);
                    HmcpRequestManager.this.notifySaasListenerResponse(6, zEquals ? "1" : "0");
                    String str4 = getCloudServiceResult2.cid;
                    HmcpRequestManager hmcpRequestManager6 = HmcpRequestManager.this;
                    hmcpRequestManager6.isCloudIdChange = !TextUtils.equals(hmcpRequestManager6.mCloudId, str4);
                    LogUtils.d(HmcpRequestManager.TAG, "----sendProtoDataGameInfo---mCloudId:" + HmcpRequestManager.this.mCloudId + ",responseCloudId:" + str4 + ",isCloudIdChange:" + HmcpRequestManager.this.isCloudIdChange);
                    HmcpRequestManager hmcpRequestManager7 = HmcpRequestManager.this;
                    String str5 = getCloudServiceResult2.cid;
                    hmcpRequestManager7.mCloudId = str5;
                    CountlyUtil.mCloudID = str5;
                    DnsManager.getInstance().reset(HmcpRequestManager.this.mCloudId);
                    PingManager.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    HmDataChannelDeviceSwitch.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    LogUtils.d(HmcpRequestManager.TAG, "==211 cid=" + HmcpRequestManager.this.mCloudId);
                    DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_KEY, CryptoUtils.md5(HmcpRequestManager.this.builder.toString()));
                    DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_VALUE, HmcpRequestManager.this.mCloudId);
                    HmcpRequestManager.this.mSecretKey = String.valueOf(getCloudServiceResult2.secretKey);
                    HmcpRequestManager.this.resolveDistanceInfo(getCloudServiceResult2.distanceLimit);
                    MessageServerInfo messageServerInfo = getCloudServiceResult2.msgServInfo;
                    String str6 = getCloudServiceResult2.instructionSet;
                    boolean z12 = !TextUtils.isEmpty(str6) && Constants.STREAM_TYPE_X86.equalsIgnoreCase(str6);
                    LogUtils.e(HmcpRequestManager.TAG, getCloudServiceResult2.toString());
                    if (messageServerInfo != null && !TextUtils.isEmpty(messageServerInfo.socketUrl)) {
                        HmcpRequestManager hmcpRequestManager8 = HmcpRequestManager.this;
                        if (hmcpRequestManager8.mSaasListener != null) {
                            if (!z12 && getCloudServiceResult2.addressInfo == null && iApkTypeString2Int != 3) {
                                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, "-1001-[addressInfo is null]");
                                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: AddressInfo info is wrong");
                                HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                                return;
                            }
                            hmcpRequestManager8.mRequestTime = 0;
                            hmcpRequestManager8.mMessageServerInfo = messageServerInfo;
                            if (HmcpRequestManager.this.mMessageServerInfo != null) {
                                HmcpRequestManager hmcpRequestManager9 = HmcpRequestManager.this;
                                hmcpRequestManager9.mAccessURL = hmcpRequestManager9.mMessageServerInfo.socketUrl;
                                HmcpRequestManager hmcpRequestManager10 = HmcpRequestManager.this;
                                hmcpRequestManager10.mAccessURList = hmcpRequestManager10.mMessageServerInfo.socketUrlList;
                            }
                            HmcpRequestManager hmcpRequestManager11 = HmcpRequestManager.this;
                            hmcpRequestManager11.mSignature = getCloudServiceResult2.sign;
                            hmcpRequestManager11.isAllowConnect2Access = true;
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_SUCCESS, JsonUtil.toJsonString(new ReportGetCloudService2(hmcpRequestManager11.streamType, "" + iApkTypeString2Int)));
                            LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame--getCloudServiceRequestV2---12121--->");
                            LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV2--apkType-->onGetCloudServiceSuccess" + HmcpRequestManager.this.mSignature);
                            HmcpRequestManager hmcpRequestManager12 = HmcpRequestManager.this;
                            hmcpRequestManager12.mSaasListener.onGetCloudServiceSuccess(hmcpRequestManager12.mCloudId, true, getCloudServiceResult2.resolutionId, 3, false);
                            CountDownUtil.createCidCacheTimer(HmcpRequestManager.this.mContext, DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL));
                            if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                                HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                            }
                            LogUtils.d("=OperationStream=getCloudServiceV2Success--", "apkType: " + iApkTypeString2Int);
                            HmcpRequestManager.this.mSaasListener.setGamePlatformType(z12 ? GamePlatformType.X86 : GamePlatformType.ARM);
                            HmcpManager.getInstance().setGameArchitectureType(z12 ? GameArchitectureType.X86 : GameArchitectureType.ARM);
                            HmcpRequestManager hmcpRequestManager13 = HmcpRequestManager.this;
                            String str7 = hmcpRequestManager13.mUserInfo.userId;
                            HmcpRequestManager hmcpRequestManager14 = HmcpRequestManager.this;
                            hmcpRequestManager13.protoDataGameInfo = new ProtoDataGameInfo(str7, hmcpRequestManager14.mCloudId, hmcpRequestManager14.mProtoData, hmcpRequestManager14.packageName, ProtoDataGameInfo.PayloadType.TV_MIGU_COMPETITIVE_GAME);
                            HmcpRequestManager hmcpRequestManager15 = HmcpRequestManager.this;
                            hmcpRequestManager15.connect2Access(hmcpRequestManager15.currentOPType, false);
                            HmcpRequestManager.this.setDisableAutoStream(getCloudServiceResult2.disableAutoStream);
                            if (getCloudServiceResult2.disableAutoStream && !getCloudServiceResult2.hasConfirmed) {
                                CountlyUtil.recordErrorEvent("=OperationStream=getCloudServiceV2Success but disableAutoStream");
                                LogUtils.d(HmcpRequestManager.TAG, "=OperationStream=getCloudServiceV2Success but disableAutoStream");
                                HmcpRequestManager.this.notifySaasListenerResponse(8, "");
                                return;
                            }
                            if (iApkTypeString2Int == 1) {
                                if (z12) {
                                    GSMAddressInfo gSMAddressInfo2 = getCloudServiceResult2.gsmAddressInfo;
                                    PlayStreamPayloadData playStreamPayloadData = new PlayStreamPayloadData();
                                    playStreamPayloadData.gsmUrl = gSMAddressInfo2.getGsmUrl();
                                    HmcpRequestManager.this.initX86Data(playStreamPayloadData, gSMAddressInfo2);
                                    GSMAddressInfo.GSMResolutionInfo resolutionInfo = gSMAddressInfo2.getResolutionInfo();
                                    ResolutionInfo resolutionInfo2 = new ResolutionInfo();
                                    resolutionInfo2.resolution = resolutionInfo.getResolution();
                                    playStreamPayloadData.resolutionInfo = resolutionInfo2;
                                    playStreamPayloadData.resolution = resolutionInfo.getResolution();
                                    playStreamPayloadData.streamType = Constants.STREAM_TYPE_RTC;
                                    getCloudServiceResult2.addressInfo = playStreamPayloadData;
                                } else {
                                    getCloudServiceResult2.addressInfo.webRtcInfo = getCloudServiceResult2.webRtcInfo;
                                }
                                HmcpRequestManager.this.mSaasListener.playPreparation(iApkTypeString2Int, getCloudServiceResult2.addressInfo);
                                HmcpRequestManager.this.mSaasListener.waitStreamUrl("getCloudServiceV2 Success apkType : " + iApkTypeString2Int);
                                return;
                            }
                            if (iApkTypeString2Int != 2) {
                                if (iApkTypeString2Int == 3) {
                                    HmcpRequestManager.this.mSaasListener.waitStreamUrl("getCloudServiceV2 Success apkType : " + iApkTypeString2Int);
                                    return;
                                }
                                return;
                            }
                            if (z12) {
                                GSMAddressInfo gSMAddressInfo3 = getCloudServiceResult2.gsmAddressInfo;
                                PlayStreamPayloadData playStreamPayloadData2 = new PlayStreamPayloadData();
                                playStreamPayloadData2.gsmUrl = gSMAddressInfo3.getGsmUrl();
                                HmcpRequestManager.this.initX86Data(playStreamPayloadData2, gSMAddressInfo3);
                                GSMAddressInfo.GSMResolutionInfo resolutionInfo3 = gSMAddressInfo3.getResolutionInfo();
                                ResolutionInfo resolutionInfo4 = new ResolutionInfo();
                                resolutionInfo4.resolution = resolutionInfo3.getResolution();
                                playStreamPayloadData2.resolutionInfo = resolutionInfo4;
                                playStreamPayloadData2.resolution = resolutionInfo3.getResolution();
                                playStreamPayloadData2.streamType = Constants.STREAM_TYPE_RTC;
                                getCloudServiceResult2.addressInfo = playStreamPayloadData2;
                            } else {
                                getCloudServiceResult2.addressInfo.webRtcInfo = getCloudServiceResult2.webRtcInfo;
                            }
                            HmcpRequestManager.this.mSaasListener.playPreparation(iApkTypeString2Int, getCloudServiceResult2.addressInfo);
                            return;
                        }
                    }
                    reportGetCloudService2Failed2.errorCode = Constants.ERRORCODE_SERVICE2_006;
                    int i14 = R.string.haima_hmcp_saas_ws_error;
                    reportGetCloudService2Failed2.errorMsg = ResourceManager.getString(i14);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed2));
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: Message server info is wrong");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_006, ResourceManager.getString(i14));
                }
            });
            return;
        }
        notifyRetryPromptListener(Constants.ERRORCODE_OTHER_100, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
        LogUtils.d(str2, "getCloudServiceRequestV2----request----> mCToken = " + this.mCToken + ":mUserInfo == null");
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_FAIL, JsonUtil.toJsonString(new ReportGetCloudService2Failed(Constants.ERRORCODE_CONTROL_003, "mCToken =empty or mUserInfo=null", 0, "", 0, this.streamType, "")));
    }

    public void getCloudServiceRequestV3(String str, final boolean z10) {
        String str2 = this.mAppName;
        this.packageName = str2;
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3, JsonUtil.toJsonString(new ReportGetCloudService3(this.mAppChannel, str2, this.streamType, "")) + " isRetry=" + z10);
        String str3 = TAG;
        LogUtils.d(str3, "DownFirstFrame--getCloudServiceRequestV3---13212--->");
        if (TextUtils.isEmpty(this.mDeviceId)) {
            this.mDeviceId = DataUtils.getSharedInstance(this.mContext).getPreferences(KEY_PREFERENCE_DID, "0");
        }
        if (!TextUtils.isEmpty(this.mCloudId) && this.mMessageServerInfo != null) {
            LogUtils.d(str3, "getCloudServiceRequestV3----request---->mCloudId = " + this.mCloudId);
        }
        if (!TextUtils.isEmpty(this.mCToken) && this.mUserInfo != null) {
            if (this.mHttpManager == null) {
                LogUtils.e(str3, "getCloudServiceRequestV3-----mVolleyManager==null");
                CountlyUtil.recordErrorEvent("getCloudServiceRequestV3() mVolleyManager == null; isStopPlay = " + this.isStopPlay + "; " + Log.getStackTraceString(new Throwable()));
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(new ReportGetCloudService3Failed(Constants.ERRORCODE_CONTROL_003, "getCloudServiceRequestV3() mVolleyManager == null", 0, "", 0, this.mAppChannel, this.packageName, this.streamType, "")));
                return;
            }
            boolean zIsRequestWithCid = isRequestWithCid();
            resetHttpStatus();
            this.builder = new StringBuilder();
            if (this.mUserInfo2 != null) {
                LogUtils.d(str3, this.mUserInfo2.userId + "  " + this.mAppName + "   " + this.mAccessKeyId + "   " + this.mAppChannel);
                StringBuilder sb2 = this.builder;
                sb2.append(this.mUserInfo2.userId);
                sb2.append(this.mAppName);
                sb2.append(this.mAccessKeyId);
                sb2.append(this.mAppChannel);
            }
            this.mCloudId = DataUtils.getSharedInstance(this.mContext).getCidPreferences(this.builder.toString(), "");
            DeviceIdParameters deviceIdParameters = getDeviceIdParameters();
            GetCloudServiceParametersV2 cloudServiceParametersV2 = getCloudServiceParametersV2(str, zIsRequestWithCid);
            RequestConfigure requestConfigureData = getRequestConfigureData();
            GetCloudServiceParametersV3 getCloudServiceParametersV3 = new GetCloudServiceParametersV3();
            getCloudServiceParametersV3.registerRequest = deviceIdParameters;
            getCloudServiceParametersV3.configureRequest = requestConfigureData;
            getCloudServiceParametersV3.getCloudServiceRequestV2 = cloudServiceParametersV2;
            ArrayList arrayList = new ArrayList();
            arrayList.add("108");
            arrayList.add("211");
            getCloudServiceParametersV3.actIds = arrayList;
            final long jCurrentTimeMillis = System.currentTimeMillis();
            LogUtils.d(str3, "timeframe--getCloudServiceRequestV3--request-->" + getCloudServiceParametersV3.toString());
            Serializable postJson = getPostJson(222, (IParameter) getCloudServiceParametersV3, false, jCurrentTimeMillis);
            SendSceneState.applyCloudInstance(this.mContext, this.mPlayerListener);
            LogUtils.d(str3, "OperationStream=timeframe--getCloudServiceRequestV3--request-->" + JsonUtil.toJsonString(postJson));
            this.isGetCloudServiceRequestV2Requesting = true;
            CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
            if (cloudPlayInfo != null) {
                cloudPlayInfo.resetCloudPlayInfo();
            }
            if (!z10) {
                RetryErrorcodeConfig.reset();
            }
            final IRetryPolicy cuRetryPolicy = getCuRetryPolicy(GetCloudServiceResult2.class);
            Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
            getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START_V3, postJson, GetCloudServiceResult3.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.46
                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onError(int i10, String str4) {
                    HmcpRequestManager.this.isGetCloudServiceRequestV2Requesting = false;
                    HmcpRequestManager.this.mCloudId = "";
                    ReportGetCloudService2Failed reportGetCloudService2Failed = new ReportGetCloudService2Failed("" + i10, str4, 0, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.streamType, "");
                    reportGetCloudService2Failed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService2Failed));
                    HmcpRequestManager.this.setResultNetData("222", "fail", i10 + ":" + str4, jCurrentTimeMillis);
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str4);
                    if (i10 == -1000) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                        return;
                    }
                    if (i10 == -1002) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                        return;
                    }
                    if (i10 == -1003) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_001, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    } else if (i10 == -1004) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    } else {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    }
                }

                @Override // com.haima.hmcp.listeners.OnVolleyListener
                public void onSuccess(BaseResult baseResult) {
                    GSMAddressInfo gSMAddressInfo;
                    HmcpRequestManager.this.isGetCloudServiceRequestV2Requesting = false;
                    HmcpRequestManager.this.setResultNetData("222", "success", "", jCurrentTimeMillis);
                    if (baseResult == null) {
                        HmcpRequestManager.this.mCloudId = "";
                        ReportGetCloudService3Failed reportGetCloudService3Failed = new ReportGetCloudService3Failed("-1001", "result is null", 200, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mAppChannel, HmcpRequestManager.this.packageName, HmcpRequestManager.this.streamType, "");
                        reportGetCloudService3Failed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed));
                        HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service v3");
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE3_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                        return;
                    }
                    ReportGetCloudService3Failed reportGetCloudService3Failed2 = new ReportGetCloudService3Failed("", "Internal Error: Message server info is wrong", 200, "", cuRetryPolicy.getCurrentTimeout(), HmcpRequestManager.this.mAppChannel, HmcpRequestManager.this.packageName, HmcpRequestManager.this.streamType, "");
                    reportGetCloudService3Failed2.retryRequestCount = baseResult.retryRequestCount;
                    reportGetCloudService3Failed2.errorCode = baseResult.errorCode;
                    reportGetCloudService3Failed2.errorMsg = baseResult.errorMsg;
                    reportGetCloudService3Failed2.httpStatusCode = 200;
                    reportGetCloudService3Failed2.httpMsg = baseResult.msg;
                    GetCloudServiceResult3 getCloudServiceResult3 = (GetCloudServiceResult3) baseResult;
                    ConfigureResult configureResult = getCloudServiceResult3.configureResponse;
                    if (configureResult == null) {
                        HmcpRequestManager.this.doConfigureResultNull();
                        return;
                    }
                    GetCloudServiceResult2 getCloudServiceResult2 = getCloudServiceResult3.getCloudServiceResponseV2;
                    if (getCloudServiceResult2 != null) {
                        String str4 = getCloudServiceResult2.instructionSet;
                        boolean z11 = !TextUtils.isEmpty(str4) && Constants.STREAM_TYPE_X86.equalsIgnoreCase(str4);
                        OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                        if (onHmcpSaasRequestListener != null) {
                            onHmcpSaasRequestListener.setGamePlatformType(z11 ? GamePlatformType.X86 : GamePlatformType.ARM);
                        }
                    }
                    LogUtils.d(HmcpRequestManager.TAG, HmcpRequestManager.this.packageName + "timeframe--:getConfigure---response--->" + configureResult);
                    if (configureResult.code != 0) {
                        LogUtils.e(HmcpRequestManager.TAG, "timeframe--getConfigure--errorMsg-->" + configureResult.errorMsg);
                        IRetryPolicy cuRetryPolicy2 = HmcpRequestManager.this.getCuRetryPolicy(ConfigureResult.class);
                        String str5 = "" + configureResult.errorCode;
                        String str6 = configureResult.errorMsg;
                        int i10 = configureResult.code;
                        String str7 = configureResult.msg;
                        int currentTimeout = cuRetryPolicy2.getCurrentTimeout();
                        HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                        ReportGetConfigInfoFailed reportGetConfigInfoFailed = new ReportGetConfigInfoFailed(str5, str6, i10, str7, currentTimeout, hmcpRequestManager.mChannelId, hmcpRequestManager.packageName);
                        reportGetConfigInfoFailed.retryRequestCount = cuRetryPolicy2.getCurrentRetryCount();
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, com.alibaba.fastjson.a.toJSONString(reportGetConfigInfoFailed));
                        HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, configureResult.msg);
                        HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                        hmcpRequestManager2.notifyGetConfigureErrorListener(hmcpRequestManager2.packageName);
                        HmcpRequestManager.this.notifyRetryPromptListener(configureResult.errorCode, configureResult.errorMsg);
                        return;
                    }
                    LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame---v3----getConfigure------>");
                    if (!z10) {
                        HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                        hmcpRequestManager3.handleConfigureMetaInfo(configureResult, TextUtils.isEmpty(hmcpRequestManager3.packageName) && TextUtils.isEmpty(HmcpRequestManager.this.mGid), 108);
                    }
                    if (getCloudServiceResult2 == null) {
                        HmcpRequestManager.this.doGetCloudServiceResult2Null(cuRetryPolicy);
                        return;
                    }
                    OnHmcpSaasRequestListener onHmcpSaasRequestListener2 = HmcpRequestManager.this.mSaasListener;
                    if (onHmcpSaasRequestListener2 != null && (gSMAddressInfo = getCloudServiceResult2.gsmAddressInfo) != null) {
                        onHmcpSaasRequestListener2.onGSMUsbNatData(gSMAddressInfo.gsmUsbNatData);
                    }
                    HmcpRequestManager.this.mIsInTvRtcBlackList = getCloudServiceResult2.inTvRtcBlackList;
                    HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                    SendSceneState.inTvRtcBlackList(hmcpRequestManager4.mContext, hmcpRequestManager4.mPlayerListener, hmcpRequestManager4.mIsInTvRtcBlackList);
                    reportGetCloudService3Failed2.apkType = getCloudServiceResult2.apkType;
                    LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV3--v2--response-->" + getCloudServiceResult2);
                    int i11 = getCloudServiceResult2.code;
                    if (i11 != 0) {
                        if (i11 == 21108) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTYLY_GAME_MAINTENANCE, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                            HmcpRequestManager hmcpRequestManager5 = HmcpRequestManager.this;
                            SendSceneState.gameMaintenance(hmcpRequestManager5.mContext, hmcpRequestManager5.mPlayerListener, false, getCloudServiceResult2.maintainBegin, getCloudServiceResult2.maintainEnd);
                            return;
                        }
                        if (i11 == 21106) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTYLY_NO_REMAINING_TIME, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                            HmcpRequestManager hmcpRequestManager6 = HmcpRequestManager.this;
                            SendSceneState.noRemainingTime(hmcpRequestManager6.mContext, hmcpRequestManager6.mPlayerListener);
                            return;
                        }
                        if (i11 == 20106) {
                            HmcpRequestManager hmcpRequestManager7 = HmcpRequestManager.this;
                            hmcpRequestManager7.mDeviceId = "";
                            hmcpRequestManager7.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                            DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.KEY_PREFERENCE_DID, HmcpRequestManager.this.mDeviceId);
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service v3");
                            if (TextUtils.isEmpty(getCloudServiceResult2.errorCode)) {
                                HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_DID_005, ResourceManager.getString(R.string.haima_hmcp_did_error));
                                return;
                            } else {
                                HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                                return;
                            }
                        }
                        if (i11 == 10212) {
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            if (HmcpRequestManager.this.mPlayerListener != null) {
                                MessagePayload messagePayload = new MessagePayload();
                                messagePayload.code = 101;
                                messagePayload.uid = HmcpRequestManager.this.mUserInfo.userId;
                                messagePayload.description = "User token invalid...";
                                HmcpRequestManager.this.mPlayerListener.onMessage(JsonUtil.toJsonString(messagePayload));
                                return;
                            }
                            return;
                        }
                        if (i11 != 20303) {
                            if (HmcpRequestManager.this.retryByErrorCode(getCloudServiceResult2.errorCode)) {
                                return;
                            }
                            LogUtils.e(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV3--errorMsg-->" + getCloudServiceResult2.errorMsg);
                            HmcpRequestManager.this.mCloudId = "";
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getCloudServiceResult2.msg);
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            return;
                        }
                        HmcpRequestManager hmcpRequestManager8 = HmcpRequestManager.this;
                        hmcpRequestManager8.mCloudId = "";
                        DataUtils.getSharedInstance(hmcpRequestManager8.mContext).putPreferences(HmcpRequestManager.CID_VALUE, "");
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, "common code: " + getCloudServiceResult2.code);
                        if (Constants.OPEN_API_RELEASE_CODE.equals(getCloudServiceResult2.errorCode)) {
                            HmcpRequestManager.this.notifySaasListenerResponse(3, HmcpRequestManager.this.getJsonObject(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg, getCloudServiceResult2.stateChangeReason).toString());
                            return;
                        } else {
                            HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getCloudServiceResult2.msg);
                            HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult2.errorCode, getCloudServiceResult2.errorMsg);
                            return;
                        }
                    }
                    LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV3--v2--apkType-->" + getCloudServiceResult2.apkType);
                    int iApkTypeString2Int = Utils.apkTypeString2Int(getCloudServiceResult2.apkType);
                    LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame----apkType--" + iApkTypeString2Int);
                    if (TextUtils.isEmpty(getCloudServiceResult2.cid)) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_005, ResourceManager.getString(R.string.haima_hmcp_cid_error));
                        reportGetCloudService3Failed2.errorCode = Constants.ERRORCODE_SERVICE2_005;
                        reportGetCloudService3Failed2.errorMsg = "cid <=0";
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                        return;
                    }
                    boolean zEquals = TextUtils.equals(HmcpRequestManager.this.mCloudId, getCloudServiceResult2.cid);
                    String strValueOf = String.valueOf(getCloudServiceResult2.battleOnlineType);
                    BattleMode battleMode = HmcpRequestManager.this.mBattleMode;
                    battleMode.player = getCloudServiceResult2.battleOnlineType;
                    Integer num = getCloudServiceResult2.gamePad;
                    if (num != null) {
                        battleMode.battle.gamePad = num.intValue();
                        strValueOf = strValueOf + "," + HmcpRequestManager.this.mBattleMode.battle.gamePad;
                    }
                    HmcpRequestManager.this.notifySaasListenerResponse(7, strValueOf);
                    HmcpRequestManager.this.notifySaasListenerResponse(6, zEquals ? "1" : "0");
                    String str8 = getCloudServiceResult2.cid;
                    HmcpRequestManager hmcpRequestManager9 = HmcpRequestManager.this;
                    hmcpRequestManager9.isCloudIdChange = !TextUtils.equals(hmcpRequestManager9.mCloudId, str8);
                    LogUtils.d(HmcpRequestManager.TAG, "----sendProtoDataGameInfo---mCloudId:" + HmcpRequestManager.this.mCloudId + ",responseCloudId:" + str8 + ",isCloudIdChange:" + HmcpRequestManager.this.isCloudIdChange);
                    HmcpRequestManager hmcpRequestManager10 = HmcpRequestManager.this;
                    String str9 = getCloudServiceResult2.cid;
                    hmcpRequestManager10.mCloudId = str9;
                    CountlyUtil.mCloudID = str9;
                    DnsManager.getInstance().reset(HmcpRequestManager.this.mCloudId);
                    PingManager.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    HmDataChannelDeviceSwitch.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    LogUtils.d(HmcpRequestManager.TAG, "==222 cid=" + HmcpRequestManager.this.mCloudId);
                    DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_KEY, CryptoUtils.md5(HmcpRequestManager.this.builder.toString()));
                    DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_VALUE, HmcpRequestManager.this.mCloudId);
                    HmcpRequestManager.this.mSecretKey = String.valueOf(getCloudServiceResult2.secretKey);
                    HmcpRequestManager.this.resolveDistanceInfo(getCloudServiceResult2.distanceLimit);
                    MessageServerInfo messageServerInfo = getCloudServiceResult2.msgServInfo;
                    String str10 = getCloudServiceResult2.instructionSet;
                    boolean z12 = !TextUtils.isEmpty(str10) && Constants.STREAM_TYPE_X86.equalsIgnoreCase(str10);
                    LogUtils.e(HmcpRequestManager.TAG, getCloudServiceResult2.toString());
                    if (messageServerInfo != null && !TextUtils.isEmpty(messageServerInfo.socketUrl)) {
                        HmcpRequestManager hmcpRequestManager11 = HmcpRequestManager.this;
                        if (hmcpRequestManager11.mSaasListener != null) {
                            if (!z12 && getCloudServiceResult2.addressInfo == null && iApkTypeString2Int != 3) {
                                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, "-1001-[addressInfo is null]");
                                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: AddressInfo info is wrong");
                                HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                                return;
                            }
                            hmcpRequestManager11.mRequestTime = 0;
                            hmcpRequestManager11.mMessageServerInfo = messageServerInfo;
                            if (HmcpRequestManager.this.mMessageServerInfo != null) {
                                HmcpRequestManager hmcpRequestManager12 = HmcpRequestManager.this;
                                hmcpRequestManager12.mAccessURL = hmcpRequestManager12.mMessageServerInfo.socketUrl;
                                HmcpRequestManager hmcpRequestManager13 = HmcpRequestManager.this;
                                hmcpRequestManager13.mAccessURList = hmcpRequestManager13.mMessageServerInfo.socketUrlList;
                            }
                            HmcpRequestManager hmcpRequestManager14 = HmcpRequestManager.this;
                            hmcpRequestManager14.mSignature = getCloudServiceResult2.sign;
                            hmcpRequestManager14.isAllowConnect2Access = true;
                            CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_SUCCESS, JsonUtil.toJsonString(new ReportGetCloudService2(hmcpRequestManager14.streamType, "" + iApkTypeString2Int)));
                            LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV3--apkType-->onGetCloudServiceSuccess" + HmcpRequestManager.this.mSignature);
                            LogUtils.d(HmcpRequestManager.TAG, "DownFirstFrame--getCloudServiceRequestV3---13213--->");
                            HmcpRequestManager hmcpRequestManager15 = HmcpRequestManager.this;
                            hmcpRequestManager15.mSaasListener.onGetCloudServiceSuccess(hmcpRequestManager15.mCloudId, true, getCloudServiceResult2.resolutionId, 3, false);
                            CountDownUtil.createCidCacheTimer(HmcpRequestManager.this.mContext, DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL));
                            if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                                HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                            }
                            LogUtils.d("=OperationStream=getCloudServiceV3Success--", "apkType: " + iApkTypeString2Int);
                            HmcpRequestManager.this.mSaasListener.setGamePlatformType(z12 ? GamePlatformType.X86 : GamePlatformType.ARM);
                            HmcpManager.getInstance().setGameArchitectureType(z12 ? GameArchitectureType.X86 : GameArchitectureType.ARM);
                            HmcpRequestManager hmcpRequestManager16 = HmcpRequestManager.this;
                            String str11 = hmcpRequestManager16.mUserInfo.userId;
                            HmcpRequestManager hmcpRequestManager17 = HmcpRequestManager.this;
                            hmcpRequestManager16.protoDataGameInfo = new ProtoDataGameInfo(str11, hmcpRequestManager17.mCloudId, hmcpRequestManager17.mProtoData, hmcpRequestManager17.packageName, ProtoDataGameInfo.PayloadType.TV_MIGU_COMPETITIVE_GAME);
                            HmcpRequestManager hmcpRequestManager18 = HmcpRequestManager.this;
                            hmcpRequestManager18.connect2Access(hmcpRequestManager18.currentOPType, false);
                            HmcpRequestManager.this.setDisableAutoStream(getCloudServiceResult2.disableAutoStream);
                            if (getCloudServiceResult2.disableAutoStream && !getCloudServiceResult2.hasConfirmed) {
                                CountlyUtil.recordErrorEvent("=OperationStream=getCloudServiceV3Success but disableAutoStream");
                                LogUtils.d(HmcpRequestManager.TAG, "=OperationStream=getCloudServiceV3Success but disableAutoStream");
                                HmcpRequestManager.this.notifySaasListenerResponse(8, "");
                                return;
                            }
                            if (iApkTypeString2Int == 1) {
                                if (z12) {
                                    GSMAddressInfo gSMAddressInfo2 = getCloudServiceResult2.gsmAddressInfo;
                                    PlayStreamPayloadData playStreamPayloadData = new PlayStreamPayloadData();
                                    playStreamPayloadData.gsmUrl = gSMAddressInfo2.getGsmUrl();
                                    HmcpRequestManager.this.initX86Data(playStreamPayloadData, gSMAddressInfo2);
                                    GSMAddressInfo.GSMResolutionInfo resolutionInfo = gSMAddressInfo2.getResolutionInfo();
                                    ResolutionInfo resolutionInfo2 = new ResolutionInfo();
                                    resolutionInfo2.resolution = resolutionInfo.getResolution();
                                    playStreamPayloadData.resolutionInfo = resolutionInfo2;
                                    playStreamPayloadData.resolution = resolutionInfo.getResolution();
                                    playStreamPayloadData.streamType = Constants.STREAM_TYPE_RTC;
                                    getCloudServiceResult2.addressInfo = playStreamPayloadData;
                                } else {
                                    getCloudServiceResult2.addressInfo.webRtcInfo = getCloudServiceResult2.webRtcInfo;
                                }
                                HmcpRequestManager.this.mSaasListener.playPreparation(iApkTypeString2Int, getCloudServiceResult2.addressInfo);
                                HmcpRequestManager.this.mSaasListener.waitStreamUrl("getCloudServiceV3 Success apkType : " + iApkTypeString2Int);
                                return;
                            }
                            if (iApkTypeString2Int != 2) {
                                if (iApkTypeString2Int == 3) {
                                    HmcpRequestManager.this.mSaasListener.waitStreamUrl("getCloudServiceV3 Success apkType : " + iApkTypeString2Int);
                                    return;
                                }
                                return;
                            }
                            if (z12) {
                                GSMAddressInfo gSMAddressInfo3 = getCloudServiceResult2.gsmAddressInfo;
                                PlayStreamPayloadData playStreamPayloadData2 = new PlayStreamPayloadData();
                                playStreamPayloadData2.gsmUrl = gSMAddressInfo3.getGsmUrl();
                                HmcpRequestManager.this.initX86Data(playStreamPayloadData2, gSMAddressInfo3);
                                GSMAddressInfo.GSMResolutionInfo resolutionInfo3 = gSMAddressInfo3.getResolutionInfo();
                                ResolutionInfo resolutionInfo4 = new ResolutionInfo();
                                resolutionInfo4.resolution = resolutionInfo3.getResolution();
                                playStreamPayloadData2.resolutionInfo = resolutionInfo4;
                                playStreamPayloadData2.resolution = resolutionInfo3.getResolution();
                                playStreamPayloadData2.streamType = Constants.STREAM_TYPE_RTC;
                                getCloudServiceResult2.addressInfo = playStreamPayloadData2;
                            } else {
                                getCloudServiceResult2.addressInfo.webRtcInfo = getCloudServiceResult2.webRtcInfo;
                            }
                            HmcpRequestManager.this.mSaasListener.playPreparation(iApkTypeString2Int, getCloudServiceResult2.addressInfo);
                            return;
                        }
                    }
                    reportGetCloudService3Failed2.errorCode = Constants.ERRORCODE_SERVICE2_006;
                    int i12 = R.string.haima_hmcp_saas_ws_error;
                    reportGetCloudService3Failed2.errorMsg = ResourceManager.getString(i12);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(reportGetCloudService3Failed2));
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: Message server info is wrong");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE2_006, ResourceManager.getString(i12));
                }
            });
            return;
        }
        notifyRetryPromptListener(Constants.ERRORCODE_OTHER_100, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
        LogUtils.d(str3, "getCloudServiceRequestV3----request----> mCToken = " + this.mCToken + ":mUserInfo == null");
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V3_FAIL, JsonUtil.toJsonString(new ReportGetCloudService3Failed(Constants.ERRORCODE_CONTROL_003, "mCToken =empty or mUserInfo=null", 0, "", 0, this.mAppChannel, this.packageName, this.streamType, "")));
    }

    public void getStartStreamingRequest(String str, final OnStartStreamingListener onStartStreamingListener) {
        String str2 = TAG;
        LogUtils.e(str2, "getStartStreamingRequest" + this.packageName);
        if (this.mHttpManager == null) {
            LogUtils.e(str2, "getStartStreamingRequest-----mVolleyManager==null");
            CountlyUtil.recordErrorEvent("getStartStreamingRequest() mVolleyManager == null; isStopPlay = " + this.isStopPlay + "; " + Log.getStackTraceString(new Throwable()));
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_START_STREAMING, "==getStartStreamingRequest begin==");
        GetStartStreamingParameters getStartStreamingParameters = new GetStartStreamingParameters();
        getStartStreamingParameters.cid = this.mCloudId;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        LogUtils.d(str2, "timeframe--getStartStreamingRequest--request-->" + getStartStreamingParameters.toString());
        Serializable postJson = getPostJson(Constants.START_STREAMING_REQUEST, (IParameter) getStartStreamingParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--getStartStreamingRequest--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_START_STREAMING, postJson, GetStartStreamingResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.8
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getStartStreamingRequest--onError-->errorCode=" + i10 + " error=" + str3);
                CountlyUtil.recordEvent(Constants.COUNTYLY_START_STREAMING_FAILURE, "errorCode = " + i10 + " errorMessage = " + str3);
                HmcpRequestManager.this.setResultNetData("236", "fail", i10 + ":" + str3, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                OnStartStreamingListener onStartStreamingListener2 = onStartStreamingListener;
                if (onStartStreamingListener2 != null) {
                    onStartStreamingListener2.onFail(str3);
                }
                if (i10 == -1000) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                    return;
                }
                if (i10 == -1002) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    return;
                }
                if (i10 == -1003) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_001, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else if (i10 == -1004) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("236", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    int i10 = R.string.haima_hmcp_network_no_data;
                    String string = ResourceManager.getString(i10);
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--getStartStreamingRequest--result-->");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_START_STREAMING_FAILURE, "-1001");
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get start stream info");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_START_STREAM_003, ResourceManager.getString(i10));
                    OnStartStreamingListener onStartStreamingListener2 = onStartStreamingListener;
                    if (onStartStreamingListener2 != null) {
                        onStartStreamingListener2.onFail(string);
                        return;
                    }
                    return;
                }
                GetStartStreamingResult getStartStreamingResult = (GetStartStreamingResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--getStartStreamingRequest--respone-->" + com.alibaba.fastjson.a.toJSONString(getStartStreamingResult));
                if (getStartStreamingResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_START_STREAMING_SUCCESS);
                    OnStartStreamingListener onStartStreamingListener3 = onStartStreamingListener;
                    if (onStartStreamingListener3 != null) {
                        onStartStreamingListener3.onSuccess();
                        return;
                    }
                    return;
                }
                OnStartStreamingListener onStartStreamingListener4 = onStartStreamingListener;
                if (onStartStreamingListener4 != null) {
                    onStartStreamingListener4.onFail(getStartStreamingResult.errorCode + getStartStreamingResult.errorMsg);
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getStartStreamingRequest--errorMsg-->" + getStartStreamingResult.errorMsg);
                CountlyUtil.recordEvent(Constants.COUNTYLY_START_STREAMING_FAILURE, "common code: " + getStartStreamingResult.code);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getStartStreamingResult.msg);
                HmcpRequestManager.this.notifyRetryPromptListener(getStartStreamingResult.errorCode, getStartStreamingResult.errorMsg);
            }
        });
    }

    public void getSwitchStreamTypeRequest(String str, final StreamType streamType, final int i10, final OnSwitchStreamTypeListener onSwitchStreamTypeListener, final OnGetSwitchStreamTypeResultListener onGetSwitchStreamTypeResultListener) {
        if (this.mHttpManager == null) {
            LogUtils.e(TAG, "getSwitchStreamTypeRequest-----mVolleyManager==null");
            CountlyUtil.recordErrorEvent("getSwitchStreamTypeRequest() mVolleyManager == null; isStopPlay = " + this.isStopPlay + "; " + Log.getStackTraceString(new Throwable()));
            if (1 == i10) {
                Utils.switchStreamTypeResultCallback(streamType, i10, false, onSwitchStreamTypeListener, SwitchStreamTypeError.UNKNOWN);
                return;
            }
            return;
        }
        GetSwitchStreamTypeParameters getSwitchStreamTypeParameters = new GetSwitchStreamTypeParameters();
        getSwitchStreamTypeParameters.cloudId = this.mCloudId;
        getSwitchStreamTypeParameters.routingIp = str;
        getSwitchStreamTypeParameters.userInfo = this.mUserInfo2;
        getSwitchStreamTypeParameters.streamType = streamType.name();
        getSwitchStreamTypeParameters.enlargeBitRate = this.enableHighBitrate;
        if (this.mViewFrameRate > 0) {
            getSwitchStreamTypeParameters.viewFrameRate = this.mViewFrameRate + "";
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = TAG;
        LogUtils.d(str2, "timeframe--getSwitchStreamTypeRequest--request-->" + getSwitchStreamTypeParameters.toString());
        Serializable postJson = getPostJson(226, (IParameter) getSwitchStreamTypeParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--getSwitchStreamTypeRequest--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest("12260", postJson, GetSwitchStreamTypeResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.6
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i11, String str3) {
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL, "errorCode = " + i11 + " errorMessage = " + str3);
                HmcpRequestManager.this.setResultNetData("226", "fail", i11 + ":" + str3, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                if (i11 == -1000) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                    return;
                }
                if (i11 == -1002) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    return;
                }
                if (i11 == -1003) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_001, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else if (i11 == -1004) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                }
            }

            /* JADX WARN: Code duplicated, block: B:22:0x0116  */
            /* JADX WARN: Code duplicated, block: B:24:0x011d  */
            /* JADX WARN: Code duplicated, block: B:26:0x0127  */
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                int i11;
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO);
                HmcpRequestManager.this.setResultNetData("226", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--getSwitchStreamTypeRequest--result-->");
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL, "-1001");
                    int i12 = i10;
                    if (1 == i12) {
                        Utils.switchStreamTypeResultCallback(streamType, i12, false, onSwitchStreamTypeListener, SwitchStreamTypeError.RESPONSE_ERROR);
                        return;
                    } else {
                        HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get switch stream info");
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                        return;
                    }
                }
                GetSwitchStreamTypeResult getSwitchStreamTypeResult = (GetSwitchStreamTypeResult) baseResult;
                HmcpRequestManager.this.mIsInTvRtcBlackList = getSwitchStreamTypeResult.inTvRtcBlackList;
                if (1 == i10) {
                    HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                    SendSceneState.inTvRtcBlackList(hmcpRequestManager.mContext, hmcpRequestManager.mPlayerListener, hmcpRequestManager.mIsInTvRtcBlackList);
                }
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--getSwitchStreamTypeRequest--respone-->" + com.alibaba.fastjson.a.toJSONString(getSwitchStreamTypeResult));
                if (getSwitchStreamTypeResult.code != 0) {
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--getSwitchStreamTypeRequest--errorMsg-->" + getSwitchStreamTypeResult.errorMsg);
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL, "common code: " + getSwitchStreamTypeResult.code);
                    int i13 = i10;
                    if (1 == i13) {
                        if (getSwitchStreamTypeResult.code == 20509) {
                            Utils.switchStreamTypeResultCallback(streamType, i13, false, onSwitchStreamTypeListener, SwitchStreamTypeError.IN_DEVICE_BLACK_LIST);
                            return;
                        } else {
                            Utils.switchStreamTypeResultCallback(streamType, i13, false, onSwitchStreamTypeListener, SwitchStreamTypeError.RESPONSE_ERROR);
                            return;
                        }
                    }
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getSwitchStreamTypeResult.msg);
                    HmcpRequestManager.this.notifyRetryPromptListener("" + getSwitchStreamTypeResult.code, getSwitchStreamTypeResult.errorMsg);
                    return;
                }
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--getSwitchStreamTypeRequest--apkType-->" + getSwitchStreamTypeResult.apkType);
                int iApkTypeString2Int = Utils.apkTypeString2Int(getSwitchStreamTypeResult.apkType);
                MessageServerInfo messageServerInfo = getSwitchStreamTypeResult.msgServInfo;
                LogUtils.e(HmcpRequestManager.TAG, getSwitchStreamTypeResult.toString());
                if (messageServerInfo == null || TextUtils.isEmpty(messageServerInfo.socketUrl)) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL, "-1001");
                    i11 = i10;
                    if (1 == i11) {
                        Utils.switchStreamTypeResultCallback(streamType, i11, false, onSwitchStreamTypeListener, SwitchStreamTypeError.IN_DEVICE_BLACK_LIST);
                        return;
                    }
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: Message server info is wrong");
                    HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                    ResourceManager.getInstance();
                    hmcpRequestManager2.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_006, ResourceManager.getString(R.string.haima_hmcp_saas_ws_error));
                } else {
                    HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                    if (hmcpRequestManager3.mSaasListener == null) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_FAIL, "-1001");
                        i11 = i10;
                        if (1 == i11) {
                            Utils.switchStreamTypeResultCallback(streamType, i11, false, onSwitchStreamTypeListener, SwitchStreamTypeError.IN_DEVICE_BLACK_LIST);
                            return;
                        }
                        HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Internal Error: Message server info is wrong");
                        HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                        ResourceManager.getInstance();
                        hmcpRequestManager4.notifyRetryPromptListener(Constants.ERROR_CODE_SWITCH_STREAM_TYPE_006, ResourceManager.getString(R.string.haima_hmcp_saas_ws_error));
                    } else {
                        hmcpRequestManager3.mMessageServerInfo = messageServerInfo;
                        if (HmcpRequestManager.this.mMessageServerInfo != null) {
                            HmcpRequestManager hmcpRequestManager5 = HmcpRequestManager.this;
                            hmcpRequestManager5.mAccessURL = hmcpRequestManager5.mMessageServerInfo.socketUrl;
                        }
                        HmcpRequestManager hmcpRequestManager6 = HmcpRequestManager.this;
                        hmcpRequestManager6.mSignature = getSwitchStreamTypeResult.sign;
                        hmcpRequestManager6.isAllowConnect2Access = true;
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_INFO_SUCCESS, (System.currentTimeMillis() - jCurrentTimeMillis) + "; apkType = " + iApkTypeString2Int + "; currentOPType = " + HmcpRequestManager.this.currentOPType + "; streamType = " + getSwitchStreamTypeResult.streamType);
                        String str3 = HmcpRequestManager.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("timeframe--getSwitchStreamTypeRequest--apkType-->onGetCloudServiceSuccess");
                        sb2.append(HmcpRequestManager.this.mSignature);
                        LogUtils.d(str3, sb2.toString());
                        if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                            HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                        }
                    }
                }
                OnGetSwitchStreamTypeResultListener onGetSwitchStreamTypeResultListener2 = onGetSwitchStreamTypeResultListener;
                if (onGetSwitchStreamTypeResultListener2 != null) {
                    onGetSwitchStreamTypeResultListener2.getSwitchStreamTypeResult(getSwitchStreamTypeResult);
                }
            }
        });
    }

    public void requestControl(final String str, String str2, String str3, String str4, final OnContronListener onContronListener, final OnGetControlResultListener onGetControlResultListener, String str5) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON);
        resetHttpStatus();
        ControlParameters controlParameters = new ControlParameters();
        String andClearOtherFollowCid = FollowCidCacheUtil.getAndClearOtherFollowCid(this.mContext, str);
        if (!TextUtils.isEmpty(andClearOtherFollowCid)) {
            LogUtils.d(TAG, "controlParameters followCid is " + andClearOtherFollowCid);
            controlParameters.followCid = andClearOtherFollowCid;
        }
        controlParameters.masterId = str;
        controlParameters.pin = str2;
        if (Constants.ANDROID_TYPE == 2) {
            controlParameters.imeType = Constants.CONFIG_IME_TYPE_NATIVE;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(HmcpManager.getInstance().getStreamType().name());
        controlParameters.streamingTypes = arrayList;
        controlParameters.clientISP = clientISP;
        controlParameters.ext = this.mUserInfo2.userId;
        controlParameters.clientProvince = clientProvince;
        controlParameters.clientCity = clientCity;
        controlParameters.routingIp = str4;
        controlParameters.enlargeBitRate = this.enableHighBitrate;
        controlParameters.streamingMode = this.mStreamingMode;
        if (this.mViewFrameRate > 0) {
            controlParameters.viewFrameRate = this.mViewFrameRate + "";
        }
        setAccessKeyId(str3);
        LogUtils.d(TAG, "requestControl--request-->" + controlParameters);
        this.languageFromApp = str5;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(221, (IParameter) controlParameters, false, jCurrentTimeMillis);
        LanguageReport.getInstance().updateIsPlayBy211(false).report();
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_GAIN_CONTROL, postJson, ContronResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.40
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str6) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON_FAIL, "errorCode = " + i10 + " errorMessage = " + str6);
                OnContronListener onContronListener2 = onContronListener;
                if (onContronListener2 != null) {
                    onContronListener2.contronResult(false, i10 + "," + str6);
                }
                HmcpRequestManager.this.setResultNetData("221", "fail", i10 + ":" + str6, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str6);
                if (i10 == -1000) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                    return;
                }
                if (i10 == -1002) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    return;
                }
                if (i10 == -1003) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else if (i10 == -1004) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                GSMAddressInfo gSMAddressInfo;
                if (baseResult == null) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON_FAIL, "-1001");
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to request control");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                    return;
                }
                ContronResult contronResult = (ContronResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "request Contron result: " + JsonUtil.toJsonString(baseResult));
                int i10 = contronResult.code;
                boolean z10 = false;
                if (i10 != 0) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON_FAIL, i10);
                    if (onContronListener != null) {
                        onContronListener.contronResult(false, TextUtils.isEmpty(baseResult.errorCode) ? baseResult.msg : baseResult.errorMsg);
                        return;
                    }
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON_SUCCESS);
                MsgServInfo msgServInfo = contronResult.msgServInfo;
                if (msgServInfo == null || TextUtils.isEmpty(msgServInfo.socketUrl)) {
                    LogUtils.e(HmcpRequestManager.TAG, "Failed to request control: error msgServInfo");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_GET_CONTRON_FAIL, "-1001");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_006, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                } else {
                    HmcpRequestManager.this.mAppChannel = contronResult.appChannel;
                    if (contronResult.config != null) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_SUCCESS, JsonUtil.toJsonString(new ReportGetConfig(HmcpRequestManager.this.mAppChannel, HmcpRequestManager.this.packageName)));
                        HmcpRequestManager.this.handleConfigureMetaInfo(contronResult.config, false, 221);
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CONFIG_FAIL, "-1001");
                    }
                    if (TextUtils.isEmpty(contronResult.cid)) {
                        HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_CONTROL_005, ResourceManager.getString(R.string.haima_hmcp_cid_error));
                        CountlyUtil.recordErrorEvent("requestContron() contronResult.cid <= 0 " + Log.getStackTraceString(new Throwable()));
                        return;
                    }
                    HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                    String str6 = contronResult.cid;
                    hmcpRequestManager.mCloudId = str6;
                    CountlyUtil.mCloudID = str6;
                    hmcpRequestManager.notifySaasListenerResponse(6, "0");
                    DnsManager.getInstance().reset(HmcpRequestManager.this.mCloudId);
                    PingManager.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    HmDataChannelDeviceSwitch.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                    HmcpRequestManager.this.mSecretKey = String.valueOf(contronResult.secretKey);
                    String str7 = contronResult.instructionSet;
                    boolean z11 = !TextUtils.isEmpty(str7) && Constants.STREAM_TYPE_X86.equalsIgnoreCase(str7);
                    if (z11) {
                        FollowCidCacheUtil.save(HmcpRequestManager.this.mContext, str, contronResult.cid);
                    }
                    HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                    MsgServInfo msgServInfo2 = contronResult.msgServInfo;
                    hmcpRequestManager2.mAccessURL = msgServInfo2.socketUrl;
                    hmcpRequestManager2.mAccessURList = msgServInfo2.socketUrlList;
                    HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                    hmcpRequestManager3.mSignature = contronResult.sign;
                    hmcpRequestManager3.mRequestTime = 0;
                    hmcpRequestManager3.isAllowConnect2Access = true;
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_V2_SUCCESS, JsonUtil.toJsonString(new ReportGetCloudService2(hmcpRequestManager3.streamType, "2")));
                    LogUtils.d(HmcpRequestManager.TAG, "timeframe--getCloudServiceRequestV2--apkType-->onGetCloudServiceSuccess" + HmcpRequestManager.this.mSignature);
                    HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                    hmcpRequestManager4.mSaasListener.onGetCloudServiceSuccess(hmcpRequestManager4.mCloudId, true, contronResult.resolutionId, 3, false);
                    CountDownUtil.createCidCacheTimer(HmcpRequestManager.this.mContext, DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL));
                    if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                        HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                    }
                    LogUtils.d("cloudPlayInfo", "isGetCloudServiceSuccess true");
                    HmcpRequestManager.this.mSaasListener.setGamePlatformType(z11 ? GamePlatformType.X86 : GamePlatformType.ARM);
                    HmcpManager.getInstance().setGameArchitectureType(z11 ? GameArchitectureType.X86 : GameArchitectureType.ARM);
                    OnGetControlResultListener onGetControlResultListener2 = onGetControlResultListener;
                    if (onGetControlResultListener2 != null) {
                        onGetControlResultListener2.getControlResult(contronResult);
                    }
                    HmcpRequestManager hmcpRequestManager5 = HmcpRequestManager.this;
                    hmcpRequestManager5.connect2Access(hmcpRequestManager5.currentOPType, false);
                    z10 = z11;
                }
                if (!z10 || (gSMAddressInfo = contronResult.gsmAddressInfo) == null) {
                    return;
                }
                PlayStreamPayloadData playStreamPayloadData = new PlayStreamPayloadData();
                playStreamPayloadData.gsmUrl = gSMAddressInfo.getGsmUrl();
                HmcpRequestManager.this.initX86Data(playStreamPayloadData, gSMAddressInfo);
                GSMAddressInfo.GSMResolutionInfo resolutionInfo = gSMAddressInfo.getResolutionInfo();
                ResolutionInfo resolutionInfo2 = new ResolutionInfo();
                resolutionInfo2.resolution = resolutionInfo.getResolution();
                playStreamPayloadData.resolutionInfo = resolutionInfo2;
                playStreamPayloadData.resolution = resolutionInfo.getResolution();
                playStreamPayloadData.streamType = Constants.STREAM_TYPE_RTC;
                LogUtils.d(HmcpRequestManager.TAG, "control play directly");
                HmcpRequestManager.this.mSaasListener.playPreparation(2, playStreamPayloadData);
            }
        });
    }

    public void setStreamingModeRequest(String str, int i10, final OnSetStreamingModeListener onSetStreamingModeListener) {
        String str2 = TAG;
        LogUtils.e(str2, "setStreamingModeRequest" + this.packageName);
        if (this.mHttpManager == null) {
            LogUtils.e(str2, "setStreamingModeRequest-----mVolleyManager==null");
            CountlyUtil.recordErrorEvent("setStreamingModeRequest() mVolleyManager == null; isStopPlay = " + this.isStopPlay + "; " + Log.getStackTraceString(new Throwable()));
            return;
        }
        this.mStreamingMode = i10;
        CountlyUtil.recordEvent(Constants.COUNTYLY_SET_STREAMING_MODE, "==setStreamingModeRequest begin==");
        SetStreamingModeParameters setStreamingModeParameters = new SetStreamingModeParameters();
        setStreamingModeParameters.cid = this.mCloudId;
        setStreamingModeParameters.streamingMode = this.mStreamingMode;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        LogUtils.d(str2, "timeframe--setStreamingModeRequest--request-->" + setStreamingModeParameters.toString());
        Serializable postJson = getPostJson(Constants.SET_STREAMING_MODE_REQUEST, (IParameter) setStreamingModeParameters, false, jCurrentTimeMillis);
        LogUtils.d(str2, "timeframe--setStreamingModeRequest--request-->" + com.alibaba.fastjson.a.toJSONString(postJson));
        Constants.RETRY_CONFIG = Constants.RETRY_CONFIG_INITSDK;
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_SET_STREAMING_MODE, postJson, SetStreamingModeResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.10
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i11, String str3) {
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--setStreamingModeRequest--onError-->errorCode=" + i11 + " error=" + str3);
                CountlyUtil.recordEvent(Constants.COUNTYLY_SET_STREAMING_MODE_FAILURE, "errorCode = " + i11 + " errorMessage = " + str3);
                HmcpRequestManager.this.setResultNetData("237", "fail", i11 + ":" + str3, jCurrentTimeMillis);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str3);
                OnSetStreamingModeListener onSetStreamingModeListener2 = onSetStreamingModeListener;
                if (onSetStreamingModeListener2 != null) {
                    onSetStreamingModeListener2.onFail(str3);
                }
                if (i11 == -1000) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                    return;
                }
                if (i11 == -1002) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                    return;
                }
                if (i11 == -1003) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_001, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else if (i11 == -1004) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("237", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    int i11 = R.string.haima_hmcp_network_no_data;
                    String string = ResourceManager.getString(i11);
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--setStreamingModeRequest--result-->");
                    CountlyUtil.recordEvent(Constants.COUNTYLY_SET_STREAMING_MODE_FAILURE, "-1001");
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get start stream info");
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SET_STREAM_MODE_003, ResourceManager.getString(i11));
                    OnSetStreamingModeListener onSetStreamingModeListener2 = onSetStreamingModeListener;
                    if (onSetStreamingModeListener2 != null) {
                        onSetStreamingModeListener2.onFail(string);
                        return;
                    }
                    return;
                }
                SetStreamingModeResult setStreamingModeResult = (SetStreamingModeResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--setStreamingModeRequest--respone-->" + com.alibaba.fastjson.a.toJSONString(setStreamingModeResult));
                if (setStreamingModeResult.code == 0) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_SET_STREAMING_MODE_SUCCESS);
                    OnSetStreamingModeListener onSetStreamingModeListener3 = onSetStreamingModeListener;
                    if (onSetStreamingModeListener3 != null) {
                        onSetStreamingModeListener3.onSuccess();
                        return;
                    }
                    return;
                }
                OnSetStreamingModeListener onSetStreamingModeListener4 = onSetStreamingModeListener;
                if (onSetStreamingModeListener4 != null) {
                    onSetStreamingModeListener4.onFail(setStreamingModeResult.errorCode + setStreamingModeResult.errorMsg);
                }
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--setStreamingModeRequest--errorMsg-->" + setStreamingModeResult.errorMsg);
                CountlyUtil.recordEvent(Constants.COUNTYLY_SET_STREAMING_MODE_FAILURE, "common code: " + setStreamingModeResult.code);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, setStreamingModeResult.msg);
                HmcpRequestManager.this.notifyRetryPromptListener(setStreamingModeResult.errorCode, setStreamingModeResult.errorMsg);
            }
        });
    }

    private PostJson getPostJson(int i10, IParameter iParameter, boolean z10, long j10) {
        return getPostJson(i10, iParameter, z10, j10, "");
    }

    public void getCloudService(final int i10, final int i11, String str, final boolean z10) {
        String str2;
        String str3 = TAG;
        LogUtils.d(str3, "==getCloudService () confirm : " + i10 + " opType : " + i11);
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE, JsonUtil.toJsonString(new ReportGetCloudService(i10, i11)));
        if (TextUtils.isEmpty(this.mCloudId)) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_SERVICE_ARG_FAIL, JsonUtil.toJsonString(new ReportGetCloudServiceFailed(Constants.ERRORCODE_SERVICE_003, "cloudId is empty", 0, "", 0, i10, i11)));
            return;
        }
        if (!NetworkUtil.isNetworkConnected(this.mContext)) {
            this.mRequestTime = 0;
            LogUtils.e(str3, "getCloudService-----Network unavailable");
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_SERVICE_ARG_FAIL, JsonUtil.toJsonString(new ReportGetCloudServiceFailed(Constants.ERRORCODE_SERVICE_003, "Network unavailable", 0, "", 0, i10, i11)));
            return;
        }
        LogUtils.e(str3, "getCloudService-----Network available");
        this.opType = i11;
        this.confirm = i10;
        GetCloudServiceParameters getCloudServiceParameters = new GetCloudServiceParameters();
        getCloudServiceParameters.cloudId = this.mCloudId;
        getCloudServiceParameters.appId = this.mAppId;
        getCloudServiceParameters.appName = this.mAppName;
        getCloudServiceParameters.appChannel = this.mAppChannel;
        getCloudServiceParameters.signature = this.mSignature;
        getCloudServiceParameters.playingTime = this.mPlayTime;
        getCloudServiceParameters.priority = this.mPriority;
        getCloudServiceParameters.confirm = i10;
        getCloudServiceParameters.resolution = this.mResolutionID;
        getCloudServiceParameters.knockKnock = "";
        getCloudServiceParameters.opType = i11;
        getCloudServiceParameters.payStr = this.mPayStr;
        getCloudServiceParameters.bitRate = this.mBitRate;
        getCloudServiceParameters.clientType = Constants.ANDROID_TYPE;
        getCloudServiceParameters.orientation = this.mOrientation != ScreenOrientation.LANDSCAPE ? 1 : 0;
        getCloudServiceParameters.envType = Constants.ENV_TYPE;
        getCloudServiceParameters.isArchive = this.mArchive;
        getCloudServiceParameters.syncRefresh = true;
        getCloudServiceParameters.clientISP = clientISP;
        getCloudServiceParameters.clientProvince = clientProvince;
        getCloudServiceParameters.clientCity = clientCity;
        getCloudServiceParameters.viewResolution = getViewResolutionStr(this.mViewResolutionWidth, this.mViewResolutionHeight);
        getCloudServiceParameters.routingIp = str;
        getCloudServiceParameters.enlargeBitRate = this.enableHighBitrate;
        Integer num = this.mDevicePixelRation;
        if (num != null) {
            getCloudServiceParameters.devicePixelRatio = num;
        }
        if (this.mViewFrameRate > 0) {
            getCloudServiceParameters.viewFrameRate = this.mViewFrameRate + "";
        }
        LogUtils.e(str3, "timeframe--getCloudService--request-->" + getCloudServiceParameters);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(201, (IParameter) getCloudServiceParameters, false, jCurrentTimeMillis);
        SendSceneState.applyCloudInstance(this.mContext, this.mPlayerListener);
        LogUtils.e(str3, "timeframe--getCloudService--request-->" + JsonUtil.toJsonString(postJson));
        CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.resetCloudPlayInfo();
        }
        IRequestPolicy requestDiscardPolicy = new RequestDiscardPolicy();
        if (i11 == 1) {
            str2 = "12011";
        } else if (i11 == 2) {
            requestDiscardPolicy = new RequestWaitPolicy();
            str2 = "12012";
        } else {
            str2 = RequestConstant.CLOUD_PLAYER_REQUEST_TAG_QUEUE_NORMAL;
        }
        getHttpManager(this.mContext).postRequest(str2, requestDiscardPolicy, postJson, GetCloudServiceResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.21
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i12, String str4) {
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(GetCloudServiceResult.class);
                ReportGetCloudServiceFailed reportGetCloudServiceFailed = new ReportGetCloudServiceFailed("" + i12, str4, i12, str4, cuRetryPolicy.getCurrentTimeout(), i10, i11);
                reportGetCloudServiceFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                HmcpRequestManager.this.setResultNetData("201", "fail", i12 + ":" + str4, jCurrentTimeMillis);
                LogUtils.d(HmcpRequestManager.TAG, "getCloudService-->onError");
                if (i11 == 2) {
                    LogUtils.e(HmcpRequestManager.TAG, "getCloudService-->onError, switchResolution : failed");
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL_SWITCH_RESOLUTION, "errorCode = " + i12 + " errorMessage = " + str4);
                    HmcpRequestManager.this.notifySaasListenerResponse(201, null);
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                    return;
                }
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                SendSceneState.applyCloudInstanceFail(hmcpRequestManager.mContext, hmcpRequestManager.mPlayerListener);
                HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, str4);
                if (i12 == -1000) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_004, ResourceManager.getString(R.string.haima_hmcp_parse_error));
                } else if (i12 == -1002 || i12 == -1003) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_001, ResourceManager.getString(R.string.haima_hmcp_net_error));
                } else if (i12 == -1004) {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_002, ResourceManager.getString(R.string.haima_hmcp_net_error));
                } else {
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_002, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                }
                IWebSocket iWebSocket = HmcpRequestManager.this.mWebSocketManager;
                if (iWebSocket != null) {
                    iWebSocket.disconnect();
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                GSMAddressInfo gSMAddressInfo;
                HmcpRequestManager.this.setResultNetData("201", "success", "", jCurrentTimeMillis);
                IRetryPolicy cuRetryPolicy = HmcpRequestManager.this.getCuRetryPolicy(GetCloudServiceResult.class);
                ReportGetCloudServiceFailed reportGetCloudServiceFailed = new ReportGetCloudServiceFailed(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS, "", 200, "", cuRetryPolicy.getCurrentTimeout(), i10, i11);
                if (baseResult == null) {
                    reportGetCloudServiceFailed.errorCode = "-1001";
                    reportGetCloudServiceFailed.errorMsg = "result is null";
                    reportGetCloudServiceFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--getCloudService--result--> null");
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, "Failed to get cloud service");
                    if (i11 == 2) {
                        HmcpRequestManager.this.notifySaasListenerResponse(201, null);
                    }
                    HmcpRequestManager.this.notifyRetryPromptListener(Constants.ERRORCODE_SERVICE_003, ResourceManager.getString(R.string.haima_hmcp_network_no_data));
                    IWebSocket iWebSocket = HmcpRequestManager.this.mWebSocketManager;
                    if (iWebSocket != null) {
                        iWebSocket.disconnect();
                        return;
                    }
                    return;
                }
                GetCloudServiceResult getCloudServiceResult = (GetCloudServiceResult) baseResult;
                LogUtils.e(HmcpRequestManager.TAG, "timeframe--getCloudService--response-->status = " + JsonUtil.toJsonString(getCloudServiceResult));
                int i12 = getCloudServiceResult.code;
                if (i12 != 0) {
                    if (i12 == 20126 && Constants.OPEN_API_RELEASE_CODE.equals(getCloudServiceResult.errorCode)) {
                        HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                        hmcpRequestManager.mCloudId = "";
                        DataUtils.getSharedInstance(hmcpRequestManager.mContext).putPreferences(HmcpRequestManager.CID_VALUE, "");
                        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL, "common code: " + getCloudServiceResult.code);
                        HmcpRequestManager.this.notifySaasListenerResponse(3, HmcpRequestManager.this.getJsonObject(getCloudServiceResult.errorCode, getCloudServiceResult.errorMsg, getCloudServiceResult.stateChangeReason).toString());
                        return;
                    }
                    reportGetCloudServiceFailed.errorCode = getCloudServiceResult.errorCode;
                    reportGetCloudServiceFailed.errorMsg = getCloudServiceResult.errorMsg;
                    reportGetCloudServiceFailed.retryRequestCount = cuRetryPolicy.getCurrentRetryCount();
                    CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_FAIL, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                    HmcpRequestManager.this.notifyPlayerListener(ErrorType.OTHER, getCloudServiceResult.msg);
                    HmcpRequestManager.this.notifyRetryPromptListener(getCloudServiceResult.errorCode, getCloudServiceResult.errorMsg);
                    LogUtils.e(HmcpRequestManager.TAG, "timeframe--getCloudService-->error");
                    IWebSocket iWebSocket2 = HmcpRequestManager.this.mWebSocketManager;
                    if (iWebSocket2 != null) {
                        iWebSocket2.disconnect();
                    }
                    if (i11 == 2) {
                        HmcpRequestManager.this.notifySaasListenerResponse(201, null);
                        return;
                    }
                    return;
                }
                if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                    HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                }
                OnHmcpSaasRequestListener onHmcpSaasRequestListener = HmcpRequestManager.this.mSaasListener;
                if (onHmcpSaasRequestListener != null && (gSMAddressInfo = getCloudServiceResult.gsmAddressInfo) != null) {
                    onHmcpSaasRequestListener.onGSMUsbNatData(gSMAddressInfo.gsmUsbNatData);
                }
                LogUtils.d("cloudPlayInfo", "isGetCloudServiceSuccess true");
                reportGetCloudServiceFailed.retryRequestCount = baseResult.retryRequestCount;
                CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_SERVICE_SUCCESS, JsonUtil.toJsonString(reportGetCloudServiceFailed));
                if (HmcpRequestManager.this.mSaasListener != null) {
                    LogUtils.i(HmcpRequestManager.TAG, "timeframe--mSaasListener===opType ==>>" + i11);
                    HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                    hmcpRequestManager2.mSaasListener.onGetCloudServiceSuccess(hmcpRequestManager2.mCloudId, false, getCloudServiceResult.resultId, i11, z10);
                    if (i10 != 1) {
                        GSMAddressInfo gSMAddressInfo2 = getCloudServiceResult.gsmAddressInfo;
                        if (gSMAddressInfo2 != null) {
                            PlayStreamPayloadData playStreamPayloadData = new PlayStreamPayloadData();
                            playStreamPayloadData.gsmUrl = gSMAddressInfo2.getGsmUrl();
                            HmcpRequestManager.this.initX86Data(playStreamPayloadData, gSMAddressInfo2);
                            GSMAddressInfo.GSMResolutionInfo resolutionInfo = gSMAddressInfo2.getResolutionInfo();
                            ResolutionInfo resolutionInfo2 = new ResolutionInfo();
                            resolutionInfo2.resolution = resolutionInfo.getResolution();
                            playStreamPayloadData.resolutionInfo = resolutionInfo2;
                            playStreamPayloadData.resolution = resolutionInfo.getResolution();
                            playStreamPayloadData.streamType = Constants.STREAM_TYPE_RTC;
                            getCloudServiceResult.addressInfo = playStreamPayloadData;
                            HmcpRequestManager.this.mSaasListener.playPreparation(2, playStreamPayloadData);
                            return;
                        }
                        PlayStreamPayloadData playStreamPayloadData2 = getCloudServiceResult.addressInfo;
                        if (playStreamPayloadData2 != null && !TextUtils.isEmpty(playStreamPayloadData2.videoUrl) && !TextUtils.isEmpty(getCloudServiceResult.addressInfo.audioUrl) && !TextUtils.isEmpty(getCloudServiceResult.addressInfo.inputUrl)) {
                            HmcpRequestManager.this.mSaasListener.playPreparation(2, getCloudServiceResult.addressInfo);
                            return;
                        }
                        WebRtcInfo webRtcInfo = getCloudServiceResult.wWebRtcInfo;
                        if (webRtcInfo != null && !TextUtils.isEmpty(webRtcInfo.coTurnUrl) && !TextUtils.isEmpty(getCloudServiceResult.wWebRtcInfo.signalUrl) && !TextUtils.isEmpty(getCloudServiceResult.wWebRtcInfo.roomId)) {
                            PlayStreamPayloadData playStreamPayloadData3 = getCloudServiceResult.addressInfo;
                            playStreamPayloadData3.webRtcInfo = getCloudServiceResult.wWebRtcInfo;
                            HmcpRequestManager.this.mSaasListener.playPreparation(2, playStreamPayloadData3);
                            return;
                        }
                        HmcpRequestManager.this.mSaasListener.waitStreamUrl("getCloudService Success opType : " + i11 + " confirm : " + i10);
                        LogUtils.i(HmcpRequestManager.TAG, "syncRefresh = true, but addressInfo = null;");
                    }
                }
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:43:0x00c4 A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003e, B:7:0x0054, B:9:0x0061, B:38:0x00b7, B:39:0x00ba, B:40:0x00bd, B:41:0x00c0, B:51:0x0126, B:55:0x0130, B:57:0x0159, B:59:0x015d, B:61:0x018d, B:67:0x01c0, B:74:0x0208, B:73:0x01e4, B:60:0x017f, B:43:0x00c4, B:46:0x00d8, B:47:0x00e1, B:50:0x0107), top: B:80:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:50:0x0107 A[Catch: all -> 0x022a, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x003e, B:7:0x0054, B:9:0x0061, B:38:0x00b7, B:39:0x00ba, B:40:0x00bd, B:41:0x00c0, B:51:0x0126, B:55:0x0130, B:57:0x0159, B:59:0x015d, B:61:0x018d, B:67:0x01c0, B:74:0x0208, B:73:0x01e4, B:60:0x017f, B:43:0x00c4, B:46:0x00d8, B:47:0x00e1, B:50:0x0107), top: B:80:0x0001 }] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private synchronized com.haima.hmcp.beans.PostJson getPostJson(int r10, com.haima.hmcp.beans.IParameter r11, long r12, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.haima.hmcp.business.HmcpRequestManager.getPostJson(int, com.haima.hmcp.beans.IParameter, long, java.lang.String):com.haima.hmcp.beans.PostJson");
    }

    public void getSpecialInfo(String str, String str2, String str3, String str4, String str5, final OnIdcQueryCallBackListener onIdcQueryCallBackListener) {
        RequestSpecialInfo requestSpecialInfo = new RequestSpecialInfo();
        requestSpecialInfo.type = 1;
        requestSpecialInfo.clientISP = str;
        requestSpecialInfo.clientProvince = str2;
        requestSpecialInfo.clientCity = str3;
        requestSpecialInfo.routingIp = str4;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Serializable postJson = getPostJson(110, requestSpecialInfo, true, jCurrentTimeMillis, str5);
        LogUtils.e(TAG, "timeframe--getSpecialInfo---request--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_SPEED_URL, postJson, ResponseSpecialInfo.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.16
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i10, String str6) {
                HmcpRequestManager.this.setResultNetData("110", "fail", i10 + ":" + str6, jCurrentTimeMillis);
                if (i10 == -1000) {
                    onIdcQueryCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_parse_error), Constants.ERRORCODE_SPECIAL_INFO_004));
                } else if (i10 == -1002) {
                    onIdcQueryCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_error), Constants.ERRORCODE_CONFIG_001));
                } else {
                    onIdcQueryCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_net_timeout), Constants.ERRORCODE_CONFIG_002));
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                HmcpRequestManager.this.setResultNetData("110", "success", "", jCurrentTimeMillis);
                if (baseResult == null) {
                    onIdcQueryCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_SPECIAL_INFO_003));
                    return;
                }
                ResponseSpecialInfo responseSpecialInfo = (ResponseSpecialInfo) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "timeframe--:getSpecialInfo---response--->" + JsonUtil.toJsonString(responseSpecialInfo));
                if (responseSpecialInfo.code != 0) {
                    onIdcQueryCallBackListener.fail(HmcpRequestManager.this.concatErrorCode(ResourceManager.getString(R.string.haima_hmcp_network_no_data), Constants.ERRORCODE_SPECIAL_INFO_003));
                    return;
                }
                if (TextUtils.isEmpty(responseSpecialInfo.url)) {
                    onIdcQueryCallBackListener.fail("url is null");
                } else if (TextUtils.isEmpty(responseSpecialInfo.ip)) {
                    onIdcQueryCallBackListener.fail("ip is null");
                } else {
                    onIdcQueryCallBackListener.success(responseSpecialInfo.url, responseSpecialInfo.ip);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getJoinBattle(JoinBattle joinBattle, String str, final OnJoinBattleListener onJoinBattleListener) {
        if (onJoinBattleListener == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "OnJoinBattleListener is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "OnJoinBattleListener is null");
            return;
        }
        if (joinBattle == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle is null");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (TextUtils.isEmpty(joinBattle.cid)) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle.cid is null or empty");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle.cid is null or empty");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (TextUtils.isEmpty(joinBattle.packageName)) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle.packageName is null or empty");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle.packageName is null or empty");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (TextUtils.isEmpty(joinBattle.cToken)) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "JoinBattle.cToken is null or empty");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "JoinBattle.cToken is null or empty");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        int i10 = joinBattle.streamingType;
        if (i10 < 0 || i10 > 1) {
            String str2 = "JoinBattle.streamingType is not validate: " + joinBattle.streamingType;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str2);
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str2);
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (joinBattle.playTime < 0) {
            String str3 = "JoinBattle.playTime is not validate: " + joinBattle.playTime;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str3);
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str3);
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        String str4 = TAG;
        LogUtils.d(str4, "tv_battle->getJoinBattle: " + joinBattle);
        CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE, JsonUtil.toJsonString(new ReportGetJoinBattle(joinBattle)));
        int i11 = joinBattle.gamePad;
        if (i11 == 0 || i11 < 0 || i11 > 2) {
            joinBattle.gamePad = 2;
        }
        BattleMode battleMode = this.mBattleMode;
        if (battleMode.battle == null) {
            battleMode.battle = new Battle();
        }
        BattleMode battleMode2 = this.mBattleMode;
        Battle battle = battleMode2.battle;
        battle.mode = 1;
        battle.gamePad = joinBattle.gamePad;
        battleMode2.player = 2;
        clientISP = joinBattle.clientISP;
        clientProvince = joinBattle.clientProvince;
        clientCity = joinBattle.clientCity;
        this.mPlayTime = joinBattle.playTime;
        this.mAppName = joinBattle.packageName;
        this.mAppChannel = joinBattle.appChannel;
        this.mCToken = joinBattle.cToken;
        ArrayList arrayList = new ArrayList();
        arrayList.add(joinBattle.streamingType == 1 ? Constants.STREAM_TYPE_RTC : Constants.STREAM_TYPE_RTMP);
        RequestJoinBattle requestJoinBattle = new RequestJoinBattle();
        requestJoinBattle.ownerCid = joinBattle.cid;
        requestJoinBattle.pkgName = joinBattle.packageName;
        requestJoinBattle.appChannel = joinBattle.appChannel;
        requestJoinBattle.cToken = joinBattle.cToken;
        requestJoinBattle.envType = Constants.ENV_TYPE;
        requestJoinBattle.streamingTypes = arrayList;
        requestJoinBattle.playingTime = joinBattle.playTime;
        requestJoinBattle.userInfo = this.mUserInfo2;
        requestJoinBattle.clientISP = joinBattle.clientISP;
        requestJoinBattle.clientProvince = joinBattle.clientProvince;
        requestJoinBattle.clientCity = joinBattle.clientCity;
        requestJoinBattle.routingIp = str;
        requestJoinBattle.battleOnlineType = 2;
        requestJoinBattle.gamePad = joinBattle.gamePad;
        requestJoinBattle.sdkAbility = getSdkAbility(false);
        String str5 = joinBattle.protoData;
        if (str5 != null) {
            requestJoinBattle.protoData = str5;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        LogUtils.d(str4, "tv_battle->getJoinBattle---request encrypt before--->" + requestJoinBattle);
        Serializable postJson = getPostJson(311, (IParameter) requestJoinBattle, false, jCurrentTimeMillis);
        LogUtils.d(str4, "tv_battle->getJoinBattle---request encrypt after--->" + com.alibaba.fastjson.a.toJSONString(postJson));
        getHttpManager(this.mContext).postRequest(RequestConstant.CLOUD_PLAYER_REQUEST_TAG_JOIN_BATTLE, postJson, JoinBattleResult.class, new OnVolleyListener() { // from class: com.haima.hmcp.business.HmcpRequestManager.53
            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onError(int i12, String str6) {
                String str7;
                String str8 = "errorCode = " + i12 + " errorMessage = " + str6;
                LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + str8);
                CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str8);
                HmcpRequestManager.this.setResultNetData("311", "fail", i12 + ":" + str6, jCurrentTimeMillis);
                if (i12 == -1000) {
                    str7 = "100221004-" + ResourceManager.getString(R.string.haima_hmcp_parse_error);
                } else if (i12 == -1002) {
                    str7 = "100221001-" + ResourceManager.getString(R.string.haima_hmcp_net_error);
                } else if (i12 == -1003) {
                    str7 = "100221002-" + ResourceManager.getString(R.string.haima_hmcp_net_timeout);
                } else if (i12 == -1004) {
                    str7 = "100221002-" + ResourceManager.getString(R.string.haima_hmcp_net_timeout);
                } else {
                    str7 = "100221002-" + ResourceManager.getString(R.string.haima_hmcp_net_error);
                }
                OnJoinBattleListener onJoinBattleListener2 = onJoinBattleListener;
                if (onJoinBattleListener2 != null) {
                    onJoinBattleListener2.onJoinBattle(false, str7);
                }
            }

            @Override // com.haima.hmcp.listeners.OnVolleyListener
            public void onSuccess(BaseResult baseResult) {
                if (baseResult == null) {
                    String str6 = "100311003-" + ResourceManager.getString(R.string.haima_hmcp_network_no_data);
                    LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + str6);
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str6);
                    OnJoinBattleListener onJoinBattleListener2 = onJoinBattleListener;
                    if (onJoinBattleListener2 != null) {
                        onJoinBattleListener2.onJoinBattle(false, str6);
                        return;
                    }
                    return;
                }
                JoinBattleResult joinBattleResult = (JoinBattleResult) baseResult;
                LogUtils.d(HmcpRequestManager.TAG, "tv_battle->getJoinBattle---response: " + JsonUtil.toJsonString(baseResult));
                if (joinBattleResult.code != 0) {
                    String str7 = joinBattleResult.code + "-" + (TextUtils.isEmpty(baseResult.errorCode) ? baseResult.msg : baseResult.errorMsg);
                    LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + str7);
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str7);
                    OnJoinBattleListener onJoinBattleListener3 = onJoinBattleListener;
                    if (onJoinBattleListener3 != null) {
                        onJoinBattleListener3.onJoinBattle(false, str7);
                        return;
                    }
                    return;
                }
                if (TextUtils.isEmpty(joinBattleResult.cid)) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "cid is empty");
                    OnJoinBattleListener onJoinBattleListener4 = onJoinBattleListener;
                    if (onJoinBattleListener4 != null) {
                        onJoinBattleListener4.onJoinBattle(false, Constants.ERRORCODE_JOIN_BATTLE_005);
                        return;
                    }
                    return;
                }
                HmcpRequestManager hmcpRequestManager = HmcpRequestManager.this;
                String str8 = joinBattleResult.cid;
                hmcpRequestManager.mCloudId = str8;
                CountlyUtil.mCloudID = str8;
                DnsManager.getInstance().reset(HmcpRequestManager.this.mCloudId);
                PingManager.getInstance().setCloudId(HmcpRequestManager.this.mCloudId);
                LogUtils.d(HmcpRequestManager.TAG, "tv_battle->==311 cid=" + HmcpRequestManager.this.mCloudId);
                HmcpRequestManager.this.builder = new StringBuilder();
                StringBuilder sb2 = HmcpRequestManager.this.builder;
                sb2.append(HmcpRequestManager.this.mUserInfo2.userId);
                sb2.append(HmcpRequestManager.this.mAppName);
                sb2.append(HmcpRequestManager.this.mAccessKeyId);
                sb2.append(HmcpRequestManager.this.mAppChannel);
                DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_KEY, HmcpRequestManager.this.builder.toString());
                DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.CID_VALUE, HmcpRequestManager.this.mCloudId);
                DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).putPreferences(HmcpRequestManager.HMCP_CID_BATTLE_TYPE, 2);
                HmcpRequestManager.this.mSecretKey = String.valueOf(joinBattleResult.secretKey);
                MessageServerInfo messageServerInfo = joinBattleResult.msgServInfo;
                if (messageServerInfo == null || TextUtils.isEmpty(messageServerInfo.socketUrl)) {
                    String str9 = messageServerInfo == null ? "msgServInfo is null" : "socketUrl is empty";
                    LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + str9);
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, str9);
                    OnJoinBattleListener onJoinBattleListener5 = onJoinBattleListener;
                    if (onJoinBattleListener5 != null) {
                        onJoinBattleListener5.onJoinBattle(false, Constants.ERRORCODE_JOIN_BATTLE_006);
                        return;
                    }
                    return;
                }
                if (joinBattleResult.addressInfo == null) {
                    LogUtils.d(HmcpRequestManager.TAG, BattleMode.LOG_KEY + "addressInfo is null");
                    CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "addressInfo is null");
                    OnJoinBattleListener onJoinBattleListener6 = onJoinBattleListener;
                    if (onJoinBattleListener6 != null) {
                        onJoinBattleListener6.onJoinBattle(false, Constants.ERRORCODE_JOIN_BATTLE_007);
                        return;
                    }
                    return;
                }
                OnJoinBattleListener onJoinBattleListener7 = onJoinBattleListener;
                if (onJoinBattleListener7 != null) {
                    onJoinBattleListener7.onJoinBattle(true, null);
                }
                HmcpRequestManager.this.notifySaasListenerResponse(6, "0");
                CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_SUCCESS);
                HmcpRequestManager.this.mMessageServerInfo = messageServerInfo;
                if (HmcpRequestManager.this.mMessageServerInfo != null) {
                    HmcpRequestManager hmcpRequestManager2 = HmcpRequestManager.this;
                    hmcpRequestManager2.mAccessURL = hmcpRequestManager2.mMessageServerInfo.socketUrl;
                }
                HmcpRequestManager hmcpRequestManager3 = HmcpRequestManager.this;
                hmcpRequestManager3.mSignature = joinBattleResult.sign;
                hmcpRequestManager3.isAllowConnect2Access = true;
                hmcpRequestManager3.mSaasListener.onGetCloudServiceSuccess(hmcpRequestManager3.mCloudId, true, joinBattleResult.resolutionId, 3, false);
                CountDownUtil.createCidCacheTimer(HmcpRequestManager.this.mContext, DataUtils.getSharedInstance(HmcpRequestManager.this.mContext).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL));
                HmcpRequestManager.this.notifySaasListenerResponse(7, "2," + HmcpRequestManager.this.mBattleMode.battle.gamePad);
                if (HmcpRequestManager.this.mCloudPlayInfo != null) {
                    HmcpRequestManager.this.mCloudPlayInfo.setCloudServiceSuccess(true);
                }
                PlayStreamPayloadData playStreamPayloadData = joinBattleResult.addressInfo;
                playStreamPayloadData.webRtcInfo = joinBattleResult.webRtcInfo;
                HmcpRequestManager.this.mSaasListener.playPreparation(2, playStreamPayloadData);
                HmcpRequestManager hmcpRequestManager4 = HmcpRequestManager.this;
                hmcpRequestManager4.connect2Access(hmcpRequestManager4.currentOPType, false);
            }
        });
    }
}
