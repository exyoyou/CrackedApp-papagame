package com.haima.hmcp.widgets;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.Control;
import com.haima.hmcp.beans.ControlInfo;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.HmInputOp;
import com.haima.hmcp.beans.IntentExtraData;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.JoinBattle;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.beans.LanguageReport;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.RemoteCaptureParameters;
import com.haima.hmcp.beans.ReportSwitchStatus;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ResolutionInfoExtra;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.TransferHelper;
import com.haima.hmcp.cloud.video.bean.DownloadTransferData;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.device.input.enums.KeyType;
import com.haima.hmcp.enums.CloudFileProtocol;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.enums.GamepadType;
import com.haima.hmcp.enums.GyroscopeActivateMode;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.StreamingMode;
import com.haima.hmcp.enums.TouchMode;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.language.AbsLanguageManager;
import com.haima.hmcp.listeners.AudioRecordSourceCallback;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.CloudOperationListener;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.DownloadCallback;
import com.haima.hmcp.listeners.GetCloudIMECallback;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmInputOpListener;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.HmcpUIListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.ISeiListener;
import com.haima.hmcp.listeners.IStreamingModeCallback;
import com.haima.hmcp.listeners.IVideoDelayCallback;
import com.haima.hmcp.listeners.IViewFactory;
import com.haima.hmcp.listeners.OnCloudImageListListener;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.OnEnableHighBitrateListener;
import com.haima.hmcp.listeners.OnJoinBattleListener;
import com.haima.hmcp.listeners.OnLivingListener;
import com.haima.hmcp.listeners.OnRelaunchGameListener;
import com.haima.hmcp.listeners.OnRequestAliveListener;
import com.haima.hmcp.listeners.OnSendMessageListener;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.listeners.OnStreamTypeChangeListener;
import com.haima.hmcp.listeners.OnSwitchStreamTypeListener;
import com.haima.hmcp.listeners.OnUpdataGameUIDListener;
import com.haima.hmcp.listeners.OnUpdateInstanceTimeListener;
import com.haima.hmcp.listeners.QueryCallback;
import com.haima.hmcp.listeners.RemoteCaptureListener;
import com.haima.hmcp.listeners.SearchCallback;
import com.haima.hmcp.listeners.StartRecordStreamListener;
import com.haima.hmcp.listeners.StopRecordStreamListener;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.listeners.SwitchIMECallback;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WorkingFileCallback;
import com.haima.hmcp.rtmp.widgets.IHmcpIJKVideoView;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.widgets.beans.VirtualOperateType;
import com.haima.hmcp.widgets.virtualkey.VirtualKeyboardSurfaceView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcAdapter;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class BaseVideoView extends FrameLayout implements OnStreamTypeChangeListener {
    public static final int ACTION_DEFAULT_TYPE = 0;
    public static final int ACTION_DOWN_TYPE = 1;
    public static final int ACTION_MOVE_TYPE = 3;
    public static final int ACTION_UP_TYPE = 2;
    public static final String ALLOW_COMPATIBLE_IPV6 = "allowCompatibleIpv6";
    public static final String ANOMALOUS_LEFT = "anomalousLeft";
    public static final String ANOMALOUS_Right = "anomalousRight";
    public static final String APP_CHANNEL = "appChannel";
    public static final String APP_ID = "appId";
    public static final String APP_NAME = "appName";
    public static final String ARCHIVED = "archived";
    public static final String ARCHIVE_FROM_BID = "archiveFromBid";
    public static final String ARCHIVE_FROM_USER_ID = "archiveFromUserId";
    public static final String AUDIO_RECORD_SOURCE = "audio_record_source";
    public static final String BAND_WIDTH_PEAK = "bandWidthPeak";
    public static final String BAND_WIDTH_PERIOD = "bandWidthPeriod";
    public static final String BATTLE = "battle";
    public static final int BATTLE_CREATE = 1;
    public static final int BATTLE_IN = 3;
    public static final int BATTLE_JOIN = 2;
    public static final int BATTLE_JOIN_PLAYER = 2;
    public static final int BATTLE_MASTER_PLAYER = 1;
    public static final int BATTLE_OUT = 4;
    public static final String BITE_RATE = "bitRate";
    public static final String BITMAP_CACHE_MAX_SIZE_MB = "bitmapCacheMaxSizeMB";
    public static final int BITMAP_NORMAL_COLOR = 3;
    public static final int BITMAP_NULL = -1;
    public static final int BITMAP_PURE_BLACK_COLOR = 4;
    public static final int BITMAP_PURE_COLOR = 1;
    public static final int BITMAP_PURE_TRANSPARENCY_COLOR = 2;
    public static final String CID_CACHE_INTERVAL = "cidCacheInterval";
    public static final String CID_DATA = "encryption";
    public static final String CLEAN_CACHE_CID = "cleanCacheCid";
    public static final int CLICK_BUTTON_NOINPUT = 6;
    public static final int CLICK_BUTTON_REPLAY = 4;
    public static final String CLIENT_CITY = "clientCity";
    public static final String CLIENT_IME_TYPE = "clientImeType";
    public static final String CLIENT_ISP = "clientISP";
    public static final String CLIENT_PROVINCE = "clientProvince";
    public static final String COMPONENT_ACTION = "action";
    public static final String COMPONENT_EXTRA_DATA = "extraData";
    public static final String COMPONENT_NAME = "componentName";
    public static final String COMPONENT_TYPE = "componentType";
    public static final int COMPONENT_TYPE_ACTIVITY = 0;
    public static final int COMPONENT_TYPE_BROADCAST = 2;
    public static final int COMPONENT_TYPE_SERVICE = 1;
    public static final String CONFIG_INFO = "configInfo";
    public static final String CUTOUT_HEIGHT_PERCENT = "cutOutHeightPercent";
    public static final String C_ID = "cid";
    public static final String C_TOKEN = "cToken";
    public static final String C_TOKEN_TIME_STAMP = "c_token_time_stamp";
    public static final String DATA_TRAFFIC_OWNER = "data_traffic_owner";
    public static final int DECODE_HARDWARE = 1;
    public static final int DECODE_SOFTWARE = 0;
    public static final String DECODE_TIME_PERIOD = "decodeTimePeriod";
    public static final String DECODE_TYPE = "decodeType";
    public static final String DEMO_TEST_C_ID = "demoTestCid";
    public static final String DEMO_TEST_INSTANCE_ID = "demoTesInstanceId";
    public static final String DEMO_TEST_INTERFACE_ID = "demoTestInterfaceId";
    public static final String DESIGNATED_INSTANCE_ID = "demoTesInstanceId";
    public static final String DESIGNATED_INTERFACE_ID = "demoTestInterfaceId";
    public static final String DEVICE_PIXEL_RATIO = "devicePixelRatio";
    public static final String DISABLE_AUTO_STREAM = "disableAutoStream";
    public static final String ENABLE_SHARE_STREAM = "enable_share_stream";
    public static final String EXTRA_ID = "extraId";
    public static final String FINISH_BY_SERVER = "finishByServer";
    public static final int FIRST_FRAME_ARRIVAL = 7;
    public static final String FPS_PERIOD = "fpsPeriod";
    public static final int GAMEPAD_MODE_DPAD = 5;
    public static final int GAMEPAD_MODE_DPAD_BATTLE = 6;
    public static final int GAMEPAD_MODE_INPUT_OP = 7;
    public static final int GAMEPAD_MODE_MAP = 4;
    public static final int GAMEPAD_MODE_MOUSE = 2;
    public static final int GAMEPAD_MODE_NONE = 1;
    public static final String GAME_ID = "gameId";
    public static final String GAME_PAD = "gamePad";
    public static final String GPS_ALTITUDE = "altitude";
    public static final String GPS_COURSE = "course";
    public static final String GPS_LATITUDE = "latitude";
    public static final String GPS_LONGITUDE = "longitude";
    public static final String GPS_SPEED = "speed";
    public static final String G_ID = "gid";
    public static final String HIGH_BIT_RATE = "high_bit_rate";
    public static final String IME_TYPE = "imeType";
    public static final int INPUT_DEVICE_GAMEPAD = 3;
    public static final int INPUT_DEVICE_KEY_MOUSE = 2;
    public static final int INPUT_DEVICE_NONE = 0;
    public static final int INPUT_DEVICE_OPERATION_TYPE_BUTTON = 1;
    public static final int INPUT_DEVICE_OPERATION_TYPE_VIRTUAL_BUTTON = 2;
    public static final int INPUT_DEVICE_OPERATION_TYPE_VIRTUAL_TOUCH = 3;
    public static final int INPUT_DEVICE_REMOTE_CONTROL = 1;
    public static final int INPUT_DEVICE_UNKNOWN = 9;
    public static final int INPUT_DEVICE_VIRTUAL_GAMEPAD = 4;
    public static final String INPUT_URL = "inputUrl";
    public static final String INTENT_EXTRA_DATA = "intentExtraData";
    public static final String INTERNET_SPEED = "internetSpeed";
    public static final String IS_CUSTOM_PLAYER = "isCustomPlayer";
    public static final String IS_SHOW_TIME = "isShowTime";
    public static final String KEEP_ALIVE_TIME_SEC = "keepAliveTimeSeconds";
    public static final String KEEP_LOGIN_STATUS = "keep_login_status";
    public static final int MAX_CONNECT_WS_SERVER_COUNT = 5;
    public static final int MSG_HMCP_GAMEOVER = 2;
    public static final int MSG_HMCP_REFRESH_STOKEN = 3;
    public static final int MSG_HMCP_REPLAY = 0;
    public static final int MSG_HMCP_STOP = 1;
    public static final String MSG_MISC_HM_REMOTE_DEVICE_INFO = "HM_MISC_MSG_TYPE_REMOTE_DEVICE_INFO";
    public static final int MSG_SET_SCREEN_BRIGHTNESS = 8;
    public static final String NATIVE_DPAD_GAME = "nativeDpadGame";
    public static final String NO_INPUT_LIMIT_TIME = "noInputLimitTime";
    public static final String OPEN_CAMERA_PERMISSION_CHECK = "openCameraPermissionCheck";
    public static final String OPEN_MULTI_ARCHIVE = "openMultiArchive";
    public static final int OPERATION_DEBUG_SWITCH = 100;
    public static final int OPERATION_FORCED_OFFLINE = 22;
    public static final int OPERATION_GAME_ARCHIVING = 32;
    public static final int OPERATION_GAME_CRASH = 18;
    public static final int OPERATION_GAME_OVER = 4;
    public static final int OPERATION_GAME_RESTART = 19;
    public static final int OPERATION_GAME_TIME_COUNT_DOWN = 35;
    public static final int OPERATION_GAME_TIME_HIGHLIGHT = 37;
    public static final int OPERATION_GAME_TIME_UPDATE = 36;
    public static final int OPERATION_HMCP_ERROR = 3;
    public static final int OPERATION_INSTANCE_CRASH = 8;
    public static final int OPERATION_INSTANCE_INITIATING = 10;
    public static final int OPERATION_INTERVAL_TIME = 1;
    public static final int OPERATION_KICKED = 2;
    public static final int OPERATION_NETWORK_ERROR = 999;
    public static final int OPERATION_NET_TRACE_ROUTE = 45;
    public static final int OPERATION_NO_INPUT_TIMEOUT = 40;
    public static final int OPERATION_OPEN_MORE_SAME_GAME = 21;
    public static final int OPERATION_PAUSED_SAAS_SERVER = 16;
    public static final int OPERATION_PAUSE_SAAS_SERVER = 15;
    public static final int OPERATION_QUEUE = 6;
    public static final int OPERATION_QUEUING = 1000;
    public static final int OPERATION_READY_PAUSE_SAAS_SERVER = 14;
    public static final int OPERATION_REFRESH_STOKEN = 11;
    public static final int OPERATION_REFUSE_QUEUE = 7;
    public static final int OPERATION_RESUME_SAAS_SERVER = 13;
    public static final int OPERATION_STATE_CHANGE_REASON = 46;
    public static final int OPERATION_STREAM_URL = 5;
    public static final int OPERATION_SWITCHING_RESOLUTION = 12;
    public static final int OPERATION_TOAST_NO_INPUT = 50;
    public static final int OPERATION_TOAST_TIMEOUT = 99;
    public static final int OPERATION_WAITING = 9;
    public static final String ORIENTATION = "orientation";
    public static final String PAY_PROTO_DATA = "protoData";
    public static final String PAY_STR = "payStr";
    public static final String PLAY_TIME = "playTime";
    public static final String PRIORITY = "priority";
    public static final String RESOLUTION_ID = "resolutionId";
    public static final String SAVE_ARCHIVE_BID_MULTI_ARCHIVE = "saveArchiveBidMultiArchive";
    public static final String SAVE_ARCHIVE_MULTI_ARCHIVE = "saveArchiveMultiArchive";
    public static final String SAVE_ARCHIVE_UID_MULTI_ARCHIVE = "saveArchiveUidMultiArchive";
    public static final String SCENE_BATTLE = "battle";
    public static final String SCENE_BATTLE_EXTRA_INFO_ACTION = "action";
    public static final String SCENE_BATTLE_EXTRA_INFO_PLAYER = "player";
    public static final String SCENE_EXTRA_INFO = "extraInfo";
    public static final String SCREEN_RESOLUTION = "screenResolution";
    public static final String SCREEN_SHOT_URL = "screenShotUrl";
    public static final String SEI = "sei";
    public static final String SHOW_INPUT_OFFSET = "showInputOffset";
    public static final int STATE_CLOUD_SERVICE_PREPARED = 2;
    public static final int STATE_CONNECT_PREPARED = 1;
    public static final int STATE_DEFAULT = 0;
    public static final int STATE_GAME_OVER = 5;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_SHOW_PROMPT = 4;
    public static final String STREAMING_MODE = "streamingMode";
    public static final String STREAM_TYPE = "streamType";
    private static final String TAG = "BaseVideoView";
    public static final int TIMER_RUN = 222;
    public static final String TIPS_MSG = "message";
    public static final String TRANSMISSION_DATA_TO_SAAS = "transmissionDataToSaas";
    public static final String USER_DEVICE_INFO = "userDeviceInfo";
    public static final String USER_ID = "userid";
    public static final String USER_LEVEL = "userLevel";
    public static final String USER_TOKEN = "userToken";
    public static final String USER_TYPE = "userType";
    public static final String VERTICAL_BACKGROUND = "verticalBackground";
    public static final String VIEW_FRAME_RATE = "viewFrameRate";
    public static final String VIEW_RESOLUTION_HEIGHT = "viewResolutionHeight";
    public static final String VIEW_RESOLUTION_WIDTH = "viewResolutionWidth";
    public static final String VIRTUAL_KEYBOARD_ENABLE = "virtualKeyboardEnable";
    private static final String VIRTUAL_KEYBOARD_SURFACE_VIEW_TAG = "VirtualKeyboardSurfaceView";
    public static final String X86_QRCODE_URL = "virtualDeviceUrl";
    private IntentExtraData extraData;
    protected IHmcpVideoView hmcpVideoViewInterface;
    private boolean isChangeStreamType;
    private boolean isCustomPlayer;
    private AudioRecordSourceCallback mAudioRecordSourceCallback;
    private Bundle mBundle;
    private CloudOperationListener mCloudOperationListener;
    private String mConfig;
    private OnContronListener mControlListener;
    private final Map<String, Object> mCountlyCacheMap;
    private DownloadCallback mDownloadCallback;
    private EmptyVideoView mEmptyVideoView;
    protected HmFrameCallback mHmFrameCallback;
    protected HmStreamerIPCallback mHmStreamerIPCallback;
    private IHmcpIJKVideoView mHmcpIJKVideoView;
    private HmcpPlayerListener mHmcpPlayerListener;
    private HmcpUIListener mHmcpUIListener;
    protected ISeiListener mISeiListener;
    private JoinBattle mJoinBattle;
    protected AbsLanguageManager mLanguageManager;
    private OnJoinBattleListener mOnJoinBattleListener;
    private OnSendWsMessageListener mOnSendWsMessageListener;
    protected IOperationDelayCallback mOperationDelayCallback;
    protected StreamingCallback mStreamingCallback;
    private UserInfo mUserInfo;
    protected IVideoDelayCallback mVideoDelayCallback;
    private IViewFactory mViewFactory;
    protected VirtualKeyboardSurfaceView surfaceViewKeyboard;
    private SwitchStreamTypeData switchStreamTypeData;

    public BaseVideoView(Context context) {
        super(context);
        this.mEmptyVideoView = new EmptyVideoView();
        this.mCountlyCacheMap = new HashMap();
        initView(context);
    }

    private void checkViewExist() {
        View viewFindViewWithTag = findViewWithTag(TAG);
        if (viewFindViewWithTag != null) {
            removeView(viewFindViewWithTag);
        }
        View viewFindViewWithTag2 = findViewWithTag(VIRTUAL_KEYBOARD_SURFACE_VIEW_TAG);
        if (viewFindViewWithTag2 != null) {
            removeView(viewFindViewWithTag2);
        }
    }

    private IViewFactory getViewFactory() {
        checkViewExist();
        if (this.mViewFactory == null) {
            synchronized (ViewFactoryImp.class) {
                if (this.mViewFactory == null) {
                    this.mViewFactory = new ViewFactoryImp();
                }
            }
        }
        return this.mViewFactory;
    }

    private void init() {
        VirtualKeyboardSurfaceView virtualKeyboardSurfaceView = new VirtualKeyboardSurfaceView(getContext());
        this.surfaceViewKeyboard = virtualKeyboardSurfaceView;
        virtualKeyboardSurfaceView.setTag(VIRTUAL_KEYBOARD_SURFACE_VIEW_TAG);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1, 17);
        int childCount = getChildCount();
        View view = (View) this.hmcpVideoViewInterface;
        view.setTag(TAG);
        if (childCount > 1) {
            addView(view, 0, layoutParams);
            addView(this.surfaceViewKeyboard, layoutParams2);
            this.hmcpVideoViewInterface.setVirtualKeyboardSurfaceView(this.surfaceViewKeyboard);
        } else {
            addView(view, layoutParams);
            addView(this.surfaceViewKeyboard, layoutParams2);
            this.hmcpVideoViewInterface.setVirtualKeyboardSurfaceView(this.surfaceViewKeyboard);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initView(Context context) {
        if (context instanceof HmcpPlayerListener) {
            this.mHmcpPlayerListener = (HmcpPlayerListener) context;
        }
        this.hmcpVideoViewInterface = this.mEmptyVideoView;
        this.mLanguageManager = new AbsLanguageManager() { // from class: com.haima.hmcp.widgets.BaseVideoView.1
        };
    }

    private boolean isViewOnlyOne() {
        if (!TextUtils.isEmpty(CountlyUtil.mCloudID)) {
            return ((long) (Math.abs(CountlyUtil.mCloudID.hashCode()) % 100)) < Constants.VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT;
        }
        LogUtils.d(TAG, "viewOnlyOne is not enable: cloud id is null");
        return false;
    }

    private void parseDebugConfig(Bundle bundle) {
        if (bundle.containsKey(HmcpManager.GAME_BID)) {
            CountlyUtil.mAccessKey = bundle.getString(HmcpManager.GAME_BID, "");
            CountlyUtil.mChannelId = bundle.getString(HmcpManager.CHANNEL_ID, "");
        } else {
            if (TextUtils.isEmpty(CountlyUtil.mRegisterAccessKey)) {
                return;
            }
            CountlyUtil.mAccessKey = CountlyUtil.mRegisterAccessKey;
        }
    }

    private void playForTesting(Bundle bundle) {
        Serializable serializable = bundle.getSerializable("play_test_data");
        if (serializable instanceof PlayTestData) {
            PlayTestData playTestData = (PlayTestData) serializable;
            String streamType = getStreamType(playTestData.streamType);
            HmcpManager.getInstance().setStreamType(streamType);
            removeViewIfExists();
            IHmcpVideoView hmcpVideoView = getViewFactory().getHmcpVideoView(getContext(), streamType, this.isCustomPlayer);
            this.hmcpVideoViewInterface = hmcpVideoView;
            hmcpVideoView.setUserInfo(this.mUserInfo);
            this.hmcpVideoViewInterface.setConfigInfo(this.mConfig);
            this.hmcpVideoViewInterface.setExtraData(this.extraData);
            this.hmcpVideoViewInterface.setUIListener(this.mHmcpUIListener);
            this.hmcpVideoViewInterface.setHmcpPlayerListener(this.mHmcpPlayerListener);
            this.hmcpVideoViewInterface.setCloudOperationListener(this.mCloudOperationListener);
            this.hmcpVideoViewInterface.setWsMessageListener(this.mOnSendWsMessageListener);
            this.hmcpVideoViewInterface.setStreamTypeChangeListener(this);
            this.hmcpVideoViewInterface.setHmFrameCallback(this.mHmFrameCallback);
            this.hmcpVideoViewInterface.setOperationDelayCallback(this.mOperationDelayCallback);
            this.hmcpVideoViewInterface.setVideoDelayCallback(this.mVideoDelayCallback);
            this.hmcpVideoViewInterface.setHmStreamerIPCallback(this.mHmStreamerIPCallback);
            init();
            this.hmcpVideoViewInterface.playForTesting(playTestData);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void removeViewIfExists() {
        if (!isViewOnlyOne()) {
            LogUtils.d(TAG, "OperationStream=viewOnlyOne is not enable");
            return;
        }
        String str = TAG;
        View viewFindViewWithTag = findViewWithTag(str);
        if (viewFindViewWithTag != 0) {
            removeView(viewFindViewWithTag);
            LogUtils.d(str, "OperationStream hmcpVideoViewInterface removed!");
            CountlyUtil.recordEvent("12200", "hmcpVideoViewInterface removed!");
            ((IHmcpVideoView) viewFindViewWithTag).onDestroy();
            HmcpRequest.release();
        }
    }

    public void backToGame() {
        this.hmcpVideoViewInterface.backToGame();
    }

    public void batchUpload(List<CloudFile> list, BatchCloudOperationListener batchCloudOperationListener) {
        this.hmcpVideoViewInterface.batchUpload(list, batchCloudOperationListener);
    }

    public void cancelDownload() {
        this.hmcpVideoViewInterface.cancelDownload();
    }

    public void cancelUpload() {
        this.hmcpVideoViewInterface.cancelUpload();
    }

    public void captureRemote(RemoteCaptureParameters remoteCaptureParameters, RemoteCaptureListener remoteCaptureListener) {
        this.hmcpVideoViewInterface.remoteCapture(remoteCaptureParameters, remoteCaptureListener);
    }

    public int checkBitmap(Bitmap bitmap, float f10) {
        return this.hmcpVideoViewInterface.checkBitmap(bitmap, f10);
    }

    @Deprecated
    public void contronPlay(String str, String str2, String str3, boolean z10, String str4, String str5, String str6, OnContronListener onContronListener) {
        if (onContronListener != null) {
            onContronListener.contronResult(false, "This method is Deprecated, please see contronPlay(int streamType, Control controlPara, OnContronListener listener)");
        }
    }

    public void disableGyroscope() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.disableGyroscope();
        }
    }

    public void disableVibrator(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.disableVibrator(z10);
        }
    }

    public void disconnectWSTest() {
        this.hmcpVideoViewInterface.disconnectWSTest();
    }

    public void distributeControlPermit(List<ControlInfo> list, OnContronListener onContronListener) {
        CountlyUtil.recordEvent(Constants.Countly.DISTRIBUTE_CONTROL_START, list != null ? com.alibaba.fastjson.a.toJSONString(list) : "null");
        this.hmcpVideoViewInterface.distributeControlPermit(list, onContronListener);
    }

    public void download(CloudFile cloudFile) {
        this.hmcpVideoViewInterface.download(cloudFile);
    }

    public void enableGyroscope(GyroscopeActivateMode gyroscopeActivateMode) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.enableGyroscope(gyroscopeActivateMode);
        }
    }

    public void enableHighBitrate(boolean z10, OnEnableHighBitrateListener onEnableHighBitrateListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.enableHighBitrate(z10, onEnableHighBitrateListener);
        } else if (onEnableHighBitrateListener != null) {
            onEnableHighBitrateListener.onFail("201-interface is not init");
        }
    }

    public void enableVirtualKeyBoardView(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.enableVirtualKeyBoardView(z10);
        }
    }

    public void enterEditMode(VirtualOperateType virtualOperateType) {
        this.hmcpVideoViewInterface.enterVirDeviceEditMode(virtualOperateType, false);
    }

    public void entryQueue() {
        this.hmcpVideoViewInterface.entryQueue();
    }

    public void exitQueue() {
        this.hmcpVideoViewInterface.exitQueue();
    }

    public String getAppName() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView == null) {
            return null;
        }
        return iHmcpVideoView.getAppName();
    }

    public int getBitRate() {
        return this.hmcpVideoViewInterface.getBitRate();
    }

    public int getButtonMappingMode() {
        return this.hmcpVideoViewInterface.getButtonMappingMode();
    }

    public List getButtonMappings() {
        return this.hmcpVideoViewInterface.getButtonMappings();
    }

    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        return this.hmcpVideoViewInterface.getClockDiffVideoLatencyInfo();
    }

    public int getCloudFileStatus(CloudOperation cloudOperation, CloudFileProtocol cloudFileProtocol) {
        return this.hmcpVideoViewInterface.getCloudFileStatus(cloudOperation, cloudFileProtocol);
    }

    public void getCloudIMEType(GetCloudIMECallback getCloudIMECallback) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.getCloudImeType(getCloudIMECallback);
        }
    }

    public CloudPlayInfo getCloudPlayInfo() {
        return this.hmcpVideoViewInterface.getCloudPlayInfo();
    }

    public String getCloudPlayStatusCode() {
        return this.hmcpVideoViewInterface.getCloudPlayStatusCode();
    }

    public ResolutionInfo getCurResolution() {
        return this.hmcpVideoViewInterface.getCurResolution();
    }

    public float getFunctionSensitivity() {
        return this.hmcpVideoViewInterface.getFunctionSensitivity();
    }

    public HmcpPlayerListener getHmcpPlayerListener() {
        return this.hmcpVideoViewInterface.getHmcpPlayerListener();
    }

    public IMediaPlayer getIMediaPlayer(boolean z10) {
        return this.hmcpVideoViewInterface.getIMediaPlayer(z10);
    }

    public String getInputUrl() {
        return this.hmcpVideoViewInterface.getInputUrl();
    }

    public String getInstanceAccessUrl() {
        String str;
        String instanceAccessUrl;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            instanceAccessUrl = iHmcpVideoView.getInstanceAccessUrl();
            str = "getInstanceAccessUrl url:" + instanceAccessUrl;
        } else {
            str = "getInstanceAccessUrl hmcpVideoViewInterface is null";
            instanceAccessUrl = null;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, str);
        return instanceAccessUrl;
    }

    public IntroImageInfo getIntroImageInfo() {
        return this.hmcpVideoViewInterface.getIntroImageInfo();
    }

    public long getLastUserOperationTimestamp() {
        return this.hmcpVideoViewInterface.getLastUserOperationTimestamp();
    }

    public ELivingCapabilityStatus getLivingCapabilityStatus() {
        return this.hmcpVideoViewInterface.getLivingCapabilityStatus();
    }

    public HashMap<String, String> getMetaInfos() {
        return this.hmcpVideoViewInterface.getMetaInfos();
    }

    public float getMouseSensitivity() {
        return this.hmcpVideoViewInterface.getMouseSensitivity();
    }

    public ArrayList getNetText() {
        return this.hmcpVideoViewInterface.getNetText();
    }

    public void getPinCode(OnContronListener onContronListener) {
        this.hmcpVideoViewInterface.getPinCode(onContronListener);
    }

    public String getQRCodeData() {
        return this.hmcpVideoViewInterface.getQRCodeData();
    }

    public VideoDelayInfo getReportDelayInfo() {
        return this.hmcpVideoViewInterface.getReportDelayInfo();
    }

    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        return this.hmcpVideoViewInterface.getResolution(list, str, str2);
    }

    public ResolutionInfo getResolutionInfo() {
        return this.hmcpVideoViewInterface.getResolutionInfo();
    }

    public List<ResolutionInfo> getResolutionList() {
        return this.hmcpVideoViewInterface.getResolutionList();
    }

    public int getScreenHeight() {
        return this.hmcpVideoViewInterface.getScreenHeight();
    }

    public ScreenOrientation getScreenOrientation() {
        return this.hmcpVideoViewInterface.getScreenOrientation();
    }

    public int getScreenWidth() {
        return this.hmcpVideoViewInterface.getScreenWidth();
    }

    public ResolutionInfo getSetResolution() {
        return this.hmcpVideoViewInterface.getSetResolution();
    }

    public Bitmap getShortcut() {
        return this.hmcpVideoViewInterface.getShortcut();
    }

    protected String getStreamType(int i10) {
        return i10 == 1 ? Constants.STREAM_TYPE_RTC : Constants.STREAM_TYPE_RTMP;
    }

    public String getStreamUrl() {
        return this.hmcpVideoViewInterface.getStreamUrl();
    }

    public String getStreamingDomain() {
        return this.hmcpVideoViewInterface.getStreamingDomain();
    }

    public List<TipsInfo> getTipsInfo() {
        return this.hmcpVideoViewInterface.getTipsInfo();
    }

    public TouchMode getTouchMode() {
        String str;
        TouchMode touchMode = this.hmcpVideoViewInterface.getTouchMode();
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Constants.COUNTLY_NAME_GET_TOUCH_MODE);
        sb2.append(":");
        String str3 = "null";
        if (touchMode == null) {
            str = "null";
        } else {
            str = "" + touchMode.ordinal();
        }
        sb2.append(str);
        LogUtils.d(str2, sb2.toString());
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_GET_TOUCH_MODE, touchMode)) {
            if (touchMode != null) {
                str3 = "" + touchMode.ordinal();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_GET_TOUCH_MODE, str3)));
        }
        return touchMode;
    }

    public TransferHelper getTransferDelegate() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView == null) {
            return null;
        }
        return iHmcpVideoView.getTransferDelegate();
    }

    public int getVideoLatency() {
        return this.hmcpVideoViewInterface.getVideoLatency();
    }

    public float getVirtualDeviceAlpha() {
        return this.hmcpVideoViewInterface.getVirtualDeviceAlpha();
    }

    public VirtualOperateType getVirtualDeviceType() {
        return this.hmcpVideoViewInterface.getOperateType();
    }

    public boolean getVirtualKeyVibrate() {
        return this.hmcpVideoViewInterface.getVirtualKeyVibrate();
    }

    public void getWorkingFile(CloudOperation cloudOperation, WorkingFileCallback workingFileCallback) {
        this.hmcpVideoViewInterface.getWorkingFile(cloudOperation, workingFileCallback);
    }

    public void handlePermissionResult(String str, boolean z10) {
        this.hmcpVideoViewInterface.handlePermissionResult(str, z10);
    }

    public void imageEnhancement(boolean z10, float f10) {
        String str = z10 + "_" + f10;
        LogUtils.d(TAG, "imageEnhancement:" + str);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "imageEnhancement", str)) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "imageEnhancement isImageEnhancement:" + z10 + ",imageEnhancementStrength:" + f10);
        }
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.imageEnhancement(z10, f10);
        }
    }

    public boolean inputText(String str) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView == null) {
            return false;
        }
        return iHmcpVideoView.inputText(str);
    }

    public boolean isHandleInputEvent() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        boolean zIsHandleInputEvent = iHmcpVideoView != null ? iHmcpVideoView.isHandleInputEvent() : true;
        LogUtils.d(TAG, "isHandleInputEvent:" + zIsHandleInputEvent);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "isHandleInputEvent", Boolean.valueOf(zIsHandleInputEvent))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "isHandleInputEvent=" + zIsHandleInputEvent);
        }
        return zIsHandleInputEvent;
    }

    public boolean isLoadingShow() {
        return this.hmcpVideoViewInterface.isLoadingShow();
    }

    public boolean isNetworkOk() {
        return this.hmcpVideoViewInterface.isNetworkOk();
    }

    public boolean isOnSound() {
        return this.hmcpVideoViewInterface.isOnSound();
    }

    public boolean isSwitchAuto() {
        return this.hmcpVideoViewInterface.isSwitchAuto();
    }

    public boolean isTurnOffVideo() {
        return this.hmcpVideoViewInterface.isTurnOffVideo();
    }

    public boolean isVirtualKeyBoardViewVisible() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            return iHmcpVideoView.isVirtualKeyBoardViewVisible();
        }
        return false;
    }

    public void joinBattle(JoinBattle joinBattle, OnJoinBattleListener onJoinBattleListener) {
        if (onJoinBattleListener == null) {
            LogUtils.d(TAG, "tv_battle->OnJoinBattleListener is null");
            return;
        }
        if (joinBattle == null) {
            LogUtils.d(TAG, "tv_battle->JoinBattle is null");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.Error_000002));
            return;
        }
        InternalJoinBattle internalJoinBattle = new InternalJoinBattle();
        internalJoinBattle.isChangeStreamType = this.isChangeStreamType;
        internalJoinBattle.joinBattle = joinBattle;
        this.mJoinBattle = joinBattle;
        this.mOnJoinBattleListener = onJoinBattleListener;
        String streamType = getStreamType(joinBattle.streamingType);
        HmcpManager.getInstance().setStreamType(streamType);
        this.hmcpVideoViewInterface = getViewFactory().getHmcpVideoView(getContext(), streamType, false);
        init();
        this.hmcpVideoViewInterface.setUserInfo(this.mUserInfo);
        this.hmcpVideoViewInterface.setConfigInfo(this.mConfig);
        this.hmcpVideoViewInterface.setExtraData(this.extraData);
        this.hmcpVideoViewInterface.setUIListener(this.mHmcpUIListener);
        this.hmcpVideoViewInterface.setHmcpPlayerListener(this.mHmcpPlayerListener);
        this.hmcpVideoViewInterface.setCloudOperationListener(this.mCloudOperationListener);
        this.hmcpVideoViewInterface.setStreamTypeChangeListener(this);
        this.hmcpVideoViewInterface.setAudioRecordCallback(this.mAudioRecordSourceCallback);
        this.hmcpVideoViewInterface.setHmFrameCallback(this.mHmFrameCallback);
        this.hmcpVideoViewInterface.setSeiListener(this.mISeiListener);
        this.hmcpVideoViewInterface.setStreamingCallback(this.mStreamingCallback);
        if (this.isChangeStreamType) {
            this.hmcpVideoViewInterface.setChangeStreamStatus(true);
            this.hmcpVideoViewInterface.loadSwitchStreamTypeData(this.switchStreamTypeData);
        }
        this.hmcpVideoViewInterface.joinBattle(internalJoinBattle, onJoinBattleListener);
        this.isChangeStreamType = false;
    }

    public boolean loadKeyboardConfigFromJson(String str, boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            return iHmcpVideoView.loadKeyboardConfigFromJson(str, z10);
        }
        return false;
    }

    @Override // com.haima.hmcp.listeners.OnStreamTypeChangeListener
    public void onChange(SwitchStreamTypeData switchStreamTypeData) {
        Boolean bool;
        if (this.mJoinBattle != null) {
            if (switchStreamTypeData == null || this.isChangeStreamType) {
                return;
            }
            this.isChangeStreamType = true;
            removeView((View) this.hmcpVideoViewInterface);
            this.switchStreamTypeData = switchStreamTypeData;
            this.mJoinBattle.streamingType = StreamType.RTMP != switchStreamTypeData.getStreamType() ? 1 : 0;
            joinBattle(this.mJoinBattle, this.mOnJoinBattleListener);
            return;
        }
        if (switchStreamTypeData == null || this.isChangeStreamType) {
            return;
        }
        this.isChangeStreamType = true;
        this.hmcpVideoViewInterface.releaseNotStop();
        Object obj = this.hmcpVideoViewInterface;
        if (obj instanceof View) {
            removeView((View) obj);
        }
        this.switchStreamTypeData = switchStreamTypeData;
        if (StreamType.RTMP == switchStreamTypeData.getStreamType()) {
            this.mBundle.putInt("streamType", 0);
        } else {
            this.mBundle.putInt("streamType", 1);
        }
        if (this.mBundle.containsKey(HIGH_BIT_RATE) && (bool = switchStreamTypeData.enableHighBitrate) != null) {
            this.mBundle.putBoolean(HIGH_BIT_RATE, bool.booleanValue());
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_SWITCH_STREAM_TYPE, "stream type is not match, bug gray switch is on. begin change to  " + switchStreamTypeData.getStreamType());
        play(this.mBundle);
    }

    public void onDestroy() {
        this.hmcpVideoViewInterface.onDestroy();
        this.hmcpVideoViewInterface = this.mEmptyVideoView;
        this.mHmcpUIListener = null;
        this.mDownloadCallback = null;
        this.mHmcpPlayerListener = null;
        this.mCloudOperationListener = null;
        this.mOnSendWsMessageListener = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void onExitGame() {
        this.hmcpVideoViewInterface.onExitGame();
    }

    public void onPause() {
        this.hmcpVideoViewInterface.onPause();
    }

    public void onRestart(int i10) {
        this.hmcpVideoViewInterface.onRestart(i10);
    }

    public void onResume() {
        this.hmcpVideoViewInterface.onResume();
    }

    public void onStart() {
        this.hmcpVideoViewInterface.onStart();
    }

    public void onStop() {
        this.hmcpVideoViewInterface.onStop();
    }

    public void onSwitchResolution(String str) {
        this.hmcpVideoViewInterface.onSwitchResolution(str);
    }

    public void pauseGame() {
        this.hmcpVideoViewInterface.pauseGame();
    }

    public void play(Bundle bundle) {
        int i10;
        this.mBundle = bundle;
        if (bundle != null) {
            if (bundle.containsKey("play_for_test")) {
                playForTesting(bundle);
                return;
            }
            String streamType = getStreamType(bundle.getInt("streamType", StreamType.WEBRTC.ordinal()));
            HmcpManager.getInstance().setStreamType(streamType);
            bundle.remove("streamType");
            bundle.putString("streamType", streamType);
            this.isCustomPlayer = bundle.getBoolean(IS_CUSTOM_PLAYER, false);
            if (bundle.containsKey(HmcpManager.GAME_BID)) {
                CountlyUtil.mAccessKey = bundle.getString(HmcpManager.GAME_BID, "");
                CountlyUtil.mChannelId = bundle.getString(HmcpManager.CHANNEL_ID, "");
            } else if (!TextUtils.isEmpty(CountlyUtil.mRegisterAccessKey)) {
                CountlyUtil.mAccessKey = CountlyUtil.mRegisterAccessKey;
            }
            String string = bundle.getString(Language.LANGUAGE_CONFIG, "");
            parseDebugConfig(bundle);
            removeViewIfExists();
            if (TextUtils.isEmpty(string) && AbsLanguageManager.IS_AUTO_BY_SYSTEM) {
                i10 = 11;
                string = HmcpManager.getInstance().getSystemLocalStr(11);
                LogUtils.d(TAG, "languageConfig by local system " + string);
            } else {
                i10 = 1;
            }
            this.mLanguageManager.updateLanguage(string, "play by bundle ", i10);
            LanguageReport.getInstance().updateIsPlayBy211(true).report();
            IHmcpVideoView hmcpVideoView = getViewFactory().getHmcpVideoView(getContext(), streamType, this.isCustomPlayer);
            this.hmcpVideoViewInterface = hmcpVideoView;
            hmcpVideoView.setUserInfo(this.mUserInfo);
            this.hmcpVideoViewInterface.setConfigInfo(this.mConfig);
            this.hmcpVideoViewInterface.setExtraData(this.extraData);
            this.hmcpVideoViewInterface.setUIListener(this.mHmcpUIListener);
            this.hmcpVideoViewInterface.setHmcpPlayerListener(this.mHmcpPlayerListener);
            this.hmcpVideoViewInterface.setCloudOperationListener(this.mCloudOperationListener);
            this.hmcpVideoViewInterface.setWsMessageListener(this.mOnSendWsMessageListener);
            OnContronListener onContronListener = this.mControlListener;
            if (onContronListener != null) {
                this.hmcpVideoViewInterface.setControlListener(onContronListener);
            }
            this.hmcpVideoViewInterface.setStreamTypeChangeListener(this);
            this.hmcpVideoViewInterface.setHmFrameCallback(this.mHmFrameCallback);
            this.hmcpVideoViewInterface.setOperationDelayCallback(this.mOperationDelayCallback);
            this.hmcpVideoViewInterface.setVideoDelayCallback(this.mVideoDelayCallback);
            this.hmcpVideoViewInterface.setCustomVideoView(this.mHmcpIJKVideoView);
            this.hmcpVideoViewInterface.setAudioRecordCallback(this.mAudioRecordSourceCallback);
            this.hmcpVideoViewInterface.setHmStreamerIPCallback(this.mHmStreamerIPCallback);
            this.hmcpVideoViewInterface.setSeiListener(this.mISeiListener);
            this.hmcpVideoViewInterface.setStreamingCallback(this.mStreamingCallback);
            init();
        }
        CountlyUtil.mResolutionID = null;
        if (this.isChangeStreamType) {
            this.hmcpVideoViewInterface.setChangeStreamStatus(true);
            SwitchStreamTypeData switchStreamTypeData = this.switchStreamTypeData;
            DownloadTransferData downloadTransferData = switchStreamTypeData.downloadTransferData;
            if (downloadTransferData != null) {
                downloadTransferData.downloadCallback = this.mDownloadCallback;
            }
            this.hmcpVideoViewInterface.loadSwitchStreamTypeData(switchStreamTypeData);
        }
        this.hmcpVideoViewInterface.play(bundle);
        this.isChangeStreamType = false;
    }

    public void queryCloudFile(QueryCallback queryCallback) {
        this.hmcpVideoViewInterface.queryCloudFile(queryCallback);
    }

    public void queryControlPermitUsers(OnContronListener onContronListener) {
        CountlyUtil.recordEvent(Constants.Countly.QUERY_CONTROL_START);
        this.hmcpVideoViewInterface.queryControlUsers(onContronListener);
    }

    public void reconnection() {
        this.hmcpVideoViewInterface.reconnection();
    }

    public void relaunchGame(OnRelaunchGameListener onRelaunchGameListener) {
        this.hmcpVideoViewInterface.relaunchGame(onRelaunchGameListener);
    }

    public void release() {
        this.hmcpVideoViewInterface.release();
    }

    public void reportFinishInfo(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.hmcpVideoViewInterface.reportFinishInfo(i10, str, str2, str3, str4, str5, str6, str7);
    }

    public boolean requestCloudImageList(int i10, int i11, OnCloudImageListListener onCloudImageListListener) {
        return this.hmcpVideoViewInterface.requestRemoteImageList(i10, i11, onCloudImageListListener);
    }

    public void requestKeepAlive(long j10, OnRequestAliveListener onRequestAliveListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.requestKeepAlive(j10, onRequestAliveListener);
        }
    }

    public void requestKeyFrame() {
        this.hmcpVideoViewInterface.requestKeyFrame();
    }

    public void requestStopKeepAlive(OnRequestAliveListener onRequestAliveListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.requestStopKeepAlive(onRequestAliveListener);
        }
    }

    public int resetInputTimer(boolean z10) {
        return this.hmcpVideoViewInterface.resetInputTimer(z10);
    }

    public void restartGame(int i10) {
        this.hmcpVideoViewInterface.restartGame(i10);
    }

    public void searchCloudFile(SearchCallback searchCallback) {
        this.hmcpVideoViewInterface.searchCloudFile(searchCallback);
    }

    public void sendAudioData(byte[] bArr) {
        this.hmcpVideoViewInterface.sendAudioData(bArr);
    }

    public boolean sendCustomKeycode(HMInputOpData hMInputOpData) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            return iHmcpVideoView.sendCustomKeycode(hMInputOpData);
        }
        return false;
    }

    public void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13) {
        this.hmcpVideoViewInterface.sendGamepadKeyEvent(i10, i11, f10, f11, f12, f13);
    }

    public void sendInputOp(ArrayList<HmInputOp> arrayList, HmInputOpListener hmInputOpListener) {
        LogUtils.i(TAG, "sendInputOp API called");
        this.hmcpVideoViewInterface.sendInputOp(arrayList, hmInputOpListener);
    }

    public void sendKeyEvent(KeyType keyType) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.sendKeyEvent(keyType);
        }
    }

    public void sendKeyboardEvent(String str, int i10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.sendKeyboardEvent(str, i10);
        }
    }

    public boolean sendMessage(String str, MessageType messageType, OnSendMessageListener onSendMessageListener) {
        return this.hmcpVideoViewInterface.sendMessage(str, messageType, onSendMessageListener);
    }

    public void sendMotionEvent(int i10, FPoint fPoint) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.sendMotionEvent(i10, fPoint);
        }
    }

    public void sendSceneStopMessage(long j10, String str) {
        this.hmcpVideoViewInterface.sendSceneStopMessage(j10, str);
    }

    public boolean sendWsMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        return this.hmcpVideoViewInterface.sendWsMessage(str, wsMessageType, onSendWsMessageListener);
    }

    public void setAttachContext(Context context) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView == null) {
            return;
        }
        iHmcpVideoView.setAttachContext(context);
    }

    public void setAudioMute(boolean z10) {
        this.hmcpVideoViewInterface.setAudioMute(z10);
    }

    public void setAudioRecordCallback(AudioRecordSourceCallback audioRecordSourceCallback) {
        this.mAudioRecordSourceCallback = audioRecordSourceCallback;
        this.hmcpVideoViewInterface.setAudioRecordCallback(audioRecordSourceCallback);
    }

    public void setAutoShowIME(boolean z10) {
        LogUtils.d(TAG, "setAutoShowIME:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setAutoShowIME", Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "setAutoShowIME enable=" + z10);
        }
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setAutoShowIME(z10);
        }
    }

    public void setButtonMapping(ButtonMappings buttonMappings) {
        this.hmcpVideoViewInterface.setButtonMapping(buttonMappings);
    }

    public boolean setButtonMappingMode(int i10) {
        return this.hmcpVideoViewInterface.setButtonMappingMode(i10);
    }

    public void setCloseStream(boolean z10) {
        this.hmcpVideoViewInterface.setCloseStream(z10);
    }

    public void setCloudOperationListener(CloudOperationListener cloudOperationListener) {
        this.mCloudOperationListener = cloudOperationListener;
        this.hmcpVideoViewInterface.setCloudOperationListener(cloudOperationListener);
    }

    public void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setColorMode(colorMode, colorModeListener);
        }
    }

    public void setConfigInfo(String str) {
        this.mConfig = str;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setConfigInfo(str);
        }
    }

    public void setControlListener(OnContronListener onContronListener) {
        this.mControlListener = onContronListener;
        this.hmcpVideoViewInterface.setControlListener(onContronListener);
    }

    public void setCursorSize(int i10, int i11) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setCursorSize(i10, i11);
        }
    }

    public void setCustomVideoView(IHmcpIJKVideoView iHmcpIJKVideoView) {
        this.mHmcpIJKVideoView = iHmcpIJKVideoView;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setCustomVideoView(iHmcpIJKVideoView);
        }
    }

    public void setDevicePixelRatio(int i10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setDevicePixelRatio(i10);
        }
    }

    public void setDpadMouseMoveStep(float f10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setDpadMouseMoveStep(f10);
        }
    }

    public void setExtraData(IntentExtraData intentExtraData) {
        LogUtils.i(TAG, "setExtraData extraData = " + intentExtraData + " &  hmcpVideoViewInterface = " + this.hmcpVideoViewInterface);
        this.extraData = intentExtraData;
    }

    public void setFixedGamepadType(GamepadType gamepadType) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setFixedGamepadType(gamepadType);
        }
    }

    public void setFunctionSensitivity(float f10) {
        this.hmcpVideoViewInterface.setFunctionSensitivity(f10);
    }

    public void setGyroToMouseXSensitivity(int i10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setGyroToMouseXSensitivity(i10);
        }
    }

    public void setGyroToMouseYSensitivity(int i10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setGyroToMouseYSensitivity(i10);
        }
    }

    public boolean setHandleInputEvent(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        boolean handleInputEvent = iHmcpVideoView != null ? iHmcpVideoView.setHandleInputEvent(z10) : false;
        LogUtils.d(TAG, "setHandleInputEvent:" + handleInputEvent);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setHandleInputEvent", Boolean.valueOf(handleInputEvent))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "setHandleInputEvent(" + z10 + ")=" + handleInputEvent);
        }
        return handleInputEvent;
    }

    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
        this.mHmStreamerIPCallback = hmStreamerIPCallback;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setHmStreamerIPCallback(hmStreamerIPCallback);
        }
    }

    public void setHmcpPlayerListener(HmcpPlayerListener hmcpPlayerListener) {
        this.mHmcpPlayerListener = hmcpPlayerListener;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setHmcpPlayerListener(hmcpPlayerListener);
        }
    }

    public void setImageSize() {
        this.hmcpVideoViewInterface.setImageSize();
    }

    public boolean setInitMousePoint(float f10, float f11) {
        return this.hmcpVideoViewInterface.setInitMousePoint(f10, f11);
    }

    public void setKeyboardMapperGamepadEnable(boolean z10) {
        LogUtils.d(TAG, "setKeyboardMapperGamepadEnable:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setKeyboardMapperGamepadEnable", Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_KEYBOARD_MAPPER_GAMEPAD_ENABLE, "" + z10)));
        }
        this.hmcpVideoViewInterface.setKeyboardMapperGamepadEnable(z10);
    }

    public void setLoadingShow(boolean z10) {
        this.hmcpVideoViewInterface.setLoadingShow(z10);
    }

    public void setMouseBitmap(Bitmap bitmap) {
        this.hmcpVideoViewInterface.setMouseBitmap(bitmap);
    }

    public void setMouseIcon(String str, int i10) {
        this.hmcpVideoViewInterface.setMouseIcon(str, i10);
    }

    public boolean setMouseMoveStep(int i10) {
        return this.hmcpVideoViewInterface.setMouseMoveStep(i10);
    }

    public void setMouseOffSet(int i10, int i11) {
        this.hmcpVideoViewInterface.setMouseOffSet(i10, i11);
    }

    public void setMouseOffSetRatio(float f10, float f11) {
        this.hmcpVideoViewInterface.setMouseOffSetRatio(f10, f11);
    }

    public void setMouseSensitivity(float f10) {
        LogUtils.d(TAG, "setMouseSensitivity:" + f10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SET_MOUSE_SENSITIVITY, Float.valueOf(f10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SET_MOUSE_SENSITIVITY, "" + f10)));
        }
        this.hmcpVideoViewInterface.setMouseSensitivity(f10);
    }

    public void setOnSendWsMessageListener(OnSendWsMessageListener onSendWsMessageListener) {
        this.mOnSendWsMessageListener = onSendWsMessageListener;
        this.hmcpVideoViewInterface.setWsMessageListener(onSendWsMessageListener);
    }

    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
        this.mOperationDelayCallback = iOperationDelayCallback;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setOperationDelayCallback(iOperationDelayCallback);
        }
    }

    public void setPCMouseMode(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setPCMouseMode(z10);
        }
    }

    public void setPhysicalMouseViewOnSensitivity(float f10) {
        LogUtils.d(TAG, "setPhysicalMouseViewOnSensitivity:" + f10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setPhysicalMouseViewOnSensitivity", Float.valueOf(f10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "setPhysicalMouseViewOnSensitivity sensitivity:" + f10);
        }
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setPhysicalMouseViewOnSensitivity(f10);
        }
    }

    public void setPlayerState(int i10) {
        this.hmcpVideoViewInterface.setPlayerState(i10);
    }

    public void setScreenHeight(int i10) {
        this.hmcpVideoViewInterface.setScreenHeight(i10);
    }

    public void setScreenOrientation(ScreenOrientation screenOrientation) {
        this.hmcpVideoViewInterface.setScreenOrientation(screenOrientation);
    }

    public void setScreenWidth(int i10) {
        this.hmcpVideoViewInterface.setScreenWidth(i10);
    }

    public void setShowVirtualRawKey(boolean z10) {
        LogUtils.d(TAG, "setShowVirtualRawKey:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SHOW_VIRTUAL_RAW_KEY, Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SHOW_VIRTUAL_RAW_KEY, "" + z10)));
        }
        this.hmcpVideoViewInterface.setShowVirtualRawKey(z10);
    }

    public void setStreamingCallback(StreamingCallback streamingCallback) {
        this.mStreamingCallback = streamingCallback;
        this.hmcpVideoViewInterface.setStreamingCallback(streamingCallback);
    }

    public void setStreamingMode(StreamingMode streamingMode, IStreamingModeCallback iStreamingModeCallback) {
        this.hmcpVideoViewInterface.setStreamingMode(streamingMode, iStreamingModeCallback);
    }

    public boolean setTouchMode(TouchMode touchMode) {
        String str;
        LogUtils.d(TAG, "setTouchMode:" + touchMode);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_TOUCH_MODE, touchMode)) {
            if (touchMode == null) {
                str = "null";
            } else {
                str = "" + touchMode.ordinal();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_TOUCH_MODE, str)));
        }
        return this.hmcpVideoViewInterface.setTouchMode(touchMode);
    }

    public void setTouchesMoveMapperRockerEnable(boolean z10) {
        LogUtils.d(TAG, "setTouchesMoveMapperRockerEnable:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setTouchesMoveMapperRockerEnable", Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_TOUCHES_MOVE_MAPPER_ROCKER_ENABLE, "" + z10)));
        }
        this.hmcpVideoViewInterface.setTouchesMoveMapperRockerEnable(z10);
    }

    public void setUIListener(HmcpUIListener hmcpUIListener) {
        this.mHmcpUIListener = hmcpUIListener;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setUIListener(hmcpUIListener);
        }
    }

    public void setUserInfo(UserInfo userInfo) throws IllegalArgumentException {
        if (userInfo == null) {
            throw new IllegalArgumentException("UserInfo is null");
        }
        this.mUserInfo = userInfo;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setUserInfo(userInfo);
        }
    }

    public void setVideoDelayCallback(IVideoDelayCallback iVideoDelayCallback) {
        this.mVideoDelayCallback = iVideoDelayCallback;
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setVideoDelayCallback(iVideoDelayCallback);
        }
    }

    public void setVirtualBaseScale(float f10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setVirtualBaseScale(f10);
        }
    }

    public void setVirtualDeviceAlpha(float f10) {
        LogUtils.d(TAG, "setVirtualStickAlpha:" + f10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SET_VIRTUAL_STICK_ALPHA, Float.valueOf(f10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SET_VIRTUAL_STICK_ALPHA, "" + f10)));
        }
        this.hmcpVideoViewInterface.setVirtualStickAlpha(f10);
    }

    public void setVirtualDeviceType(VirtualOperateType virtualOperateType) {
        LogUtils.d(TAG, "setVirtualDeviceType:" + virtualOperateType);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SET_VIRTUAL_OPERATE_TYPE, virtualOperateType)) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SET_VIRTUAL_OPERATE_TYPE, "" + virtualOperateType)));
        }
        if (virtualOperateType == VirtualOperateType.NONE) {
            showVirtualKeyboard(false);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
            showVirtualKeyboard(true);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
            showVirtualStick(true);
        }
    }

    public void setVirtualKeyVibrate(boolean z10) {
        LogUtils.d(TAG, "setVirtualKeyVibrate:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SET_KEY_PRESSED_VIBRATOR, Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SET_KEY_PRESSED_VIBRATOR, "" + z10)));
        }
        this.hmcpVideoViewInterface.setKeyPressedVibrator(z10);
    }

    public void setWifiSSIDGetOn(boolean z10) {
        LogUtils.d(TAG, "setWifiSSIDGetOn:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, "setWifiSSIDGetOn", Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, "setWifiSSIDGetOn enable:" + z10);
        }
        HmRtcAdapter.setWifiSSIDGetOn(z10);
    }

    public void setXAxisReverse(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setXAxisReverse(z10);
        }
    }

    public void setYAxisReverse(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setYAxisReverse(z10);
        }
    }

    public void showVirtualKeyboard(boolean z10) {
        LogUtils.d(TAG, "showVirtualKeyboard:" + z10);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SHOW_VIRTUAL_KEYBOARD, Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SHOW_VIRTUAL_KEYBOARD, "" + z10)));
        }
        this.hmcpVideoViewInterface.showVirtualKeyboard(z10);
    }

    public void showVirtualStick(boolean z10) {
        boolean zShowVirtualStick = this.hmcpVideoViewInterface.showVirtualStick(z10);
        LogUtils.d(TAG, "showVirtualStick:" + z10 + ",result:" + zShowVirtualStick);
        if (Utils.notSameValueAndUpdate(this.mCountlyCacheMap, Constants.COUNTLY_NAME_SHOW_VIRTUAL_STICK, Boolean.valueOf(z10))) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SHOW_VIRTUAL_STICK, "" + z10)));
        }
    }

    public void startLiving(String str, String str2, OnLivingListener onLivingListener) {
        this.hmcpVideoViewInterface.startLiving(str, str2, onLivingListener);
    }

    public void startPlay() {
        this.hmcpVideoViewInterface.startPlay();
    }

    public void startRecord() {
        this.hmcpVideoViewInterface.startRecord();
    }

    public void startRecordStream(StartRecordStreamListener startRecordStreamListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.startRecordStream(startRecordStreamListener);
        }
    }

    public boolean startStreaming() {
        return this.hmcpVideoViewInterface.startStreaming();
    }

    public void stopAndDismiss(Activity activity, int i10) {
        this.hmcpVideoViewInterface.stopAndDismiss(activity, i10);
    }

    public void stopLiving(String str, OnLivingListener onLivingListener) {
        this.hmcpVideoViewInterface.stopLiving(str, onLivingListener);
    }

    public void stopRecord() {
        this.hmcpVideoViewInterface.stopRecord();
    }

    public void stopRecordStream(StopRecordStreamListener stopRecordStreamListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.stopRecordStream(stopRecordStreamListener);
        }
    }

    public boolean switchBandwidthDetection(boolean z10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            return iHmcpVideoView.switchBandWidthDetection(z10);
        }
        return false;
    }

    public void switchIME(SwitchIMECallback switchIMECallback) {
        this.hmcpVideoViewInterface.switchIME(switchIMECallback);
    }

    public void switchInputMode() {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.switchInputMode();
        }
    }

    public boolean switchKeyboard(boolean z10) {
        boolean zSwitchKeyboard = this.hmcpVideoViewInterface.switchKeyboard(z10);
        LogUtils.d(TAG, "switchKeyboard:" + z10 + ",result:" + zSwitchKeyboard);
        if (zSwitchKeyboard) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SHOW_FULL_KEYBOARD, "" + z10)));
        }
        return zSwitchKeyboard;
    }

    public void switchLocalKeyboard(boolean z10) {
        boolean zSwitchLocalKeyboard = this.hmcpVideoViewInterface.switchLocalKeyboard(z10);
        LogUtils.d(TAG, "switchLocalKeyboard:" + z10 + ",result:" + zSwitchLocalKeyboard);
        if (zSwitchLocalKeyboard) {
            CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_STATUS, JsonUtil.toJsonString(new ReportSwitchStatus(Constants.COUNTLY_NAME_SWITCH_KEYBOARD, "" + z10)));
        }
    }

    public void switchStreamType(StreamType streamType, OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.switchStreamType(streamType, onSwitchStreamTypeListener);
        }
    }

    public boolean updateCTokenTimeStamp(String str, Long l10) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            return iHmcpVideoView.updateCTokenTimeStamp(str, l10);
        }
        return false;
    }

    public void updateGameUID(Bundle bundle, OnUpdataGameUIDListener onUpdataGameUIDListener) {
        this.hmcpVideoViewInterface.updateGameUID(bundle, onUpdataGameUIDListener);
    }

    public void updateInstanceTime(int i10, int i11, OnUpdateInstanceTimeListener onUpdateInstanceTimeListener) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.updateInstanceTime(i10, i11, onUpdateInstanceTimeListener);
        }
    }

    public void updateWorkingFile(CloudOperation cloudOperation, List<CloudFile> list, UpdateCallback updateCallback) {
        this.hmcpVideoViewInterface.updateCloudFile(cloudOperation, list, updateCallback);
    }

    public void upload(CloudFile cloudFile) {
        this.hmcpVideoViewInterface.upload(cloudFile);
    }

    public void cancelDownload(CloudFile cloudFile, CancelCallback cancelCallback) {
        this.hmcpVideoViewInterface.cancelDownload(cloudFile, cancelCallback);
    }

    public void contronPlay(int i10, Control control, OnContronListener onContronListener) {
        int i11;
        if (control == null && onContronListener != null) {
            onContronListener.contronResult(false, "controlPlay Control param can not be null!!");
            return;
        }
        if (control == null) {
            LogUtils.e(TAG, "controlPlay Control param can not be null!!");
            return;
        }
        String systemLocalStr = control.languageConfig;
        if (TextUtils.isEmpty(systemLocalStr) && AbsLanguageManager.IS_AUTO_BY_SYSTEM) {
            systemLocalStr = HmcpManager.getInstance().getSystemLocalStr(11);
            LogUtils.d(TAG, "languageConfig by local system " + systemLocalStr);
            i11 = 12;
        } else {
            i11 = 2;
        }
        this.mLanguageManager.updateLanguage(systemLocalStr, "control play ", i11);
        String streamType = getStreamType(i10);
        HmcpManager.getInstance().setStreamType(streamType);
        removeViewIfExists();
        this.hmcpVideoViewInterface = getViewFactory().getHmcpVideoView(getContext(), streamType, false);
        init();
        this.hmcpVideoViewInterface.setUserInfo(this.mUserInfo);
        this.hmcpVideoViewInterface.setUIListener(this.mHmcpUIListener);
        this.hmcpVideoViewInterface.setHmcpPlayerListener(this.mHmcpPlayerListener);
        this.hmcpVideoViewInterface.setCloudOperationListener(this.mCloudOperationListener);
        this.hmcpVideoViewInterface.setWsMessageListener(this.mOnSendWsMessageListener);
        this.hmcpVideoViewInterface.setAudioRecordCallback(this.mAudioRecordSourceCallback);
        this.hmcpVideoViewInterface.controlPlay(control, onContronListener);
        this.hmcpVideoViewInterface.setHmFrameCallback(this.mHmFrameCallback);
        this.hmcpVideoViewInterface.setOperationDelayCallback(this.mOperationDelayCallback);
        this.hmcpVideoViewInterface.setVideoDelayCallback(this.mVideoDelayCallback);
        this.hmcpVideoViewInterface.setHmStreamerIPCallback(this.mHmStreamerIPCallback);
        this.hmcpVideoViewInterface.setSeiListener(this.mISeiListener);
        this.hmcpVideoViewInterface.setStreamingCallback(this.mStreamingCallback);
    }

    public void download(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
        this.hmcpVideoViewInterface.download(cloudFile, cloudOperationListener);
    }

    public void enterEditMode(VirtualOperateType virtualOperateType, boolean z10) {
        this.hmcpVideoViewInterface.enterVirDeviceEditMode(virtualOperateType, z10);
    }

    public void onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        this.hmcpVideoViewInterface.onSwitchResolution(i10, resolutionInfo, i11);
    }

    public void release(String str) {
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.put("from", "app");
                str = jSONObject.toString();
            } catch (JSONException unused) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("from", "app");
                jSONObject2.put("errorMsg", str);
                str = jSONObject2.toString();
            }
        } catch (JSONException unused2) {
        }
        this.hmcpVideoViewInterface.release(str);
    }

    public int resetInputTimer() {
        return this.hmcpVideoViewInterface.resetInputTimer();
    }

    public void startPlay(boolean z10) {
        this.hmcpVideoViewInterface.startPlay(z10);
    }

    public void upload(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
        this.hmcpVideoViewInterface.upload(cloudFile, cloudOperationListener);
    }

    public void download(List<CloudFile> list, DownloadMode downloadMode, DownloadCallback downloadCallback) {
        this.mDownloadCallback = downloadCallback;
        this.hmcpVideoViewInterface.download(list, downloadMode, downloadCallback);
    }

    public void onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11, ResolutionInfoExtra resolutionInfoExtra) {
        this.hmcpVideoViewInterface.onSwitchResolution(i10, resolutionInfo, i11, resolutionInfoExtra);
    }

    public void setDpadMouseMoveStep(Float f10, Float f11) {
        IHmcpVideoView iHmcpVideoView = this.hmcpVideoViewInterface;
        if (iHmcpVideoView != null) {
            iHmcpVideoView.setDpadMouseMoveStep(f10, f11);
        }
    }

    public BaseVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEmptyVideoView = new EmptyVideoView();
        this.mCountlyCacheMap = new HashMap();
        initView(context);
    }

    public BaseVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mEmptyVideoView = new EmptyVideoView();
        this.mCountlyCacheMap = new HashMap();
        initView(context);
    }

    public void play() {
        this.hmcpVideoViewInterface.play();
    }
}
