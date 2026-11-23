package com.haima.hmcp.widgets;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import com.alibaba.fastjson.parser.Feature;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.google.protobuf.InvalidProtocolBufferException;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.AppSettingsState;
import com.haima.hmcp.beans.BaseMessageBean;
import com.haima.hmcp.beans.BaseWsMessage;
import com.haima.hmcp.beans.BattleMode;
import com.haima.hmcp.beans.ButtonBarrier;
import com.haima.hmcp.beans.ButtonBarrierConfigBean;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.CapScreenData;
import com.haima.hmcp.beans.CapScreenWsMessage;
import com.haima.hmcp.beans.ClientImeType;
import com.haima.hmcp.beans.ClipBoardData;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.haima.hmcp.beans.ClipBoardWsMessage;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.CommonPayload;
import com.haima.hmcp.beans.CommonPayloadData;
import com.haima.hmcp.beans.CommonPayloadDataQueues;
import com.haima.hmcp.beans.Control;
import com.haima.hmcp.beans.ControlInfo;
import com.haima.hmcp.beans.ContronResult;
import com.haima.hmcp.beans.DeviceInfo;
import com.haima.hmcp.beans.DeviceState;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.FileUploadBean;
import com.haima.hmcp.beans.FrameDelayInfo;
import com.haima.hmcp.beans.GPSAuthWsMessage;
import com.haima.hmcp.beans.GPSData;
import com.haima.hmcp.beans.GPSWsMessage;
import com.haima.hmcp.beans.GSMAddressInfo;
import com.haima.hmcp.beans.GSMUsbNatData;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.GamePadId;
import com.haima.hmcp.beans.GamePlatformType;
import com.haima.hmcp.beans.GetSwitchStreamTypeResult;
import com.haima.hmcp.beans.GlobalConfig;
import com.haima.hmcp.beans.HMCameraConfig;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.HmInputOp;
import com.haima.hmcp.beans.HmSysNotify;
import com.haima.hmcp.beans.IMEConfig;
import com.haima.hmcp.beans.IMEListMessage;
import com.haima.hmcp.beans.IMESwitchCallbackResult;
import com.haima.hmcp.beans.IMESwitchMessage;
import com.haima.hmcp.beans.InputDeviceInfo;
import com.haima.hmcp.beans.InstanceMessage;
import com.haima.hmcp.beans.IntentExtraData;
import com.haima.hmcp.beans.IntentWsMessage;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.JoinBattle;
import com.haima.hmcp.beans.JoyStickBean;
import com.haima.hmcp.beans.JoyStickMappingConfig;
import com.haima.hmcp.beans.KeepAlivePayload;
import com.haima.hmcp.beans.Language;
import com.haima.hmcp.beans.LongTouchBtnConfig;
import com.haima.hmcp.beans.LongTouchExtraInfo;
import com.haima.hmcp.beans.Message;
import com.haima.hmcp.beans.MessagePayload;
import com.haima.hmcp.beans.MiscWsMessage;
import com.haima.hmcp.beans.PauseServicePayload;
import com.haima.hmcp.beans.PauseServicePayloadData;
import com.haima.hmcp.beans.PlayNotification;
import com.haima.hmcp.beans.PlayStreamPayload;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.ProtoDataGameInfo;
import com.haima.hmcp.beans.RecordCmdResult;
import com.haima.hmcp.beans.RecordStreamInfo;
import com.haima.hmcp.beans.RemoteCaptureParameters;
import com.haima.hmcp.beans.ReportBaseError;
import com.haima.hmcp.beans.ReportBaseFailed;
import com.haima.hmcp.beans.ReportChangeResolutionEnd;
import com.haima.hmcp.beans.ReportChangeResolutionInfo;
import com.haima.hmcp.beans.ReportChangeResolutionStart;
import com.haima.hmcp.beans.ReportEventDataVer;
import com.haima.hmcp.beans.ReportExitQueueInBGCancelType;
import com.haima.hmcp.beans.ReportGetStreamSuc;
import com.haima.hmcp.beans.ReportImEvent;
import com.haima.hmcp.beans.ReportInput;
import com.haima.hmcp.beans.ReportSaasWSMessage;
import com.haima.hmcp.beans.ReportScreenUrl;
import com.haima.hmcp.beans.ReportSysNotifyStatus;
import com.haima.hmcp.beans.ReportTimer;
import com.haima.hmcp.beans.RequestPreCheck;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ResolutionInfoExtra;
import com.haima.hmcp.beans.ResponseWsMessage;
import com.haima.hmcp.beans.RtcSeiData;
import com.haima.hmcp.beans.ScreenInfo;
import com.haima.hmcp.beans.SdkStreamPayloadData;
import com.haima.hmcp.beans.SerializableMap;
import com.haima.hmcp.beans.StateChangePayload;
import com.haima.hmcp.beans.StateChangePayloadData;
import com.haima.hmcp.beans.StopServicePayload;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.TouchesMappingConfig;
import com.haima.hmcp.beans.UpdateViewWsMessage;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.beans.VirtualGamePadCacheBean;
import com.haima.hmcp.beans.VirtualGamePadPullPayResult;
import com.haima.hmcp.beans.WsUploadDownloadBean;
import com.haima.hmcp.beans.X86TouchConfig;
import com.haima.hmcp.beans.report.CountlyEventId;
import com.haima.hmcp.beans.report.ReportStreamTypeCall;
import com.haima.hmcp.beans.report.ReportVirtualGamePadPayPullResult;
import com.haima.hmcp.business.ConfigureManager;
import com.haima.hmcp.business.DpadMouseLongStepActiveTimer;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.business.GetCloudImeTransaction;
import com.haima.hmcp.business.GyroscopeHelper;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.HmcpRequestManager;
import com.haima.hmcp.business.IMessage;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.IWsMessage;
import com.haima.hmcp.business.MessageManager;
import com.haima.hmcp.business.MouseMotionEventDispatcher;
import com.haima.hmcp.business.PluginContext;
import com.haima.hmcp.business.RecordHelper;
import com.haima.hmcp.business.RemoteDeviceInfoManager;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.SendSceneState;
import com.haima.hmcp.business.StreamingMonitor;
import com.haima.hmcp.business.SwitchControllerManager;
import com.haima.hmcp.business.TransferHelper;
import com.haima.hmcp.business.VideoViewDelayReportManager;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.business.WsMessageManager;
import com.haima.hmcp.business.X86KeyBlocker;
import com.haima.hmcp.business.display.HmScreenMonitor;
import com.haima.hmcp.business.display.HmScreenMonitorConfig;
import com.haima.hmcp.business.display.HmScreenOrientationListener;
import com.haima.hmcp.business.sensor.HmSensorManager;
import com.haima.hmcp.business.sensor.IHmSensorStatusListener;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.cloud.CloudFileManager;
import com.haima.hmcp.cloud.CountDownTimerWrapper;
import com.haima.hmcp.cloud.IUpDownloadListener;
import com.haima.hmcp.cloud.job.CloudFileJob;
import com.haima.hmcp.cloud.job.DownloadHelper;
import com.haima.hmcp.cloud.job.JobExecutor;
import com.haima.hmcp.cloud.video.DownloadLifeCycleCallback;
import com.haima.hmcp.cloud.video.DownloadTaskProxy;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.bean.DownloadTransferData;
import com.haima.hmcp.cloud.video.listener.TransferDataCallback;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.device.input.enums.KeyType;
import com.haima.hmcp.device.input.interfaces.IDeviceInput;
import com.haima.hmcp.device.input.listener.DeviceInputListener;
import com.haima.hmcp.device.input.manager.DeviceInputManager;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.enums.CloudFileProtocol;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.enums.EditStatus;
import com.haima.hmcp.enums.ExitQueueInBGCancelType;
import com.haima.hmcp.enums.GamepadType;
import com.haima.hmcp.enums.GyroscopeActivateMode;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.enums.NetWorkState;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.Source;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.StreamingMode;
import com.haima.hmcp.enums.SwitchStreamTypeError;
import com.haima.hmcp.enums.TouchMode;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.input.HMInput;
import com.haima.hmcp.input.HMInputConfig;
import com.haima.hmcp.input.HMInputType;
import com.haima.hmcp.input.listener.HMInputCallback;
import com.haima.hmcp.input.sender.HMInputSenderFactory;
import com.haima.hmcp.input.sender.IHMInputSender;
import com.haima.hmcp.listeners.ArmMouseModelListener;
import com.haima.hmcp.listeners.AudioRecordSourceCallback;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.CloudOperationListener;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.DownloadCallback;
import com.haima.hmcp.listeners.EventMappingModelListener;
import com.haima.hmcp.listeners.EventModelListener;
import com.haima.hmcp.listeners.GetCloudIMECallback;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmInputOpListener;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.HmcpUIListener;
import com.haima.hmcp.listeners.HmcpVideoPlayerListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.listeners.ISeiListener;
import com.haima.hmcp.listeners.IStreamModel;
import com.haima.hmcp.listeners.IStreamingModeCallback;
import com.haima.hmcp.listeners.IVideoDelayCallback;
import com.haima.hmcp.listeners.InputOpModelListener;
import com.haima.hmcp.listeners.LocalKeyboardModelListener;
import com.haima.hmcp.listeners.MappingInputTypeModelListener;
import com.haima.hmcp.listeners.OnCloudImageListListener;
import com.haima.hmcp.listeners.OnConfigListener;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.OnEnableHighBitrateListener;
import com.haima.hmcp.listeners.OnForceKeepAliveListener;
import com.haima.hmcp.listeners.OnGetControlResultListener;
import com.haima.hmcp.listeners.OnGetSwitchStreamTypeResultListener;
import com.haima.hmcp.listeners.OnInitCallBackListener;
import com.haima.hmcp.listeners.OnJoinBattleListener;
import com.haima.hmcp.listeners.OnLivingListener;
import com.haima.hmcp.listeners.OnRelaunchGameListener;
import com.haima.hmcp.listeners.OnRequestAliveListener;
import com.haima.hmcp.listeners.OnSendMessageListener;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.listeners.OnSetStreamingModeListener;
import com.haima.hmcp.listeners.OnStartStreamingListener;
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
import com.haima.hmcp.listeners.TvBattleModelListener;
import com.haima.hmcp.listeners.TvModelListener;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WorkingFileCallback;
import com.haima.hmcp.model.ArmMouseModel;
import com.haima.hmcp.model.DpadMouseModel;
import com.haima.hmcp.model.EventMappingModel;
import com.haima.hmcp.model.EventModel;
import com.haima.hmcp.model.InputOpModel;
import com.haima.hmcp.model.JoystickInputModel;
import com.haima.hmcp.model.LocalKeyboardModel;
import com.haima.hmcp.model.MappingInputTypeModel;
import com.haima.hmcp.model.TokenTimeStampModel;
import com.haima.hmcp.model.TvBattleModel;
import com.haima.hmcp.model.TvModel;
import com.haima.hmcp.model.VibratorModel;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.rtc.widgets.IRenderView;
import com.haima.hmcp.rtc.widgets.RtcModel;
import com.haima.hmcp.rtc.widgets.RtcPlayer;
import com.haima.hmcp.rtc.widgets.beans.RtcVideoDelayInfo;
import com.haima.hmcp.rtmp.widgets.IHmcpIJKVideoView;
import com.haima.hmcp.rtmp.widgets.beans.RtmpVideoDelayInfo;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.CacheUtil;
import com.haima.hmcp.utils.ClipboardUtils;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.ConnectivityCheck;
import com.haima.hmcp.utils.CountDownUtil;
import com.haima.hmcp.utils.DataUtils;
import com.haima.hmcp.utils.DevDebugManager;
import com.haima.hmcp.utils.DisplayUtil;
import com.haima.hmcp.utils.ErrorInfo;
import com.haima.hmcp.utils.FileDownloadUtil;
import com.haima.hmcp.utils.FrameDataProxy;
import com.haima.hmcp.utils.FrameNetDelayInfo;
import com.haima.hmcp.utils.GameActionUtil;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.ImageUtil;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.KeyMapUtil;
import com.haima.hmcp.utils.LockKeyUtils;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MotionEventUtil;
import com.haima.hmcp.utils.PermissionUtil;
import com.haima.hmcp.utils.ProtoBufUtil;
import com.haima.hmcp.utils.ScreenShotManager;
import com.haima.hmcp.utils.SoftKeyBoardListener;
import com.haima.hmcp.utils.SpeedGather;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.TimeUtil;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.utils.VibratorUtil;
import com.haima.hmcp.utils.VolumeUtils;
import com.haima.hmcp.utils.ping.PingManager;
import com.haima.hmcp.virtual.HmNetworkBitmapLoader;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.dialogs.HmVirInputKBDialog;
import com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout;
import com.haima.hmcp.virtual.views.HmVirtualTextureView;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.widgets.beans.VirtualOperateType;
import com.haima.hmcp.widgets.view.CircularProgressIndicatorView;
import com.haima.hmcp.widgets.view.MouseView;
import com.haima.hmcp.widgets.virtualkey.VirtualKeyboardSurfaceView;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hmwebrtc.HmDataReportToSaasSdk;
import org.hmwebrtc.SeiData;
import org.hmwebrtc.SeiDataReportEvent;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HaimaDataChannel;
import org.webrtc.haima.HmCameraWrapper;
import org.webrtc.haima.HmDataChannelDeviceSwitch;
import org.webrtc.haima.HmDataChannelManager;
import org.webrtc.haima.HmFrameDelayInfo;
import org.webrtc.haima.HmRtcAdapter;
import org.webrtc.haima.HmRtcGlobalConfig;
import org.webrtc.haima.audio.HmAudioManager;
import org.webrtc.haima.listeners.HmPermissionCallback;
import org.webrtc.haima.listeners.HmPermissionHandler;
import org.webrtc.haima.util.RtcProtoBufUtil;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsIjkVideoView extends FrameLayout implements IHmcpVideoView, HmcpRequestManager.OnHmcpSaasRequestListener, SeiDataReportEvent, ScreenShotManager.IScreenShotCallback, HmPermissionHandler, DeviceInputListener, HmcpManager.OnUpdateDataReportStatusListener, DpadMouseLongStepActiveTimer.DpadMouseLongStepActiveTimerListener {
    public static final String ALLOW_COMPATIBLE_IPV6 = "allowCompatibleIpv6";
    public static final int APK_TYPE_NON_POOL = 3;
    public static final int APK_TYPE_POOL_BINTANG = 1;
    public static final int APK_TYPE_POOL_NON_BINTANG = 2;
    public static final String APP_CHANNEL = "appChannel";
    public static final String APP_ID = "appId";
    public static final String APP_NAME = "appName";
    public static final String ARCHIVED = "archived";
    public static final String ARCHIVE_FROM_BID = "archiveFromBid";
    public static final String ARCHIVE_FROM_USER_ID = "archiveFromUserId";
    public static final String BAND_WIDTH_PEAK = "bandWidthPeak";
    public static final String BAND_WIDTH_PERIOD = "bandWidthPeriod";
    public static final String BITE_RATE = "bitRate";
    public static final int CLICK_BUTTON_NOINPUT = 6;
    public static final int CLICK_BUTTON_REPLAY = 4;
    public static final String CLIENT_CITY = "clientCity";
    public static final String CLIENT_ISP = "clientISP";
    public static final String CLIENT_PROVINCE = "clientProvince";
    public static final String C_ID = "cid";
    public static final String C_TOKEN = "cToken";
    private static String DATA = "data";
    public static final String DECODE_TIME_PERIOD = "decodeTimePeriod";
    public static final int DEFAULT_CURSOR_HEIGHT = 40;
    public static final int DEFAULT_CURSOR_WIDTH = 40;
    private static final int DELAY_TIME_TO_REFRESH_STOKEN = 5000;
    public static final String ENABLE_HIGH_BITRATE_TAG = "enable high bitrate-> ";
    public static final String EXTRA_ID = "extraId";
    public static final int FIRST_FRAME_ARRIVAL = 7;
    public static final String FPS_PERIOD = "fpsPeriod";
    public static final int FRAME_COVER_OFF = 11;
    public static final int GAMEPAD_TYPE_DEFAULT = 0;
    public static final int GAMEPAD_TYPE_PS_108 = 3;
    public static final int GAMEPAD_TYPE_PS_APP = 2;
    public static final int GAMEPAD_TYPE_XBOX_108 = 4;
    public static final int GAMEPAD_TYPE_XBOX_APP = 1;
    protected static final int INPUT_STATUS_VIRTUAL_GAMEPAD_CONNECTED = 200;
    public static final int INPUT_TEXT_CALL_INTERVAL = 1000;
    public static final int INPUT_TEXT_LENGTH = 256;
    public static final String INTERNET_SPEED = "internetSpeed";
    protected static final boolean IS_RECORD_LIFE_CYCLE_EVENT = true;
    public static final String IS_SHOW_TIME = "isShowTime";
    public static final String JSON_TAG_DATA = "data";
    public static final String JSON_TAG_ERROR_CODE = "errorCode";
    public static final String JSON_TAG_ERROR_MESSAGE = "errorMsg";
    public static final String JSON_TAG_MESSAGE = "msg";
    public static final String JSON_TAG_OPERATION = "operation";
    public static final String JSON_TAG_STATE_CHANGE_REASON = "stateChangeReason";
    public static final String JSON_TAG_STATUS = "status";
    public static final String KEYBOARD_DOWN = "keyDown";
    public static final String KEYBOARD_DOWN_FLAG = "1";
    public static final String KEYBOARD_UP = "keyUp";
    public static final String KEYBOARD_UP_FLAG = "0";
    public static final String LINK = "LINK";
    public static final String LINK_OPTYPE = "1";
    public static final int MAX_BITRATE = 2147400000;
    public static final int MAX_CONNECT_WS_SERVER_COUNT = 5;
    public static final int MIN_BITRATE = 0;
    public static final int MORE_POINT_CLICK_TYPE = 2;
    public static final int MORE_POINT_END_TYPE = 0;
    public static final int MORE_POINT_MOVEANDCLICK_TYPE = 3;
    public static final int MORE_POINT_MOVE_TYPE = 1;
    public static final int MSG_HIDE_SCREEN_SHOT = 10;
    public static final int MSG_HMCP_GAMEOVER = 2;
    public static final int MSG_HMCP_REFRESH_STOKEN = 3;
    public static final int MSG_HMCP_REPLAY = 0;
    public static final int MSG_HMCP_STOP = 1;
    public static final int MSG_HMCP_VIDEO_DELAY = 5;
    public static final int MSG_SET_SCREEN_BRIGHTNESS = 8;
    public static final int MSG_SHOW_SCREEN_SHOT = 9;
    public static final int MSG_UPLOAD_FILE_RESPONSE = 33;
    public static final int MSG_VOLUME_SEND = 22;
    public static final String MY_LOCK = "My Lock";
    public static final String NO_INPUT_LIMIT_TIME = "noInputLimitTime";
    public static final int NO_SELF_RESOLUTION = -1;
    public static final int NO_SELF_TEST_SPEED = -1;
    public static final int OPERATION_BATTLE_JOIN_PLAYER_IN = 48;
    public static final int OPERATION_BATTLE_JOIN_PLAYER_OUT = 47;
    public static final int OPERATION_BATTLE_MASTER_PLAYER_OUT = 46;
    public static final int OPERATION_DEBUG_SWITCH = 100;
    public static final int OPERATION_EXCHANGE_CONTROL = 57;
    public static final int OPERATION_FORCED_OFFLINE = 22;
    public static final int OPERATION_GAME_ARCHIVING = 32;
    public static final int OPERATION_GAME_CRASH = 18;
    public static final int OPERATION_GAME_EXIT = 56;
    public static final int OPERATION_GAME_OVER = 4;
    public static final int OPERATION_GAME_RESTART = 19;
    public static final int OPERATION_GAME_TIME_COUNT_DOWN = 35;
    public static final int OPERATION_GAME_TIME_HIGHLIGHT = 37;
    public static final int OPERATION_GAME_TIME_UPDATE = 36;
    public static final int OPERATION_GET_CONTRON = 55;
    public static final int OPERATION_HMCP_ERROR = 3;
    public static final int OPERATION_INSTANCE_CRASH = 8;
    public static final int OPERATION_INSTANCE_INITIATING = 10;
    public static final int OPERATION_INTERVAL_TIME = 1;
    public static final int OPERATION_KEEP_ALIVE_TIME_START = 41;
    public static final int OPERATION_KEEP_ALIVE_TIME_STOP = 43;
    public static final int OPERATION_KEEP_ALIVE_TIME_UP = 42;
    public static final int OPERATION_KICKED = 2;
    public static final int OPERATION_LOST_CONTRON = 54;
    public static final int OPERATION_MAINTENANCE_IN_QUEUED = 65;
    public static final int OPERATION_NETWORK_ERROR = 999;
    public static final int OPERATION_NET_TRACE_ROUTE = 45;
    public static final int OPERATION_NO_INPUT_TIMEOUT = 40;
    public static final int OPERATION_OPEN_MORE_SAME_GAME = 21;
    public static final int OPERATION_PAUSED_SAAS_SERVER = 16;
    public static final int OPERATION_PAUSE_SAAS_SERVER = 15;
    public static final int OPERATION_PIN_CODE = 52;
    public static final int OPERATION_QUEUE = 6;
    public static final int OPERATION_QUEUING = 1000;
    public static final int OPERATION_READY_PAUSE_SAAS_SERVER = 14;
    public static final int OPERATION_REFRESH_STOKEN = 11;
    public static final int OPERATION_REFUSE_QUEUE = 7;
    public static final int OPERATION_RESUME_SAAS_SERVER = 13;
    public static final int OPERATION_START_LIVING = 51;
    public static final int OPERATION_STATE_CHANGE_REASON = 58;
    public static final int OPERATION_STOP_LIVING = 53;
    public static final int OPERATION_STREAM_URL = 5;
    public static final int OPERATION_STREAM_URL_PRE = 62;
    public static final int OPERATION_SWITCHING_RESOLUTION = 12;
    protected static final int OPERATION_SYS_NOTIFY = 201;
    public static final int OPERATION_TOAST_NO_INPUT = 50;
    public static final int OPERATION_TOAST_TIMEOUT = 99;
    public static final int OPERATION_WAITING = 9;
    public static final int OPERATION_WAIT_STREAMING_CONFIRM = 68;
    public static final int OPERATION_WAIT_STREAMING_TIMEOUT = 69;
    public static final String OP_TYPE = "opType";
    public static final String PAY_PROTO_DATA = "protoData";
    public static final String PAY_STR = "payStr";
    public static final String PLAY_TIME = "playTime";
    public static final String PRIORITY = "priority";
    protected static final int RECONNECT_ACCESS = 1;
    protected static final int REFRESH_STOKEN_TASK = 0;
    protected static final int REFRESH_STOKEN_TYPE_INPUT_URL = 0;
    protected static final int REFRESH_STOKEN_TYPE_SCREEN_URL = 1;
    protected static final int REFRESH_STOKEN_TYPE_TRANSFER_URL = 2;
    public static final String RESOLUTION_ID = "resolutionId";
    private static final int RTC_CONNECT_TIMEOUT_ERROR = -2;
    public static final long SCENE_CONTROL_LOST = 2;
    public static final long SCENE_IN_QUEUE = 1;
    protected static final int SCENE_NO = 0;
    protected static final int SCENE_YES = 1;
    public static final String SOURCE = "source";
    public static final int STATE_CLOUD_SERVICE_PREPARED = 2;
    public static final int STATE_CONNECT_PREPARED = 1;
    public static final int STATE_DEFAULT = 0;
    protected static final int STATE_ERROR = -1;
    public static final int STATE_GAME_OVER = 5;
    public static final int STATE_IDLE = 0;
    public static final int STATE_PLAYING = 3;
    protected static final int STATE_PREPARING = 1;
    public static final int STATE_QUEUE_CONFIRM = -2;
    public static final int STATE_QUEUING = -3;
    public static final int STATE_SHOW_PROMPT = 4;
    private static String STATUS = "status";
    public static final String STREAM_TYPE = "streamType";
    private static final String TAG = "AbsIjkVideoView";
    public static final int TIMER_RUN = 222;
    protected static final int TIME_OUT_TASK = 2;
    public static final String TIPS_MSG = "message";
    public static final int TOUCH_UP_POLICY_NORMAL = 1;
    public static final int TOUCH_UP_POLICY_SPECIAL = 2;
    public static boolean TV_ROTATE = false;
    public static final String USER_ID = "userid";
    protected static final String VERSION = "1.0";
    public static final String VERTICAL_BACKGROUND = "verticalBackground";
    private static final String VIBRATOR_TAG = "AbsIjkVideoView_VIBRATOR";
    public static final String VIEW_RESOLUTION_HEIGHT = "viewResolutionHeight";
    public static final String VIEW_RESOLUTION_WIDTH = "viewResolutionWidth";
    public static final String VIRTUAL_DEVICE_TYPE_KEYBOARD = "keyboard";
    public static final String VIRTUAL_DEVICE_TYPE_XBOX = "xbox";
    protected static final int WAIT_OPERATION_FIVE = 3;
    protected static final int WAIT_OPERATION_STREAMING_CONFIRM = 4;
    protected static final int WAIT_OPERATION_STREAMING_TIMEOUT = 5;
    protected static final GamePadId[] __GAME_PAD_LIST = {new GamePadId(8380, 21760)};
    public static CloudPlayInfo cloudPlayInfo;
    private static long lastCallTime;
    public final String CACHE_EVENT_KEYBOARD_DIRECTION;
    public final String CACHE_EVENT_MORE_POINT_MOVE;
    private final int DEFAULT_VIBRATOR_AMPLITUDE;
    private final int MAX_AMPLITUDE;
    private final int MAX_X86_AMPLITUDE;
    private final int MIN_AMPLITUDE;
    private final String QUIT_TYPE;
    private final int QUIT_TYPE_VALUE_OWNER_EXIT;
    private final int QUIT_TYPE_VALUE_PROCESS_KILLED;
    private final int QUIT_TYPE_VALUE_TIME_LIMIT;
    protected final int SAAS_WS_DELAY;
    protected boolean SASS_SERVER_MAINTENANCE;
    private final float VIBRATOR_CONVERSION;
    public boolean X86MousePosInited;
    public AppSettingsState appSettingsState;
    private GamePadManager.InputChangeListener armInputDeviceChangeListener;
    private ArmMouseModel armMouseModel;
    public View backGroundView;
    private boolean capsLockFlag;
    protected boolean checkAccessWhenSwitchResolution;
    protected ClipboardManager clipboardManager;
    protected boolean closeStream;
    protected int curCloudServiceState;
    protected int curConnectState;
    private String curOperateVendorId;
    public int currentApkType;
    protected int currentNetType;
    protected float currentSound;
    private int currentVolume;
    protected String currenteResolutionID;
    protected Integer dataTrafficOwner;
    public int decodeType;
    protected IDeviceInput deviceInputManager;
    protected ConcurrentHashMap<String, String> downEventMap;
    private DpadMouseModel dpadMouseModel;
    private boolean enabelShareStream;
    protected Boolean enableHighBitrate;
    protected boolean enableHighBitrateRequesting;
    protected String encryption;
    private StringBuilder eventBuilder;
    private EventMappingModel eventMappingModel;
    private EventModel eventModel;
    private String firstDeviceVendorId;
    public String fixedGamepadVendorId;
    public HmVirInputKBDialog fullKeyBoardDialog;
    private boolean hasWakeLockPermission;
    private final HmIMEManager.HmKeyBoardListener hmKeyBoardListener;
    public long initTimestamp;
    private InputOpModel inputOpModel;
    private MappingInputTypeModel inputTypeModel;
    private long intervalBegin;
    protected boolean isAudioMute;
    protected boolean isBackground;
    public boolean isCallbackFirstFrameArrived;
    protected boolean isChangeStreamType;
    protected AtomicBoolean isConfigSuccess;
    public boolean isExchangeControl;
    protected AtomicBoolean isExtraConfigRequestSuccess;
    protected boolean isFirstFrameArrived;
    public boolean isGameStart;
    protected boolean isGetCloudServiceSuccess;
    protected boolean isGetControl;
    private boolean isHandleInputEvent;
    protected boolean isNeedShowSwitchSuccess;
    protected boolean isNetworkOk;
    protected boolean isOperationStreamUrlPreReceived;
    protected boolean isOperationStreamUrlReceived;
    protected boolean isOperationWaitStreamingConfirmReceived;
    private boolean isPlugged;
    protected boolean isReconnectStream;
    public boolean isRecordOn;
    private boolean isRelease;
    protected boolean isRequestImageListTimeout;
    public Boolean isShowOrHideChanged;
    protected boolean isShowTime;
    protected boolean isStartIM;
    protected boolean isStartPlayCallBack;
    private Map<String, Object> jsonMap;
    protected Boolean keepLoginStatus;
    private boolean keyLockStatusFlag;
    protected String languageFromApp;
    private Boolean lastCursorShowHide;
    private long lastX;
    private long lastY;
    public InputEditDialog localKeyBoardDialog;
    protected LocalKeyboardModel localKeyboardModel;
    private HashMap<Integer, Timer> longPressTimers;
    protected Map<String, LongTouchBtnConfig> longTouchBtnConfigMap;
    protected String mAction;
    protected String mAppChannel;
    protected Context mAppContext;
    protected int mAppId;
    protected String mAppName;
    protected String mArchiveFromBid;
    protected String mArchiveFromUserId;
    protected boolean mArchived;
    protected Context mAttachContext;
    protected IMediaPlayer mAudioPlayer;
    private boolean mAutoShowInput;
    protected String mAutoSwitchDetectInterval;
    protected String mAutoSwitchDuration;
    protected String mAutoSwitchFrozentime;
    protected String mAutoSwitchPlayTimeDelay;
    protected int mBandWidthPeak;
    protected int mBandWidthPeriod;
    protected boolean mBandwidthDetectionSwitch;
    protected long mBaseConnectInputTime;
    protected BatchCloudOperationListener mBatchCloudOperationListener;
    public int mBitRate;
    protected ButtonBarrierConfigBean mButtonBarriersConfig;
    private final CacheUtil.Listener mCacheListener;
    protected HMCameraConfig mCameraConfig;
    protected int mChangedViewResolutionHeight;
    protected int mChangedViewResolutionWidth;
    private String mCli;
    protected ClientImeType mClientImeType;
    protected long mClipDataTimestamp;
    protected String mClipboardContent;
    protected int mClockDiffUse;
    protected CloudFileManager mCloudFileManager;
    protected String mCloudId;
    protected OnCloudImageListListener mCloudImageListListener;
    protected CloudOperationListener mCloudOperationListener;
    protected ColorMode mColorMode;
    protected String mComponentName;
    protected int mComponentType;
    protected String mConfigInfo;
    protected Context mContext;
    public ResolutionInfo mCurResolution;
    protected int mCurrentInputDevice;
    public int mCurrentState;
    public Bitmap mCursorBitmap;
    protected int mCursorHeight;
    public MouseView mCursorImageView;
    public CircularProgressIndicatorView mCursorOverLay;
    public boolean mCursorShowOrHide;
    protected int mCursorWidth;
    public Bitmap mCustomizationMouseBitmap;
    private float[] mCutOutsHeightPercent;
    protected int mDecodeTimePeriod;
    public VirtualOperateType mDefaultOperateType;
    protected String mDelayCalculateInterval;
    protected String mDelayThresholdPercent;
    protected Integer mDevicePixelRatio;
    protected boolean mDisableAutoStream;
    protected HashSet<Integer> mDownPointers;
    protected CloudFileJob mDownloadJob;
    protected DownloadTaskProxy mDownloadTaskProxy;
    protected JobExecutor mDownloadX86JobExecutor;
    protected float mDpadMouseMoveStep;
    protected boolean mEnableVirtualKeyboardView;
    protected boolean mEntryQueue;
    protected String mEventContent;
    protected ExitQueueInBGTimer mExitQueueInBGTimer;
    protected IntentExtraData mExtraData;
    protected String mExtraId;
    protected int mFPSPeriod;
    protected FileDownloadUtil mFileDownloadUtil;
    protected FileUploadBean mFileUploadBean;
    public Boolean mFinishByServer;
    protected FrameDataProxy mFrameDataProxy;
    private Float mFunctionSensitivityReportFlag;
    protected String mGSUrl;
    public GSSDK.GameCursor mGameCursor;
    public GamePlatformType mGamePlatformType;
    protected GetCloudImeTransaction mGetCloudImeTransaction;
    protected String mGid;
    public GlobalConfig mGlobalConfig;
    protected GyroscopeActivateMode mGyroscopeActivateMode;
    protected GyroscopeHelper mGyroscopeHelper;
    public HMInput mHMInput;
    private final HMInputCallback mHMInputCallback;
    public HMInputConfig mHMInputConfig;
    public HMInputSenderFactory mHMInputFactory;
    public IHMInputSender mHMInputSender;
    protected long mHPlayTime;
    protected Handler mHandler;
    private HangUpBatchUploadCountDown mHangUpBatchUpCountDown;
    private HangUpDownCountDown mHangUpDownCountDown;
    private HangUpUpCountDown mHangUpUpCountDown;
    protected boolean mHasDealChannel;
    public boolean mHasOperatePermission;
    protected HashMap<Integer, FPoint> mHistoryPoints;
    protected HmFrameCallback mHmFrameCallback;
    protected HmScreenMonitor mHmScreenMonitor;
    private HmSensorManager mHmSensorManager;
    public HmStreamerIPCallback mHmStreamerIPCallback;
    private HmVibratorManager mHmVibratorManager;
    protected Handler mHmcpHandler;
    protected HmcpManager mHmcpManager;
    protected IMEConfig mIMEConfig;
    protected boolean mInQueued;
    protected boolean mInitVirtualKeyboardViewConfig;
    private long mInputStartTime;
    protected String mInstanceAccessUrl;
    protected int mInstanceReconnectCount;
    protected int mInstanceWsReconnectCount;
    protected float mInternetSpeed;
    protected long mIntervalMillis;
    public IntroImageInfo mIntroImageInfo;
    protected boolean mIsAhead;
    protected boolean mIsAllowCompatibleIPV6;
    protected boolean mIsCustomPlayer;
    public boolean mIsFirstGetCloudService;
    protected boolean mIsGamepadToMouse;
    protected boolean mIsGyroscopeEnable;
    private boolean mIsNotifyConnected;
    protected boolean mIsNotifyConnectedWaitOP5;
    private boolean mIsNotifyDisConnected;
    private boolean mIsPCMouseMode;
    private Boolean mIsPCMouseModeWithClient;
    public boolean mIsUserConfig;
    public int mJoyStickL2Value;
    public int mJoyStickR2Value;
    public int mJoyStickValue;
    protected Integer mKeepAliveTimeSec;
    public String mKeyboardConfigJsonApp;
    protected Bitmap mLastCapture;
    protected int mLastOperateDeviceId;
    private long mLastOperationTimestamp;
    protected HashMap<Integer, FPoint> mLastPoints;
    private String mLastStatus;
    public HmcpPlayerListener mListener;
    protected ELivingCapabilityStatus mLivingCapabilityStatus;
    public boolean mLodingShow;
    public JoyStickBean mMappingJoyBean;
    protected IMediaPlayer mMediaPlayer;
    protected IMessage mMessageManager;
    private MessageType mMessageType;
    public HashMap<String, String> mMetaInfos;
    public boolean mNeedToSwitchRtmp;
    protected int mNoInputLimitTime;
    protected OnContronListener mOnContronListener;
    protected OnLivingListener mOnLivingListener;
    protected OnStreamTypeChangeListener mOnStreamTypeChangeListener;
    protected Boolean mOpenMultiArchive;
    public IOperationDelayCallback mOperationDelayCallback;
    protected ScreenOrientation mOrientation;
    protected ScreenOrientation mOrientationOrigin;
    public String mPackageName;
    protected String mPayStr;
    protected HashMap<String, HmPermissionCallback> mPermissionCBs;
    protected ArrayBlockingQueue<String> mPermissionQueue;
    protected long mPlayerBitRate;
    protected long mPlayerFPS;
    public int mPlayerState;
    protected PluginContext mPluginContext;
    protected int mPriority;
    protected String mProtoData;
    protected ReconnectAccess mReconnectAccess;
    protected RecordCmdResult mRecordResult;
    protected int mRefreshStokenCount;
    protected RefreshStokenTask mRefreshStokenTask;
    public IRenderViewBase mRenderView;
    private ReportSysNotifyStatus mReportSysNotifyStatus;
    protected Runnable mRequestAliveTimer;
    private RequestImageListCountDown mRequestImageListTimer;
    protected OnRequestAliveListener mRequestKeepAliveListener;
    protected HmcpRequest mRequestManager;
    protected String mResfreshStokenReasons;
    public List<ResolutionInfo> mResolutionList;
    private ResolutionInfo mResolutionNow;
    private long mResolutionSwitchStartTime;
    protected String mSaveArchiveBidMultiArchive;
    protected Boolean mSaveArchiveMultiArchive;
    protected String mSaveArchiveUidMultiArchive;
    private int mSceneMethod;
    private Activity mScreenActivity;
    protected HmScreenMonitorConfig mScreenMonitorConfig;
    protected Bitmap mScreenShotBitmap;
    protected ScreenShotManager.ScreenShotConfig mScreenShotConfig;
    protected ScreenShotManager mScreenShotManager;
    protected int mSeiDataReportInterval;
    protected int mSeiDataSwitch;
    protected ISeiListener mSeiListener;
    protected HmDataReportToSaasSdk mSeiReportMgr;
    public int mSelfResolutionId;
    private Float mSensitivityReportFlag;
    public ResolutionInfo mSetResolution;
    protected int mShowHeight;
    protected int mShowWidth;
    protected float mSpeed;
    protected Runnable mStopAliveTimer;
    protected String mStreamType;
    protected int mStreamingMode;
    protected StreamingMonitor mStreamingMonitor;
    public boolean mSwitchAuto;
    protected SwitchIMECallback mSwitchIMECallback;
    protected int mTargetState;
    protected TimeOutTask mTimeOutTask;
    public List<TipsInfo> mTipsInfo;
    private float mTmpUnknownToolTypeDownLocationY;
    protected String mToken;
    public TouchMode mTouchMode;
    protected int mTouchUpPolicy;
    public TouchUtil mTouchUtil;
    protected TransferHelper mTransferHelper;
    protected int mTransferReconnectCount;
    protected SerializableMap mTransmissionDataToSaas;
    protected String mUid;
    protected CloudFileJob mUploadJob;
    protected JobExecutor mUploadX86JobExecutor;
    protected boolean mUserConfigVirtualKeyboardView;
    protected String mUserDeviceInfo;
    protected UserInfo mUserInfo;
    protected String mVInputUrl;
    protected IVideoDelayCallback mVideoDelayCallback;
    private int mViewFrameRate;
    protected int mViewResolutionHeight;
    protected int mViewResolutionWidth;
    public HmVirtualTextureView mVirtualDeviceLayout;
    public VirtualKeyboardSurfaceView mVirtualKeyboardSurfaceView;
    public boolean mVirtualKeyboardVisible;
    private WaitOperationFive mWaitOperationFive;
    private WaitOperationStreamingConfirm mWaitOperationStreamingConfirm;
    private WaitOperationStreamingTimeOut mWaitOperationStreamingTimeOut;
    protected PowerManager.WakeLock mWakeLock;
    protected IWebSocket mWebSocketManager;
    protected IWsMessage mWsMessageManager;
    protected int mWsReconnectCount;
    private MouseMotionEventDispatcher mouseMotionEventDispatcher;
    private boolean nativeDpadGame;
    private BroadcastReceiver networkReceiver;
    public JSONObject object;
    public final float overLaySizeTimes;
    Paint paint;
    Point point;
    protected ClipboardManager.OnPrimaryClipChangedListener primaryClipChangedListener;
    protected String promptMsg;
    public ResolutionInfo resolutionInfo;
    protected long scene;
    protected ScreenOrientation screen;
    protected ImageView screenCover;
    public int screenHeight;
    public String screenResolution;
    protected CountDownLatch screenShotCompletionLatch;
    protected ImageView screenShotCover;
    protected String screenUrl;
    public int screenWidth;
    protected boolean sendStopIMEOneShot;
    protected WebSocketManager.SimpleInstanceConnectionHandler simpleInstanceWsServerConnectionHandler;
    protected long startPlayTime;
    protected int streamHeight;
    protected IStreamModel streamModel;
    protected float streamScale;
    protected int streamWidth;
    protected SurfaceTexture surfaceTexture;
    private SwitchIMEAckTimer switchIMEAckTimer;
    protected SwitchStreamTypeData switchStreamTypeData;
    private TokenTimeStampModel tokenTimeStampModel;
    public boolean turnOffVideo;
    private TvBattleModel tvBattleMode;
    private TvModel tvModel;
    protected HmcpUIListener uiListener;
    private long updateTimeMs;
    protected boolean userConfigEnableShareStream;
    protected boolean userConfigNativeDpadGame;
    protected int verticalBackground;
    protected VibratorModel vibratorModel;
    protected volatile VideoViewDelayReportManager videoViewDelayReportManager;
    private BroadcastReceiver volumeChangeReceiver;
    protected int waitingUsersNum;
    private long webSocketUrlTimeStamp;
    protected OnSendWsMessageListener wsMessageListener;
    private X86TouchConfig x86TouchConfig;

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$13, reason: invalid class name */
    class AnonymousClass13 implements GyroscopeHelper.AngleListener {
        AnonymousClass13() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAngleChanged$0(float f10, float f11) {
            GyroscopeHelper gyroscopeHelper;
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.mGyroscopeActivateMode == GyroscopeActivateMode.NO_CURSOR && (absIjkVideoView.mCursorShowOrHide || absIjkVideoView.isGamePadToMouse())) {
                LogUtils.d(AbsIjkVideoView.TAG, "gyroscopeActivateMode is no_cursor & mCursorShowOrHide is true");
                return;
            }
            AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
            Point pointConvertAngleToScreenCoords = GyroscopeHelper.convertAngleToScreenCoords(f10, f11, absIjkVideoView2.screenWidth, absIjkVideoView2.screenHeight);
            AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
            TouchUtil touchUtil = absIjkVideoView3.mTouchUtil;
            if (touchUtil == null || pointConvertAngleToScreenCoords == null || (gyroscopeHelper = absIjkVideoView3.mGyroscopeHelper) == null) {
                return;
            }
            touchUtil.sendMouseMoveGyroscope(pointConvertAngleToScreenCoords.x, pointConvertAngleToScreenCoords.y, gyroscopeHelper.isXAxisReverse(), AbsIjkVideoView.this.mGyroscopeHelper.isYAxisReverse());
        }

        @Override // com.haima.hmcp.business.GyroscopeHelper.AngleListener
        public void onAngleChanged(final float f10, final float f11, float f12) {
            LogUtils.d(AbsIjkVideoView.TAG, "=sensorSend=onAngleChanged: xDegrees=" + f10 + " yDegrees=" + f11 + " zDegrees=" + f12);
            AbsIjkVideoView.this.mHmcpHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34150b.lambda$onAngleChanged$0(f10, f11);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$2, reason: invalid class name */
    class AnonymousClass2 implements DownloadLifeCycleCallback {
        final /* synthetic */ DownloadCallback val$callback;

        AnonymousClass2(DownloadCallback downloadCallback) {
            this.val$callback = downloadCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancel$2() {
            AbsIjkVideoView.this.downloadOnlyReplay();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFail$3() {
            AbsIjkVideoView.this.downloadOnlyReplay();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinish$1() {
            AbsIjkVideoView.this.downloadOnlyReplay();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStart$0() {
            AbsIjkVideoView.this.pauseGame();
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onCancel(DownloadMode downloadMode) {
            if (AbsIjkVideoView.this.queryScene(2L)) {
                LogUtils.d(AbsIjkVideoView.TAG, "download-file: nothing to do when download cancel in control lost case");
                return;
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.curConnectState > 3 || !(downloadMode == null || downloadMode == DownloadMode.NORMAL)) {
                if (absIjkVideoView.isBackground) {
                    LogUtils.d(AbsIjkVideoView.TAG, "download-file: in background when replay");
                    return;
                }
                LogUtils.d(AbsIjkVideoView.TAG, "download-file: curConnectState = " + AbsIjkVideoView.this.curConnectState + " when replay");
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.curConnectState = 0;
                Handler handler = absIjkVideoView2.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.u
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34154b.lambda$onCancel$2();
                        }
                    });
                } else {
                    absIjkVideoView2.downloadOnlyReplay();
                }
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onDownload(CloudFile cloudFile) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_FILE, "file=" + cloudFile);
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onDownloadFail(CloudFile cloudFile, int i10, String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOADED_FILE_FAIL, "file: " + cloudFile + "; errorCode: " + i10 + "; message: " + str);
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloadFail(cloudFile, i10, str);
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onDownloaded(CloudFile cloudFile) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOADED_FILE);
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownload(cloudFile);
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onDownloading() {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "download task is running");
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloading();
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onFail(DownloadMode downloadMode, int i10, String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_FAIL, "errorCode: " + i10 + "; message: " + str + "; curConnectState: " + AbsIjkVideoView.this.curConnectState);
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloadFail(i10, str);
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.curConnectState > 3 || !(downloadMode == null || downloadMode == DownloadMode.NORMAL)) {
                if (absIjkVideoView.isBackground) {
                    LogUtils.d(AbsIjkVideoView.TAG, "download-file: in background when replay");
                    return;
                }
                LogUtils.d(AbsIjkVideoView.TAG, "download-file: curConnectState = " + AbsIjkVideoView.this.curConnectState + " when replay");
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.curConnectState = 0;
                Handler handler = absIjkVideoView2.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.w
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34156b.lambda$onFail$3();
                        }
                    });
                } else {
                    absIjkVideoView2.downloadOnlyReplay();
                }
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onFinish(DownloadMode downloadMode) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_FINISH, "mode: " + downloadMode + ", curConnectState: " + AbsIjkVideoView.this.curConnectState);
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloadFinish();
            }
            if (AbsIjkVideoView.this.queryScene(2L)) {
                LogUtils.d(AbsIjkVideoView.TAG, "download-file: nothing to do when download finish in control lost case");
                return;
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.curConnectState > 3 || !(downloadMode == null || downloadMode == DownloadMode.NORMAL)) {
                if (absIjkVideoView.isBackground) {
                    LogUtils.d(AbsIjkVideoView.TAG, "download-file: in background when replay");
                    return;
                }
                LogUtils.d(AbsIjkVideoView.TAG, "download-file: curConnectState = " + AbsIjkVideoView.this.curConnectState + " when replay");
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.curConnectState = 0;
                absIjkVideoView2.mPlayerState = 0;
                Handler handler = absIjkVideoView2.mHandler;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34155b.lambda$onFinish$1();
                        }
                    });
                } else {
                    absIjkVideoView2.downloadOnlyReplay();
                }
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onPermissionNotGranted(String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "write external storage not granted");
            LogUtils.d(AbsIjkVideoView.TAG, "need permission: Manifest.permission.WRITE_EXTERNAL_STORAGE");
            HmcpPlayerListener hmcpPlayerListener = AbsIjkVideoView.this.mListener;
            if (hmcpPlayerListener != null) {
                hmcpPlayerListener.onPermissionNotGranted(com.kuaishou.weapon.p0.g.f74786j);
            }
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloadFail(1006, "Write external storage not granted");
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onProgress(CloudFile cloudFile, long j10, long j11) {
            DownloadCallback downloadCallback = this.val$callback;
            if (downloadCallback != null) {
                downloadCallback.onDownloadProgress(cloudFile, j10, j11);
            }
        }

        @Override // com.haima.hmcp.cloud.video.DownloadLifeCycleCallback
        public void onStart(DownloadMode downloadMode) {
            LogUtils.d(AbsIjkVideoView.TAG, "download-file: download task mode: " + downloadMode + ", mPlayerState=" + AbsIjkVideoView.this.mPlayerState);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_START);
            if (downloadMode == DownloadMode.DOWNLOAD_ONLY) {
                AbsIjkVideoView.this.post(new Runnable() { // from class: com.haima.hmcp.widgets.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f34153b.lambda$onStart$0();
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$25, reason: invalid class name */
    class AnonymousClass25 implements HmcpVideoPlayerListener {
        AnonymousClass25() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFirstFrameArrival$0() {
            AbsIjkVideoView.this.initX86();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFirstFrameArrival$1() {
            AbsIjkVideoView.this.initArm();
        }

        @Override // com.haima.hmcp.listeners.HmcpVideoPlayerListener
        public void onError(int i10, int i11) {
            if (i10 == -2) {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType != GamePlatformType.X86) {
                    absIjkVideoView.switchStreamType(StreamType.RTMP, 2, null);
                    return;
                }
            }
            LogUtils.i(AbsIjkVideoView.TAG, "=====play======onError=====");
            AbsIjkVideoView.this.resetState();
            AbsIjkVideoView.this.streamModel.onPLayerError();
        }

        @Override // com.haima.hmcp.listeners.HmcpVideoPlayerListener
        public void onFirstFrameArrival() {
            LogUtils.d(AbsIjkVideoView.TAG, "=OperationStream==HmcpRtcVideoView onFirstFrameArrival");
            AbsIjkVideoView.this.resetLockStatusFlag();
            AbsIjkVideoView.this.sendProtoMsg();
            AbsIjkVideoView.this.onInnerFirstFrameArrival();
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            absIjkVideoView.isChangeStreamType = false;
            absIjkVideoView.mHmcpHandler.sendEmptyMessage(10);
            AbsIjkVideoView.this.cleanTimerNoAccess();
            PingManager.getInstance().start();
            AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
            absIjkVideoView2.mPlayerState = 3;
            if (absIjkVideoView2.currentApkType == 1) {
                absIjkVideoView2.isFirstFrameArrived = true;
            }
            absIjkVideoView2.mResfreshStokenReasons = "";
            if (absIjkVideoView2.streamModel.isSupportFirstFrameOptimization()) {
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                if (absIjkVideoView3.isReconnectStream || absIjkVideoView3.currentApkType == 2) {
                    LogUtils.d(AbsIjkVideoView.TAG, "=OperationStream==turn on Video and Sound");
                    AbsIjkVideoView.this.mHmcpHandler.sendEmptyMessage(11);
                }
            }
            HMInput hMInput = AbsIjkVideoView.this.mHMInput;
            if (hMInput != null) {
                hMInput.sendPing2();
            }
            AbsIjkVideoView.this.sendScreenBrightness();
            AbsIjkVideoView.this.mHmcpHandler.sendEmptyMessage(7);
            AbsIjkVideoView.this.streamModel.onFirstFrameArrival();
            AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
            if (absIjkVideoView4.mGamePlatformType == GamePlatformType.X86) {
                absIjkVideoView4.mHmcpHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f34157b.lambda$onFirstFrameArrival$0();
                    }
                });
            } else {
                absIjkVideoView4.mHmcpHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f34158b.lambda$onFirstFrameArrival$1();
                    }
                });
            }
            AbsIjkVideoView.this.mHmcpHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.25.1
                @Override // java.lang.Runnable
                public void run() {
                    AbsIjkVideoView.this.handleClipboard();
                }
            }, 500L);
            HmNetworkBitmapLoader.getInstance().startCacheCleanup(AbsIjkVideoView.this.mAppContext);
        }

        @Override // com.haima.hmcp.listeners.HmcpVideoPlayerListener
        public void onPlayerRelease() {
            AbsIjkVideoView.this.stopReportClockDiffLatency();
        }

        @Override // com.haima.hmcp.listeners.HmcpVideoPlayerListener
        public void onPlayerStop() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            absIjkVideoView.UiMessageSend(absIjkVideoView.getCallbackData(3, ""));
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$31, reason: invalid class name */
    class AnonymousClass31 implements OnGetSwitchStreamTypeResultListener {
        final /* synthetic */ OnSwitchStreamTypeListener val$onSwitchStreamTypeListener;
        final /* synthetic */ StreamType val$streamType;
        final /* synthetic */ int val$switchCode;

        AnonymousClass31(StreamType streamType, int i10, OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
            this.val$streamType = streamType;
            this.val$switchCode = i10;
            this.val$onSwitchStreamTypeListener = onSwitchStreamTypeListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getSwitchStreamTypeResult$0(SwitchStreamTypeData switchStreamTypeData, DownloadTransferData downloadTransferData) {
            switchStreamTypeData.downloadTransferData = downloadTransferData;
            AbsIjkVideoView.this.mOnStreamTypeChangeListener.onChange(switchStreamTypeData);
        }

        @Override // com.haima.hmcp.listeners.OnGetSwitchStreamTypeResultListener
        public void getSwitchStreamTypeResult(GetSwitchStreamTypeResult getSwitchStreamTypeResult) {
            int iApkTypeString2Int = Utils.apkTypeString2Int(getSwitchStreamTypeResult.apkType);
            if (AbsIjkVideoView.this.mOnStreamTypeChangeListener != null) {
                final SwitchStreamTypeData switchStreamTypeData = new SwitchStreamTypeData();
                switchStreamTypeData.mCloudId = CountlyUtil.mCloudID;
                switchStreamTypeData.streamType = this.val$streamType;
                switchStreamTypeData.apkType = iApkTypeString2Int;
                PlayStreamPayloadData playStreamPayloadData = getSwitchStreamTypeResult.addressInfo;
                switchStreamTypeData.playData = playStreamPayloadData;
                switchStreamTypeData.resolutionId = playStreamPayloadData.resolution;
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                switchStreamTypeData.gamePlatformType = absIjkVideoView.mGamePlatformType;
                switchStreamTypeData.switchCode = this.val$switchCode;
                switchStreamTypeData.extParam = absIjkVideoView.getExtParam();
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                switchStreamTypeData.clientImeType = absIjkVideoView2.mClientImeType;
                switchStreamTypeData.mOnSwitchStreamTypeListener = this.val$onSwitchStreamTypeListener;
                absIjkVideoView2.isChangeStreamType = true;
                switchStreamTypeData.enableHighBitrate = absIjkVideoView2.enableHighBitrate;
                DownloadTaskProxy downloadTaskProxy = absIjkVideoView2.mDownloadTaskProxy;
                if (downloadTaskProxy != null) {
                    downloadTaskProxy.getTransferData(new TransferDataCallback() { // from class: com.haima.hmcp.widgets.z
                        @Override // com.haima.hmcp.cloud.video.listener.TransferDataCallback
                        public final void onData(DownloadTransferData downloadTransferData) {
                            this.f34159a.lambda$getSwitchStreamTypeResult$0(switchStreamTypeData, downloadTransferData);
                        }
                    });
                } else {
                    absIjkVideoView2.mOnStreamTypeChangeListener.onChange(switchStreamTypeData);
                }
                AbsIjkVideoView.this.isChangeStreamType = false;
            }
            PlayStreamPayloadData playStreamPayloadData2 = getSwitchStreamTypeResult.addressInfo;
            if (playStreamPayloadData2 != null) {
                AbsIjkVideoView.this.callbackSdkDisplayInfo(playStreamPayloadData2);
            }
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$51, reason: invalid class name */
    class AnonymousClass51 implements CacheUtil.Listener {
        AnonymousClass51() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCacheRemove$0(VirtualGamePadCacheBean virtualGamePadCacheBean, String str) {
            virtualGamePadCacheBean.getListener().result(false, str);
        }

        @Override // com.haima.hmcp.utils.CacheUtil.Listener
        public void onCacheRemove(String str, Object obj, CacheUtil.Listener.Status status) {
            LogUtils.d(AbsIjkVideoView.TAG, "mCacheListener onCacheRemove key:" + str + ",obj:" + obj);
            if (obj != null && CacheUtil.Listener.Status.EXPIRED == status && (obj instanceof VirtualGamePadCacheBean)) {
                final VirtualGamePadCacheBean virtualGamePadCacheBean = (VirtualGamePadCacheBean) obj;
                if (virtualGamePadCacheBean.getMessage() == null || virtualGamePadCacheBean.getListener() == null || !Utils.checkIsVirtualGamePadPullPayMessage(virtualGamePadCacheBean.getMessage().payload)) {
                    return;
                }
                String[] strArrSplit = str.split(":");
                final String str2 = strArrSplit.length >= 3 ? strArrSplit[2] : "";
                AbsIjkVideoView.this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbsIjkVideoView.AnonymousClass51.lambda$onCacheRemove$0(virtualGamePadCacheBean, str2);
                    }
                });
                CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_PULL_UP_PAY_FAILED, JsonUtil.toJsonString(new ReportVirtualGamePadPayPullResult(str2, "wait virtual game_pad return timeout")));
            }
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.AbsIjkVideoView$54, reason: invalid class name */
    static /* synthetic */ class AnonymousClass54 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$device$input$enums$KeyType;
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$enums$WsMessageType;
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType;
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType;

        static {
            int[] iArr = new int[VirtualOperateType.values().length];
            $SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType = iArr;
            try {
                iArr[VirtualOperateType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType[VirtualOperateType.VIRTUAL_STICK_XBOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType[VirtualOperateType.VIRTUAL_KEYBOARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[GSSDK.GSNotification.GSNotifType.values().length];
            $SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType = iArr2;
            try {
                iArr2[GSSDK.GSNotification.GSNotifType.GAME_QUIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType[GSSDK.GSNotification.GSNotifType.GET_CONTROL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType[GSSDK.GSNotification.GSNotifType.LOST_CONTROL.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[KeyType.values().length];
            $SwitchMap$com$haima$hmcp$device$input$enums$KeyType = iArr3;
            try {
                iArr3[KeyType.KEY_BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr4 = new int[WsMessageType.values().length];
            $SwitchMap$com$haima$hmcp$enums$WsMessageType = iArr4;
            try {
                iArr4[WsMessageType.INTENT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$haima$hmcp$enums$WsMessageType[WsMessageType.GPS_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$haima$hmcp$enums$WsMessageType[WsMessageType.CLIPBOARD_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$haima$hmcp$enums$WsMessageType[WsMessageType.UPDATE_VIEW_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$haima$hmcp$enums$WsMessageType[WsMessageType.CAP_SCREEN_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$haima$hmcp$enums$WsMessageType[WsMessageType.MISC_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    class ExitQueueInBGTimer extends CountDownTimer {
        public ExitQueueInBGTimer(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            absIjkVideoView.mPlayerState = 5;
            absIjkVideoView.mEntryQueue = false;
            CountlyUtil.recordEvent(Constants.COUNTLY_EXIT_QUEUE_IN_BG_TIMER_COMPLETE);
            String cid = AbsIjkVideoView.this.getCid();
            boolean zIsEmpty = TextUtils.isEmpty(cid);
            String str = Constants.ERRORCODE_OTHER_080;
            if (!zIsEmpty) {
                str = Constants.ERRORCODE_OTHER_080 + "-" + cid;
            }
            AbsIjkVideoView.this.removeScene(1L);
            AbsIjkVideoView.this.showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, str, "queue timeout in bg");
            AbsIjkVideoView.this.mExitQueueInBGTimer = null;
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class HangUpBatchUploadCountDown extends CountDownTimerWrapper<String> {
        HangUpBatchUploadCountDown() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
        public void onTimeOut(String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "batch upload hang up time out");
            LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: batch upload task hang up is time out");
            CloudFileManager cloudFileManager = AbsIjkVideoView.this.mCloudFileManager;
            if (cloudFileManager != null) {
                cloudFileManager.clearHandUpBatchContent(CloudOperation.BATCH_UPLOAD);
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: clean hang up content");
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            CloudOperationListener cloudOperationListener = absIjkVideoView.mCloudOperationListener;
            if (cloudOperationListener != null) {
                cloudOperationListener.onStop(CloudOperation.BATCH_UPLOAD, absIjkVideoView.getMessage("batch upload task is time out"));
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: callback app to stop task");
            }
        }
    }

    class HangUpDownCountDown extends CountDownTimerWrapper<String> {
        HangUpDownCountDown() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
        public void onTimeOut(String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "hang up time out");
            LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: download task hang up is time out");
            CloudFileManager cloudFileManager = AbsIjkVideoView.this.mCloudFileManager;
            if (cloudFileManager != null) {
                cloudFileManager.getHandUpContent(CloudOperation.DOWNLOAD);
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: clean hang up content");
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            CloudOperationListener cloudOperationListener = absIjkVideoView.mCloudOperationListener;
            if (cloudOperationListener != null) {
                cloudOperationListener.onStop(CloudOperation.DOWNLOAD, absIjkVideoView.getMessage("download task is time out"));
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: callback app to stop task");
            }
        }
    }

    class HangUpUpCountDown extends CountDownTimerWrapper<String> {
        HangUpUpCountDown() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
        public void onTimeOut(String str) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "hang up time out");
            LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: upload task hang up is time out");
            CloudFileManager cloudFileManager = AbsIjkVideoView.this.mCloudFileManager;
            if (cloudFileManager != null) {
                cloudFileManager.getHandUpContent(CloudOperation.UPLOAD);
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: clean hang up content");
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            CloudOperationListener cloudOperationListener = absIjkVideoView.mCloudOperationListener;
            if (cloudOperationListener != null) {
                cloudOperationListener.onStop(CloudOperation.UPLOAD, absIjkVideoView.getMessage("upload task is time out"));
                LogUtils.d(AbsIjkVideoView.TAG, "cloud-file: callback app to stop task");
            }
        }
    }

    private class HmNetworkBroadcastReceiver extends BroadcastReceiver {
        private HmNetworkBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FileDownloadUtil fileDownloadUtil;
            LogUtils.d(AbsIjkVideoView.TAG, "==networkReceiver-----");
            if (TextUtils.isEmpty(AbsIjkVideoView.this.mAppName) && TextUtils.isEmpty(AbsIjkVideoView.this.mGid)) {
                LogUtils.d(AbsIjkVideoView.TAG, "==networkReceiver appName && mGid isEmpty -----");
                return;
            }
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.isBackground) {
                absIjkVideoView.getCurrentNetType();
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (!absIjkVideoView2.isNetworkOk) {
                    absIjkVideoView2.pauseDownloadTask();
                    return;
                }
                HmcpRequest hmcpRequest = absIjkVideoView2.mRequestManager;
                if (hmcpRequest == null || hmcpRequest.isStopPlay || absIjkVideoView2.mPlayerState != 4) {
                    return;
                }
                absIjkVideoView2.mPlayerState = 0;
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) AbsIjkVideoView.this.getContext().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("==networkReceiver currentNetType = ");
                boolean z10 = true;
                sb2.append(AbsIjkVideoView.this.currentNetType == 1 ? NetworkUtil.NETWORK_TYPE_WIFI : "mobile");
                LogUtils.e(AbsIjkVideoView.TAG, sb2.toString());
                if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                    AbsIjkVideoView.this.isNetworkOk = false;
                    LogUtils.e(AbsIjkVideoView.TAG, "==networkReceiver=>TYPE_WIFI==not ok and isNetworkOk:" + AbsIjkVideoView.this.isNetworkOk);
                    AbsIjkVideoView.this.pauseDownloadTask();
                    AbsIjkVideoView.this.notifyNetworkChanged();
                    FileDownloadUtil fileDownloadUtil2 = AbsIjkVideoView.this.mFileDownloadUtil;
                    if (fileDownloadUtil2 != null) {
                        fileDownloadUtil2.stopSpeedTest();
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("status", ConstantsInternal.STOP);
                            jSONObject.put("stopByApp", "0");
                            jSONObject.put("msg", "no network");
                        } catch (JSONException e10) {
                            e10.printStackTrace();
                        }
                        CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject.toString());
                    }
                    SendSceneState.networkCuts(AbsIjkVideoView.this.mListener, NetWorkState.NO_NETWORK);
                    return;
                }
                int type = activeNetworkInfo.getType();
                LogUtils.e(AbsIjkVideoView.TAG, "networkReceiver=>TYPE_WIFI== ok ===>" + type);
                if (type == 1 && AbsIjkVideoView.this.currentNetType == 0) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==networkReceiver networkReceiver=>mobile to wifif and isNetworkOk is " + AbsIjkVideoView.this.isNetworkOk);
                    AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                    absIjkVideoView3.UiMessageSend(absIjkVideoView3.getCallbackData(4, ""));
                    CountlyUtil.recordEvent(Constants.COUNTYLY_NETWORK_MOBILE_TO_WIFI);
                    SendSceneState.networkCuts(AbsIjkVideoView.this.mListener, NetWorkState.ISWIFI);
                } else if (type == 0 && AbsIjkVideoView.this.currentNetType == 1) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==networkReceiver=>wifi to mobile and isNetworkOk is " + AbsIjkVideoView.this.isNetworkOk);
                    AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                    absIjkVideoView4.UiMessageSend(absIjkVideoView4.getCallbackData(5, absIjkVideoView4.getMetaInfoByKey(Constants.TIPS_CHANGE_WIFI_TO_4G)));
                    CountlyUtil.recordEvent(Constants.COUNTYLY_NETWORK_WIFI_TO_MOBILE);
                    SendSceneState.networkCuts(AbsIjkVideoView.this.mListener, NetWorkState.NOTWIFI);
                }
                if (AbsIjkVideoView.this.isNetworkOk) {
                    z10 = false;
                } else {
                    LogUtils.e(AbsIjkVideoView.TAG, "==networkReceiver=>set replay is true");
                }
                if (z10) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==networkReceiver=>to replay");
                    AbsIjkVideoView.this.mHmcpHandler.sendEmptyMessage(0);
                }
                AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                if (absIjkVideoView5.currentNetType != type && (fileDownloadUtil = absIjkVideoView5.mFileDownloadUtil) != null) {
                    fileDownloadUtil.stopSpeedTest();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("status", ConstantsInternal.STOP);
                        jSONObject2.put("stopByApp", "0");
                        jSONObject2.put("msg", "network change");
                    } catch (JSONException e11) {
                        e11.printStackTrace();
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject2.toString());
                }
                AbsIjkVideoView absIjkVideoView6 = AbsIjkVideoView.this;
                absIjkVideoView6.currentNetType = type;
                ConfigUtil.updateNetInfo(absIjkVideoView6.getContext());
            }
        }
    }

    protected class ReconnectAccess extends CountDownTimer {
        public ReconnectAccess(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView.this.beginReconnect();
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    protected class RefreshStokenTask extends CountDownTimer {
        public RefreshStokenTask(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            LogUtils.i(AbsIjkVideoView.TAG, "===RefreshStokenTask implements Runnable====");
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.mPlayerState == 5 || absIjkVideoView.curConnectState == 5) {
                LogUtils.e(AbsIjkVideoView.TAG, "===game over no refresh ====");
                return;
            }
            if (absIjkVideoView.isWaitStreamUrlPre()) {
                LogUtils.d(AbsIjkVideoView.TAG, "refreshStoken cancel because pooled restart receive op4.5 but not receive op5");
                CountlyUtil.recordEvent("12200", "refreshStoken cancel because pooled restart receive op4.5 but not receive op5");
                return;
            }
            AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
            if (absIjkVideoView2.mRequestManager != null) {
                absIjkVideoView2.disconnectSocketIo(true, true, true);
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                absIjkVideoView3.UiMessageSend(absIjkVideoView3.getCallbackData(8, ""));
                AbsIjkVideoView.this.mRequestManager.getCloudService(0, 1, false);
            }
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class RequestImageListCountDown extends CountDownTimerWrapper<String> {
        RequestImageListCountDown() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
        public void onTimeOut(String str) {
            AbsIjkVideoView.this.isRequestImageListTimeout = true;
            CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_IMAGE_LIST_RESPONSE, "request image list time out");
            LogUtils.e(AbsIjkVideoView.TAG, BaseCloudFileManager.FILTER_TAG + "request image list time out");
            OnCloudImageListListener onCloudImageListListener = AbsIjkVideoView.this.mCloudImageListListener;
            if (onCloudImageListListener != null) {
                onCloudImageListListener.onError("request image list time out");
            }
        }
    }

    private class SwitchIMEAckTimer implements Runnable {
        private boolean cancel = false;
        private String ime;

        public SwitchIMEAckTimer(String str) {
            this.ime = str;
        }

        public void cancel() {
            this.cancel = true;
        }

        public String getIME() {
            return this.ime;
        }

        public boolean isCancel() {
            return this.cancel;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cancel) {
                return;
            }
            CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer("SwitchIMEAckTimer", "" + hashCode(), AbsIjkVideoView.this.mIMEConfig.getSwitchIMEAckTimeout() * 1000, false, ReportTimer.Action.EXECUTE)));
            AbsIjkVideoView.this.switchIMETimeout(this.ime);
        }
    }

    private class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int currentMediaVolumeInt;
            LogUtils.d(AbsIjkVideoView.TAG, "==volumeChangeReceiver-----");
            if (TextUtils.isEmpty(AbsIjkVideoView.this.mAppName) && TextUtils.isEmpty(AbsIjkVideoView.this.mGid)) {
                LogUtils.d(AbsIjkVideoView.TAG, "==volumeChangeReceiver appName && mGid isEmpty -----");
                return;
            }
            if (!AbsIjkVideoView.this.isBackground && VolumeUtils.VOLUME_CHANGED_ACTION.equals(intent.getAction()) && intent.getIntExtra(VolumeUtils.EXTRA_VOLUME_STREAM_TYPE, -1) == 3 && AbsIjkVideoView.this.currentVolume != (currentMediaVolumeInt = VolumeUtils.getCurrentMediaVolumeInt(context))) {
                AbsIjkVideoView.this.currentVolume = currentMediaVolumeInt;
                AbsIjkVideoView.this.mHmcpHandler.removeMessages(22);
                AbsIjkVideoView.this.mHmcpHandler.sendEmptyMessageDelayed(22, 2000L);
            }
        }
    }

    class WaitOperationFive extends CountDownTimer {
        public WaitOperationFive(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.mPlayerState == 5) {
                LogUtils.e(AbsIjkVideoView.TAG, "=OperationStream===game over no WaitOperationFive ====");
            } else {
                if (absIjkVideoView.isGetControl) {
                    return;
                }
                LogUtils.e(AbsIjkVideoView.TAG, "=OperationStream=WaitOperationFive time out, reapply 211");
                AbsIjkVideoView.this.rePreparation();
                AbsIjkVideoView.this.reCloudServiceRequestV2();
            }
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class WaitOperationStreamingConfirm extends CountDownTimer {
        public WaitOperationStreamingConfirm(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.mPlayerState == 5) {
                LogUtils.e(AbsIjkVideoView.TAG, "=OperationStream===game over no WaitOperationStreamingConfirm ====");
                return;
            }
            IStreamModel iStreamModel = absIjkVideoView.streamModel;
            if (iStreamModel != null) {
                iStreamModel.stopPlay(false, true);
            }
            AbsIjkVideoView.this.resetState();
            AbsIjkVideoView.this.sendSceneStopMessage((System.currentTimeMillis() - AbsIjkVideoView.this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_stream_ready_timeout));
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class WaitOperationStreamingTimeOut extends CountDownTimer {
        public WaitOperationStreamingTimeOut(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            if (absIjkVideoView.mPlayerState == 5) {
                LogUtils.e(AbsIjkVideoView.TAG, "=OperationStream===game over no WaitOperationStreamingConfirm ====");
                return;
            }
            IStreamModel iStreamModel = absIjkVideoView.streamModel;
            if (iStreamModel != null) {
                iStreamModel.stopPlay(false, true);
            }
            AbsIjkVideoView.this.resetState();
            SendSceneState.waitStreamingTimeout(AbsIjkVideoView.this.getContext(), AbsIjkVideoView.this.mListener);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    public AbsIjkVideoView(Context context) {
        super(context);
        this.fixedGamepadVendorId = "";
        this.CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
        this.CACHE_EVENT_KEYBOARD_DIRECTION = "keyboardDirection";
        this.MAX_AMPLITUDE = 255;
        this.MIN_AMPLITUDE = 1;
        this.DEFAULT_VIBRATOR_AMPLITUDE = 128;
        this.MAX_X86_AMPLITUDE = 65535;
        this.VIBRATOR_CONVERSION = 0.0038910506f;
        this.downEventMap = new ConcurrentHashMap<>();
        this.mKeyboardConfigJsonApp = "";
        this.mCurrentInputDevice = 0;
        this.QUIT_TYPE = "quitType";
        this.QUIT_TYPE_VALUE_TIME_LIMIT = 1;
        this.QUIT_TYPE_VALUE_PROCESS_KILLED = 2;
        this.QUIT_TYPE_VALUE_OWNER_EXIT = 3;
        this.SASS_SERVER_MAINTENANCE = false;
        this.mKeepAliveTimeSec = null;
        this.isShowTime = true;
        this.sendStopIMEOneShot = false;
        this.mCutOutsHeightPercent = new float[]{0.0f, 0.0f};
        this.verticalBackground = -1;
        this.mInternetSpeed = -1.0f;
        this.mSelfResolutionId = -1;
        this.mIsAllowCompatibleIPV6 = false;
        this.mIsCustomPlayer = false;
        this.languageFromApp = null;
        this.mStreamingMode = 0;
        this.isBackground = false;
        this.isNetworkOk = true;
        this.currentNetType = -1;
        this.closeStream = true;
        this.curConnectState = 0;
        this.curCloudServiceState = 0;
        this.isRecordOn = false;
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        this.mTransferReconnectCount = 0;
        this.mClockDiffUse = 0;
        this.mIntervalMillis = 1000L;
        this.mCursorWidth = 40;
        this.mCursorHeight = 40;
        this.isRequestImageListTimeout = false;
        this.mVirtualKeyboardVisible = false;
        this.mCameraConfig = new HMCameraConfig();
        this.mGlobalConfig = new GlobalConfig();
        this.mIMEConfig = new IMEConfig();
        this.mClientImeType = new ClientImeType();
        this.mSeiDataSwitch = 0;
        this.mSeiDataReportInterval = 1;
        this.currentSound = 1.0f;
        this.isAudioMute = false;
        this.checkAccessWhenSwitchResolution = false;
        this.isGetControl = false;
        this.enableHighBitrate = null;
        this.enableHighBitrateRequesting = false;
        this.jsonMap = new HashMap();
        this.webSocketUrlTimeStamp = -1L;
        this.isStartIM = false;
        this.mPermissionCBs = new HashMap<>();
        this.mPermissionQueue = new ArrayBlockingQueue<>(20, true);
        this.mTransferHelper = null;
        this.currentVolume = -1;
        this.mMessageType = MessageType.PAY_TYPE;
        this.mReportSysNotifyStatus = new ReportSysNotifyStatus();
        this.scene = 0L;
        this.isReconnectStream = false;
        this.isStartPlayCallBack = false;
        this.isCallbackFirstFrameArrived = false;
        this.mTouchUpPolicy = 1;
        this.isFirstFrameArrived = false;
        this.mSceneMethod = 0;
        this.screenWidth = 0;
        this.screenHeight = 0;
        this.currentApkType = 0;
        this.turnOffVideo = false;
        this.decodeType = 1;
        this.mSwitchAuto = false;
        this.isGameStart = false;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMediaPlayer = null;
        this.mAudioPlayer = null;
        this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNKNOWN;
        this.mGamePlatformType = GamePlatformType.ARM;
        this.mHasOperatePermission = true;
        this.overLaySizeTimes = 1.8f;
        this.mTouchMode = Constants.DEFAULT_TOUCH_MODE;
        this.mDefaultOperateType = null;
        this.isShowOrHideChanged = null;
        this.lastCursorShowHide = null;
        this.longPressTimers = new HashMap<>();
        this.mIsGamepadToMouse = false;
        this.mDpadMouseMoveStep = 0.21f;
        this.mIsGyroscopeEnable = false;
        this.isExchangeControl = false;
        this.isRelease = false;
        this.mIsPCMouseMode = false;
        this.mIsPCMouseModeWithClient = null;
        this.dataTrafficOwner = null;
        this.mDevicePixelRatio = null;
        this.hasWakeLockPermission = true;
        this.isExtraConfigRequestSuccess = new AtomicBoolean(false);
        this.isConfigSuccess = new AtomicBoolean(false);
        this.mouseMotionEventDispatcher = new MouseMotionEventDispatcher();
        this.tokenTimeStampModel = new TokenTimeStampModel();
        this.nativeDpadGame = false;
        this.enabelShareStream = false;
        this.isHandleInputEvent = true;
        this.keyLockStatusFlag = false;
        this.capsLockFlag = false;
        this.mAutoShowInput = true;
        this.isPlugged = false;
        this.firstDeviceVendorId = "";
        this.curOperateVendorId = "";
        this.mFinishByServer = null;
        this.mHMInputFactory = new HMInputSenderFactory();
        this.mHMInputConfig = new HMInputConfig();
        this.updateTimeMs = 0L;
        this.simpleInstanceWsServerConnectionHandler = new WebSocketManager.SimpleInstanceConnectionHandler() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onClockDiffChange(long j10, int i10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onConnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "isReconnect=" + z10);
                LogUtils.i(AbsIjkVideoView.TAG, "====connectWsServer onConnect Success====");
                CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_SUCCESS);
                AbsIjkVideoView.this.sendWsMessageRecord("START_RECORD");
                AbsIjkVideoView.this.requestIMEList();
                AbsIjkVideoView.this.initSensor();
                AbsIjkVideoView.this.sendScreenOrientation();
                AbsIjkVideoView.this.registerScreenMonitor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i10, String str, boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onDisconnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "reason=" + str + "showPrompt=" + z10);
                RecordHelper.getsInstance().stop(true);
                LogUtils.i(AbsIjkVideoView.TAG, "==== connectWsServer onDisconnect====");
                boolean zIsNeedRefreshStoken = AbsIjkVideoView.this.isNeedRefreshStoken(1);
                ReportBaseError reportBaseError = new ReportBaseError("" + i10, str + "," + (AbsIjkVideoView.this.mInstanceWsReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(AbsIjkVideoView.this.mInstanceWsReconnectCount)) : ""));
                if (!AbsIjkVideoView.this.isBackground) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    if (absIjkVideoView.isNetworkOk) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER, JsonUtil.toJsonString(new ReportInput(URLEncoder.encode(absIjkVideoView.mVInputUrl))));
                        AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                        if (!absIjkVideoView2.SASS_SERVER_MAINTENANCE && absIjkVideoView2.mPlayerState != 5 && absIjkVideoView2.mCurrentState != 5) {
                            if (zIsNeedRefreshStoken) {
                                absIjkVideoView2.resetState();
                                CountlyUtil.recordErrorEvent("screen disconnected and refresh stoken ,retry max time:" + Constants.WS_RETRY_MAX_TIMES);
                                AbsIjkVideoView.this.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.refreshStoken(0, "InstanceWsServer Socket connect lost", false);
                                LogUtils.d(AbsIjkVideoView.TAG, "refresh token");
                            } else {
                                absIjkVideoView2.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                                        absIjkVideoView3.mInstanceWsReconnectCount++;
                                        absIjkVideoView3.connectWsServer(absIjkVideoView3.screenUrl);
                                    }
                                }, 30L);
                            }
                        }
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER_NETWOED_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    }
                }
                AbsIjkVideoView.this.stopSensor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onFirstDiffClockSuccess(long j10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
                AbsIjkVideoView.this.notifyCapScreen(bArr);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onTextMessage(String str) {
                LogUtils.i(AbsIjkVideoView.TAG, "====onInputMessageWsServer7682=====" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_RECEIVE, StringUtils.encodeToBase64String(AbsIjkVideoView.this.getMessage("===receive WsMessage===" + str)));
                if (AbsIjkVideoView.this.handleWSMsg(str)) {
                    return;
                }
                AbsIjkVideoView.this.wsServerMessageDispatcher(str);
            }
        };
        this.hmKeyBoardListener = new HmIMEManager.HmKeyBoardListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.22
            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onError() {
                LogUtils.e(AbsIjkVideoView.TAG, "监听键盘状态失败");
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onKeyBoardFlowMode() {
                if (AbsIjkVideoView.this.mGamePlatformType == GamePlatformType.X86) {
                    return;
                }
                LogUtils.i(AbsIjkVideoView.TAG, "进入输入法软键盘悬浮模式");
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(0.0f));
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.sendKeyboardHeightPercent(absIjkVideoView.mEventContent);
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardHide() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "===onKeyBoardHide====");
                    InputEditDialog inputEditDialog = AbsIjkVideoView.this.localKeyBoardDialog;
                    if (inputEditDialog != null && inputEditDialog.isShowing()) {
                        AbsIjkVideoView.this.localKeyBoardDialog.dismiss();
                    }
                    return false;
                }
                absIjkVideoView.stopKeyboardListener();
                AbsIjkVideoView.this.sendToInstanceMsg("IME:StopIM");
                AbsIjkVideoView.this.callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_HIDE);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.mOrientation != absIjkVideoView2.mOrientationOrigin) {
                    LogUtils.i(AbsIjkVideoView.TAG, "隐藏键盘：切回原视频方向；" + AbsIjkVideoView.this.mOrientationOrigin + "当前方向：" + AbsIjkVideoView.this.mOrientation);
                    HmScreenMonitor hmScreenMonitor = AbsIjkVideoView.this.mHmScreenMonitor;
                    if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                        absIjkVideoView3.setScreenOrientationForKeyboard(absIjkVideoView3.mOrientationOrigin, absIjkVideoView3.mRenderView);
                    } else {
                        AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                        absIjkVideoView4.setScreenOrientationForKeyboard(absIjkVideoView4.mOrientation, absIjkVideoView4.mRenderView);
                    }
                }
                AbsIjkVideoView.this.localKeyboardModel.clearText();
                AbsIjkVideoView.this.localKeyboardModel.changeState(0);
                return true;
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardShowHeight(int i10) {
                int iMax;
                int iMax2;
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==onKeyBoardShowHeight====");
                    return false;
                }
                if (absIjkVideoView.screenWidth == 0) {
                    absIjkVideoView.screenWidth = ConfigUtil.getScreenWidth(absIjkVideoView.getContext());
                }
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.screenHeight == 0) {
                    absIjkVideoView2.screenHeight = ConfigUtil.getScreenHeight(absIjkVideoView2.getContext());
                }
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                int i11 = absIjkVideoView3.mShowHeight;
                if (i11 == 0) {
                    i11 = absIjkVideoView3.screenHeight;
                }
                absIjkVideoView3.mShowHeight = i11;
                int i12 = absIjkVideoView3.mShowWidth;
                if (i12 == 0) {
                    i12 = absIjkVideoView3.screenWidth;
                }
                absIjkVideoView3.mShowWidth = i12;
                LogUtils.i(AbsIjkVideoView.TAG, "<==开启键盘状态 高度: " + i10 + ";screenHeight: " + AbsIjkVideoView.this.screenHeight + ";mShowHeight: " + AbsIjkVideoView.this.mShowHeight + ";screenWidth: " + AbsIjkVideoView.this.screenWidth + ";mShowWidth: " + AbsIjkVideoView.this.mShowWidth);
                AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                if (i10 == Math.abs(absIjkVideoView4.screenWidth - absIjkVideoView4.screenHeight)) {
                    LogUtils.i(AbsIjkVideoView.TAG, "横竖屏切换，忽略键盘状态；");
                    return false;
                }
                int i13 = AbsIjkVideoView.this.mAppContext.getResources().getConfiguration().orientation;
                if (i13 == 2) {
                    AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                    iMax = Math.min(absIjkVideoView5.screenHeight, absIjkVideoView5.screenWidth);
                    AbsIjkVideoView absIjkVideoView6 = AbsIjkVideoView.this;
                    iMax2 = Math.min(absIjkVideoView6.mShowHeight, absIjkVideoView6.mShowWidth);
                } else if (i13 == 1) {
                    AbsIjkVideoView absIjkVideoView7 = AbsIjkVideoView.this;
                    iMax = Math.max(absIjkVideoView7.screenHeight, absIjkVideoView7.screenWidth);
                    AbsIjkVideoView absIjkVideoView8 = AbsIjkVideoView.this;
                    iMax2 = Math.max(absIjkVideoView8.mShowHeight, absIjkVideoView8.mShowWidth);
                } else {
                    iMax = 0;
                    iMax2 = 0;
                }
                int i14 = (iMax - iMax2) / 2;
                int inputOffset = HmIMEManager.getInstance().getInputOffset();
                float f10 = 0.5f;
                float f11 = iMax2 != 0 ? ((i10 - i14) + inputOffset) / iMax2 : 0.5f;
                if (f11 > 1.0f || f11 < 0.0f) {
                    CountlyUtil.recordErrorEvent("heightScale error: inputShowOffset" + inputOffset + ",surfaceHeight:" + iMax2 + ",height:" + i10);
                } else {
                    f10 = f11;
                }
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(f10));
                AbsIjkVideoView absIjkVideoView9 = AbsIjkVideoView.this;
                absIjkVideoView9.sendKeyboardHeightPercent(absIjkVideoView9.mEventContent);
                return true;
            }
        };
        this.mWsReconnectCount = 0;
        this.waitingUsersNum = 0;
        this.mResfreshStokenReasons = "";
        this.eventBuilder = new StringBuilder();
        this.mBaseConnectInputTime = 0L;
        this.intervalBegin = SystemClock.elapsedRealtime();
        this.streamWidth = 0;
        this.streamHeight = 0;
        this.paint = new Paint();
        this.point = new Point();
        this.mSpeed = 0.0f;
        this.SAAS_WS_DELAY = 2;
        this.mIsAhead = false;
        this.mCacheListener = new AnonymousClass51();
        this.mHMInputCallback = new HMInputCallback() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.53
            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onClockDiffChange(long j10, int i10) {
                AbsIjkVideoView.this.streamModel.onClockDiffChange(i10);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onConnect(boolean z10) {
                AbsIjkVideoView.this.instanceConnect();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onDisconnect(int i10, String str, boolean z10) {
                AbsIjkVideoView.this.disConnectInput(i10, str);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onFirstDiffClockSuccess(long j10) {
                AbsIjkVideoView.this.streamModel.onFirstDiffClockSuccess();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onTextMessage(String str) {
                AbsIjkVideoView.this.instanceTextMessage(str);
            }
        };
        init(context);
    }

    private void addBlackOverlay() {
        this.backGroundView = new View(this.mContext);
        this.backGroundView.setBackgroundColor(Color.argb(127, Color.red(-16777216), Color.green(-16777216), Color.blue(-16777216)));
        new FrameLayout.LayoutParams(-1, -1);
        this.backGroundView.setVisibility(8);
        addView(this.backGroundView);
    }

    private void appendDownPointers(int i10, StringBuilder sb2) {
        HashSet<Integer> hashSet = this.mDownPointers;
        if (hashSet == null || hashSet.isEmpty() || Constants.CONFIG_INPUT_PROTOCOL_VERSION != 2) {
            sb2.append(":-1");
            return;
        }
        sb2.append(":");
        Iterator<Integer> it2 = this.mDownPointers.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            sb2.append(",");
        }
        sb2.deleteCharAt(sb2.length() - 1);
    }

    private void appendSDKTime(StringBuilder sb2) {
        if (!Constants.CONFIG_COMPUTE_DELAY_TIME_SWITCH) {
            sb2.append(":");
            sb2.append(0);
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.intervalBegin < Constants.CONFIG_COMPUTE_DELAY_TIME_INTERVAL) {
            sb2.append(":");
            sb2.append(0);
        } else {
            sb2.append(":");
            sb2.append(jElapsedRealtime);
            this.intervalBegin = jElapsedRealtime;
        }
    }

    private boolean armSendMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        HmcpRequest hmcpRequest;
        LogUtils.d(TAG, "arm send message: payload = " + str + ", type = " + wsMessageType);
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null && iWebSocket.isConnect(webSocketType) && (hmcpRequest = this.mRequestManager) != null && this.mWsMessageManager != null) {
            this.mWsMessageManager.sendWsMessage(obtainWsMessage(wsMessageType, hmcpRequest.getCloudId(), this.mRequestManager.getAccessKeyId(), str), wsMessageType, onSendWsMessageListener);
            return true;
        }
        CountlyUtil.recordErrorEvent("sendWsMessage() mWsMessageManager == null or wsServer is not connect" + currentStatusInfo() + Log.getStackTraceString(new Throwable()));
        if (onSendWsMessageListener == null) {
            return false;
        }
        onSendWsMessageListener.sendWsMessageFail(getMessage("wsServer is not connect, please retry"));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public void beginReconnect() {
        if (this.mPlayerState == 5) {
            LogUtils.e(TAG, "===game over no ReconnectAccess ====");
            return;
        }
        LogUtils.e(TAG, "===ReconnectAccess  run====");
        if (this.curConnectState != 5) {
            this.curConnectState = 0;
        }
        boolean z10 = this.isGetCloudServiceSuccess;
        this.mWsReconnectCount++;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.connect2Access(z10 ? 1 : 0, true);
        }
    }

    private void bringForeground(String str) {
        LogUtils.i(TAG, "====bringForeground=====");
        sendToInstanceMsg("udcmd:\"call=startapp&pkgname=" + str + x.a.f97579g);
    }

    private String buildEventContent(int i10, int i11, FPoint fPoint, StringBuilder sb2) {
        FPoint fPoint2;
        if (i10 == 1 || (fPoint2 = this.mLastPoints.get(Integer.valueOf(i11))) == null) {
            fPoint2 = new FPoint(0.0f, 0.0f, 0L);
        }
        this.mLastPoints.put(Integer.valueOf(i11), fPoint);
        if (i10 == 1) {
            updateDownPointers(i11, true);
        } else if (i10 == 2) {
            updateDownPointers(i11, false);
        }
        if (Constants.CONFIG_INPUT_PROTOCOL_VERSION != 2) {
            fPoint.ts = 0L;
            fPoint2.f33815x = 0.0f;
            fPoint2.f33816y = 0.0f;
            fPoint2.ts = 0L;
            i11 = -1;
        }
        sb2.setLength(0);
        sb2.append("mouse:");
        sb2.append(i10);
        sb2.append(":");
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%.4f,%.4f,%d:", Float.valueOf(fPoint.f33815x), Float.valueOf(fPoint.f33816y), Long.valueOf(fPoint.ts)));
        sb2.append(String.format(locale, "%.4f,%.4f,%d:%d", Float.valueOf(fPoint2.f33815x), Float.valueOf(fPoint2.f33816y), Long.valueOf(fPoint2.ts), Integer.valueOf(i11)));
        appendDownPointers(i11, sb2);
        appendSDKTime(sb2);
        return sb2.toString();
    }

    private FPoint calculateUpPointer(MotionEvent motionEvent) {
        return this.mTouchUpPolicy == 1 ? calculateUpPointerNormal(motionEvent) : calculateUpPointerSpecial(motionEvent);
    }

    private FPoint calculateUpPointerNormal(MotionEvent motionEvent) {
        FPoint fPointCalculatePoint = calculatePoint(motionEvent);
        if (Constants.CONFIG_INPUT_PROTOCOL_VERSION != 2) {
            sendMotionEvent(3, fPointCalculatePoint);
            LogUtils.d(TAG, "send movePoint : " + fPointCalculatePoint);
        }
        this.mHistoryPoints.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
        return fPointCalculatePoint;
    }

    private FPoint calculateUpPointerSpecial(MotionEvent motionEvent) {
        FPoint fPointCalculatePoint = calculatePoint(motionEvent);
        LogUtils.d(TAG, "send movePoint : " + fPointCalculatePoint);
        Integer numValueOf = Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex()));
        if (this.mHistoryPoints.containsKey(numValueOf)) {
            FPoint fPoint = this.mHistoryPoints.get(numValueOf);
            if (fPoint != null && !fPointCalculatePoint.equals(fPoint)) {
                fPointCalculatePoint.f33815x = fPoint.f33815x;
                fPointCalculatePoint.f33816y = fPoint.f33816y;
                LogUtils.d(TAG, "lastUpPoint != movePoint, and fix up point : " + fPointCalculatePoint);
            }
            this.mHistoryPoints.remove(numValueOf);
        }
        return fPointCalculatePoint;
    }

    private void callbackCancel(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_CNACEL);
            if (hasExtraListener(this.mUploadJob)) {
                this.mUploadJob.getmListener().onCancel(cloudOperation);
                return;
            }
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_CNACEL);
            if (hasExtraListener(this.mDownloadJob)) {
                this.mDownloadJob.getmListener().onCancel(cloudOperation);
                return;
            }
        }
        CloudOperationListener cloudOperationListener = this.mCloudOperationListener;
        if (cloudOperationListener != null) {
            cloudOperationListener.onCancel(cloudOperation);
        }
    }

    private void callbackDeviceStatus(int i10, boolean z10, String str, boolean z11) {
        UiMessageSend(getCallbackData(49, new DeviceState(i10, z10, str, z11).toJson()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackError(CloudOperation cloudOperation, String str) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_ERROR, str);
            if (hasExtraListener(this.mUploadJob)) {
                this.mUploadJob.getmListener().onError(cloudOperation, str);
                return;
            }
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_ERROR, str);
            if (hasExtraListener(this.mDownloadJob)) {
                this.mDownloadJob.getmListener().onError(cloudOperation, str);
                return;
            }
        }
        CloudOperationListener cloudOperationListener = this.mCloudOperationListener;
        if (cloudOperationListener != null) {
            cloudOperationListener.onError(cloudOperation, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackFinish(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_FINISH);
            if (hasExtraListener(this.mUploadJob)) {
                this.mUploadJob.getmListener().onFinish(cloudOperation);
                return;
            }
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_FINISH);
            if (hasExtraListener(this.mDownloadJob)) {
                this.mDownloadJob.getmListener().onFinish(cloudOperation);
                return;
            }
        }
        CloudOperationListener cloudOperationListener = this.mCloudOperationListener;
        if (cloudOperationListener != null) {
            cloudOperationListener.onFinish(cloudOperation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackRemoteInfo(GSMUsbNatData gSMUsbNatData) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("gsmUsbNatData:");
        sb2.append(JsonUtil.toJsonString(gSMUsbNatData));
        sb2.append(",mListener is null?");
        sb2.append(this.mListener == null);
        LogUtils.d(TAG, sb2.toString());
        if (this.mListener == null || gSMUsbNatData == null) {
            return;
        }
        RemoteDeviceInfoManager.getRemoteDeviceInfo().setCountlyCloudId(CountlyUtil.mCloudID);
        RemoteDeviceInfoManager.getRemoteDeviceInfo().build(CountlyUtil.mTransid + o0.f49827a + CountlyUtil.mSEQ, gSMUsbNatData.usbNatIp, gSMUsbNatData.usbNatPort);
        if (RemoteDeviceInfoManager.isValid()) {
            this.mListener.onMiscResponse(JsonUtil.toJsonString(RemoteDeviceInfoManager.getRemoteDeviceInfo()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackStop(CloudOperation cloudOperation, String str) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STOP, str);
            if (hasExtraListener(this.mUploadJob)) {
                this.mUploadJob.getmListener().onStop(cloudOperation, getMessage(str));
                return;
            }
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STOP, str);
            if (hasExtraListener(this.mDownloadJob)) {
                this.mDownloadJob.getmListener().onStop(cloudOperation, getMessage(str));
                return;
            }
        }
        CloudOperationListener cloudOperationListener = this.mCloudOperationListener;
        if (cloudOperationListener != null) {
            cloudOperationListener.onStop(cloudOperation, getMessage(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackSuccess(CloudOperation cloudOperation, CloudFile cloudFile) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_FILE_SCUCCESS);
            if (hasExtraListener(this.mUploadJob)) {
                this.mUploadJob.getmListener().onSuccess(cloudOperation, cloudFile);
                return;
            }
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_FILE_SCUCCESS);
            if (hasExtraListener(this.mDownloadJob)) {
                this.mDownloadJob.getmListener().onSuccess(cloudOperation, cloudFile);
                return;
            }
        }
        CloudOperationListener cloudOperationListener = this.mCloudOperationListener;
        if (cloudOperationListener != null) {
            cloudOperationListener.onSuccess(cloudOperation, cloudFile);
        }
    }

    private void cancelhangUpTimer(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            if (this.mHangUpUpCountDown != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "hang up timer cancel");
                this.mHangUpUpCountDown.cancelTimeCountDown();
            }
            this.mHangUpUpCountDown = null;
            return;
        }
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            if (this.mHangUpBatchUpCountDown != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "hang up timer cancel");
                this.mHangUpBatchUpCountDown.cancelTimeCountDown();
            }
            this.mHangUpBatchUpCountDown = null;
            return;
        }
        if (this.mHangUpDownCountDown != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "hang up timer cancel");
            this.mHangUpDownCountDown.cancelTimeCountDown();
        }
        this.mHangUpDownCountDown = null;
    }

    private void checkLayoutAndShowDevice(String str) {
        if ("xbox".equals(str)) {
            showVirtualStickInner(true);
        } else if ("keyboard".equals(str)) {
            showVirtualKeyboardInner(true);
        } else {
            showVirtualStickInner(false);
        }
    }

    private void checkOperateTypeAndShowDevice() {
        VirtualOperateType virtualOperateType = this.mDefaultOperateType;
        if (virtualOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
            showVirtualStickInner(true);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
            showVirtualKeyboardInner(true);
        } else {
            showVirtualStickInner(false);
        }
    }

    private void checkWidthAndHeight() {
        if (this.mViewResolutionWidth != 0 && this.mViewResolutionHeight != 0) {
            CountlyUtil.recordEvent(Constants.COUNTLY_HMCP_VIEW_CUSTOM_SIZE, "App set absolute size: width=" + this.mViewResolutionWidth + ", height=" + this.mViewResolutionHeight);
        }
        int i10 = this.mViewResolutionWidth;
        int i11 = this.mViewResolutionHeight;
        if (i10 < i11) {
            this.mViewResolutionWidth = i11;
            this.mViewResolutionHeight = i10;
        }
        this.mChangedViewResolutionWidth = this.mViewResolutionWidth;
        this.mChangedViewResolutionHeight = this.mViewResolutionHeight;
    }

    private void choiceMaxResolution(float f10, SpeedGather speedGather) {
        float fMyStd;
        String listString;
        float quarter;
        float median;
        this.mSpeed = f10;
        if (speedGather != null) {
            listString = speedGather.getListString();
            fMyStd = speedGather.myStd(f10);
            this.mSpeed = speedGather.getSpeed(f10, fMyStd);
            median = speedGather.getMedian();
            quarter = speedGather.getQuarter();
        } else {
            fMyStd = 0.0f;
            listString = "";
            quarter = 0.0f;
            median = 0.0f;
        }
        String str = f10 + "," + this.mSpeed + "," + fMyStd + "," + median + "," + quarter + "," + this.currenteResolutionID + ",," + listString;
        LogUtils.e(TAG, "CloudTest>> business(speed_test): " + System.currentTimeMillis() + ", " + ((int) this.mSpeed));
        CountlyUtil.recordEvent(Constants.COUNTYLY_TESTING_NETWORK_SPEED_COMPLETE, str);
    }

    private void closePcMoueMode() {
        setPCMouseModeInternal(false);
    }

    private void controlFailed(String str) {
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        try {
            jSONObject.put("errorMessage", str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        UiMessageSend(getCallbackData(40, this.object.toString()));
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.reset();
        }
        setPlayerState(0);
        onStopInternal();
    }

    private ScreenOrientation correctOrientation(ScreenOrientation screenOrientation, ScreenOrientation screenOrientation2) {
        if (screenOrientation == null) {
            LogUtils.d(HmScreenMonitor.TAG, "source orientation is null, can not correct");
            return null;
        }
        if (screenOrientation2 == null) {
            LogUtils.d(HmScreenMonitor.TAG, "dest orientation is null, can not correct");
            return null;
        }
        if (screenOrientation == screenOrientation2) {
            LogUtils.d(HmScreenMonitor.TAG, "correct orientation is same to init, do not to correct");
            return null;
        }
        LogUtils.d(HmScreenMonitor.TAG, "correct orientation to " + screenOrientation2);
        return screenOrientation2;
    }

    private GSSDK.GameCursor.Builder createReportGameCursorBuilder(GSSDK.GameCursor gameCursor) {
        GSSDK.GameCursor.Builder builderNewBuilder = GSSDK.GameCursor.newBuilder();
        if (gameCursor.hasShowOrHide()) {
            builderNewBuilder.setShowOrHide(gameCursor.getShowOrHide());
        }
        if (gameCursor.hasCursorPos()) {
            builderNewBuilder.setCursorPos(gameCursor.getCursorPos());
        }
        if (gameCursor.hasCursorStyle()) {
            builderNewBuilder.setCursorStyle(gameCursor.getCursorStyle());
        }
        if (gameCursor.hasGameCursorData()) {
            GSSDK.GameCursor.GameCursorFrameData.Builder builderNewBuilder2 = GSSDK.GameCursor.GameCursorFrameData.newBuilder();
            GSSDK.GameCursor.GameCursorFrameData gameCursorData = gameCursor.getGameCursorData();
            if (gameCursorData.hasFrameRate()) {
                builderNewBuilder2.setFrameRate(gameCursorData.getFrameRate());
            }
            for (GSSDK.GameCursor.CursorFrame cursorFrame : gameCursorData.getCursorFramesList()) {
                GSSDK.GameCursor.CursorFrame.Builder builderNewBuilder3 = GSSDK.GameCursor.CursorFrame.newBuilder();
                if (cursorFrame.hasStepFrame()) {
                    builderNewBuilder3.setStepFrame(cursorFrame.getStepFrame());
                }
                if (cursorFrame.hasCursorHotSpot()) {
                    builderNewBuilder3.setCursorHotSpot(cursorFrame.getCursorHotSpot());
                }
                builderNewBuilder2.addCursorFrames(builderNewBuilder3.build());
            }
            builderNewBuilder.setGameCursorData(builderNewBuilder2.build());
        }
        if (gameCursor.hasIconCursorHotSpot()) {
            builderNewBuilder.setIconCursorHotSpot(gameCursor.getIconCursorHotSpot());
        }
        if (gameCursor.hasCursorWidth()) {
            builderNewBuilder.setCursorWidth(gameCursor.getCursorWidth());
        }
        if (gameCursor.hasCursorHeight()) {
            builderNewBuilder.setCursorHeight(gameCursor.getCursorHeight());
        }
        return builderNewBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOnMessage(byte[] bArr) {
        boolean z10;
        List<GSSDK.GameCursor.CursorFrame> cursorFramesList;
        try {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 10, 14);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 14, bArr.length);
            LogUtils.i(TAG, "dataBusinessIdByte:" + Arrays.toString(bArrCopyOfRange));
            boolean z11 = false;
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6350, bArrCopyOfRange)) {
                GSSDK.GameCursor from = GSSDK.GameCursor.parseFrom(bArrCopyOfRange2);
                this.mGameCursor = from;
                if (from != null) {
                    LogUtils.d(TAG, "GameCursor:" + this.mGameCursor);
                    GSSDK.GameCursor.GameCursorFrameData gameCursorData = this.mGameCursor.getGameCursorData();
                    if (this.mGameCursor.getCursorWidth() == 0 || this.mGameCursor.getCursorHeight() == 0) {
                        z10 = false;
                    } else {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mCursorImageView.getLayoutParams();
                        int i10 = this.mCursorWidth;
                        if (i10 != 40) {
                            layoutParams.width = i10;
                        } else {
                            layoutParams.width = this.mGameCursor.getCursorWidth();
                        }
                        int i11 = this.mCursorHeight;
                        if (i11 != 40) {
                            layoutParams.height = i11;
                        } else {
                            layoutParams.height = this.mGameCursor.getCursorHeight();
                        }
                        this.mCursorImageView.setLayoutParams(layoutParams);
                        setOverLayParams(layoutParams.width, layoutParams.height);
                        LogUtils.d(TAG, "updateCursor width=" + layoutParams.width + ";height=" + layoutParams.height + ";rawWidth=" + this.mGameCursor.getCursorWidth() + ";rawHeight=" + this.mGameCursor.getCursorHeight());
                        z10 = true;
                    }
                    if (gameCursorData != null && (cursorFramesList = gameCursorData.getCursorFramesList()) != null && !cursorFramesList.isEmpty()) {
                        byte[] byteArray = cursorFramesList.get(0).getFrameData().toByteArray();
                        Bitmap bitmap = this.mCustomizationMouseBitmap;
                        if (bitmap == null) {
                            LogUtils.d(TAG, "mCursorBitmap");
                            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                            this.mCursorBitmap = bitmapDecodeByteArray;
                            this.mTouchUtil.setCursorBitmap(bitmapDecodeByteArray);
                        } else {
                            this.mCursorBitmap = bitmap;
                        }
                    }
                    if (this.mGameCursor.hasCursorPos() && (isGamePadToMouse() || !this.X86MousePosInited)) {
                        this.X86MousePosInited = true;
                        GSSDK.CoordinatePos cursorPos = this.mGameCursor.getCursorPos();
                        this.mTouchUtil.setInitPoint(new Point(cursorPos.getX(), cursorPos.getY()));
                    }
                    GSSDK.CoordinatePos iconCursorHotSpot = this.mGameCursor.getIconCursorHotSpot();
                    LogUtils.d(TAG, "hot spot  =" + iconCursorHotSpot.toString() + " ; cursor Style = " + this.mGameCursor.getCursorStyle() + ";" + this.mGameCursor.hasShowOrHide());
                    if (z10 && !TextUtils.isEmpty(iconCursorHotSpot.toString()) && this.mGameCursor.getCursorWidth() != 0) {
                        float cursorWidth = this.mCursorWidth / this.mGameCursor.getCursorWidth();
                        this.mTouchUtil.updateHotSpot(iconCursorHotSpot.getX() * cursorWidth, iconCursorHotSpot.getY() * cursorWidth);
                    }
                    handleGameCursorStateChangeReport(this.mGameCursor);
                    if (this.mGameCursor.hasShowOrHide()) {
                        boolean showOrHide = this.mGameCursor.getShowOrHide();
                        this.mCursorShowOrHide = showOrHide;
                        this.mTouchUtil.setIsShowMouse(showOrHide);
                    }
                    this.mTouchUtil.setCursorStyle(this.mGameCursor.getCursorStyle());
                    if (isGamePadToMouse()) {
                        this.mTouchUtil.setIsShowMouse(true);
                        if (this.mTouchUtil != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (jCurrentTimeMillis - this.updateTimeMs > 18) {
                                LogUtils.d(TAG, "update mouse under game pad to mouse");
                                this.mTouchUtil.updateMouse();
                                this.updateTimeMs = jCurrentTimeMillis;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6480, bArrCopyOfRange)) {
                GSSDK.GSNotification from2 = GSSDK.GSNotification.parseFrom(bArrCopyOfRange2);
                CountlyUtil.recordEvent(Constants.COUNTYLY_X86_DATA_CHANNEL_STATE, "GSNotification:" + from2);
                LogUtils.d(TAG, "gsNotification:" + from2 + ";" + from2.getType());
                int i12 = AnonymousClass54.$SwitchMap$com$haima$hmcp$proto$GSSDK$GSNotification$GSNotifType[from2.getType().ordinal()];
                if (i12 != 1) {
                    if (i12 == 2) {
                        resetLockStatusFlag();
                        this.mHasOperatePermission = true;
                        initPackageName(from2);
                        updateVirtualDeviceAndCursor();
                        this.mTouchUtil.setCursorBitmap(this.mCursorBitmap);
                        OnContronListener onContronListener = this.mOnContronListener;
                        if (onContronListener != null) {
                            onContronListener.contronResult(true, "get control");
                        }
                        startGyroscope();
                        return;
                    }
                    if (i12 != 3) {
                        return;
                    }
                    stopRecord();
                    this.mHasOperatePermission = false;
                    if (this.mVirtualDeviceLayout != null) {
                        LogUtils.i(TAG, "virtualDevice is exist");
                        this.mVirtualDeviceLayout.setVisibility(8);
                    }
                    this.mTouchUtil.setCursorBitmap(null);
                    MouseView mouseView = this.mCursorImageView;
                    if (mouseView != null) {
                        mouseView.setVisibility(8);
                    }
                    OnContronListener onContronListener2 = this.mOnContronListener;
                    if (onContronListener2 != null) {
                        onContronListener2.contronLost();
                    }
                    stopGyroscope();
                    return;
                }
                this.mHasOperatePermission = false;
                this.mTouchUtil.setCursorBitmap(this.mCursorBitmap);
                String metaInfoByKey = getMetaInfoByKey(Constants.TIPS_PROMPT_GAME_OVER);
                this.object = new JSONObject();
                int quitType = from2.getQuitType();
                if (quitType == 1 || quitType != 2) {
                    this.object.put("quitType", 2);
                } else {
                    this.object.put("quitType", 3);
                    String metaInfoByKey2 = getMetaInfoByKey(Constants.TIPS_PROMPT_GAME_OVER_OWNER_EXIT);
                    if (!TextUtils.isEmpty(metaInfoByKey2)) {
                        LogUtils.i(TAG, "tipsOwnerExit is " + metaInfoByKey2);
                        metaInfoByKey = metaInfoByKey2;
                    }
                }
                this.object.put("errorMessage", metaInfoByKey);
                this.object.put(BaseVideoView.FINISH_BY_SERVER, true);
                this.object.put("finishTip", metaInfoByKey);
                UiMessageSend(15, this.object.toString());
                this.mPlayerState = 5;
                this.mCurrentState = -1;
                this.object.put("status", 15);
                this.object.put("errorCode", "0");
                release(this.object.toString());
                sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_normal));
                return;
            }
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_INPUT_MI_IME, bArrCopyOfRange)) {
                ReportImEvent reportImEvent = new ReportImEvent();
                GSSDK.IMEStatus from3 = GSSDK.IMEStatus.parseFrom(bArrCopyOfRange2);
                if (from3 != null) {
                    reportImEvent.setStatusType(from3.getStatusType().name());
                    LogUtils.d(TAG, "imeStatus:" + from3);
                    if (GSSDK.StatusType.STATUS_SHOW == from3.getStatusType()) {
                        reportImEvent.setInputData("IME:StartIM:0,0:0:0");
                        GSSDK.IMEType imeType = from3.getImeType();
                        reportImEvent.setImeType(imeType.name());
                        LogUtils.d(TAG, "IMEType:" + imeType);
                        z11 = true;
                    } else {
                        reportImEvent.setInputData("stopIM");
                    }
                    if (this.mAutoShowInput) {
                        if (Constants.CONFIG_IS_LOCAL_IME_X86) {
                            switchLocalKeyboard(z11);
                        } else {
                            switchKeyboard(z11);
                        }
                    }
                }
                CountlyUtil.recordEvent(Constants.COUNTLY_INPUT_KEYBOARD, "IMEStatus:" + from3 + ",imEvent:" + reportImEvent + ",mAutoShowInput:" + this.mAutoShowInput);
                return;
            }
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_64B0, bArrCopyOfRange)) {
                handleGSStateChanged(GSSDK.GSStateNotice.parseFrom(bArrCopyOfRange2));
                return;
            }
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6170, bArrCopyOfRange)) {
                GSSDK.RestNoInputTimer_R from4 = GSSDK.RestNoInputTimer_R.parseFrom(bArrCopyOfRange2);
                CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, "RestNoInputTimer_R:" + from4);
                if (from4 == null) {
                    LogUtils.e(TAG, "restNoInputTimerR is null");
                    return;
                }
                LogUtils.d(TAG, "restNoInputTimerR:" + String.format("{\"result\":%s,\"msg\":\"%s\"}", Integer.valueOf(from4.getResult()), from4.getMsg()));
                return;
            }
            if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_64C0, bArrCopyOfRange)) {
                GSSDK.GameSDKData from5 = GSSDK.GameSDKData.parseFrom(bArrCopyOfRange2);
                if (from5 == null) {
                    LogUtils.e(TAG, " error: gameSDKData is empty.");
                    return;
                }
                LogUtils.d(TAG, "gameSDKData = " + from5.getSdkData() + "; cid = " + from5.getCid());
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onMessage(from5.getSdkData());
                    return;
                } else {
                    LogUtils.e(TAG, " error: playerListener is empty.");
                    return;
                }
            }
            if (!Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_64G0, bArrCopyOfRange)) {
                if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6700, bArrCopyOfRange)) {
                    handleX86ImageUploadResponse(bArrCopyOfRange2);
                    return;
                }
                if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6710, bArrCopyOfRange)) {
                    handleX86ImageDownloadResponse(bArrCopyOfRange2);
                    return;
                }
                if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6720, bArrCopyOfRange)) {
                    handleShellCommandResult(bArrCopyOfRange2);
                    return;
                }
                if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6090, bArrCopyOfRange)) {
                    handleVibrator(bArrCopyOfRange2);
                    return;
                }
                if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6160, bArrCopyOfRange)) {
                    if (Constants.CONFIG_RECORD_MODE == Constants.RECORD_MODE_ROM) {
                        handleMicResponse(bArrCopyOfRange2);
                        return;
                    }
                    return;
                } else {
                    if (Arrays.equals(ProtoBufUtil.PROTO_BUSINESS_CODE_6_4_19_0, bArrCopyOfRange)) {
                        SendSceneState.gameState(getContext(), this.mListener, GSSDK.GameState.parseFrom(bArrCopyOfRange2));
                        return;
                    }
                    return;
                }
            }
            GSSDK.ClipBoardData from6 = GSSDK.ClipBoardData.parseFrom(bArrCopyOfRange2);
            CountlyUtil.recordEvent(Constants.COUNTYLY_X86_DATA_CHANNEL_STATE, "ClipBoardData:" + from6);
            if (from6 != null) {
                String stringUtf8 = from6.getData().toStringUtf8();
                ClipBoardItemData clipBoardItemData = new ClipBoardItemData();
                clipBoardItemData.itemType = "text/plain";
                clipBoardItemData.itemData = stringUtf8;
                ArrayList arrayList = new ArrayList();
                arrayList.add(clipBoardItemData);
                ClipBoardData clipBoardData = new ClipBoardData();
                clipBoardData.dataType = 0;
                clipBoardData.data = arrayList;
                if (ClipBoardData.isDataValid(clipBoardData)) {
                    notifyClipBoard(clipBoardData);
                } else {
                    LogUtils.e(TAG, " error: clipBoardData length is Invalid.");
                    CountlyUtil.recordErrorEvent(" error: clipBoardData length is Invalid.");
                }
            }
        } catch (InvalidProtocolBufferException e10) {
            LogUtils.d(TAG, e10.getMessage());
        } catch (Exception e11) {
            LogUtils.d(TAG, e11.getMessage());
        }
    }

    private void enableShareStream(boolean z10) {
        LogUtils.d(TAG, "enableShareStream:" + z10);
        this.enabelShareStream = z10;
        this.streamModel.enableShareStream(z10);
    }

    private String extractFileName(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(47);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
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

    private boolean fromDpad(KeyEvent keyEvent, int i10) {
        return isGamePadToMouse() && isDpadDirection(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScreenOrientation getConvertOrientation(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                }
            }
            return ScreenOrientation.LANDSCAPE;
        }
        return ScreenOrientation.PORTRAIT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getExtraConfigure() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            LogUtils.e(TAG, "getExtraConfigure--mRequestManager is null-->");
        } else {
            hmcpRequest.getExtraConfigure(this.mAppName, new OnConfigListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.30
                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onFail(String str) {
                    String str2 = "controlInternal==getExtraConfigure--onFail-->" + str;
                    LogUtils.e(AbsIjkVideoView.TAG, str2);
                    CountlyUtil.recordErrorEvent(str2);
                }

                @Override // com.haima.hmcp.listeners.OnConfigListener
                public void onSuccess() {
                    LogUtils.e(AbsIjkVideoView.TAG, "getExtraConfigure--onSuccess-->");
                }
            });
        }
    }

    private String getFileInfo(CloudFile cloudFile) {
        if (cloudFile == null) {
            return "";
        }
        return "fileName: " + cloudFile.getName() + " path: " + cloudFile.getPath() + " cloudPath: " + cloudFile.getCloudPath();
    }

    private String getGSVendorId(InputDeviceInfo inputDeviceInfo) {
        if (inputDeviceInfo == null) {
            return "";
        }
        String vendorId = inputDeviceInfo.getVendorId();
        if (!isX86SingleGamePadMode()) {
            return vendorId;
        }
        if (TextUtils.isEmpty(this.firstDeviceVendorId)) {
            this.firstDeviceVendorId = vendorId;
        }
        return getSingleModeVendorId();
    }

    private int getGamepadType() {
        if (HmInputDeviceManager.isGamepadPS(this.fixedGamepadVendorId)) {
            return 2;
        }
        if (!TextUtils.isEmpty(this.fixedGamepadVendorId)) {
            return 1;
        }
        if (HmInputDeviceManager.isGamepadPS(Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID)) {
            return 3;
        }
        return !TextUtils.isEmpty(Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID) ? 4 : 0;
    }

    private JoyStickBean getJoyStickBean(InputEvent inputEvent, boolean z10) {
        if (z10) {
            return HmInputDeviceManager.resetJoyStickBean(inputEvent);
        }
        return inputEvent instanceof MotionEvent ? HmInputDeviceManager.parseJoyMotion((MotionEvent) inputEvent) : HmInputDeviceManager.parseJoyKey((KeyEvent) inputEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private JoyStickBean getJoyStickBeanByEvent(int i10) {
        JoyStickBean joyStickBean = new JoyStickBean();
        LogUtils.d(TAG, "getJoyStickBeanByEvent keyCode=" + i10 + ", mDpadMouseMoveStep = " + this.mDpadMouseMoveStep);
        switch (i10) {
            case 19:
                joyStickBean.L_Y = this.mDpadMouseMoveStep;
                return joyStickBean;
            case 20:
                joyStickBean.L_Y = -this.mDpadMouseMoveStep;
                return joyStickBean;
            case 21:
                joyStickBean.L_X = -this.mDpadMouseMoveStep;
                return joyStickBean;
            case 22:
                joyStickBean.L_X = this.mDpadMouseMoveStep;
                return joyStickBean;
            default:
                return joyStickBean;
        }
    }

    private String getKeyboardMapConfigs(String str) {
        com.alibaba.fastjson.JSONObject jSONObject;
        GlobalConfig globalConfig = this.mGlobalConfig;
        if (globalConfig != null && (jSONObject = globalConfig.x86KeyboardMapConfigs) != null) {
            com.alibaba.fastjson.JSONObject jSONObject2 = (com.alibaba.fastjson.JSONObject) this.mGlobalConfig.x86KeyboardMapConfigs.get((String) jSONObject.get(str));
            return jSONObject2 != null ? jSONObject2.toJSONString() : "";
        }
        LogUtils.e(TAG, "getKeyboardMapConfigs error: config is not exist");
        CountlyUtil.recordErrorEvent("getKeyboardMapConfigs error: config is not exist");
        return "";
    }

    private String getMappingButtonName(KeyEvent keyEvent) {
        JoyStickMappingConfig joyStickMappingConfig;
        GlobalConfig globalConfig = this.mGlobalConfig;
        if (globalConfig == null || (joyStickMappingConfig = globalConfig.mJoyStickMappingConfig) == null) {
            return null;
        }
        return JoyStickMappingManager.getMappingButtonName(keyEvent, joyStickMappingConfig);
    }

    private String getMappingVendorId() {
        if (TextUtils.isEmpty(this.fixedGamepadVendorId) && TextUtils.isEmpty(Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID)) {
            return Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT;
        }
        return !TextUtils.isEmpty(this.fixedGamepadVendorId) ? this.fixedGamepadVendorId : Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID;
    }

    private String getSingleModeVendorId() {
        if (TextUtils.isEmpty(this.fixedGamepadVendorId)) {
            return !TextUtils.isEmpty(Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID) ? Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID : this.firstDeviceVendorId;
        }
        return this.fixedGamepadVendorId;
    }

    private int getTouchMapperType() {
        TouchesMappingConfig touchesMappingConfig;
        GlobalConfig globalConfig = this.mGlobalConfig;
        if (globalConfig == null || (touchesMappingConfig = globalConfig.mTouchesMappingConfig) == null) {
            return 1;
        }
        return touchesMappingConfig.touchesMapperType.intValue();
    }

    private String getVendorIdByEvent(InputEvent inputEvent) {
        return inputEvent == null ? "" : getGSVendorId(HmInputDeviceManager.getDeviceInfoByEvent(inputEvent));
    }

    private String getVirLayoutJson(String str) {
        String keyboardMapConfigs;
        if (TextUtils.equals(str, this.mAppName)) {
            keyboardMapConfigs = HmVirtualDeviceUtils.getX86VirtualLayoutConfigStr(this.mMetaInfos, this.mAppContext);
            if (TextUtils.isEmpty(keyboardMapConfigs)) {
                keyboardMapConfigs = getKeyboardMapConfigs(str);
            }
        } else {
            keyboardMapConfigs = getKeyboardMapConfigs(str);
        }
        LogUtils.i(TAG, "getVirLayoutJson()= updateVirtualDevice" + keyboardMapConfigs);
        return this.mGlobalConfig.mergeConfig(keyboardMapConfigs);
    }

    private HmVirtualLayoutBean getVirtualLayoutBean() {
        HmVirtualLayoutBean hmVirtualLayoutBeanLoadKeyboardConfigJsonPre = loadKeyboardConfigJsonPre();
        if (hmVirtualLayoutBeanLoadKeyboardConfigJsonPre != null) {
            LogUtils.i(TAG, "getVirtualLayoutBean loadKeyboardConfigJsonPre not null");
            return hmVirtualLayoutBeanLoadKeyboardConfigJsonPre;
        }
        if (!TextUtils.isEmpty(this.mPackageName) && !TextUtils.equals(this.mPackageName, this.mAppName)) {
            HmVirtualLayoutBean hmVirtualLayoutBeanLoadingLayoutFromJson = HmVirtualDeviceManager.get().loadingLayoutFromJson(getVirLayoutJson(this.mPackageName), this.mPackageName, this.mAppContext, false);
            if (this.mDefaultOperateType != null) {
                return hmVirtualLayoutBeanLoadingLayoutFromJson;
            }
            this.mDefaultOperateType = getVirtualOperateTypeFromLayoutJson(hmVirtualLayoutBeanLoadingLayoutFromJson);
            return hmVirtualLayoutBeanLoadingLayoutFromJson;
        }
        String strMergeConfig = this.mGlobalConfig.mergeConfig(HmVirtualDeviceUtils.getX86VirtualLayoutConfigStr(this.mMetaInfos, this.mAppContext));
        if (!TextUtils.isEmpty(strMergeConfig)) {
            return HmVirtualDeviceManager.get().loadingLayoutFromJson(strMergeConfig, this.mAppName, getContext());
        }
        HmVirtualLayoutBean hmVirtualLayoutBeanLoadingLayoutFromJson2 = HmVirtualDeviceManager.get().loadingLayoutFromJson(getVirLayoutJson(this.mAppName), this.mAppName, this.mAppContext, true);
        if (this.mDefaultOperateType != null) {
            return hmVirtualLayoutBeanLoadingLayoutFromJson2;
        }
        this.mDefaultOperateType = getVirtualOperateTypeFromLayoutJson(hmVirtualLayoutBeanLoadingLayoutFromJson2);
        return hmVirtualLayoutBeanLoadingLayoutFromJson2;
    }

    private VirtualOperateType getVirtualOperateTypeFromLayoutJson(HmVirtualLayoutBean hmVirtualLayoutBean) {
        if (hmVirtualLayoutBean == null) {
            return VirtualOperateType.NONE;
        }
        if (hmVirtualLayoutBean.getConfig() == null) {
            return VirtualOperateType.NONE;
        }
        String default_layout = hmVirtualLayoutBean.getConfig().getDefault_layout();
        if (TextUtils.isEmpty(default_layout)) {
            return VirtualOperateType.NONE;
        }
        if ("xbox".equals(default_layout)) {
            return VirtualOperateType.VIRTUAL_STICK_XBOX;
        }
        return "keyboard".equals(default_layout) ? VirtualOperateType.VIRTUAL_KEYBOARD : VirtualOperateType.NONE;
    }

    private boolean handleButtonBarrierEvent(ButtonBarrier buttonBarrier, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleButtonBarrierEvent:");
        sb2.append(z10);
        sb2.append(" ");
        sb2.append(buttonBarrier == null ? "null" : buttonBarrier.toString());
        LogUtils.d(TAG, sb2.toString());
        if (buttonBarrier == null) {
            return false;
        }
        GSSDK.OneInputOPData.InputState inputState = z10 ? GSSDK.OneInputOPData.InputState.OP_STATE_DOWN : GSSDK.OneInputOPData.InputState.OP_STATE_UP;
        int sendRomCode = buttonBarrier.getSendRomCode();
        if (!this.mIsGamepadToMouse && (512 == sendRomCode || 513 == sendRomCode || 514 == sendRomCode)) {
            LogUtils.d(TAG, "handleButtonBarrierEvent : mIsGamepadToMouse is false,any mouse-event is forbidden");
            return false;
        }
        if (512 == sendRomCode) {
            this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT, inputState);
            return true;
        }
        if (513 == sendRomCode) {
            this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE, inputState);
            return true;
        }
        if (514 == sendRomCode) {
            this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, inputState);
            return true;
        }
        GSSDK.OneInputOPData.InputOP realInputOp = HmInputDeviceManager.getRealInputOp(sendRomCode);
        if (realInputOp != null) {
            if (z10) {
                sendKeyCodeDown(realInputOp);
            } else {
                sendKeyCodeUp(realInputOp);
            }
            return true;
        }
        LogUtils.d(TAG, "handleButtonBarrierEvent do nothing, sendRomCode=" + sendRomCode);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClipboard() {
        if (Constants.CONFIG_IS_CLIPBOARD_AUTO_SEND) {
            ClipboardManager clipboardManager = (ClipboardManager) this.mAppContext.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            this.clipboardManager = clipboardManager;
            sendClipboard(clipboardManager);
            ClipboardManager clipboardManager2 = this.clipboardManager;
            if (clipboardManager2 == null) {
                LogUtils.e(TAG, "clipboardManager is null");
                CountlyUtil.recordErrorEvent("clipboardManager is null");
            } else {
                clipboardManager2.removePrimaryClipChangedListener(this.primaryClipChangedListener);
                if (this.primaryClipChangedListener == null) {
                    this.primaryClipChangedListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.26
                        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
                        public void onPrimaryClipChanged() {
                            LogUtils.e(AbsIjkVideoView.TAG, "clipboard is onPrimaryClipChanged");
                            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                            absIjkVideoView.sendClipboard(absIjkVideoView.clipboardManager);
                        }
                    };
                }
                this.clipboardManager.addPrimaryClipChangedListener(this.primaryClipChangedListener);
            }
        }
    }

    private void handleConnect(ConcurrentHashMap<InputDeviceInfo, Integer> concurrentHashMap, String str, InputDeviceInfo inputDeviceInfo, int i10, boolean z10, boolean z11) {
        if (inputDeviceInfo == null) {
            return;
        }
        concurrentHashMap.remove(inputDeviceInfo);
        if (!isSameType(inputDeviceInfo.getVendorId(), str)) {
            HmInputDeviceManager.removeIndex(inputDeviceInfo, i10);
            SwitchControllerManager.getInstance().removeDevice(inputDeviceInfo.getInputDeviceId().intValue());
            i10 = HmInputDeviceManager.getNextDeviceIndex(str);
        }
        inputDeviceInfo.setVendorId(str);
        concurrentHashMap.put(inputDeviceInfo, Integer.valueOf(i10));
        handleDeviceConnected(inputDeviceInfo, i10, z10, z11);
        LogUtils.d(TAG, "=singleGamePad= put:inputDeviceInfo=" + inputDeviceInfo + " index=" + i10 + " gamepads.size" + concurrentHashMap.size());
        HmInputDeviceManager.addIndex(inputDeviceInfo, i10);
        SwitchControllerManager.getInstance().addDevice(InputDevice.getDevice(inputDeviceInfo.getInputDeviceId().intValue()), i10);
    }

    private void handleDeviceConnected(InputDeviceInfo inputDeviceInfo, int i10, boolean z10, boolean z11) {
        if (inputDeviceInfo == null) {
            LogUtils.e(TAG, "device is null do nothing");
            return;
        }
        String gSVendorId = getGSVendorId(inputDeviceInfo);
        if (isX86SingleGamePadMode()) {
            i10 = 0;
        }
        LogUtils.i(TAG, "=singleGamePad= inputDevice deviceConnected index=" + i10 + " vendorId=" + gSVendorId + " deviceVendorId=" + inputDeviceInfo.getVendorId() + " singleMode=" + Constants.CONFIG_IS_SINGLE_GAMEPAD_MODE + " curOperateVendorId=" + this.curOperateVendorId + " isPlugged=" + this.isPlugged + " isSwitchDevice=" + z10);
        if (Constants.CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP) {
            if (isX86SingleGamePadMode() && HmInputDeviceManager.getGamePads().size() > 1 && !z10 && !z11) {
                LogUtils.i(TAG, "=singleGamePad=is singleGamePad mode and size() > 1");
                return;
            }
            if (isX86SingleGamePadMode() && z11 && this.isPlugged) {
                LogUtils.i(TAG, "=singleGamePad=is singleGamePad mode and already has plugged a device");
                return;
            }
            sendEvent(ProtoBufUtil.getGamepadStatusData(gSVendorId, i10, GSSDK.GamepadState.State.PLUGGED));
            this.curOperateVendorId = gSVendorId;
            notifyDeviceConnect(inputDeviceInfo, Integer.valueOf(i10));
            this.isPlugged = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeviceDisConnected(InputDeviceInfo inputDeviceInfo, int i10, boolean z10) {
        if (inputDeviceInfo == null) {
            LogUtils.e(TAG, "handleDeviceDisConnected deviceInfo is null do nothing");
            return;
        }
        LogUtils.i(TAG, "=singleGamePad=handleDeviceDisConnected PLUGGED HmInputDeviceManager.getGamePads().size()=" + HmInputDeviceManager.getGamePads().size());
        if (isX86SingleGamePadMode() && HmInputDeviceManager.getGamePads().size() > 0 && !z10) {
            LogUtils.i(TAG, "=singleGamePad=more than one gamepad don't need disconnect on single gamepad mode");
            return;
        }
        String gSVendorId = getGSVendorId(inputDeviceInfo);
        if (isX86SingleGamePadMode() && z10) {
            gSVendorId = this.curOperateVendorId;
            LogUtils.i(TAG, "=singleGamePad=handleDeviceDisConnected PLUGGED==curOperateVendorId=" + this.curOperateVendorId + " fixedGamepadVendorId=" + this.fixedGamepadVendorId);
        }
        if (isX86SingleGamePadMode()) {
            i10 = 0;
        }
        LogUtils.i(TAG, "handleDeviceDisConnected PLUGGED==vendorId=" + gSVendorId);
        if (Constants.CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP) {
            if (i10 != 0) {
                sendEvent(ProtoBufUtil.getGamepadStatusData(gSVendorId, i10, GSSDK.GamepadState.State.UNPLUGGED));
            } else if (HmInputDeviceManager.isGamepadPS(gSVendorId)) {
                sendEvent(ProtoBufUtil.getGamepadStatusData(gSVendorId, i10, GSSDK.GamepadState.State.UNPLUGGED));
                sendEvent(ProtoBufUtil.getGamepadStatusData(Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT, i10, GSSDK.GamepadState.State.PLUGGED));
            }
            this.isPlugged = false;
            this.firstDeviceVendorId = "";
        }
        notifyDeviceDisconnect(inputDeviceInfo, i10);
    }

    private void handleDownloadError(String str) {
        String str2 = "internalDownloadX86=: fileDownloadR is " + str;
        LogUtils.e(TAG, str2);
        callbackError(CloudOperation.DOWNLOAD, str2);
        JobExecutor jobExecutor = this.mDownloadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.startNextJob();
        }
    }

    private void handleDownloadR(GSSDK.FileDownload_R fileDownload_R) {
        if (isParamValid(fileDownload_R)) {
            if (1 != this.mDownloadJob.getmCloudFile().getTargetType()) {
                httpDownload(fileDownload_R);
                return;
            }
            if (fileDownload_R != null) {
                String url = fileDownload_R.getUrl();
                CloudFileJob cloudFileJob = this.mDownloadJob;
                if (cloudFileJob != null && cloudFileJob.getmCloudFile() != null) {
                    this.mDownloadJob.getmCloudFile().setUrl(url);
                    if (this.mDownloadJob.getmListener() != null) {
                        this.mDownloadJob.getmListener().onSuccess(CloudOperation.DOWNLOAD, this.mDownloadJob.getmCloudFile());
                    }
                    String str = "internalDownloadX86=: handleDownloadR download type is url and url=" + url;
                    LogUtils.i(TAG, str);
                    CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_FINISH, str);
                }
            }
            JobExecutor jobExecutor = this.mDownloadX86JobExecutor;
            if (jobExecutor != null) {
                jobExecutor.startNextJob();
            }
        }
    }

    private void handleGSStateChanged(GSSDK.GSStateNotice gSStateNotice) {
        if (gSStateNotice == null) {
            LogUtils.e(TAG, "gsNotification is null");
            CountlyUtil.recordErrorEvent("gsNotification is null");
            return;
        }
        String str = "GsStateNotice = type= " + gSStateNotice.getType() + "; value= " + gSStateNotice.getValue() + "extInfo= " + gSStateNotice.getExtInfo();
        LogUtils.d(TAG, str);
        CountlyUtil.recordEvent(Constants.COUNTYLY_GS_STATE_CHANGED, str);
        int type = gSStateNotice.getType();
        if (type == 1) {
            HmVirFullKeyBoardLayout.IS_UPPER = gSStateNotice.getValue() == 1;
            HmVirInputKBDialog hmVirInputKBDialog = this.fullKeyBoardDialog;
            if (hmVirInputKBDialog != null) {
                hmVirInputKBDialog.updateKeyboardLayout();
                return;
            }
            return;
        }
        if (type != 7) {
            if (type != 9) {
                return;
            }
            setModeByGsNotice(gSStateNotice.getValue());
        } else {
            String extInfo = gSStateNotice.getExtInfo();
            updateVirtualDevice(extInfo);
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.updateCurGamePackageName(extInfo);
            }
        }
    }

    private void handleGameCursorStateChangeReport(GSSDK.GameCursor gameCursor) {
        if (gameCursor == null) {
            LogUtils.w(TAG, "handleGameCursorStateChangeReport: gameCursor is null, skip processing");
            return;
        }
        try {
            boolean zHasShowOrHide = gameCursor.hasShowOrHide();
            boolean z10 = false;
            boolean showOrHide = zHasShowOrHide ? gameCursor.getShowOrHide() : false;
            if (this.isShowOrHideChanged == null) {
                this.isShowOrHideChanged = Boolean.TRUE;
            } else {
                Boolean bool = this.lastCursorShowHide;
                boolean z11 = bool != null;
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                if (zHasShowOrHide != z11 || (zHasShowOrHide && z11 && showOrHide != zBooleanValue)) {
                    z10 = true;
                }
                this.isShowOrHideChanged = Boolean.valueOf(z10);
            }
            if (this.isShowOrHideChanged.booleanValue()) {
                LogUtils.d(TAG, "show hide change, need report");
                GSSDK.GameCursor gameCursorBuild = createReportGameCursorBuilder(gameCursor).build();
                CountlyUtil.recordEvent(Constants.COUNTYLY_X86_DATA_CHANNEL_STATE, "GameCursor showOrHide:" + (!gameCursorBuild.hasShowOrHide() ? "null" : String.valueOf(gameCursorBuild.getShowOrHide())) + ", GameCursor:" + gameCursorBuild);
            }
            if (zHasShowOrHide) {
                this.lastCursorShowHide = Boolean.valueOf(showOrHide);
            } else {
                this.lastCursorShowHide = null;
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "handleGameCursorStateChangeReport: Exception occurred while processing gameCursor", e10);
        }
    }

    private void handleKeyEvent(int i10, KeyEvent keyEvent, boolean z10) {
        String mappingButtonName = getMappingButtonName(keyEvent);
        if (isKeyboardMappingEnabled()) {
            sendGamePadDataMappingKey(mappingButtonName, keyEvent, keyEvent.getAction());
        } else if (z10) {
            sendKeyCodeDown(HmInputDeviceManager.getRealInputOp(i10));
        } else {
            sendKeyCodeUp(HmInputDeviceManager.getRealInputOp(i10));
        }
    }

    private void handleMicResponse(byte[] bArr) throws InvalidProtocolBufferException {
        RtcPlayer rtcPlayer;
        LogUtils.i(TAG, "handleMicResponse MICStatus ==");
        GSSDK.MICStatus from = GSSDK.MICStatus.parseFrom(bArr);
        if (from == null) {
            LogUtils.e(TAG, "micStatus is null, doNothing ");
            CountlyUtil.recordErrorEvent("micStatus is null, doNothing ");
            return;
        }
        IStreamModel iStreamModel = this.streamModel;
        HmRtcAdapter hmRtcAdapter = (iStreamModel == null || iStreamModel.getStreamType() != 1 || (rtcPlayer = ((RtcModel) this.streamModel).getRtcPlayer()) == null) ? null : rtcPlayer.getmHmRtcAdapter();
        if (hmRtcAdapter == null) {
            LogUtils.e(TAG, "mHmRtcAdapter is empty");
            return;
        }
        if (GSSDK.MICStatus.Status.OPEN.ordinal() != from.getMicStatus().ordinal()) {
            LogUtils.i(TAG, "MICStatus is close");
            hmRtcAdapter.stopAudioRecorder();
            return;
        }
        LogUtils.i(TAG, "MICStatus is open");
        if (GameActionUtil.isRecordPermissionAllowed(this.mContext)) {
            hmRtcAdapter.startAudioRecorder();
        } else if (this.mListener != null) {
            requestPermission("android.permission.RECORD_AUDIO");
        } else {
            LogUtils.e(TAG, "playerListener is empty");
        }
    }

    private void handleShellCommandResult(byte[] bArr) throws InvalidProtocolBufferException {
        GSSDK.ShellCommands_R from = GSSDK.ShellCommands_R.parseFrom(bArr);
        if (from == null) {
            LogUtils.e(TAG, "shellCommandR is empty.");
            CountlyUtil.recordErrorEvent("shellCommandR is empty.");
            return;
        }
        InstanceMessage instanceMessage = new InstanceMessage();
        instanceMessage.type = InstanceMessage.SHELL_COMMAND_TYPE;
        instanceMessage.result = from.getResult();
        instanceMessage.message = from.getOutput();
        String jsonString = JsonUtil.toJsonString(instanceMessage);
        LogUtils.d(TAG, "shellCommandR:" + jsonString);
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onInputMessage(jsonString);
        }
    }

    private void handleTouchEvent(MotionEvent motionEvent) {
        if (isTouchMoveMapperRocker()) {
            this.mTouchUtil.sendJoystickRockerMapping(motionEvent, false);
        } else {
            if (isDisableTouchMoveMapperRocker()) {
                return;
            }
            this.mTouchUtil.touchEvent(motionEvent);
        }
    }

    private void handleVibrator(byte[] bArr) throws InvalidProtocolBufferException {
        VibratorModel vibratorModel = this.vibratorModel;
        Context context = this.mAppContext;
        if (context == null) {
            context = this.mContext;
        }
        vibratorModel.handleX86Vibrator(context, bArr, this.mLastOperateDeviceId, this.curOperateVendorId);
    }

    private void handleX86ImageDownloadResponse(byte[] bArr) throws InvalidProtocolBufferException {
        GSSDK.FileDownload_R from = GSSDK.FileDownload_R.parseFrom(bArr);
        if (from == null) {
            LogUtils.e(TAG, "internalDownloadX86=error: fileDownloadR is empty.");
            CountlyUtil.recordErrorEvent("internalDownloadX86=error: fileDownloadR is empty.");
            handleDownloadError("internalDownloadX86=error: fileDownloadR is empty.");
            return;
        }
        LogUtils.e(TAG, "internalDownloadX86=url=" + from.getUrl());
        if (from.getCode() == GSSDK.FileDownload_R.ErrorCode.SUCCESS.ordinal()) {
            LogUtils.e(TAG, "internalDownloadX86=: fileDownloadR is SUCCESS.");
            handleDownloadR(from);
            return;
        }
        int code = from.getCode();
        GSSDK.FileDownload_R.ErrorCode errorCode = GSSDK.FileDownload_R.ErrorCode.NOT_FOUND;
        if (code == errorCode.ordinal()) {
            handleDownloadError(errorCode.name());
            return;
        }
        int code2 = from.getCode();
        GSSDK.FileDownload_R.ErrorCode errorCode2 = GSSDK.FileDownload_R.ErrorCode.TIMEOUT;
        if (code2 == errorCode2.ordinal()) {
            handleDownloadError(errorCode2.name());
            return;
        }
        int code3 = from.getCode();
        GSSDK.FileDownload_R.ErrorCode errorCode3 = GSSDK.FileDownload_R.ErrorCode.PARSE_MSG_ERROR;
        if (code3 == errorCode3.ordinal()) {
            handleDownloadError(errorCode3.name());
            return;
        }
        int code4 = from.getCode();
        GSSDK.FileDownload_R.ErrorCode errorCode4 = GSSDK.FileDownload_R.ErrorCode.DOWNLOAD_PATH_NOT_EXIST;
        if (code4 == errorCode4.ordinal()) {
            handleDownloadError(errorCode4.name());
            return;
        }
        int code5 = from.getCode();
        GSSDK.FileDownload_R.ErrorCode errorCode5 = GSSDK.FileDownload_R.ErrorCode.GS_ERROR;
        if (code5 == errorCode5.ordinal()) {
            handleDownloadError(errorCode5.name());
        }
    }

    private void handleX86ImageUploadResponse(byte[] bArr) throws InvalidProtocolBufferException {
        GSSDK.FileUpload_R from = GSSDK.FileUpload_R.parseFrom(bArr);
        if (from == null) {
            LogUtils.e(TAG, "error: fileUploadR is empty.");
            CountlyUtil.recordErrorEvent("error: fileUploadR is empty.");
            return;
        }
        if (from.getCode() != GSSDK.FileUpload_R.ErrorCode.SUCCESS.ordinal()) {
            if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.CHECK_BLOCK_HASH_FAIL.ordinal()) {
                return;
            }
            if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.CHECK_FILE_HASH_FAIL.ordinal()) {
                callBackUploadX86Failure("internalUploadX86=: fileUploadR is CHECK_HASH_FAIL.");
                return;
            }
            if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.PARSE_MSG_ERROR.ordinal()) {
                callBackUploadX86Failure("internalUploadX86=: fileUploadR is PARSE_MSG_ERROR.");
                return;
            }
            if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.UPLOAD_PATH_NOT_EXIST.ordinal()) {
                callBackUploadX86Failure("internalUploadX86=: fileUploadR is UPLOAD_PATH_NOT_EXIST.");
                return;
            } else if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.DIRECTORY_PATH_INVALID.ordinal()) {
                callBackUploadX86Failure("internalUploadX86=: fileUploadR is DIRECTORY_PATH_INVALID.");
                return;
            } else {
                if (from.getCode() == GSSDK.FileUpload_R.ErrorCode.SAVE_FILE_ERROR.ordinal()) {
                    callBackUploadX86Failure("internalUploadX86=: fileUploadR is SAVE_FILE_ERROR.");
                    return;
                }
                return;
            }
        }
        LogUtils.d(TAG, "internalUploadX86->fileUploadData success= index=" + from.getAckIndex() + " mFileUploadBean.totalBlocks=" + this.mFileUploadBean.totalBlocks);
        if (from.getAckIndex() == this.mFileUploadBean.totalBlocks - 1) {
            LogUtils.e(TAG, "internalUploadX86=: fileUploadR is SUCCESS.");
            if (this.mUploadJob == null) {
                callbackError(CloudOperation.UPLOAD, "upload failure, mUploadJob is null");
                return;
            }
            LogUtils.e(TAG, "fileUploadR is SUCCESS and msg is ==" + from.getMsg());
            if (this.mUploadJob.getmCloudFile() != null) {
                this.mUploadJob.getmCloudFile().setCloudPath(from.getMsg());
            }
            callbackSuccess(CloudOperation.UPLOAD, this.mUploadJob.getmCloudFile());
            JobExecutor jobExecutor = this.mUploadX86JobExecutor;
            if (jobExecutor != null) {
                jobExecutor.startNextJob();
            }
        }
    }

    private boolean hasExtraListener(CloudFileJob cloudFileJob) {
        return (cloudFileJob == null || cloudFileJob.getmListener() == null) ? false : true;
    }

    private void httpDownload(GSSDK.FileDownload_R fileDownload_R) {
        if (isParamValid(fileDownload_R)) {
            DownloadHelper.getInstance().init(this.mAppContext);
            File filesDir = this.mAppContext.getFilesDir();
            this.mDownloadJob.getmCloudFile().setName(extractFileName(this.mDownloadJob.getmCloudFile().getName()));
            this.mDownloadJob.getmCloudFile().setUrl(fileDownload_R.getUrl());
            this.mDownloadJob.getmCloudFile().setPath(filesDir + net.lingala.zip4j.util.e.F0 + this.mDownloadJob.getmCloudFile().getName());
            this.mDownloadJob.getmCloudFile().setSize((long) fileDownload_R.getSize());
            DownloadHelper.getInstance().download(this.mDownloadJob.getmCloudFile(), this.mDownloadJob.getmListener(), new DownloadHelper.onDownloadListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.36
                @Override // com.haima.hmcp.cloud.job.DownloadHelper.onDownloadListener
                public void onError() {
                    JobExecutor jobExecutor = AbsIjkVideoView.this.mDownloadX86JobExecutor;
                    if (jobExecutor != null) {
                        jobExecutor.startNextJob();
                    }
                }

                @Override // com.haima.hmcp.cloud.job.DownloadHelper.onDownloadListener
                public void onSuccess() {
                    JobExecutor jobExecutor = AbsIjkVideoView.this.mDownloadX86JobExecutor;
                    if (jobExecutor != null) {
                        jobExecutor.startNextJob();
                    }
                }
            });
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    private void init(Context context) {
        this.mContext = context;
        this.mAppContext = context.getApplicationContext();
        this.mHmcpManager = HmcpManager.getInstance();
        CloudFileManager cloudFileManager = CloudFileManager.getInstance();
        this.mCloudFileManager = cloudFileManager;
        cloudFileManager.setContext(context);
        this.mUploadX86JobExecutor = new JobExecutor();
        this.mDownloadX86JobExecutor = new JobExecutor();
        this.mScreenShotConfig = new ScreenShotManager.ScreenShotConfig();
        this.mScreenShotManager = ScreenShotManager.getInstance();
        this.localKeyboardModel = new LocalKeyboardModel();
        this.vibratorModel = new VibratorModel();
        this.mGetCloudImeTransaction = new GetCloudImeTransaction(context);
        this.mDownloadTaskProxy = new DownloadTaskProxy(context);
        this.mColorMode = new ColorMode(0);
        this.mScreenMonitorConfig = new HmScreenMonitorConfig();
        HmcpManager.getInstance().addOnUpdateDataReportStatusListener(this);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.5
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                AbsIjkVideoView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                String str = "HmcpVideoView size: measuredWidth=" + AbsIjkVideoView.this.getMeasuredWidth() + ", measuredHeight=" + AbsIjkVideoView.this.getMeasuredHeight() + ", width=" + AbsIjkVideoView.this.getWidth() + ", height=" + AbsIjkVideoView.this.getHeight();
                CountlyUtil.recordEvent(Constants.COUNTLY_HMCP_VIEW_SIZE, str);
                LogUtils.d(AbsIjkVideoView.TAG, str);
            }
        });
        this.mHandler = new Handler();
        this.mWakeLock = ((PowerManager) this.mAppContext.getSystemService("power")).newWakeLock(26, MY_LOCK);
        this.hasWakeLockPermission = PermissionUtil.checkSelfPermission(getContext(), "android.permission.WAKE_LOCK");
        this.mHistoryPoints = new HashMap<>();
        this.mLastPoints = new HashMap<>();
        this.mDownPointers = new HashSet<>();
        if (Utils.isTV()) {
            this.mDefaultOperateType = VirtualOperateType.NONE;
            LogUtils.d(TAG, "current is TV, mDefaultOperateType set to VirtualOperateType.NONE");
        }
        TouchUtil touchUtil = new TouchUtil();
        this.mTouchUtil = touchUtil;
        touchUtil.setView(this);
        this.appSettingsState = new AppSettingsState();
        if (this.mCursorImageView == null) {
            this.mCursorImageView = new MouseView(getContext());
            this.mCursorOverLay = new CircularProgressIndicatorView(getContext());
            addView(this.mCursorImageView);
            addView(this.mCursorOverLay);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mCursorImageView.getLayoutParams();
            layoutParams.width = this.mCursorWidth;
            layoutParams.height = this.mCursorHeight;
            this.mCursorImageView.setLayoutParams(layoutParams);
            this.mCursorImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            setOverLayParams(this.mCursorWidth, this.mCursorHeight);
        }
        this.x86TouchConfig = new X86TouchConfig();
        this.mStreamingMonitor = new StreamingMonitor();
        initVibrator();
        TvModel tvModel = new TvModel();
        this.tvModel = tvModel;
        tvModel.setListener(new TvModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.6
            @Override // com.haima.hmcp.listeners.TvModelListener
            public boolean isSupportRotate() {
                HmRtcAdapter hmRtcAdapter;
                IStreamModel iStreamModel = AbsIjkVideoView.this.streamModel;
                boolean zIsRotationSupported = true;
                if (iStreamModel instanceof RtcModel) {
                    RtcPlayer rtcPlayer = ((RtcModel) iStreamModel).getRtcPlayer();
                    if (rtcPlayer == null || (hmRtcAdapter = rtcPlayer.getmHmRtcAdapter()) == null) {
                        return true;
                    }
                    zIsRotationSupported = hmRtcAdapter.isRotationSupported();
                }
                LogUtils.d(AbsIjkVideoView.TAG, "isSupportRotate: " + zIsRotationSupported);
                return zIsRotationSupported;
            }

            @Override // com.haima.hmcp.listeners.TvModelListener
            public IRenderViewBase onGetRenderView() {
                return AbsIjkVideoView.this.mRenderView;
            }

            @Override // com.haima.hmcp.listeners.TvModelListener
            public FrameLayout onGetSwitchOrientationTargetView() {
                return AbsIjkVideoView.this;
            }

            @Override // com.haima.hmcp.listeners.TvModelListener
            public void onMouseRotate(boolean z10) {
                AbsIjkVideoView.this.armMouseModel.rotateMouseView(z10);
            }

            @Override // com.haima.hmcp.listeners.TvModelListener
            public ScreenOrientation onScreenOrientation() {
                return AbsIjkVideoView.this.mOrientation;
            }
        });
        TvBattleModel tvBattleModel = new TvBattleModel();
        this.tvBattleMode = tvBattleModel;
        tvBattleModel.setListener(new TvBattleModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.7
            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public boolean hasUserInfo() {
                return AbsIjkVideoView.this.mUserInfo != null;
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public boolean isBackground() {
                return AbsIjkVideoView.this.isBackground;
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public boolean onEvent(String str) {
                return AbsIjkVideoView.this.sendToInstanceMsg(str);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void onInitData(JoinBattle joinBattle) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("tv_battle->onInitData called, joinBattle = ");
                sb2.append(joinBattle != null ? joinBattle : "null");
                LogUtils.d(AbsIjkVideoView.TAG, sb2.toString());
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                ScreenOrientation screenOrientation = joinBattle.orientation;
                absIjkVideoView.screen = screenOrientation;
                absIjkVideoView.setOrientationInit(screenOrientation);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.mHPlayTime = joinBattle.playTime;
                String str = joinBattle.packageName;
                absIjkVideoView2.mAppName = str;
                String str2 = joinBattle.appChannel;
                absIjkVideoView2.mAppChannel = str2;
                CountlyUtil.setAppInfo(str, str2);
                AbsIjkVideoView.this.mToken = joinBattle.cToken;
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public boolean onKeyboardInputState() {
                return AbsIjkVideoView.this.inputTypeModel.getmCurrentKeyboardMode() == 1;
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void onPutDownEventMap(String str, String str2) {
                AbsIjkVideoView.this.downEventMap.put(str, str2);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void onRelease(String str) {
                AbsIjkVideoView.this.release(str);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void onRemoveDownEventMap(String str, String str2) {
                AbsIjkVideoView.this.downEventMap.remove(str, str2);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void onSceneChangedMessage(String str, String str2) {
                LogUtils.d(AbsIjkVideoView.TAG, "tv_battle->sendSceneChangedMessage called, sceneId = " + str + "; extraInfo = " + str2);
                AbsIjkVideoView.this.sendSceneChangedMessage(str, str2);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void requestJoinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener) {
                LogUtils.d(AbsIjkVideoView.TAG, "tv_battle->requestJoinBattle called");
                AbsIjkVideoView.this.setVideoViewListener();
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mRequestManager == null) {
                    absIjkVideoView.initManager();
                }
                AbsIjkVideoView.this.resetState();
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.mRequestManager.setUserInfo(absIjkVideoView2.mUserInfo);
                AbsIjkVideoView.this.mRequestManager.getJoinBattle(!TextUtils.isEmpty("") && internalJoinBattle.joinBattle.isIPV6, internalJoinBattle, onJoinBattleListener);
            }

            @Override // com.haima.hmcp.listeners.TvBattleModelListener
            public void setInputType(int i10) {
                AbsIjkVideoView.this.inputTypeModel.setmCurrentInputMode(i10);
            }
        });
        EventMappingModel eventMappingModel = new EventMappingModel();
        this.eventMappingModel = eventMappingModel;
        eventMappingModel.setListener(new EventMappingModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.8
            @Override // com.haima.hmcp.listeners.EventMappingModelListener
            public void onInputMode(int i10) {
                AbsIjkVideoView.this.inputTypeModel.setmCurrentInputMode(i10);
            }
        });
        InputOpModel inputOpModel = new InputOpModel();
        this.inputOpModel = inputOpModel;
        inputOpModel.setListener(new InputOpModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.9
            @Override // com.haima.hmcp.listeners.InputOpModelListener
            public void onInputOpEvent(int i10, FPoint fPoint, boolean z10) {
                AbsIjkVideoView.this.sendInputOpMotionEvent(i10, fPoint);
                if (z10) {
                    AbsIjkVideoView.this.eventModel.cacheModeMapEvent(i10, fPoint.f33815x, fPoint.f33816y, null);
                }
            }
        });
        MappingInputTypeModel mappingInputTypeModel = new MappingInputTypeModel();
        this.inputTypeModel = mappingInputTypeModel;
        mappingInputTypeModel.setListener(new MappingInputTypeModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.10
            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public void clearKeyEvent() {
                int i10 = AbsIjkVideoView.this.inputTypeModel.getmCurrentInputMode();
                if (i10 != 2 || AbsIjkVideoView.this.eventMappingModel.hasMappingEvent() || AbsIjkVideoView.this.eventMappingModel.hasKeyboardMappingEvent()) {
                    if (i10 == 2 && (AbsIjkVideoView.this.eventMappingModel.hasMappingEvent() || AbsIjkVideoView.this.eventMappingModel.hasKeyboardMappingEvent())) {
                        AbsIjkVideoView.this.eventModel.clearKeyDown();
                        return;
                    } else {
                        AbsIjkVideoView.this.armMouseModel.clearFPoint();
                        return;
                    }
                }
                for (String str : AbsIjkVideoView.this.downEventMap.keySet()) {
                    if (JoystickInputModel.GAME_PAD_EVENT_ABS.equals(str)) {
                        AbsIjkVideoView.this.sendToInstanceMsg(MotionEventUtil.getGamePadHatXEventContent(0.0f));
                        AbsIjkVideoView.this.sendToInstanceMsg(MotionEventUtil.getGamePadHatYEventContent(0.0f));
                    } else {
                        AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                        absIjkVideoView.sendToInstanceMsg(absIjkVideoView.downEventMap.get(str));
                    }
                }
                AbsIjkVideoView.this.downEventMap.clear();
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean hasBattleMapping() {
                if (AbsIjkVideoView.this.tvBattleMode == null || AbsIjkVideoView.this.tvBattleMode.getButtonMappingUtil() == null) {
                    return false;
                }
                return AbsIjkVideoView.this.tvBattleMode.getButtonMappingUtil().isDpad2JoypadInBattle();
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean hasCurrentButtonMapping() {
                return (AbsIjkVideoView.this.eventMappingModel == null || AbsIjkVideoView.this.eventMappingModel.getCurrentButtonMapping() == null) ? false : true;
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean hasInputOpMapping() {
                if (AbsIjkVideoView.this.inputOpModel == null) {
                    return false;
                }
                return AbsIjkVideoView.this.inputOpModel.hasMapping();
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean hasKeyboardMappingEvent() {
                return (AbsIjkVideoView.this.eventMappingModel == null || AbsIjkVideoView.this.eventMappingModel.getKeyboardEventMap() == null || AbsIjkVideoView.this.eventMappingModel.getKeyboardEventMap().isEmpty()) ? false : true;
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean hasMappingEvent() {
                return (AbsIjkVideoView.this.eventMappingModel == null || AbsIjkVideoView.this.eventMappingModel.getMappingEventMap() == null || AbsIjkVideoView.this.eventMappingModel.getMappingEventMap().isEmpty()) ? false : true;
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean isAllowSet() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                return absIjkVideoView.isGameStart || !absIjkVideoView.eventModel.isMorePointIsRun();
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public boolean isBattle() {
                if (AbsIjkVideoView.this.tvBattleMode == null) {
                    return false;
                }
                return AbsIjkVideoView.this.tvBattleMode.isBattle();
            }

            @Override // com.haima.hmcp.listeners.MappingInputTypeModelListener
            public void showMouse(boolean z10) {
                if (AbsIjkVideoView.this.armMouseModel == null) {
                    return;
                }
                if (!z10) {
                    AbsIjkVideoView.this.armMouseModel.hideMouseEvent();
                } else {
                    AbsIjkVideoView.this.armMouseModel.resetDefaultPoint();
                    AbsIjkVideoView.this.armMouseModel.showMouseEvent();
                }
            }
        });
        EventModel eventModel = new EventModel();
        this.eventModel = eventModel;
        eventModel.setEventMappingModel(this.eventMappingModel);
        this.eventModel.setListener(new EventModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.11
            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean isInterceptKey(int i10) {
                return AbsIjkVideoView.this.interceptKey(i10);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onArmMouseHandleTouchEvent(MotionEvent motionEvent) {
                return AbsIjkVideoView.this.armMouseModel.onTouchEvent(motionEvent);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onBattleHandleEvent(int i10, KeyEvent keyEvent) {
                return AbsIjkVideoView.this.tvBattleMode.handleKeyEvent(i10, keyEvent);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onEventSend(String str) {
                return AbsIjkVideoView.this.sendToInstanceMsg(str);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public String onGamePadNumInBattle(String str) {
                return AbsIjkVideoView.this.tvBattleMode.getGamePadNumInBattle(str);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onGamePadStart(InputDevice inputDevice) {
                GamePadManager.getInstance().sendStartGamepad(AbsIjkVideoView.this.getWebSocket(), inputDevice);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onInputDeviceSend(int i10, int i11) {
                AbsIjkVideoView.this.sendInputDevice(i10, i11);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public int onInputType() {
                return AbsIjkVideoView.this.inputTypeModel.getmCurrentInputMode();
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onKeyboardEvent(String str, int i10) {
                AbsIjkVideoView.this.sendKeyboardEvent(str, i10);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public int onKeyboardMode() {
                return AbsIjkVideoView.this.inputTypeModel.getmCurrentKeyboardMode();
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onListenHover() {
                return AbsIjkVideoView.this.armMouseModel.isListenHover();
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onMouseBackEvent() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mPlayerState != 3) {
                    absIjkVideoView.armMouseModel.setUnlockMode();
                }
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onMouseInputEvent(float f10, float f11) {
                AbsIjkVideoView.this.armMouseModel.processJoystickInput(f10, f11);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onNativeDpadGame() {
                return AbsIjkVideoView.this.isNativeDpadGame();
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public int onPlayState() {
                return AbsIjkVideoView.this.mPlayerState;
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public boolean onProcessMouseMove(KeyEvent keyEvent) {
                return AbsIjkVideoView.this.armMouseModel.processMouseMove(keyEvent);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onPutDownEventMap(String str, String str2) {
                AbsIjkVideoView.this.downEventMap.put(str, str2);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onRemoveDownEventMap(String str) {
                AbsIjkVideoView.this.downEventMap.remove(str);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public ScreenOrientation onScreenOrientation() {
                return AbsIjkVideoView.this.mOrientation;
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onSightBeadButtonClick() {
                AbsIjkVideoView.this.armMouseModel.clickSightBeadButton();
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onKeyboardEvent(String str, String str2) {
                AbsIjkVideoView.this.sendKeyboardEvent(str, str2);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onProcessMouseMove(MotionEvent motionEvent, int i10) {
                AbsIjkVideoView.this.armMouseModel.processMouseMove(motionEvent, i10);
            }

            @Override // com.haima.hmcp.listeners.EventModelListener
            public void onKeyboardEvent(String str, String str2, String str3) {
                AbsIjkVideoView.this.sendKeyboardEvent(str, str2, str3);
            }
        });
        if (ResourceManager.getInstance().getResources() == null) {
            CountlyUtil.recordErrorEvent("ResourceManager.getInstance().getResources is null");
            LogUtils.e(TAG, "ResourceManager.getInstance().getResources is null");
            return;
        }
        Context context2 = this.mAttachContext;
        if (context2 == null) {
            context2 = getContext();
        }
        ArmMouseModel armMouseModel = new ArmMouseModel(context2);
        this.armMouseModel = armMouseModel;
        armMouseModel.init(this);
        LogUtils.i(TAG, "armMouseModel init");
        this.armMouseModel.setListener(new ArmMouseModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.12
            @Override // com.haima.hmcp.listeners.ArmMouseModelListener
            public PointCoord onGetFireCoord() {
                ButtonMappingUtil buttonMappingUtil = AbsIjkVideoView.this.eventMappingModel.getButtonMappingUtil();
                if (buttonMappingUtil == null) {
                    return null;
                }
                return buttonMappingUtil.mFireCoord;
            }

            @Override // com.haima.hmcp.listeners.ArmMouseModelListener
            public void onInputDeviceSend(int i10, int i11) {
                AbsIjkVideoView.this.sendInputDevice(i10, i11);
            }

            @Override // com.haima.hmcp.listeners.ArmMouseModelListener
            public void onSendMotionEventContent(int i10, String str) {
                AbsIjkVideoView.this.sendToInstanceMsg(str);
            }

            @Override // com.haima.hmcp.listeners.ArmMouseModelListener
            public void onSendSceneMessage(String str, String str2) {
                AbsIjkVideoView.this.sendSceneChangedMessage(str, str2);
            }
        });
        initGyroscopeHelper();
        this.dpadMouseModel = new DpadMouseModel();
    }

    private void initGamePadDevices() {
        this.isPlugged = false;
        HmInputDeviceManager.initGamePadDevices(new HmInputDeviceManager.OnDeviceConnectStatusListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.14
            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public void deviceConnected(InputDeviceInfo inputDeviceInfo, int i10) {
                AbsIjkVideoView.this.processDeviceConnected(inputDeviceInfo, i10, true);
            }

            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public void deviceDisconnected(InputDeviceInfo inputDeviceInfo, int i10) {
                LogUtils.e(AbsIjkVideoView.TAG, "initGamePadDevices deviceDisconnected inputDeviceInfo:" + inputDeviceInfo + ",index:" + i10);
                AbsIjkVideoView.this.handleDeviceDisConnected(inputDeviceInfo, i10, false);
            }

            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public /* synthetic */ void onInputDeviceAdded() {
                com.haima.hmcp.utils.i.a(this);
            }
        });
    }

    private void initGyroscopeHelper() {
        this.mGyroscopeHelper = new GyroscopeHelper(this.mAppContext, new AnonymousClass13(), this.mOrientation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initKeyboardListener() {
        GamePlatformType gamePlatformType = this.mGamePlatformType;
        if (gamePlatformType != GamePlatformType.X86) {
            this.localKeyboardModel.setHmKeyBoardListener(gamePlatformType, this.hmKeyBoardListener);
        }
    }

    private void initPackageName(GSSDK.GSNotification gSNotification) {
        if (gSNotification == null) {
            LogUtils.e(TAG, "gsNotification is null");
            CountlyUtil.recordErrorEvent("gsNotification is null");
            return;
        }
        String extInfo = gSNotification.getExtInfo();
        try {
            com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.a.parseObject(extInfo);
            if (object == null || !object.containsKey("pkgName")) {
                return;
            }
            this.mPackageName = object.getString("pkgName");
            LogUtils.e(TAG, "initPackageName: " + this.mPackageName);
        } catch (com.alibaba.fastjson.JSONException unused) {
            String str = "parse pkgName error" + extInfo;
            LogUtils.e(TAG, str);
            CountlyUtil.recordErrorEvent(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSensor() {
        if (this.mHmSensorManager == null) {
            HmSensorManager hmSensorManagerNewInstance = HmSensorManager.newInstance(getContext(), this.mWebSocketManager);
            this.mHmSensorManager = hmSensorManagerNewInstance;
            hmSensorManagerNewInstance.setSensorStatusListener(new IHmSensorStatusListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.44
                @Override // com.haima.hmcp.business.sensor.IHmSensorStatusListener
                public void onSensorFailure(String str) {
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    absIjkVideoView.UiMessageSend(absIjkVideoView.getCallbackData(301, str));
                }
            });
        }
        this.mHmSensorManager.sendToGetSensorList();
    }

    private void initVibrator() {
        if (this.mHmVibratorManager == null) {
            Context context = this.mContext;
            if (context == null) {
                LogUtils.e(TAG, "initVibrator failed: mContext is null");
            } else {
                this.mHmVibratorManager = HmVibratorManager.newInstance(context.getApplicationContext());
            }
        }
    }

    private void initX86LayoutConfig() {
        if (this.mRequestManager == null) {
            LogUtils.i(TAG, "initX86LayoutConfig mRequestManager is null");
            return;
        }
        LogUtils.i(TAG, "VirtualDeviceTag----initX86LayoutConfig begin");
        HmVirtualLayoutBean hmVirtualLayoutBeanLoadKeyboardConfigJsonPre = !TextUtils.isEmpty(this.mKeyboardConfigJsonApp) ? loadKeyboardConfigJsonPre() : this.mGlobalConfig.getX86VirtualLayoutConfig(this.mRequestManager.getMetaMap(), getContext(), this.mAppName);
        if (hmVirtualLayoutBeanLoadKeyboardConfigJsonPre == null) {
            LogUtils.i(TAG, "x86 virtual layout config is null");
            return;
        }
        if (hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getConfig() == null) {
            LogUtils.i(TAG, "x86 virtual config is null");
        } else if (this.mDefaultOperateType == null) {
            String default_layout = hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getConfig().getDefault_layout();
            LogUtils.i(TAG, "x86 virtual operate type config is: " + default_layout);
            if (TextUtils.isEmpty(default_layout)) {
                LogUtils.i(TAG, "x86 virtual operate type config is null");
            } else if ("xbox".equals(default_layout)) {
                this.mDefaultOperateType = VirtualOperateType.VIRTUAL_STICK_XBOX;
            } else if ("keyboard".equals(default_layout)) {
                this.mDefaultOperateType = VirtualOperateType.VIRTUAL_KEYBOARD;
            } else {
                LogUtils.i(TAG, "x86 virtual operate type config is not support: " + default_layout);
            }
        } else {
            LogUtils.i(TAG, "x86 virtual operate type config is missed, mDefaultOperateType is already has value: " + this.mDefaultOperateType);
        }
        if (hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getMouse() != null) {
            if (!this.appSettingsState.isTouchModeSetByApp) {
                TouchMode touchMode = TouchMode.parse(hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getMouse().getMode());
                this.mTouchMode = touchMode;
                setTouchModeInner(touchMode);
            }
            if (!this.appSettingsState.isSensitivitySetByApp) {
                setSensitivityInner(hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getMouse().getSensitivity());
            }
            this.mTouchUtil.setBtnSensitivity(hmVirtualLayoutBeanLoadKeyboardConfigJsonPre.getMouse().getBtn_sensitivity());
        } else {
            LogUtils.i(TAG, "x86 virtual mouse config is null");
        }
        HmNetworkBitmapLoader.getInstance().preloadBitmapsFromLayoutBean(getContext());
    }

    private void internalBatchUpload(final List<CloudFile> list, final BatchCloudOperationListener batchCloudOperationListener) {
        if (batchCloudOperationListener == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STOP, "callback interface is null");
            LogUtils.d(TAG, "CloudOperationListener is null, do not execute upload task");
            return;
        }
        this.mBatchCloudOperationListener = batchCloudOperationListener;
        if (list == null || list.size() == 0) {
            batchCloudOperationListener.onStop(CloudOperation.BATCH_UPLOAD, getMessage("fileList is null or size = 0"));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "fileList is null or size = 0");
            return;
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        CloudOperation cloudOperation = CloudOperation.BATCH_UPLOAD;
        if (cloudFileManager.isRunning(cloudOperation)) {
            String str = this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_UPLOAD) ? "Task already running" : "upload web-socket is disconnect";
            batchCloudOperationListener.onStop(cloudOperation, getMessage(str));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str);
            return;
        }
        long j10 = this.webSocketUrlTimeStamp;
        if (j10 == -1) {
            LogUtils.d(TAG, "cloud-file: never mark web-socket url time stamp");
            batchCloudOperationListener.onStop(cloudOperation, getMessage("web-socket url is null"));
        } else {
            if (this.mCloudFileManager.checkTokenValid(j10)) {
                this.mCloudFileManager.uploadBatch(list, new IUpDownloadListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.17
                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public String getBid() {
                        return AbsIjkVideoView.this.getBid();
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public String getCid() {
                        return AbsIjkVideoView.this.getCid();
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public String getDownloadUrl() {
                        return null;
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public String getUploadUrl() {
                        return AbsIjkVideoView.this.getUploadUrl();
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public IWebSocket getWebSocket() {
                        return AbsIjkVideoView.this.getWebSocket();
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onBatchComplete(CloudOperation cloudOperation2, List<BatchCloudOperationListener.FileStatus> list2, List<BatchCloudOperationListener.FileStatus> list3) {
                        if (batchCloudOperationListener != null) {
                            BatchCloudOperationListener.BatchOperationResult batchOperationResult = new BatchCloudOperationListener.BatchOperationResult();
                            batchOperationResult.operationFailedStatusList = list3;
                            batchOperationResult.operationSuccessStatusList = list2;
                            LogUtils.d(AbsIjkVideoView.TAG, "onBatchComplete:" + batchOperationResult.toString());
                            batchCloudOperationListener.onBatchFinish(cloudOperation2, batchOperationResult);
                        }
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onComplete(CloudOperation cloudOperation2) {
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onError(CloudOperation cloudOperation2, String str2) {
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onFail(CloudFile cloudFile, String str2) {
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onHangUp(boolean z10) {
                        if (z10) {
                            CloudFileManager cloudFileManager2 = AbsIjkVideoView.this.mCloudFileManager;
                            CloudOperation cloudOperation2 = CloudOperation.BATCH_UPLOAD;
                            cloudFileManager2.hangUpBatch(cloudOperation2, list);
                            AbsIjkVideoView.this.mCloudFileManager.cancel(cloudOperation2);
                            AbsIjkVideoView.this.refreshStoken(0, "web-socket connect fail and retry", false);
                            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "batch upload task is hang up");
                            AbsIjkVideoView.this.startHangUpTimer(cloudOperation2);
                        }
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onStop(CloudOperation cloudOperation2, String str2, List<CloudFile> list2) {
                        BatchCloudOperationListener batchCloudOperationListener2 = batchCloudOperationListener;
                        if (batchCloudOperationListener2 != null) {
                            batchCloudOperationListener2.onStop(cloudOperation2, AbsIjkVideoView.this.getMessage(str2));
                        }
                    }

                    @Override // com.haima.hmcp.cloud.IUpDownloadListener
                    public void onSuccess(CloudOperation cloudOperation2, CloudFile cloudFile) {
                    }
                });
                return;
            }
            LogUtils.d(TAG, "cloud-file: web-socket token valid time is expire");
            refreshStoken(0, "upload file web-socket stoken expire", false);
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "upload task is hang up");
            this.mCloudFileManager.hangUpBatch(cloudOperation, list);
            startHangUpTimer(cloudOperation);
        }
    }

    private void internalCancelDownload() {
        this.mCloudFileManager.cancel(CloudOperation.DOWNLOAD);
    }

    private void internalCancelDownloadX86() {
        JobExecutor jobExecutor = this.mDownloadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.cancelAllJobs();
        }
        DownloadHelper.getInstance().cancel();
    }

    private void internalCancelUpload() {
        this.mCloudFileManager.cancel(CloudOperation.UPLOAD);
        this.mCloudFileManager.cancel(CloudOperation.BATCH_UPLOAD);
    }

    private void internalCancelUploadX86() {
        JobExecutor jobExecutor = this.mUploadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.cancelAllJobs();
        }
    }

    private void internalDownload(final CloudFile cloudFile) {
        if (this.mCloudOperationListener == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STOP, "callback interface is null");
            LogUtils.d(TAG, "CloudOperationListener is null, do not execute download task");
            return;
        }
        if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName())) {
            callbackStop(CloudOperation.DOWNLOAD, getMessage("files is null or size = 0"));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "files is null or size = 0");
            return;
        }
        if (!TextUtils.isEmpty(cloudFile.getPath())) {
            try {
                String path = cloudFile.getPath();
                String str = File.separator;
                if (!path.endsWith(str)) {
                    cloudFile.setPath(cloudFile.getPath() + str);
                }
                File file = new File(cloudFile.getPath());
                if (!file.exists()) {
                    if (!file.mkdirs()) {
                        callbackError(CloudOperation.DOWNLOAD, getMessage("make file path failed, please check download file path or permission!"));
                        LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + "make file path failed, please check download file path or permission!");
                        return;
                    }
                    LogUtils.i(TAG, "cloud-file: make file path success:" + cloudFile.getPath());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                String str2 = "file path make faile:" + e10.getMessage();
                callbackError(CloudOperation.DOWNLOAD, getMessage(str2));
                LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + str2);
                return;
            }
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        CloudOperation cloudOperation = CloudOperation.DOWNLOAD;
        if (cloudFileManager.isRunning(cloudOperation)) {
            callbackStop(cloudOperation, getMessage("Task already running"));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "Task already running");
            return;
        }
        long j10 = this.webSocketUrlTimeStamp;
        if (j10 == -1) {
            LogUtils.d(TAG, "cloud-file: never mark web-socket url time stamp");
            callbackStop(cloudOperation, getMessage("web-socket url is null"));
            return;
        }
        if (this.mCloudFileManager.checkTokenValid(j10)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cloudFile);
            this.mCloudFileManager.setContext(this.mContext);
            this.mCloudFileManager.download(arrayList, new IUpDownloadListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.19
                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getBid() {
                    return AbsIjkVideoView.this.getBid();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getCid() {
                    return AbsIjkVideoView.this.getCid();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getDownloadUrl() {
                    return AbsIjkVideoView.this.getDownloadUrl();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getUploadUrl() {
                    return null;
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public IWebSocket getWebSocket() {
                    return AbsIjkVideoView.this.getWebSocket();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onBatchComplete(CloudOperation cloudOperation2, List<BatchCloudOperationListener.FileStatus> list, List<BatchCloudOperationListener.FileStatus> list2) {
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onComplete(CloudOperation cloudOperation2) {
                    AbsIjkVideoView.this.callbackFinish(cloudOperation2);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onError(CloudOperation cloudOperation2, String str3) {
                    AbsIjkVideoView.this.callbackError(cloudOperation2, str3);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onFail(CloudFile cloudFile2, String str3) {
                    if (cloudFile2 != null) {
                        str3 = cloudFile2.getPath() + cloudFile2.getName() + "[" + str3 + "]";
                    }
                    String message = AbsIjkVideoView.this.getMessage(str3);
                    LogUtils.d(AbsIjkVideoView.TAG, BaseCloudFileManager.FILTER_TAG + message);
                    AbsIjkVideoView.this.callbackError(CloudOperation.DOWNLOAD, message);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onHangUp(boolean z10) {
                    LogUtils.i(BaseCloudFileManager.FILTER_TAG, "download task hang up :" + z10);
                    if (z10) {
                        CloudFileManager cloudFileManager2 = AbsIjkVideoView.this.mCloudFileManager;
                        CloudOperation cloudOperation2 = CloudOperation.DOWNLOAD;
                        cloudFileManager2.hangUp(cloudOperation2, cloudFile);
                        AbsIjkVideoView.this.mCloudFileManager.cancel(cloudOperation2);
                        AbsIjkVideoView.this.refreshStoken(0, "web-socket connect fail and retry", false);
                        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "download task is hang up");
                        AbsIjkVideoView.this.startHangUpTimer(cloudOperation2);
                    }
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onStop(CloudOperation cloudOperation2, String str3, List<CloudFile> list) {
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    absIjkVideoView.callbackStop(cloudOperation2, absIjkVideoView.getMessage(str3));
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onSuccess(CloudOperation cloudOperation2, CloudFile cloudFile2) {
                    AbsIjkVideoView.this.callbackSuccess(cloudOperation2, cloudFile2);
                }
            });
            return;
        }
        LogUtils.d(TAG, "cloud-file: web-socket token valid time is expire");
        refreshStoken(0, "download file web-socket stoken expire", false);
        CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "download task is hang up");
        this.mCloudFileManager.hangUp(cloudOperation, cloudFile);
        startHangUpTimer(cloudOperation);
    }

    private void internalDownloadX86(final CloudFile cloudFile, final CloudOperationListener cloudOperationListener) {
        if (cloudFile == null || cloudOperationListener == null) {
            LogUtils.d(TAG, "parameter is invalid, file is null or cloudOperationListener is null");
            CountlyUtil.recordErrorEvent("parameter is invalid, file is null or cloudOperationListener is null");
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.1
            @Override // java.lang.Runnable
            public void run() {
                AbsIjkVideoView.this.mDownloadJob = new CloudFileJob(cloudFile, cloudOperationListener);
                boolean zSendEvent = AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getFileDownloadData(cloudFile.getName(), cloudFile.getCloudPath(), 0));
                LogUtils.d(AbsIjkVideoView.TAG, "internalDownloadX86->sendResult=" + zSendEvent);
                if (zSendEvent) {
                    return;
                }
                AbsIjkVideoView.this.callbackError(CloudOperation.DOWNLOAD, "download file failure,internalDownload error please retry");
            }
        };
        JobExecutor jobExecutor = this.mDownloadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.addJob(runnable);
            if (this.mDownloadX86JobExecutor.isRunning()) {
                return;
            }
            this.mDownloadX86JobExecutor.startNextJob();
        }
    }

    private void internalUpload(final CloudFile cloudFile) {
        if (this.mCloudOperationListener == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STOP, "callback interface is null");
            LogUtils.d(TAG, "CloudOperationListener is null, do not execute upload task");
            return;
        }
        if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName()) || TextUtils.isEmpty(cloudFile.getPath())) {
            callbackStop(CloudOperation.UPLOAD, getMessage("files is null or size = 0"));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "files is null or size = 0");
            return;
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        CloudOperation cloudOperation = CloudOperation.UPLOAD;
        if (cloudFileManager.isRunning(cloudOperation)) {
            String str = this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_UPLOAD) ? "Task already running" : "upload web-socket is disconnect";
            callbackStop(cloudOperation, getMessage(str));
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str);
            return;
        }
        long j10 = this.webSocketUrlTimeStamp;
        if (j10 == -1) {
            LogUtils.d(TAG, "cloud-file: never mark web-socket url time stamp");
            callbackStop(cloudOperation, getMessage("web-socket url is null"));
        } else if (this.mCloudFileManager.checkTokenValid(j10)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cloudFile);
            this.mCloudFileManager.upload(arrayList, new IUpDownloadListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.18
                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getBid() {
                    return AbsIjkVideoView.this.getBid();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getCid() {
                    return AbsIjkVideoView.this.getCid();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getDownloadUrl() {
                    return null;
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public String getUploadUrl() {
                    return AbsIjkVideoView.this.getUploadUrl();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public IWebSocket getWebSocket() {
                    return AbsIjkVideoView.this.getWebSocket();
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onBatchComplete(CloudOperation cloudOperation2, List<BatchCloudOperationListener.FileStatus> list, List<BatchCloudOperationListener.FileStatus> list2) {
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onComplete(CloudOperation cloudOperation2) {
                    AbsIjkVideoView.this.callbackFinish(cloudOperation2);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onError(CloudOperation cloudOperation2, String str2) {
                    AbsIjkVideoView.this.callbackError(cloudOperation2, str2);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onFail(CloudFile cloudFile2, String str2) {
                    if (cloudFile2 != null) {
                        str2 = cloudFile2.getPath() + cloudFile2.getName() + "[" + str2 + "]";
                    }
                    String message = AbsIjkVideoView.this.getMessage(str2);
                    AbsIjkVideoView.this.callbackError(CloudOperation.UPLOAD, message);
                    LogUtils.d(AbsIjkVideoView.TAG, BaseCloudFileManager.FILTER_TAG + message);
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onHangUp(boolean z10) {
                    if (z10) {
                        CloudFileManager cloudFileManager2 = AbsIjkVideoView.this.mCloudFileManager;
                        CloudOperation cloudOperation2 = CloudOperation.UPLOAD;
                        cloudFileManager2.hangUp(cloudOperation2, cloudFile);
                        AbsIjkVideoView.this.mCloudFileManager.cancel(cloudOperation2);
                        AbsIjkVideoView.this.refreshStoken(0, "web-socket connect fail and retry", false);
                        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "upload task is hang up");
                        AbsIjkVideoView.this.startHangUpTimer(cloudOperation2);
                    }
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onStop(CloudOperation cloudOperation2, String str2, List<CloudFile> list) {
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    absIjkVideoView.callbackStop(cloudOperation2, absIjkVideoView.getMessage(str2));
                }

                @Override // com.haima.hmcp.cloud.IUpDownloadListener
                public void onSuccess(CloudOperation cloudOperation2, CloudFile cloudFile2) {
                    AbsIjkVideoView.this.callbackSuccess(cloudOperation2, cloudFile2);
                }
            });
        } else {
            LogUtils.d(TAG, "cloud-file: web-socket token valid time is expire");
            refreshStoken(0, "upload file web-socket stoken expire", false);
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "upload task is hang up");
            this.mCloudFileManager.hangUp(cloudOperation, cloudFile);
            startHangUpTimer(cloudOperation);
        }
    }

    private void internalUploadX86(final CloudFile cloudFile, final CloudOperationListener cloudOperationListener) {
        if (cloudOperationListener == null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STOP, "callback interface is null");
            LogUtils.d(TAG, "CloudOperationListener is null, do not execute upload task");
            return;
        }
        if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName()) || TextUtils.isEmpty(cloudFile.getPath())) {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STOP, "files is null or size = 0");
            cloudOperationListener.onStop(CloudOperation.UPLOAD, getMessage("files is null or size = 0"));
            LogUtils.d(TAG, "files is null or size = 0");
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.haima.hmcp.widgets.f
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f34127b.lambda$internalUploadX86$1(cloudFile, cloudOperationListener);
            }
        };
        JobExecutor jobExecutor = this.mUploadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.addJob(runnable);
            if (this.mUploadX86JobExecutor.isRunning()) {
                return;
            }
            this.mUploadX86JobExecutor.startNextJob();
        }
    }

    private boolean isDisableTouchMoveMapperRocker() {
        return (this.mDefaultOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) && getTouchMapperType() == 0;
    }

    private boolean isDpadDirection(int i10) {
        return i10 == 22 || i10 == 21 || i10 == 19 || i10 == 20;
    }

    private boolean isKeyboardMappingEnabled() {
        return JoyStickMappingManager.isKeyboardMapperGamepadEnable;
    }

    private boolean isMouseAction(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        LogUtils.d(TAG, "isMouseAction: action = " + action);
        return action == 9 || action == 10 || action == 7;
    }

    private boolean isParamValid(GSSDK.FileDownload_R fileDownload_R) {
        CloudFileJob cloudFileJob;
        if (fileDownload_R != null && (cloudFileJob = this.mDownloadJob) != null && cloudFileJob.getmCloudFile() != null && !TextUtils.isEmpty(fileDownload_R.getUrl())) {
            return true;
        }
        String str = "internalDownloadX86=: fileDownloadR is = " + fileDownload_R + " mDownloadJob is = " + this.mDownloadJob + " fileDownloadR.getUrl() is = " + fileDownload_R.getUrl();
        LogUtils.e(TAG, str);
        CountlyUtil.recordErrorEvent(str);
        return false;
    }

    private boolean isSameType(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return HmInputDeviceManager.isGamepadPS(str2) ? HmInputDeviceManager.isGamepadPS(str) : !HmInputDeviceManager.isGamepadPS(str);
    }

    private boolean isTouchMoveMapperRocker() {
        boolean z10 = JoyStickMappingManager.isTouchesMoveMapperRockerEnable && this.mDefaultOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX && this.mVirtualDeviceLayout.getVisibility() == 0;
        int touchMapperType = getTouchMapperType();
        LogUtils.d(TAG, "isTouchMoveMapperRocker flag:" + z10 + ", type:" + touchMapperType);
        return z10 && (touchMapperType == 2 || touchMapperType == 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUseClientKeyboardConfigJson() {
        return !TextUtils.isEmpty(this.mKeyboardConfigJsonApp);
    }

    private boolean isValidHmVirtualLayoutJson(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "HmVirtualLayoutJson is empty");
            return false;
        }
        try {
            return ((HmVirtualLayoutBean) com.alibaba.fastjson.a.parseObject(str, HmVirtualLayoutBean.class, Feature.IgnoreNotMatch)) != null;
        } catch (Exception unused) {
            LogUtils.e(TAG, "HmVirtualLayoutJson is invalid");
            return false;
        }
    }

    private boolean isX86SingleGamePadMode() {
        return Constants.CONFIG_IS_SINGLE_GAMEPAD_MODE && Constants.CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP && this.mGamePlatformType == GamePlatformType.X86;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disConnectInput$15() {
        connect2Instance(this.mVInputUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleMessageVirtualGamePAD$14(VirtualGamePadCacheBean virtualGamePadCacheBean, boolean z10, Message message) {
        virtualGamePadCacheBean.getListener().result(z10, message.mid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$internalUploadX86$1(CloudFile cloudFile, CloudOperationListener cloudOperationListener) throws Throwable {
        FileUploadBean fileUploadBean = new FileUploadBean();
        this.mFileUploadBean = fileUploadBean;
        fileUploadBean.name = cloudFile.getName();
        this.mFileUploadBean.path = cloudFile.getPath();
        this.mFileUploadBean.cloudPath = cloudFile.getCloudPath();
        this.mUploadJob = new CloudFileJob(cloudFile, cloudOperationListener);
        File file = new File(this.mFileUploadBean.getPathName());
        if (!file.exists()) {
            callBackUploadX86Failure("internalUploadX86->file not exists");
            return;
        }
        this.mFileUploadBean.size = file.length();
        FileUploadBean fileUploadBean2 = this.mFileUploadBean;
        fileUploadBean2.totalBlocks = ((fileUploadBean2.size + 204800) - 1) / 204800;
        if (file.length() > Constants.CONFIG_UPLOAD_FILE_SIZE_X86) {
            callBackUploadX86Failure("internalUploadX86->file is larger than config size");
        } else {
            sendFileInSlices(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyLongTouchToApp$8(LongTouchBtnConfig longTouchBtnConfig) {
        Context context = this.mContext;
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        LongTouchExtraInfo longTouchExtraInfo = longTouchBtnConfig.extraInfo;
        SendSceneState.longTouchBtnNotify(context, hmcpPlayerListener, longTouchExtraInfo.btn, longTouchExtraInfo.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onInnerFirstFrameArrival$0() {
        this.armMouseModel.onFirstFrameArrival();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshTransferToken$5() {
        connectTransferServer(this.screenUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestKeepAlive$10(OnRequestAliveListener onRequestAliveListener, boolean z10, String str) {
        if (z10 || onRequestAliveListener == null) {
            return;
        }
        onRequestAliveListener.onRequestAliveResult(false, str);
        Runnable runnable = this.mRequestAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestKeepAlive$9(OnRequestAliveListener onRequestAliveListener) {
        if (onRequestAliveListener != null) {
            onRequestAliveListener.onRequestAliveResult(false, "time out because no saasMsg");
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_START_FORCE_KEEP_ALIVE_FAIL, "time out because no saasMsg");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestStopKeepAlive$11(OnRequestAliveListener onRequestAliveListener) {
        if (onRequestAliveListener != null) {
            onRequestAliveListener.onStopAliveResult(false, "time out because no saasMsg");
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_FORCE_KEEP_ALIVE_FAIL, "stopRequestAlive time out because no saasMsg");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestStopKeepAlive$12(OnRequestAliveListener onRequestAliveListener, boolean z10, String str) {
        if (z10 || onRequestAliveListener == null) {
            return;
        }
        onRequestAliveListener.onStopAliveResult(false, str);
        Runnable runnable = this.mStopAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendMessage$3(OnSendMessageListener onSendMessageListener) {
        if (onSendMessageListener != null) {
            onSendMessageListener.result(false, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$4(OnSendMessageListener onSendMessageListener, MessageType messageType, String str) {
        if (onSendMessageListener != null) {
            onSendMessageListener.result(false, "");
        }
        if (MessageType.TYPE_VIRTUAL_GAME_PAD == messageType && Utils.checkIsVirtualGamePadPullPayMessage(str)) {
            CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_PULL_UP_PAY_FAILED, JsonUtil.toJsonString(new ReportVirtualGamePadPayPullResult("", "sendMessage() " + currentStatusInfo() + " or access not connected")));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setScreenOrientationForKeyboard$2() {
        Context context = this.mAttachContext;
        if (context == null) {
            context = this.mAppContext;
        }
        int sysOrientationRotation = Utils.getSysOrientationRotation(context);
        ScreenOrientation convertOrientation = getConvertOrientation(sysOrientationRotation);
        if (convertOrientation == null) {
            CountlyUtil.recordErrorEvent("get OS orientation error, OS rotation = " + sysOrientationRotation);
            return;
        }
        boolean z10 = convertOrientation == ScreenOrientation.PORTRAIT;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("after orientation changed, the activity orientation is: ");
        sb2.append(z10 ? "LANDSCAPE" : "PORTRAIT");
        String string = sb2.toString();
        CountlyUtil.recordEvent(Constants.COUNTLY_ORIENTATION, string);
        LogUtils.d(TAG, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startRecordStream$6(StartRecordStreamListener startRecordStreamListener, boolean z10, String str) {
        if (startRecordStreamListener != null) {
            startRecordStreamListener.startRecord(z10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$stopRecordStream$7(StopRecordStreamListener stopRecordStreamListener, boolean z10, String str, RecordStreamInfo recordStreamInfo) {
        if (stopRecordStreamListener != null) {
            stopRecordStreamListener.stopRecord(z10, str, recordStreamInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateInstanceTime$13(OnUpdateInstanceTimeListener onUpdateInstanceTimeListener, boolean z10, String str) {
        if (onUpdateInstanceTimeListener != null) {
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(z10, str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0017  */
    private void loadVirtualDeviceLayout(VirtualOperateType virtualOperateType) {
        int i10;
        if (virtualOperateType == null) {
            i10 = HmVirtualDeviceManager.FULL_KB_TYPE_OTHER;
        } else {
            int i11 = AnonymousClass54.$SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType[virtualOperateType.ordinal()];
            if (i11 == 2) {
                i10 = 0;
            } else if (i11 != 3) {
                i10 = HmVirtualDeviceManager.FULL_KB_TYPE_OTHER;
            } else {
                i10 = 1;
            }
        }
        if (i10 == -123) {
            LogUtils.d(TAG, "load virtual device layout fail, cause virtualType(" + i10 + ") is not support");
            return;
        }
        LogUtils.d(TAG, "load virtual device layout success, virtualType(" + i10 + ")");
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.setVirtualType(i10);
            HmVirtualDeviceManager hmVirtualDeviceManager = HmVirtualDeviceManager.get();
            this.mVirtualDeviceLayout.loadVirtualData(i10 == 0 ? hmVirtualDeviceManager.getXboxLayout() : hmVirtualDeviceManager.getKeyboardLayout(), i10);
        }
    }

    private void loadVirtualDeviceLayoutAndHide(VirtualOperateType virtualOperateType) {
        loadVirtualDeviceLayout(virtualOperateType);
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.setVisibility(8);
        }
    }

    private LongTouchBtnConfig lookUpConfig(int i10) {
        Map<String, LongTouchBtnConfig> map = this.longTouchBtnConfigMap;
        if (map == null || map.isEmpty()) {
            logAndReport("config is not valid, please check it");
            return null;
        }
        for (Map.Entry<String, LongTouchBtnConfig> entry : this.longTouchBtnConfigMap.entrySet()) {
            if (entry.getValue() != null && entry.getValue().code == i10) {
                return entry.getValue();
            }
        }
        return null;
    }

    private void notifyDeviceActive(InputDeviceInfo inputDeviceInfo, Integer num) {
        if (num == null || inputDeviceInfo == null || TextUtils.isEmpty(inputDeviceInfo.getVendorId())) {
            return;
        }
        callbackDeviceStatus(num.intValue(), true, HmInputDeviceManager.isGamepadPS(inputDeviceInfo.getVendorId()) ? "PS" : DeviceState.JOYSTICK_XBOX, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDeviceConnect(InputDeviceInfo inputDeviceInfo, Integer num) {
        if (num == null || TextUtils.isEmpty(inputDeviceInfo.getVendorId())) {
            return;
        }
        if (isX86SingleGamePadMode()) {
            num = 0;
            Integer num2 = HmInputDeviceManager.getGamePads().get(inputDeviceInfo);
            HmInputDeviceManager.getGamePads().remove(inputDeviceInfo);
            inputDeviceInfo.setVendorId(this.curOperateVendorId);
            if (num2 != null) {
                HmInputDeviceManager.getGamePads().put(inputDeviceInfo, num2);
            }
            LogUtils.d(TAG, "=singleGamePad= notifyDeviceConnect= gamepad size=" + HmInputDeviceManager.getGamePads().size() + " currentIndex=" + num2);
        }
        callbackDeviceStatus(num.intValue(), true, HmInputDeviceManager.isGamepadPS(inputDeviceInfo.getVendorId()) ? "PS" : DeviceState.JOYSTICK_XBOX, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDeviceDisconnect(InputDeviceInfo inputDeviceInfo, int i10) {
        if (TextUtils.isEmpty(inputDeviceInfo.getVendorId())) {
            return;
        }
        if (isX86SingleGamePadMode()) {
            inputDeviceInfo.setVendorId(this.curOperateVendorId);
        }
        callbackDeviceStatus(i10, false, HmInputDeviceManager.isGamepadPS(inputDeviceInfo.getVendorId()) ? "PS" : DeviceState.JOYSTICK_XBOX, false);
    }

    private void notifyLongTouchToApp(final LongTouchBtnConfig longTouchBtnConfig) {
        if (this.mListener == null || longTouchBtnConfig == null || longTouchBtnConfig.extraInfo == null) {
            logAndReport("onLongClickAction call app failure, mListener is null or config is null");
            return;
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34135b.lambda$notifyLongTouchToApp$8(longTouchBtnConfig);
                }
            });
        }
    }

    private void parseInputConfig(HashMap<String, String> map) {
        String str = map.get(Constants.PING2_INTERVAL_TIMES);
        if (TextUtils.isEmpty(str)) {
            this.mHMInputConfig.setPingpongConfig(Constants.DEFAULT_PING2_INTERVAL_TIMES);
        } else {
            this.mHMInputConfig.setPingpongConfig(str);
        }
        String str2 = map.get(Constants.INSTANCE_TIME_OUT);
        int iIntValue = 0;
        try {
            this.mHMInputConfig.setConnectTimeoutMS(TextUtils.isEmpty(str2) ? 0 : Integer.valueOf(str2).intValue());
        } catch (NumberFormatException e10) {
            LogUtils.e(TAG, "instanceTimeOutConfig error:" + e10);
        }
        String str3 = map.get(Constants.INPUT_PING_INTERVAL);
        try {
            this.mHMInputConfig.setInputPingInternal(TextUtils.isEmpty(str3) ? 0 : Integer.valueOf(str3).intValue());
        } catch (NumberFormatException e11) {
            LogUtils.e(TAG, "inputPingInterval error:" + e11);
        }
        String str4 = map.get(Constants.INPUT_PING_TIMEOUT_COUNT_MAX);
        try {
            HMInputConfig hMInputConfig = this.mHMInputConfig;
            if (!TextUtils.isEmpty(str4)) {
                iIntValue = Integer.valueOf(str4).intValue();
            }
            hMInputConfig.setInputPingTimeoutCountMax(iIntValue);
        } catch (NumberFormatException e12) {
            LogUtils.e(TAG, "inputPingTimeoutCountMax error:" + e12);
        }
    }

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
    private void parseSwitchIMEMessage(String str) {
        LogUtils.d(HmIMEManager.TAG, "parse switch IME message: " + str);
        cancelSwitchIMEAckTimer();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (TextUtils.equals(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null), "ime_list")) {
                IMEListMessage iMEListBean = this.localKeyboardModel.toIMEListBean(jSONObject);
                IMEConfig iMEConfig = this.mIMEConfig;
                iMEConfig.setIMEList(iMEListBean != null ? iMEListBean.getList(iMEConfig.getInstanceDefaultIMEConfig()) : null);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("support", this.mIMEConfig.isSupportSwitchIME() ? 1 : 0);
                } catch (JSONException unused) {
                }
                LogUtils.d(HmIMEManager.TAG, "support: " + this.mIMEConfig.isSupportSwitchIME() + "; " + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_IME_SUPPORT, jSONObject2.toString());
                checkClientImeType();
                return;
            }
            IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
            IMESwitchMessage iMESwitchBean = this.localKeyboardModel.toIMESwitchBean(jSONObject);
            if (iMESwitchBean == null) {
                iMESwitchCallbackResult.result = 0;
                iMESwitchCallbackResult.ime = this.mIMEConfig.getCurrentIMEType() == 1 ? this.mIMEConfig.getInstanceIMEName() : this.mIMEConfig.getLocalIMEName();
                iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
                iMESwitchCallbackResult.message = "parse error";
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("switch ime result parse error; ");
                stringBuffer.append("payload: ");
                stringBuffer.append(str);
                iMESwitchCallbackResult.reportMessage = stringBuffer.toString();
                switchIMECallback(iMESwitchCallbackResult);
                return;
            }
            if (TextUtils.isEmpty(iMESwitchBean.getEvent())) {
                iMESwitchCallbackResult.result = 0;
                iMESwitchCallbackResult.ime = this.mIMEConfig.getCurrentIMEType() == 1 ? this.mIMEConfig.getInstanceIMEName() : this.mIMEConfig.getLocalIMEName();
                iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
                iMESwitchCallbackResult.message = "parse error";
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("event is null; ");
                stringBuffer2.append("payload: ");
                stringBuffer2.append(str);
                iMESwitchCallbackResult.reportMessage = stringBuffer2.toString();
                switchIMECallback(iMESwitchCallbackResult);
                return;
            }
            boolean zEquals = IMEConfig.LOCAL_IME.equals(iMESwitchBean.getEvent());
            if ("1".equals(iMESwitchBean.getCode())) {
                iMESwitchCallbackResult.result = 1;
                if (HmcpManager.getInstance().isRtcStream() && HmDataChannelDeviceSwitch.getInstance().isDataChannelEnable() && !zEquals) {
                    LogUtils.d(HmIMEManager.TAG, "DC通道切换实例键盘后关闭本地键盘");
                    HmIMEManager.getInstance().hideInput();
                }
            } else {
                iMESwitchCallbackResult.result = 0;
                iMESwitchCallbackResult.code = iMESwitchBean.getCode();
                iMESwitchCallbackResult.message = iMESwitchBean.message;
            }
            switchIMECallback(iMESwitchCallbackResult);
            this.mIMEConfig.setCurrentIMEType(zEquals ? 1 : 0);
        } catch (JSONException unused2) {
            IMESwitchCallbackResult iMESwitchCallbackResult2 = new IMESwitchCallbackResult();
            iMESwitchCallbackResult2.result = 0;
            iMESwitchCallbackResult2.code = HmIMEManager.ERROR_CODE_OTHER;
            iMESwitchCallbackResult2.message = "parse error";
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("ack parse error; ");
            stringBuffer3.append("payload: ");
            stringBuffer3.append(str);
            iMESwitchCallbackResult2.reportMessage = stringBuffer3.toString();
            switchIMECallback(iMESwitchCallbackResult2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDeviceConnected(InputDeviceInfo inputDeviceInfo, int i10, boolean z10) {
        if (inputDeviceInfo == null) {
            return;
        }
        if (getGamepadType() == 0) {
            handleDeviceConnected(inputDeviceInfo, i10, false, z10);
            return;
        }
        if (3 == getGamepadType() || 4 == getGamepadType()) {
            handleConnect(HmInputDeviceManager.getGamePads(), Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID, inputDeviceInfo, i10, false, z10);
        } else if (!isSameType(inputDeviceInfo.getVendorId(), this.fixedGamepadVendorId)) {
            handleConnect(HmInputDeviceManager.getGamePads(), this.fixedGamepadVendorId, inputDeviceInfo, i10, false, z10);
        } else {
            handleConnect(HmInputDeviceManager.getGamePads(), (!isSameType(this.fixedGamepadVendorId, Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID) || TextUtils.isEmpty(Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID)) ? this.fixedGamepadVendorId : Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID, inputDeviceInfo, i10, false, z10);
        }
    }

    private void processScreenOrientation(String str) {
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
            return;
        }
        this.mHmScreenMonitor.parseMessage(str);
    }

    private void processSensorList(String str) {
        HmSensorManager hmSensorManager = this.mHmSensorManager;
        if (hmSensorManager != null) {
            hmSensorManager.processSensorList(str);
        }
    }

    private void processSensorSingle(String str) {
        HmSensorManager hmSensorManager = this.mHmSensorManager;
        if (hmSensorManager != null) {
            hmSensorManager.processSensorSingle(str);
        }
    }

    private void processShareMessage(String str) {
        try {
            LogUtils.i(TAG, "cloud-file: request share message:" + str);
            com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.a.parseObject(str);
            if (object != null) {
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onCloudDeviceStatus(object.toJSONString());
                    LogUtils.i(TAG, "cloud-file: share content:" + object.toJSONString());
                    CountlyUtil.recordEvent(Constants.COUNTLY_SHARE);
                }
            } else {
                CountlyUtil.recordErrorEvent("share message is empty data");
            }
        } catch (com.alibaba.fastjson.JSONException e10) {
            CountlyUtil.recordErrorEvent("share message format is error:" + e10.getLocalizedMessage());
            LogUtils.e(TAG, "cloud-file: share content format error:" + e10.getLocalizedMessage());
        }
    }

    private void processStorageStatus(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "process storage status fail, cause payload is empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).optString("data", ""));
            String strOptString = jSONObject.optString("action", "");
            int iOptInt = jSONObject.optInt(Constants.WS_MESSAGE_STORAGE_USABLE_PERCENTAGE, -1);
            if (TextUtils.isEmpty(strOptString) || iOptInt <= -1) {
                LogUtils.d(TAG, "process storage status fail, cause action = " + strOptString + ", usablePercentage = " + iOptInt);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("action", strOptString);
                jSONObject2.put(Constants.WS_MESSAGE_STORAGE_USABLE_PERCENTAGE, iOptInt);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("type", Constants.WS_MESSAGE_TYPE_STORAGE);
                jSONObject3.put("data", jSONObject2);
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onCloudDeviceStatus(jSONObject3.toString());
                }
            }
        } catch (JSONException unused) {
            LogUtils.d(TAG, "process storage status fail, cause json exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reCloudServiceRequestV2() {
        if (this.tokenTimeStampModel.isWait()) {
            this.tokenTimeStampModel.callbackUpdateToken(this.mListener);
            CountlyUtil.recordEvent(Constants.COUNTLY_REPLAY_WAIT_FOR_UPDATE_TOKEN);
            LogUtils.e(TAG, "replay stop, wait for app update cToken and timestamp");
        } else {
            if (!this.tokenTimeStampModel.needUpdateTimeStamp()) {
                this.mRequestManager.getReCloudServiceRequestV2();
                return;
            }
            boolean zCallbackUpdateToken = this.tokenTimeStampModel.callbackUpdateToken(this.mListener);
            this.tokenTimeStampModel.wait(zCallbackUpdateToken);
            if (zCallbackUpdateToken) {
                CountlyUtil.recordEvent(Constants.COUNTLY_REPLAY_WAIT_FOR_UPDATE_TOKEN);
            } else {
                LogUtils.e(TAG, "update token timestamp callback fail, HmcpPlayerListener is null");
                this.mRequestManager.getReCloudServiceRequestV2();
            }
        }
    }

    private void recordDeviceVibratorInfo() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isSupportVibrator", VibratorUtil.isSupportVibratorAbility(this.mAppContext));
            jSONObject.put("isSupportDualVibrator", VibratorUtil.isSupportDualVibrator(this.mAppContext));
            CountlyUtil.recordEvent(Constants.COUNTLY_DEVICE_VIBRATOR_INFO, jSONObject.toString());
        } catch (Exception e10) {
            LogUtils.e(TAG, "recordDeviceVibratorInfo failed: " + e10);
        }
    }

    private void registGamePadListener() {
        HmInputDeviceManager.registGamePadListener(this.mAppContext, new HmInputDeviceManager.OnDeviceConnectStatusListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.34
            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public void deviceConnected(InputDeviceInfo inputDeviceInfo, int i10) {
                LogUtils.i(AbsIjkVideoView.TAG, "=singleGamePad= deviceConnected");
                AbsIjkVideoView.this.processDeviceConnected(inputDeviceInfo, i10, false);
            }

            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public void deviceDisconnected(InputDeviceInfo inputDeviceInfo, int i10) {
                LogUtils.e(AbsIjkVideoView.TAG, "registGamePadListener  deviceDisconnected inputDeviceInfo:" + inputDeviceInfo + ",index:" + i10);
                AbsIjkVideoView.this.handleDeviceDisConnected(inputDeviceInfo, i10, false);
            }

            @Override // com.haima.hmcp.utils.HmInputDeviceManager.OnDeviceConnectStatusListener
            public void onInputDeviceAdded() {
                AbsIjkVideoView.this.resetLockStatusFlag();
            }
        });
    }

    private void registerArmDevicesWatcher() {
        if (this.armInputDeviceChangeListener == null) {
            this.armInputDeviceChangeListener = new GamePadManager.InputChangeListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.52
                @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
                public void onDeviceAdded(InputDevice inputDevice) {
                    if (inputDevice == null) {
                        return;
                    }
                    LogUtils.d(AbsIjkVideoView.TAG, "arm device status: add " + inputDevice.getId() + " " + inputDevice.getName());
                    int gamePadIndex = GamePadManager.getInstance().getGamePadIndex(inputDevice);
                    if (gamePadIndex == -1) {
                        LogUtils.d(AbsIjkVideoView.TAG, "arm device status: not find index");
                        return;
                    }
                    InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
                    inputDeviceInfo.setVendorId(HmInputDeviceManager.getVendorId(inputDevice));
                    AbsIjkVideoView.this.notifyDeviceConnect(inputDeviceInfo, Integer.valueOf(gamePadIndex));
                    LogUtils.d(AbsIjkVideoView.TAG, "arm device status: notify device added");
                }

                @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
                public void onDeviceRemoved(InputDevice inputDevice) {
                    LogUtils.d(AbsIjkVideoView.TAG, "arm device status: remove " + inputDevice.getId() + " " + inputDevice.getName());
                    int gamePadIndex = GamePadManager.getInstance().getGamePadIndex(inputDevice);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("arm device status: find index: ");
                    sb2.append(gamePadIndex);
                    LogUtils.d(AbsIjkVideoView.TAG, sb2.toString());
                    if (gamePadIndex == -1) {
                        Integer numFindIndexFromShareDefaultIndexList = GamePadManager.getInstance().findIndexFromShareDefaultIndexList(inputDevice);
                        LogUtils.d(AbsIjkVideoView.TAG, "arm device status: find share index: " + numFindIndexFromShareDefaultIndexList);
                        if (numFindIndexFromShareDefaultIndexList == null) {
                            return;
                        } else {
                            gamePadIndex = 0;
                        }
                    }
                    InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
                    inputDeviceInfo.setVendorId(HmInputDeviceManager.getVendorId(inputDevice));
                    AbsIjkVideoView.this.notifyDeviceDisconnect(inputDeviceInfo, gamePadIndex);
                    LogUtils.d(AbsIjkVideoView.TAG, "arm device status: notify device removed");
                }

                @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
                public boolean onEvent(String str, boolean z10) {
                    return AbsIjkVideoView.this.sendToInstanceMsg(str, z10);
                }
            };
            GamePadManager.getInstance().registerDeviceChangeListener(this.mAppContext, this.armInputDeviceChangeListener);
        }
        GamePadManager.getInstance().init(this.mAppContext);
    }

    private void replugGamepad() {
        int gamepadType = getGamepadType();
        if (gamepadType == 0) {
            switchDevice(Constants.GAMEPAD_VENDOR_ID_DEFAULT);
            return;
        }
        if (gamepadType == 1) {
            switchDevice(Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT);
            return;
        }
        if (gamepadType == 2) {
            switchDevice(Constants.GAMEPAD_PS_VENDOR_ID_DEFAULT);
        } else if (gamepadType == 3 || gamepadType == 4) {
            switchDevice(Constants.GAMEPAD_VENDOR_ID_108);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x0030 A[Catch: JSONException -> 0x005d, TRY_LEAVE, TryCatch #2 {JSONException -> 0x005d, blocks: (B:11:0x002c, B:13:0x0030, B:16:0x0049, B:19:0x004f), top: B:33:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:13:0x0030, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x007b, please report this as an issue */
    public void reportSensitivity() {
        JSONException e10;
        boolean z10;
        TouchUtil touchUtil;
        JSONObject jSONObject = new JSONObject();
        boolean z11 = false;
        try {
            z10 = true;
            if (this.mSensitivityReportFlag != null) {
                jSONObject.put(Constants.COUNTLY_NAME_SET_MOUSE_SENSITIVITY, this.mSensitivityReportFlag + "");
                try {
                    this.mSensitivityReportFlag = null;
                    z11 = true;
                    try {
                        if (this.mFunctionSensitivityReportFlag != null) {
                            jSONObject.put(Constants.COUNTLY_NAME_SET_FN_BTNS_SENSITIVITY, this.mFunctionSensitivityReportFlag + "");
                            this.mFunctionSensitivityReportFlag = null;
                            z11 = true;
                        }
                        touchUtil = this.mTouchUtil;
                        if (touchUtil != null && z11) {
                            jSONObject.put("usingSensitivity", String.valueOf(touchUtil.getUsingSensitivity()));
                        }
                    } catch (JSONException e11) {
                        z10 = z11;
                        e10 = e11;
                        LogUtils.e(TAG, " reportSensitivity failed:" + e10);
                        z11 = z10;
                    }
                } catch (JSONException e12) {
                    e10 = e12;
                    LogUtils.e(TAG, " reportSensitivity failed:" + e10);
                    z11 = z10;
                    if (z11) {
                        String string = jSONObject.toString();
                        LogUtils.e(TAG, " reportSensitivity :" + string);
                        recordLifeCycleEvent(string);
                    }
                }
            } else {
                if (this.mFunctionSensitivityReportFlag != null) {
                    jSONObject.put(Constants.COUNTLY_NAME_SET_FN_BTNS_SENSITIVITY, this.mFunctionSensitivityReportFlag + "");
                    this.mFunctionSensitivityReportFlag = null;
                    z11 = true;
                }
                touchUtil = this.mTouchUtil;
                if (touchUtil != null) {
                    jSONObject.put("usingSensitivity", String.valueOf(touchUtil.getUsingSensitivity()));
                }
            }
        } catch (JSONException e13) {
            e10 = e13;
            z10 = false;
        }
        if (z11) {
            String string2 = jSONObject.toString();
            LogUtils.e(TAG, " reportSensitivity :" + string2);
            recordLifeCycleEvent(string2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCapslockFlag() {
        LogUtils.i(TAG, "resetCapslockFlag");
        this.capsLockFlag = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetLockStatusFlag() {
        LogUtils.i(TAG, "resetLockStatusFlag");
        this.keyLockStatusFlag = false;
    }

    private void resetSensitivityAfterSwitchMode(int i10, List<HmVirtualViewBean> list) {
        boolean z10;
        if (list == null) {
            z10 = false;
            break;
        }
        Iterator<HmVirtualViewBean> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            HmVirtualViewBean next = it2.next();
            if (next != null && next.getKeyType() == i10) {
                z10 = true;
                break;
            }
        }
        if (!z10) {
            LogUtils.w(TAG, "Missing sensitivity button for targetKeyType: " + i10 + " and useSpecificSensitivity false");
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.useSpecificSensitivity(false);
                this.mTouchUtil.setSpecificSensitivity(1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resizeVirtualLayout(int i10, int i11) {
        LogUtils.d(TAG, "resizeVirtualLayout start:" + i10 + " " + i11);
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView == null) {
            LogUtils.e(TAG, "resizeVirtualLayout failed:mVirtualDeviceLayout is not existed ");
            return;
        }
        hmVirtualTextureView.setVisibility(0);
        this.mVirtualDeviceLayout.resetOperator();
        GlobalConfig globalConfig = this.mGlobalConfig;
        if (globalConfig != null) {
            globalConfig.parseKeyboardMapConfigs(this.mMetaInfos, this.mAppContext);
        }
        HmVirtualLayoutBean virtualLayoutBean = getVirtualLayoutBean();
        updateVirtualLayoutSize(i10, i11);
        if (virtualLayoutBean == null) {
            LogUtils.e(TAG, "resizeVirtualLayout error : layoutBean is empty");
        } else {
            loadVirtualDeviceLayout(this.mDefaultOperateType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendClipboard(ClipboardManager clipboardManager) {
        if (clipboardManager == null || !clipboardManager.hasPrimaryClip()) {
            return;
        }
        ClipData primaryClip = clipboardManager.getPrimaryClip();
        if (primaryClip == null) {
            LogUtils.e(TAG, "sendClipboard exception:clipData is null");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ClipDescription description = primaryClip.getDescription();
            if (description == null) {
                LogUtils.e(TAG, "sendClipboard exception:description is null");
                return;
            }
            long timestamp = description.getTimestamp();
            if (timestamp == this.mClipDataTimestamp) {
                LogUtils.e(TAG, "clipboard same clipdata, not handle");
                return;
            }
            this.mClipDataTimestamp = timestamp;
        }
        ClipData.Item itemAt = primaryClip.getItemCount() > 0 ? primaryClip.getItemAt(0) : null;
        if (itemAt == null) {
            LogUtils.e(TAG, "sendClipboard exception:item is null");
            return;
        }
        String strValueOf = String.valueOf(itemAt.getText());
        if (!hasOperatePermission()) {
            LogUtils.e(TAG, "not hasOperatePermission, not send = " + strValueOf);
            return;
        }
        if (ClipboardUtils.isClipboardReceived()) {
            LogUtils.e(TAG, "clipboard is received, not send");
            ClipboardUtils.setClipboardReceived(false);
            return;
        }
        LogUtils.e(TAG, "clipboard send Clipboard==" + strValueOf);
        if (TextUtils.equals(this.mClipboardContent, strValueOf)) {
            LogUtils.e(TAG, "clipboard not changed");
            return;
        }
        this.mClipboardContent = strValueOf;
        ArrayList arrayList = new ArrayList();
        ClipBoardItemData clipBoardItemData = new ClipBoardItemData();
        clipBoardItemData.itemType = "text/plain";
        clipBoardItemData.itemData = strValueOf;
        arrayList.add(clipBoardItemData);
        ClipBoardData clipBoardData = new ClipBoardData();
        clipBoardData.data = arrayList;
        clipBoardData.dataType = 0;
        clipBoardData.code = ClipBoardData.CLIPBOARD_DATA_CODE;
        sendWsMessage(JsonUtil.toJsonString(clipBoardData), WsMessageType.CLIPBOARD_TYPE, new OnSendWsMessageListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.27
            @Override // com.haima.hmcp.listeners.OnSendWsMessageListener
            public void sendWsMessageFail(String str) {
                LogUtils.e(AbsIjkVideoView.TAG, "clipboard handleClipboard sendWsMessageFail==" + str);
                CountlyUtil.recordErrorEvent("handleClipboard, sendWsMessageFail=" + str);
            }

            @Override // com.haima.hmcp.listeners.OnSendWsMessageListener
            public void sendWsMessageSuccess() {
                LogUtils.e(AbsIjkVideoView.TAG, "clipboard sendWsMessageSuccess==");
            }
        });
    }

    private int sendData(byte[] bArr) {
        FileUploadBean fileUploadBean = this.mFileUploadBean;
        fileUploadBean.blockSize = bArr.length;
        fileUploadBean.type = 0;
        fileUploadBean.blockData = bArr;
        int iSendLargeData = sendLargeData(ProtoBufUtil.getFileUploadData(fileUploadBean), null);
        LogUtils.d(TAG, "internalUploadX86->sendResult=" + iSendLargeData);
        return iSendLargeData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0083 -> B:48:0x0089). Please report as a decompilation issue!!! */
    private void sendFileInSlices(int i10) throws Throwable {
        int iSendData;
        ?? r10 = 0;
        FileInputStream fileInputStream = null;
        r10 = 0;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(this.mFileUploadBean.getPathName());
                    r10 = 204800;
                    try {
                        byte[] bArr = new byte[FileUploadBean.FILE_SEGMENT_SIZE];
                        while (true) {
                            long j10 = i10;
                            FileUploadBean fileUploadBean = this.mFileUploadBean;
                            if (j10 >= fileUploadBean.totalBlocks) {
                                break;
                            }
                            fileUploadBean.blockIndex = j10;
                            fileInputStream2.getChannel().position(i10 * FileUploadBean.FILE_SEGMENT_SIZE);
                            int i11 = fileInputStream2.read(bArr, 0, FileUploadBean.FILE_SEGMENT_SIZE);
                            if (i11 < 204800) {
                                byte[] bArr2 = new byte[i11];
                                System.arraycopy(bArr, 0, bArr2, 0, i11);
                                iSendData = sendData(bArr2);
                            } else {
                                iSendData = sendData(bArr);
                            }
                            try {
                                Thread.sleep(5L);
                            } catch (InterruptedException e10) {
                                CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_ERROR, "upload InterruptedException");
                                e10.printStackTrace();
                            }
                            if (iSendData == -1) {
                                callBackUploadX86Failure("fail to upload file, rtc send_ret_failed,internalUploadX86 failed");
                                break;
                            } else if (iSendData == 1) {
                                LogUtils.d(TAG, "upload file block,internalUploadX86 block, retring");
                            } else if (iSendData == 0) {
                                i10++;
                            }
                        }
                        fileInputStream2.close();
                    } catch (IOException e11) {
                        e = e11;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        callBackUploadX86Failure("fail to upload file, file is not exists or path is not correct");
                        r10 = fileInputStream;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            r10 = fileInputStream;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r10 = fileInputStream2;
                        if (r10 != 0) {
                            try {
                                r10.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                                callBackUploadX86Failure("fail to upload file, file close exception");
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (IOException e14) {
            e14.printStackTrace();
            callBackUploadX86Failure("fail to upload file, file close exception");
            r10 = r10;
        }
    }

    private void sendGamePadData(InputEvent inputEvent) {
        sendGamePadData(inputEvent, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendInputDevice(int i10, int i11) {
        HmcpPlayerListener hmcpPlayerListener;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendInputDevice: ");
        sb2.append(i10);
        sb2.append(" mCurrentInputDevice:");
        sb2.append(this.mCurrentInputDevice);
        sb2.append(" mListener != null:");
        sb2.append(this.mListener != null);
        LogUtils.d(TAG, sb2.toString());
        if (this.mCurrentInputDevice == i10 || (hmcpPlayerListener = this.mListener) == null) {
            return;
        }
        hmcpPlayerListener.onInputDevice(i10, i11);
        this.mCurrentInputDevice = i10;
    }

    private void sendKeyboardLockChangedStatus(KeyEvent keyEvent) {
        LogUtils.i(TAG, "sendKeyboardLockChangedStatus");
        sendKeyLockStatus(GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMLOCK, LockKeyUtils.isNumLockOn(keyEvent));
        sendKeyLockStatus(GSSDK.OneInputOPData.InputOP.OP_KEY_VK_CAPITAL, LockKeyUtils.isCapsLockOn(keyEvent));
        sendKeyLockStatus(GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SCROLL, LockKeyUtils.isScrollLockOn(keyEvent));
    }

    private void sendMSG(int i10) {
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = Integer.valueOf(i10);
        messageObtain.what = 33;
        this.mHmcpHandler.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProtoMsg() {
        LogUtils.d(TAG, "sendProtoMsg");
        if (Utils.isTV() && this.mGamePlatformType == GamePlatformType.ARM) {
            HmcpRequest hmcpRequest = this.mRequestManager;
            if (hmcpRequest == null) {
                LogUtils.d(TAG, "----sendProtoMsg fail, mRequestManager is null");
                return;
            }
            ProtoDataGameInfo protoDataGameInfo = hmcpRequest.getProtoDataGameInfo();
            if (protoDataGameInfo == null) {
                LogUtils.d(TAG, "----sendProtoMsg---failed, cause ProtoDataGameInfo is null");
            } else {
                sendMessage(com.alibaba.fastjson.a.toJSONString(protoDataGameInfo), MessageType.PAY_TYPE, new OnSendMessageListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.50
                    @Override // com.haima.hmcp.listeners.OnSendMessageListener
                    public void result(boolean z10, String str) {
                        LogUtils.d(AbsIjkVideoView.TAG, "----sendProtoMsg---success:" + z10 + ",mid:" + str);
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("status", z10);
                            jSONObject.put("mid", str);
                        } catch (JSONException e10) {
                            LogUtils.e(AbsIjkVideoView.TAG, "----sendProtoMsg---" + Log.getStackTraceString(e10));
                        }
                        AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                        absIjkVideoView.UiMessageSend(absIjkVideoView.getCallbackData(200, jSONObject.toString()));
                    }
                });
            }
        }
    }

    private void setNativeDpadGame(boolean z10) {
        LogUtils.d(TAG, "setNativeDpadGame:" + z10);
        this.nativeDpadGame = z10;
        this.eventMappingModel.setNativeDpadGame(z10);
    }

    private void setOverLayParams(int i10, int i11) {
        CircularProgressIndicatorView circularProgressIndicatorView = this.mCursorOverLay;
        if (circularProgressIndicatorView == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) circularProgressIndicatorView.getLayoutParams();
        layoutParams.width = (int) (i10 * 1.8f);
        layoutParams.height = (int) (i11 * 1.8f);
        this.mCursorOverLay.setLayoutParams(layoutParams);
    }

    private void setPCMouseModeInternal(boolean z10) {
        LogUtils.d(TAG, "setPCMouseMode:" + z10);
        this.mIsPCMouseMode = z10;
        if (z10) {
            setTouchMode(TouchMode.TOUCH_MODE_SCREEN);
            return;
        }
        TouchUtil touchUtil = this.mTouchUtil;
        if (touchUtil != null) {
            touchUtil.updateMouse();
            TouchUtil touchUtil2 = this.mTouchUtil;
            touchUtil2.changeMouseStyle(touchUtil2.getCursorStyle());
        }
    }

    private void setRequestAliveListener(OnRequestAliveListener onRequestAliveListener) {
        this.mRequestKeepAliveListener = onRequestAliveListener;
    }

    private void setSensitivityInner(float f10) {
        if (this.mGamePlatformType == GamePlatformType.X86) {
            this.mTouchUtil.setSensitivity(f10);
        }
    }

    private boolean setTouchModeInner(TouchMode touchMode) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        if (Utils.isTV()) {
            LogUtils.e(TAG, "TV not support setTouchMode");
            return false;
        }
        if (this.mIsPCMouseMode && touchMode != TouchMode.TOUCH_MODE_SCREEN) {
            LogUtils.e(TAG, "Not supported in hidden remote mouse mode");
            return false;
        }
        this.mTouchMode = touchMode;
        this.mTouchUtil.setMouseMode(touchMode);
        return true;
    }

    private boolean showFullKeyboard(boolean z10) {
        if (!z10) {
            HmVirInputKBDialog hmVirInputKBDialog = this.fullKeyBoardDialog;
            if (hmVirInputKBDialog == null || !hmVirInputKBDialog.isShowing()) {
                return false;
            }
            this.fullKeyBoardDialog.dismiss();
            return true;
        }
        PluginContext pluginContext = getPluginContext();
        if (pluginContext == null) {
            LogUtils.e(TAG, "pluginContext is null");
            return false;
        }
        HmVirInputKBDialog hmVirInputKBDialog2 = this.fullKeyBoardDialog;
        if (hmVirInputKBDialog2 != null && hmVirInputKBDialog2.isShowing()) {
            LogUtils.e(TAG, "fullKeyBoardDialog is showing");
            return false;
        }
        HmVirInputKBDialog hmVirInputKBDialog3 = new HmVirInputKBDialog(pluginContext, this);
        this.fullKeyBoardDialog = hmVirInputKBDialog3;
        hmVirInputKBDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.37
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getIMStatusData(GSSDK.StatusType.STATUS_HIDE));
                AbsIjkVideoView.this.syncCapLock(HmVirFullKeyBoardLayout.IS_UPPER);
                AbsIjkVideoView.this.resetLockStatusFlag();
                AbsIjkVideoView.this.resetCapslockFlag();
            }
        });
        this.fullKeyBoardDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.38
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                AbsIjkVideoView.this.syncCapLock(HmVirFullKeyBoardLayout.IS_UPPER);
            }
        });
        this.fullKeyBoardDialog.show();
        sendEvent(ProtoBufUtil.getIMStatusData(GSSDK.StatusType.STATUS_SHOW));
        syncCapLock(HmVirFullKeyBoardLayout.IS_UPPER);
        return true;
    }

    private boolean showLocalKeyboard(boolean z10) {
        if (!z10) {
            InputEditDialog inputEditDialog = this.localKeyBoardDialog;
            if (inputEditDialog == null || !inputEditDialog.isShowing()) {
                return false;
            }
            this.localKeyBoardDialog.dismiss();
            return true;
        }
        PluginContext pluginContext = getPluginContext();
        if (pluginContext == null) {
            LogUtils.e(TAG, "pluginContext is null");
            return false;
        }
        InputEditDialog inputEditDialog2 = this.localKeyBoardDialog;
        if (inputEditDialog2 != null && inputEditDialog2.isShowing()) {
            LogUtils.e(TAG, "localKeyBoardDialog is showing");
            return false;
        }
        InputEditDialog inputEditDialog3 = new InputEditDialog(pluginContext, new View.OnKeyListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.39
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i10, KeyEvent keyEvent) {
                if (!AbsIjkVideoView.this.isAllowInput()) {
                    return false;
                }
                if (i10 == 67 && keyEvent.getAction() == 0) {
                    AbsIjkVideoView.this.sendKeyCodeDown(GSSDK.OneInputOPData.InputOP.forNumber(8));
                } else if (i10 == 67 && keyEvent.getAction() == 1) {
                    AbsIjkVideoView.this.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.39.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AbsIjkVideoView.this.sendKeyCodeUp(GSSDK.OneInputOPData.InputOP.forNumber(8));
                        }
                    }, 16L);
                }
                return false;
            }
        }, new TextView.OnEditorActionListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.40
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return false;
            }
        }, "");
        this.localKeyBoardDialog = inputEditDialog3;
        inputEditDialog3.setOnTextSendListener(new InputEditDialog.OnTextSendListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.41
            @Override // com.haima.hmcp.widgets.InputEditDialog.OnTextSendListener
            public void onTextSend(String str) {
                if (AbsIjkVideoView.this.isAllowInput()) {
                    AbsIjkVideoView.this.sendEvent(ProtoBufUtil.sendContent(str));
                }
            }
        });
        this.localKeyBoardDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.42
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getIMStatusData(GSSDK.StatusType.STATUS_HIDE));
            }
        });
        this.localKeyBoardDialog.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOverLay(int i10) {
        View view = this.backGroundView;
        if (view != null) {
            view.setVisibility(i10);
        }
    }

    private void showVirtualDeviceByConfig(HmVirtualLayoutBean hmVirtualLayoutBean) {
        if (this.appSettingsState.isOperateTypeSetByApp) {
            checkOperateTypeAndShowDevice();
        } else if (hmVirtualLayoutBean.getConfig() == null || TextUtils.isEmpty(hmVirtualLayoutBean.getConfig().getDefault_layout())) {
            showVirtualStickInner(false);
        } else {
            checkLayoutAndShowDevice(hmVirtualLayoutBean.getConfig().getDefault_layout());
        }
    }

    private void showVirtualDeviceByOperate(VirtualOperateType virtualOperateType) {
        if (virtualOperateType == VirtualOperateType.NONE) {
            showVirtualKeyboardInner(false);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
            showVirtualKeyboardInner(true);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
            showVirtualStickInner(true);
        }
    }

    private void showVirtualLayoutByType() {
        int i10 = AnonymousClass54.$SwitchMap$com$haima$hmcp$widgets$beans$VirtualOperateType[this.mDefaultOperateType.ordinal()];
        if (i10 == 1) {
            LogUtils.i(TAG, "VirtualDeviceTag=initVirtualDevice===pppp===");
            this.mVirtualDeviceLayout.setVisibility(8);
        } else if (i10 == 2) {
            showVirtualStickInner(true);
        } else {
            if (i10 != 3) {
                return;
            }
            showVirtualKeyboardInner(true);
        }
    }

    private void startGyroscope() {
        GyroscopeHelper gyroscopeHelper;
        if (!this.mIsGyroscopeEnable || (gyroscopeHelper = this.mGyroscopeHelper) == null) {
            return;
        }
        gyroscopeHelper.startDetection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHangUpTimer(CloudOperation cloudOperation) {
        cancelhangUpTimer(cloudOperation);
        if (cloudOperation == CloudOperation.UPLOAD) {
            HangUpUpCountDown hangUpUpCountDown = new HangUpUpCountDown();
            this.mHangUpUpCountDown = hangUpUpCountDown;
            hangUpUpCountDown.startTimeCountDown(30000L, null);
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "hang up timer start, count_down_time:30s");
            return;
        }
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            HangUpBatchUploadCountDown hangUpBatchUploadCountDown = new HangUpBatchUploadCountDown();
            this.mHangUpBatchUpCountDown = hangUpBatchUploadCountDown;
            hangUpBatchUploadCountDown.startTimeCountDown(30000L, null);
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "hang up timer start, count_down_time:30s");
            return;
        }
        HangUpDownCountDown hangUpDownCountDown = new HangUpDownCountDown();
        this.mHangUpDownCountDown = hangUpDownCountDown;
        hangUpDownCountDown.startTimeCountDown(30000L, null);
        CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "hang up timer start, count_down_time:30s");
    }

    private void startRequestImageListTimer() {
        cancelRequestImageListTimer();
        RequestImageListCountDown requestImageListCountDown = new RequestImageListCountDown();
        this.mRequestImageListTimer = requestImageListCountDown;
        requestImageListCountDown.startTimeCountDown(BaseCloudFileManager.ACK_TIMEOUT, null);
        CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "request image list timer start, count_down_time:3000");
    }

    private void startSendVideoDelay() {
        Handler handler;
        if (this.mVideoDelayCallback == null || (handler = this.mHmcpHandler) == null) {
            LogUtils.d(TAG, "mVideoDelayCallback is null or mHmcpHandler is null");
            CountlyUtil.recordErrorEvent("mVideoDelayCallback is null or mHmcpHandler is null");
            return;
        }
        handler.removeMessages(5);
        VideoDelayInfo clockDiffVideoLatencyInfo = getClockDiffVideoLatencyInfo();
        if (clockDiffVideoLatencyInfo != null) {
            this.mVideoDelayCallback.onVideoDelayCallback(clockDiffVideoLatencyInfo);
        }
        this.mHmcpHandler.sendEmptyMessageDelayed(5, this.mIntervalMillis);
    }

    private void stopGyroscope() {
        GyroscopeHelper gyroscopeHelper = this.mGyroscopeHelper;
        if (gyroscopeHelper != null) {
            gyroscopeHelper.stopDetection();
        }
        TouchUtil touchUtil = this.mTouchUtil;
        if (touchUtil != null) {
            touchUtil.clearDelayMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopKeyboardListener() {
        GamePlatformType gamePlatformType = this.mGamePlatformType;
        if (gamePlatformType == GamePlatformType.X86) {
            return;
        }
        this.localKeyboardModel.setHmKeyBoardListener(gamePlatformType, null);
    }

    private void stopPlay() {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            armMouseModel.onStop();
        }
        this.streamModel.stopPlay(true, true);
    }

    private void stopSendVideoDelay() {
        Handler handler = this.mHmcpHandler;
        if (handler != null) {
            handler.removeMessages(5);
        } else {
            LogUtils.d(TAG, "mHmcpHandler is null");
            CountlyUtil.recordErrorEvent("mHmcpHandler is null");
        }
    }

    private void switchDevice(String str) {
        LogUtils.i(TAG, "GamePadData switchDevice targetVendorId: " + str);
        ConcurrentHashMap<InputDeviceInfo, Integer> gamePads = HmInputDeviceManager.getGamePads();
        if (gamePads == null) {
            return;
        }
        String vendorId = str;
        for (Map.Entry<InputDeviceInfo, Integer> entry : gamePads.entrySet()) {
            InputDeviceInfo key = entry.getKey();
            int iIntValue = entry.getValue().intValue();
            if (key != null) {
                String vendorId2 = key.getVendorId();
                if (isX86SingleGamePadMode() && TextUtils.equals(str, this.curOperateVendorId)) {
                    return;
                }
                if (!TextUtils.equals(str, Constants.GAMEPAD_PS_VENDOR_ID_DEFAULT) || !HmInputDeviceManager.isGamepadPS(vendorId2)) {
                    if (!TextUtils.equals(str, Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT) || HmInputDeviceManager.isGamepadPS(vendorId2)) {
                        InputDevice device = InputDevice.getDevice(key.getInputDeviceId().intValue());
                        if (device != null) {
                            if (TextUtils.equals(str, Constants.GAMEPAD_VENDOR_ID_DEFAULT)) {
                                vendorId = HmInputDeviceManager.getVendorId(device);
                                if (TextUtils.equals(vendorId2, vendorId)) {
                                    continue;
                                }
                            }
                            if (TextUtils.equals(str, Constants.GAMEPAD_VENDOR_ID_108)) {
                                vendorId = Constants.CONFIG_FIXED_GAMEPAD_VENDOR_ID;
                                if (isSameType(vendorId2, vendorId)) {
                                    continue;
                                }
                            }
                            String str2 = vendorId;
                            LogUtils.e(TAG, "=singleGamePad=handleDeviceDisConnected called by switch device");
                            handleDeviceDisConnected(key, iIntValue, true);
                            SwitchControllerManager.getInstance().removeDevice(device.getId());
                            handleConnect(gamePads, str2, key, iIntValue, true, false);
                            Integer num = gamePads.get(key);
                            if (num != null) {
                                SwitchControllerManager.getInstance().addDevice(device, num.intValue());
                            }
                            if (isX86SingleGamePadMode()) {
                                return;
                            } else {
                                vendorId = str2;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    private IMESwitchCallbackResult switchIMECheck() {
        if (!this.mIMEConfig.isEnableSwitchIME()) {
            IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
            iMESwitchCallbackResult.result = 0;
            iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_NOT_ENABLE;
            iMESwitchCallbackResult.message = "IME switch disable";
            iMESwitchCallbackResult.reportMessage = "IME switch disable";
            return iMESwitchCallbackResult;
        }
        if (this.mIMEConfig.isSupportSwitchIME()) {
            SwitchIMEAckTimer switchIMEAckTimer = this.switchIMEAckTimer;
            if (switchIMEAckTimer == null || switchIMEAckTimer.isCancel()) {
                return null;
            }
            IMESwitchCallbackResult iMESwitchCallbackResult2 = new IMESwitchCallbackResult();
            iMESwitchCallbackResult2.result = 2;
            iMESwitchCallbackResult2.message = "IME switching";
            iMESwitchCallbackResult2.reportMessage = "IME switching";
            return iMESwitchCallbackResult2;
        }
        IMESwitchCallbackResult iMESwitchCallbackResult3 = new IMESwitchCallbackResult();
        iMESwitchCallbackResult3.result = 0;
        iMESwitchCallbackResult3.code = HmIMEManager.ERROR_CODE_NOT_SUPPORT;
        iMESwitchCallbackResult3.message = "IME switch not support";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(iMESwitchCallbackResult3.message);
        stringBuffer.append("; ");
        stringBuffer.append("config IME: ");
        stringBuffer.append(Constants.CONFIG_IME_TYPE);
        iMESwitchCallbackResult3.reportMessage = stringBuffer.toString();
        return iMESwitchCallbackResult3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchIMETimeout(String str) {
        LogUtils.d(HmIMEManager.TAG, "switch IME timeout");
        IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
        iMESwitchCallbackResult.result = 0;
        iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
        iMESwitchCallbackResult.message = "timeout";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("switch IME ack timeout; ");
        stringBuffer.append("switch IME: ");
        stringBuffer.append(TextUtils.isEmpty(str) ? "unknow" : this.switchIMEAckTimer.getIME());
        stringBuffer.append("; ");
        stringBuffer.append("switch IME timeout: ");
        stringBuffer.append(this.mIMEConfig.getSwitchIMEAckTimeout());
        iMESwitchCallbackResult.reportMessage = stringBuffer.toString();
        switchIMECallback(iMESwitchCallbackResult);
        this.switchIMEAckTimer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSavedToClientKeyboardConfigJson(String str) {
        if (!TextUtils.isEmpty(str) && isValidHmVirtualLayoutJson(str)) {
            this.mKeyboardConfigJsonApp = str;
        }
    }

    private void unregisterArmDevicesWatcher() {
        if (this.armInputDeviceChangeListener == null) {
            return;
        }
        GamePadManager.getInstance().unregisterDeviceChangeListener(this.armInputDeviceChangeListener);
    }

    private void updateDownPointers(int i10, boolean z10) {
        HashSet<Integer> hashSet = this.mDownPointers;
        if (hashSet != null) {
            if (z10 && !hashSet.contains(Integer.valueOf(i10))) {
                this.mDownPointers.add(Integer.valueOf(i10));
            } else {
                if (z10 || !this.mDownPointers.contains(Integer.valueOf(i10))) {
                    return;
                }
                this.mDownPointers.remove(Integer.valueOf(i10));
            }
        }
    }

    private void updateVirtualLayoutSize(int i10, int i11) {
        if (this.mVirtualDeviceLayout == null) {
            LogUtils.i(TAG, "updateVirtualLayoutSize failed:mVirtualDeviceLayout is null");
            return;
        }
        HmVirtualDeviceManager.get().updateContainerWH(i10, i11);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mVirtualDeviceLayout.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i11;
        this.mVirtualDeviceLayout.setLayoutParams(layoutParams);
    }

    private boolean x86SendMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        LogUtils.d(TAG, "x86 send message: payload = " + str + ", type = " + wsMessageType);
        boolean zSendEvent = false;
        if (WsMessageType.CLIPBOARD_TYPE == wsMessageType) {
            if (TextUtils.isEmpty(str)) {
                if (onSendWsMessageListener != null) {
                    onSendWsMessageListener.sendWsMessageFail("parameter is null or empty");
                }
                return false;
            }
            String clipBoardText = JsonUtil.getClipBoardText(str);
            if (TextUtils.isEmpty(clipBoardText)) {
                if (onSendWsMessageListener != null) {
                    onSendWsMessageListener.sendWsMessageFail("json parse error");
                }
                return false;
            }
            if (clipBoardText.length() > ClipBoardData.CLIPBOARD_DATA_SIZE) {
                LogUtils.i(TAG, "====sendWsMessage===== parameter is not valid");
                if (onSendWsMessageListener != null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_FAILURE, getMessage("====sendWsMessage===== parameter is not valid" + clipBoardText));
                    onSendWsMessageListener.sendWsMessageFail(getMessage(ResourceManager.getString(R.string.haima_hmcp_parameter_error)));
                }
                return false;
            }
            zSendEvent = sendEvent(ProtoBufUtil.sendClipBoardText(clipBoardText));
            if (onSendWsMessageListener != null) {
                if (zSendEvent) {
                    onSendWsMessageListener.sendWsMessageSuccess();
                } else {
                    onSendWsMessageListener.sendWsMessageFail("send fail");
                }
            }
        } else if (WsMessageType.SHELL_TYPE == wsMessageType) {
            if (TextUtils.isEmpty(str)) {
                if (onSendWsMessageListener != null) {
                    onSendWsMessageListener.sendWsMessageFail("parameter is null or empty");
                }
                return false;
            }
            zSendEvent = sendEvent(ProtoBufUtil.getShellCommandData(str));
            if (onSendWsMessageListener != null) {
                if (zSendEvent) {
                    onSendWsMessageListener.sendWsMessageSuccess();
                } else {
                    onSendWsMessageListener.sendWsMessageFail("send fail");
                }
            }
        } else if (onSendWsMessageListener != null) {
            onSendWsMessageListener.sendWsMessageFail(wsMessageType + " is not support");
        }
        return zSendEvent;
    }

    public void CloudStateSend(int i10) {
        HmcpUIListener hmcpUIListener = this.uiListener;
        if (hmcpUIListener == null) {
            return;
        }
        hmcpUIListener.CloudServiceState(i10);
    }

    public void UiMessageSend(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_CALL_BACK_STATUS_TO_APP, str);
        if (this.uiListener == null) {
            HmcpPlayerListener hmcpPlayerListener = this.mListener;
            if (hmcpPlayerListener != null) {
                hmcpPlayerListener.HmcpPlayerStatusCallback(str);
                return;
            }
            return;
        }
        HmcpPlayerListener hmcpPlayerListener2 = this.mListener;
        if (hmcpPlayerListener2 != null) {
            hmcpPlayerListener2.HmcpPlayerStatusCallback(str);
        }
        this.uiListener.HmcpPlayerStatus(str);
    }

    public void accessDisconnect() {
        if (TextUtils.isEmpty(this.mCli)) {
            sendSysNotify("disconnected");
        }
    }

    protected void addScene(long j10) {
        if (j10 < 0) {
            return;
        }
        this.scene |= j10;
        LogUtils.d(TAG, "handle scene->: add : " + j10);
    }

    protected void addVirtualDevice() {
        LogUtils.i(TAG, "==VirtualDeviceTag==addVirtualDevice()");
        try {
            if (this.mVirtualDeviceLayout != null) {
                LogUtils.i(TAG, "==VirtualDeviceTag==virtualDevice is exist");
                setTouchModeInner(this.mTouchMode);
                showVirtualLayoutByType();
                return;
            }
            if (this.mOrientation == ScreenOrientation.PORTRAIT) {
                LogUtils.e(TAG, "PORTRAIT don't support virtual device");
                return;
            }
            int width = getWidth();
            int height = getHeight();
            if (width == 0 || height == 0) {
                width = ConfigUtil.getScreenWidth(getContext());
                height = ConfigUtil.getScreenHeight(getContext());
                LogUtils.d(TAG, "==VirtualDeviceTag==addVirtualDevice()===width:" + width + ",height:" + height);
                if (width <= height) {
                    height = width;
                    width = height;
                }
            }
            this.mVirtualDeviceLayout = new HmVirtualTextureView(getPluginContext());
            addBlackOverlay();
            addView(this.mVirtualDeviceLayout);
            this.mVirtualDeviceLayout.setOpaque(false);
            updateVirtualLayoutSize(width, height);
            HmVirtualLayoutBean virtualLayoutBean = getVirtualLayoutBean();
            if (virtualLayoutBean == null) {
                LogUtils.e(TAG, "addVirtualDevice error : layout is empty");
                return;
            }
            View view = new View(getContext());
            view.setTag("place_holder");
            addView(view);
            view.setLayoutParams(new FrameLayout.LayoutParams(1, -1));
            View view2 = new View(getContext());
            view2.setTag("h_place_holder");
            addView(view2);
            view2.setLayoutParams(new FrameLayout.LayoutParams(-1, 1));
            if (this.isGetControl) {
                LogUtils.d(TAG, "VirtualDeviceTag==addVirtualDevice under get control mode");
                loadVirtualDeviceLayoutAndHide(this.mDefaultOperateType);
            } else if (this.mDefaultOperateType != null) {
                showVirtualLayoutByType();
            } else {
                showVirtualDeviceByConfig(virtualLayoutBean);
            }
            this.mVirtualDeviceLayout.setListener(new HmVirtualTextureView.DataListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.43
                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void editKeyboardConfigNotify(String str, EditStatus editStatus) {
                    LogUtils.d(AbsIjkVideoView.TAG, "editKeyboardConfigNotify editStatus=" + editStatus + "  keyboardConfigJson=" + str + " ");
                    if (editStatus == EditStatus.EDIT_STATE_RESTORE) {
                        AbsIjkVideoView.this.mIsUserConfig = false;
                    }
                    EditStatus editStatus2 = EditStatus.EDIT_STATE_MODIFIED_SAVE;
                    if (editStatus == editStatus2) {
                        AbsIjkVideoView.this.mIsUserConfig = true;
                    }
                    if (editStatus == editStatus2 && AbsIjkVideoView.this.isUseClientKeyboardConfigJson()) {
                        AbsIjkVideoView.this.syncSavedToClientKeyboardConfigJson(str);
                    }
                    AbsIjkVideoView.this.showOverLay(8);
                    SendSceneState.editKeyboardConfigNotify(AbsIjkVideoView.this.getContext(), AbsIjkVideoView.this.mListener, str, editStatus);
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void onReceiveKeyboardBtnValue(int i10, int i11, int i12) {
                    if (!AbsIjkVideoView.this.isAllowInput()) {
                        LogUtils.i(AbsIjkVideoView.TAG, "not allow handle vir layout event");
                        return;
                    }
                    String str = HmVirtualDeviceManager.TAG;
                    LogUtils.d(str, "onReceiveKeyboardBtnValue = " + i10 + ";" + i11);
                    GSSDK.OneInputOPData.InputOP inputOPForNumber = GSSDK.OneInputOPData.InputOP.forNumber(i10);
                    if (inputOPForNumber == null) {
                        LogUtils.e(str, "get keyCode inputOp error :" + i10);
                        return;
                    }
                    if (i10 == 515) {
                        if (i11 != 0) {
                            AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getMouseWheelData(0));
                        } else if (i12 == 11) {
                            AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getMouseWheelData(1));
                        } else {
                            AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getMouseWheelData(-1));
                        }
                    } else if (i11 == 0) {
                        AbsIjkVideoView.this.sendKeyCodeDown(inputOPForNumber);
                    } else {
                        AbsIjkVideoView.this.sendKeyCodeUp(inputOPForNumber);
                    }
                    AbsIjkVideoView.this.reportSensitivity();
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void onReceiveLTRTValue(int i10, String str) {
                    if (!AbsIjkVideoView.this.isAllowInput()) {
                        LogUtils.i(AbsIjkVideoView.TAG, "not allow handle vir layout event");
                        return;
                    }
                    int i11 = i10 == 0 ? 255 : 0;
                    LogUtils.i(HmVirtualDeviceManager.TAG, " onReceiveLTRTValue = " + str + ";" + i11);
                    JoyStickBean joyStickBean = AbsIjkVideoView.this.mMappingJoyBean;
                    int i12 = (joyStickBean == null || !joyStickBean.L2) ? 0 : 255;
                    int i13 = (joyStickBean == null || !joyStickBean.R2) ? 0 : 255;
                    if ("LT".equals(str) || "L2".equals(str)) {
                        AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getGamePadLTData(i11 | i12, "", -1));
                        AbsIjkVideoView.this.mJoyStickL2Value = i11;
                    } else {
                        AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getGamePadRTData(i13 | i11, "", -1));
                        AbsIjkVideoView.this.mJoyStickR2Value = i11;
                    }
                    AbsIjkVideoView.this.reportSensitivity();
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void onReceiveMouseValue(int i10, int i11, int i12, GSSDK.OneInputOPData.InputOP inputOP) {
                    if (!AbsIjkVideoView.this.isAllowInput()) {
                        LogUtils.i(AbsIjkVideoView.TAG, "not allow handle vir layout event");
                        return;
                    }
                    LogUtils.d(HmVirtualDeviceManager.TAG, "onReceiveMouseValue :x=" + i11 + ";y=" + i12 + ";state=" + i10 + ";inputOp=" + inputOP.toString());
                    if (i10 == 0) {
                        AbsIjkVideoView.this.mTouchUtil.sendMouseButtonEvent(inputOP, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
                    } else if (i10 != 2) {
                        AbsIjkVideoView.this.mTouchUtil.sendMouseButtonEvent(inputOP, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                    } else {
                        AbsIjkVideoView.this.mTouchUtil.sendMouseFromVirMouse(i11, i12);
                    }
                    AbsIjkVideoView.this.reportSensitivity();
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void onReceiveStickBtnValue(int i10) {
                    if (!AbsIjkVideoView.this.isAllowInput()) {
                        LogUtils.i(AbsIjkVideoView.TAG, "not allow handle vir layout event");
                        return;
                    }
                    String str = HmVirtualDeviceManager.TAG;
                    LogUtils.i(str, " stickBtnValue = " + i10);
                    JoyStickBean joyStickBean = AbsIjkVideoView.this.mMappingJoyBean;
                    int btnValue = joyStickBean == null ? i10 : joyStickBean.getBtnValue() | i10;
                    LogUtils.i(str, "finalValue = " + btnValue);
                    AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getGamePadData(btnValue, "", -1));
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    absIjkVideoView.mJoyStickValue = i10;
                    absIjkVideoView.reportSensitivity();
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void onReceiveStickRockerValue(float f10, float f11, int i10) {
                    if (!AbsIjkVideoView.this.isAllowInput()) {
                        LogUtils.i(AbsIjkVideoView.TAG, "not allow handle vir layout event");
                        return;
                    }
                    int i11 = (int) (f10 * 32767.0f);
                    int i12 = (int) (32767.0f * f11);
                    LogUtils.i(HmVirtualDeviceManager.TAG, " send stickRockerValue = " + i11 + "==" + i12 + "; offset =" + f10 + ";" + f11);
                    if (i10 == 4) {
                        AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getGamePadStickData(new Point(i11, i12), "", -1));
                    } else if (i10 == 5) {
                        AbsIjkVideoView.this.sendEvent(ProtoBufUtil.getGamepadThumbRData(new Point(i11, i12), "", -1));
                    }
                    AbsIjkVideoView.this.reportSensitivity();
                }

                @Override // com.haima.hmcp.virtual.views.HmVirtualTextureView.DataListener
                public void useSpecificSensitivity(boolean z10, float f10) {
                    List<HmVirtualViewBean> keyboardLayout;
                    int i10;
                    Float f11;
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    TouchUtil touchUtil = absIjkVideoView.mTouchUtil;
                    if (touchUtil != null) {
                        AppSettingsState appSettingsState = absIjkVideoView.appSettingsState;
                        if (appSettingsState == null || (f11 = appSettingsState.functionSensitivitySetByApp) == null) {
                            touchUtil.setSpecificSensitivity(f10);
                            LogUtils.d(AbsIjkVideoView.TAG, "useSpecificSensitivity from SDKinner " + z10 + "   " + f10);
                        } else {
                            float fFloatValue = f11.floatValue();
                            LogUtils.d(AbsIjkVideoView.TAG, "useSpecificSensitivity from AppSet " + z10 + "   " + fFloatValue);
                            AbsIjkVideoView.this.mTouchUtil.setSpecificSensitivity(fFloatValue);
                        }
                        AbsIjkVideoView.this.mTouchUtil.useSpecificSensitivity(z10);
                    } else {
                        LogUtils.d(AbsIjkVideoView.TAG, "useSpecificSensitivity failed ");
                    }
                    VirtualOperateType virtualOperateType = AbsIjkVideoView.this.mDefaultOperateType;
                    if (virtualOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
                        keyboardLayout = HmVirtualDeviceManager.get().getXboxLayout();
                        HmVirtualDeviceManager.get().setXboxModeIsChecked(z10);
                        i10 = -2;
                    } else if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
                        keyboardLayout = HmVirtualDeviceManager.get().getKeyboardLayout();
                        HmVirtualDeviceManager.get().setKeyboardModeIsChecked(z10);
                        i10 = -1;
                    } else {
                        keyboardLayout = null;
                        i10 = Integer.MIN_VALUE;
                    }
                    if (keyboardLayout == null || i10 == Integer.MIN_VALUE) {
                        return;
                    }
                    for (HmVirtualViewBean hmVirtualViewBean : keyboardLayout) {
                        if (hmVirtualViewBean.getKeyType() == i10) {
                            hmVirtualViewBean.sensitivityFnBtnChecked = z10;
                            LogUtils.d(AbsIjkVideoView.TAG, "Updated sensitivityFnBtnChecked to " + z10 + " for keyType " + hmVirtualViewBean.getKeyType());
                            return;
                        }
                    }
                }
            });
        } catch (Exception e10) {
            LogUtils.e(TAG, "addVirtualDevice error =" + e10.getMessage());
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void backToGame() {
        LogUtils.i(TAG, "====backToGame=====");
        bringForeground(this.mAppName);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void batchUpload(List<CloudFile> list, BatchCloudOperationListener batchCloudOperationListener) {
        if (!hasOperatePermission()) {
            LogUtils.d(TAG, "not has control permission");
            CountlyUtil.recordErrorEvent("not has control permission");
        } else {
            CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_START, "batch upload start");
            this.mCloudFileManager.resetUploadRetry();
            internalBatchUpload(list, batchCloudOperationListener);
        }
    }

    public void calcWindowStreamScale(String str) {
        if (this.mGamePlatformType == GamePlatformType.X86 && str != null && str.contains("x")) {
            String[] strArrSplit = str.split("x");
            float f10 = Float.parseFloat(strArrSplit[0]);
            float f11 = Float.parseFloat(strArrSplit[1]);
            boolean z10 = this.mAppContext.getResources().getConfiguration().orientation == 2;
            int width = getWidth();
            int height = getHeight();
            if (z10 && width < height) {
                width = getHeight();
                height = getWidth();
            }
            if (width == 0 || height == 0) {
                return;
            }
            calcWindowStreamScale(f10, f11, width, height);
        }
    }

    protected FPoint calculatePoint(MotionEvent motionEvent) {
        return calculatePoint(motionEvent, MotionEventCompat.getActionIndex(motionEvent));
    }

    public void callBackUploadX86Failure(String str) {
        LogUtils.e(TAG, str);
        callbackError(CloudOperation.UPLOAD, str);
        JobExecutor jobExecutor = this.mUploadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.startNextJob();
        }
    }

    protected abstract void callbackCloudDeviceStatus(String str);

    protected abstract void callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus cloudPlayerKeyboardStatus);

    public JSONObject callbackHmcpError(ErrorInfo errorInfo, int i10) {
        JSONObject jSONObject = new JSONObject();
        if (errorInfo != null && errorInfo.getErrorMap().size() != 0) {
            LogUtils.i(TAG, "callbackHmcpError：" + errorInfo.getErrorMap().toString());
            CountlyUtil.recordEvent(Constants.COUNTYLY_CALL_BACK_STATUS_TO_APP, "status:" + i10 + ",mInQueued:" + this.mInQueued + ",data:" + JsonUtil.toJsonString(errorInfo.getErrorMap()));
            try {
                for (Map.Entry<String, Object> entry : errorInfo.getErrorMap().entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                    if ("errorCode".equals(entry.getKey())) {
                        String str = (String) entry.getValue();
                        if (str.split("-").length > 1) {
                            str = str.split("-")[0];
                        }
                        jSONObject.put("errorCodeWithoutCid", str);
                    }
                }
                jSONObject.put("status", i10);
                jSONObject.put(ConstantsInternal.KEY_IN_QUEUED, this.mInQueued);
            } catch (Exception e10) {
                LogUtils.i(TAG, "callbackHmcpError：" + e10.getMessage());
                e10.printStackTrace();
            }
            HmcpUIListener hmcpUIListener = this.uiListener;
            if (hmcpUIListener == null) {
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.HmcpPlayerStatusCallback(getCallbackData(i10, jSONObject.toString()));
                }
            } else {
                hmcpUIListener.HmcpPlayerStatus(getCallbackData(i10, jSONObject.toString()));
            }
        }
        return jSONObject;
    }

    protected abstract void callbackLocalKeyboardShow();

    protected void callbackSdkDisplayInfo(PlayStreamPayloadData playStreamPayloadData) {
        if ((TextUtils.isEmpty(playStreamPayloadData.idcId) || TextUtils.isEmpty(playStreamPayloadData.idcName)) && playStreamPayloadData.sdkDisplayInfo == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (playStreamPayloadData.sdkDisplayInfo != null) {
                jSONObject = new JSONObject(playStreamPayloadData.sdkDisplayInfo);
            } else {
                jSONObject.put("idcId", playStreamPayloadData.idcId);
                jSONObject.put("idcName", playStreamPayloadData.idcName);
            }
        } catch (JSONException unused) {
        }
        UiMessageSend(getCallbackData(44, jSONObject.toString()));
    }

    protected void callbackSwitchResolutionFailed() {
        sendSceneCredError();
        UiMessageSend(getCallbackData(21, ""));
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelDownload() {
        if (this.mGamePlatformType == GamePlatformType.X86) {
            internalCancelDownloadX86();
        } else {
            internalCancelDownload();
        }
        callbackCancel(CloudOperation.DOWNLOAD);
    }

    public void cancelExitQueueInBGTimer(ExitQueueInBGCancelType exitQueueInBGCancelType) {
        LogUtils.d(TAG, "cancelExitQueueInBGTimer exitQueueInBGCancelType:" + exitQueueInBGCancelType);
        ExitQueueInBGTimer exitQueueInBGTimer = this.mExitQueueInBGTimer;
        if (exitQueueInBGTimer != null) {
            exitQueueInBGTimer.cancel();
            this.mExitQueueInBGTimer = null;
            ReportExitQueueInBGCancelType reportExitQueueInBGCancelType = new ReportExitQueueInBGCancelType();
            reportExitQueueInBGCancelType.type = exitQueueInBGCancelType == null ? "null" : exitQueueInBGCancelType.name();
            CountlyUtil.recordEvent(Constants.COUNTLY_EXIT_QUEUE_IN_BG_TIMER_CANCEL, JsonUtil.toJsonString(reportExitQueueInBGCancelType));
        }
    }

    protected void cancelRefreshStokenTask() {
        LogUtils.i(TAG, "===cancelRefreshStokenTask====");
        cancelTimer(this.mRefreshStokenTask);
        cancelTimer(this.mReconnectAccess);
    }

    protected void cancelRequestImageListTimer() {
        if (this.mRequestImageListTimer != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "request image list timer cancel");
            this.mRequestImageListTimer.cancelTimeCountDown();
        }
        this.mRequestImageListTimer = null;
    }

    protected void cancelSwitchIMEAckTimer() {
        if (this.switchIMEAckTimer == null) {
            return;
        }
        LogUtils.d(HmIMEManager.TAG, "cancel switch IME timer");
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer("SwitchIMEAckTimer", "" + this.switchIMEAckTimer.hashCode(), this.mIMEConfig.getSwitchIMEAckTimeout() * 1000, false, ReportTimer.Action.CANCEL)));
        this.switchIMEAckTimer.cancel();
        removeCallbacks(this.switchIMEAckTimer);
        this.switchIMEAckTimer = null;
    }

    public void cancelTimer(CountDownTimer countDownTimer) {
        if (countDownTimer == null) {
            return;
        }
        if (countDownTimer instanceof WaitOperationFive) {
            this.isOperationStreamUrlReceived = false;
            this.isOperationStreamUrlPreReceived = false;
        }
        countDownTimer.cancel();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelUpload() {
        if (this.mGamePlatformType == GamePlatformType.X86) {
            internalCancelUploadX86();
        } else {
            internalCancelUpload();
        }
        callbackCancel(CloudOperation.UPLOAD);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void changeStreamType(int i10, PlayStreamPayloadData playStreamPayloadData) {
        if (this.mRequestManager == null || isModelNull()) {
            return;
        }
        SwitchStreamTypeData switchStreamTypeData = this.streamModel.getSwitchStreamTypeData(i10, playStreamPayloadData);
        CloudPlayInfo cloudPlayInfo2 = new CloudPlayInfo();
        switchStreamTypeData.cloudPlayInfo = cloudPlayInfo2;
        cloudPlayInfo2.syncStatus(cloudPlayInfo);
        switchStreamTypeData.resolutionId = playStreamPayloadData.resolution;
        switchStreamTypeData.gamePlatformType = this.mGamePlatformType;
        switchStreamTypeData.extParam = getExtParam();
        switchStreamTypeData.battleMode = this.tvBattleMode.getBattleMode();
        switchStreamTypeData.clientImeType = this.mClientImeType;
        switchStreamTypeData.enableHighBitrate = this.enableHighBitrate;
        this.isChangeStreamType = true;
        releaseNotStop();
        this.mOnStreamTypeChangeListener.onChange(switchStreamTypeData);
        this.isChangeStreamType = false;
    }

    protected void checkAccessState() {
        if (!this.checkAccessWhenSwitchResolution) {
            LogUtils.d(TAG, "check-access-state: disable");
            return;
        }
        LogUtils.d(TAG, "check-access-state: check");
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null) {
            LogUtils.d(TAG, "check-access-state: mWebSocketManager is null and return");
            return;
        }
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_ACCESS;
        boolean zIsConnect = iWebSocket.isConnect(webSocketType);
        boolean zIsHearBeatNormal = this.mWebSocketManager.isHearBeatNormal(webSocketType);
        if (zIsConnect && zIsHearBeatNormal) {
            LogUtils.d(TAG, "check-access-state: access connection is normal state");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        boolean z10 = hmcpRequest != null && hmcpRequest.isAccessConnecting;
        if (!zIsConnect && z10) {
            LogUtils.d(TAG, "check-access-state: access is connecting");
        } else {
            if (hmcpRequest == null) {
                LogUtils.d(TAG, "check-access-state: reconnect access fail, cause RequestManager is null");
                return;
            }
            this.mWebSocketManager.disconnect2Access();
            this.mRequestManager.connect2Access(1, false);
            LogUtils.d(TAG, "check-access-state: reconnect access");
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int checkBitmap(Bitmap bitmap, float f10) {
        Bitmap bitmap2 = this.mLastCapture;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        if (bitmap == null || bitmap.isRecycled()) {
            LogUtils.e(TAG, "bitmap is null");
            return -1;
        }
        this.mLastCapture = bitmap;
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < width; i14 += 10) {
            int i15 = 0;
            while (i15 < height) {
                int pixel = bitmap.getPixel(i14, i15);
                String hexString = Integer.toHexString(pixel);
                if (pixel == i13) {
                    if (pixel == 0) {
                        i10++;
                    }
                    if ("ff000000".equals(hexString)) {
                        i11++;
                    }
                    i12++;
                } else {
                    i10 = 0;
                    i12 = 0;
                }
                float f11 = height * width;
                if ((i10 * 100.0f) / f11 >= f10) {
                    return 2;
                }
                if ((i11 * 100.0f) / f11 >= f10) {
                    return 4;
                }
                if ((i12 * 100.0f) / f11 >= f10) {
                    return 1;
                }
                i15 += 10;
                i13 = pixel;
            }
        }
        return 3;
    }

    protected void checkClientImeType() {
        if (this.mClientImeType.imeType == -1) {
            LogUtils.d(TAG, "client_ime_type->check client ime type when ws server connected: don`t need");
            return;
        }
        IMESwitchCallbackResult iMESwitchCallbackResultSwitchIMECheck = switchIMECheck();
        if (iMESwitchCallbackResultSwitchIMECheck != null) {
            LogUtils.d(TAG, "client_ime_type->end switch IME: " + iMESwitchCallbackResultSwitchIMECheck.toCountlyString());
            CountlyUtil.recordEvent(Constants.COUNTLY_IME_SWITCH_RESULT, iMESwitchCallbackResultSwitchIMECheck.toCountlyString());
            this.mClientImeType.imeType = -1;
            return;
        }
        int i10 = this.mClientImeType.imeType == 1 ? 0 : 1;
        LogUtils.d(TAG, "client_ime_type->check client ime type when ws server connected: switch ime: " + this.mClientImeType.imeType);
        this.mIMEConfig.setCurrentIMEType(i10);
        toSwitchIME();
        this.mClientImeType.imeType = -1;
    }

    protected boolean checkDataReportIsDisable() {
        boolean z10 = HmcpManager.getInstance().getDataReportStatus(getContext()) != 1;
        if (z10) {
            callbackHmcpError(new ErrorInfo().put("errorCode", Constants.ERRORCODE_OTHER_012).put("errorMessage", ResourceManager.getString(R.string.hmcp_fail_msg_with_disable_data_report)), 46);
        }
        return z10;
    }

    protected void checkHangUpTask() {
        LogUtils.d(TAG, "cloud-file: hang up task check");
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        CloudOperation cloudOperation = CloudOperation.UPLOAD;
        if (cloudFileManager.hasHangUpTask(cloudOperation)) {
            LogUtils.d(TAG, "cloud-file: has hang up task and ready to upload");
            cancelhangUpTimer(cloudOperation);
            internalUpload(this.mCloudFileManager.getHandUpContent(cloudOperation));
        } else {
            LogUtils.d(TAG, "cloud-file: has not hang up task to upload");
        }
        CloudFileManager cloudFileManager2 = this.mCloudFileManager;
        CloudOperation cloudOperation2 = CloudOperation.BATCH_UPLOAD;
        if (cloudFileManager2.hasHangUpTask(cloudOperation2)) {
            LogUtils.d(TAG, "cloud-file: has hangup batchUpload task and ready to upload");
            cancelhangUpTimer(cloudOperation2);
            internalBatchUpload(this.mCloudFileManager.getHandUpBatchContent(), this.mBatchCloudOperationListener);
        } else {
            LogUtils.d(TAG, "cloud-file: has not hang up task to upload");
        }
        CloudFileManager cloudFileManager3 = this.mCloudFileManager;
        CloudOperation cloudOperation3 = CloudOperation.DOWNLOAD;
        if (!cloudFileManager3.hasHangUpTask(cloudOperation3)) {
            LogUtils.d(TAG, "cloud-file: has not hang up task to download");
            return;
        }
        LogUtils.d(TAG, "cloud-file: has hang up task and ready to download");
        cancelhangUpTimer(cloudOperation3);
        internalDownload(this.mCloudFileManager.getHandUpContent(cloudOperation3));
    }

    protected void checkLongClickDown(int i10, final KeyEvent keyEvent) {
        final LongTouchBtnConfig longTouchBtnConfigLookUpConfig = lookUpConfig(i10);
        if (longTouchBtnConfigLookUpConfig == null) {
            logAndReport("longTouchBtnConfig is null");
            return;
        }
        if (!hasOperatePermission()) {
            logAndReport("not has control permission");
            return;
        }
        if (this.longPressTimers.containsKey(Integer.valueOf(i10))) {
            LogUtils.i(TAG, "LongClick down" + ("longPressTimers containsKey " + i10));
            return;
        }
        LogUtils.i(TAG, "LongClick down" + i10);
        Timer timer = new Timer();
        timer.schedule(new TimerTask() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.45
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AbsIjkVideoView.this.onLongClickAction(longTouchBtnConfigLookUpConfig, keyEvent);
            }
        }, longTouchBtnConfigLookUpConfig.time);
        this.longPressTimers.put(Integer.valueOf(i10), timer);
        LogUtils.d(TAG, "Started long press timer for keyCode = " + i10);
    }

    protected void checkLongClickUp(int i10) {
        Timer timer = this.longPressTimers.get(Integer.valueOf(i10));
        if (timer != null) {
            timer.cancel();
            this.longPressTimers.remove(Integer.valueOf(i10));
            LogUtils.d(TAG, "Cancelled long press timer for keyCode = " + i10);
        }
    }

    protected boolean checkSdkNotInit() {
        if (HmcpManager.INIT_SUCCESS) {
            return false;
        }
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener == null) {
            return true;
        }
        hmcpPlayerListener.onPlayerError(Constants.ERRORCODE_ERROR_000003, ResourceManager.getString(R.string.Error_000003));
        return true;
    }

    public void checkSeiData() {
        boolean z10 = this.mSeiDataSwitch == 1;
        LogUtils.d(TAG, "sei data-> sei enable " + z10);
        if (this.mSeiReportMgr == null) {
            this.mSeiReportMgr = HmDataReportToSaasSdk.getInstance();
        }
        this.mSeiReportMgr.initInstance(z10, this.mSeiDataReportInterval, this);
    }

    protected String chooseMsg(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }

    protected void cleanCidForControlLost() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.clearCloudId();
        }
        DataUtils.getSharedInstance(getContext()).putPreferences(HmcpRequestManager.CID_VALUE, "");
    }

    protected void cleanTimer() {
        cancelTimer(this.mTimeOutTask);
        cancelTimer(this.mReconnectAccess);
        cancelTimer(this.mRefreshStokenTask);
        cancelTimer(this.mWaitOperationFive);
        cancelTimer(this.mWaitOperationStreamingConfirm);
        cancelTimer(this.mWaitOperationStreamingTimeOut);
        LogUtils.e(TAG, "cleanTimer");
    }

    public void cleanTimerNoAccess() {
        cancelTimer(this.mTimeOutTask);
        cancelTimer(this.mRefreshStokenTask);
        LogUtils.e("mTimeOutTask", "cleanTimerNoAccess");
    }

    protected void connect2Instance(String str) {
        LogUtils.i(TAG, "====start2Play====start connect instance==");
        this.mHMInputConfig.setAddressUrl(str);
        this.mInputStartTime = System.currentTimeMillis();
        boolean zIsDatachannelEnable = this.streamModel.isDatachannelEnable();
        if (this.mHMInputSender == null) {
            this.mHMInputSender = this.mHMInputFactory.getInputSender(this, zIsDatachannelEnable ? HMInputType.ARM_WEB_RTC_DC : HMInputType.ARM_WEB_SOCKET);
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_INPUT_WS, JsonUtil.toJsonString(new ReportInput(URLEncoder.encode(str))) + ",datachannelEnable:" + zIsDatachannelEnable + ",sender :" + this.mHMInputSender);
        if (this.mHMInput == null) {
            this.mHMInput = new HMInput();
        }
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.setHMInput(this.mHMInput);
        }
        this.mHMInput.setHMInputConfig(this.mHMInputConfig);
        if (this.mHMInput.isConnected()) {
            LogUtils.e(TAG, "connected already");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setStartNetData("input", str, jCurrentTimeMillis);
        }
        this.mHMInput.setHMInputCallback(this.mHMInputCallback);
        this.mHMInput.setSender(this.mHMInputSender);
        this.mHMInput.connect();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void connectAccProxy(String str, int i10, String str2, String str3) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.connectAccProxy(str, i10, str2, str3);
        }
    }

    protected void connectTransferServer(String str) {
        LogUtils.i(TAG, "==== connect Transfer Server ====");
        if (this.mWebSocketManager == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (this.mTransferHelper == null) {
            getTransferDelegateInternal();
        }
        this.mWebSocketManager.connect2Transfer(str, this.mTransferHelper);
    }

    protected void connectWsServer(String str) {
        LogUtils.i(TAG, "==== start2Play > connectWsServer==== " + str);
        if (this.mWebSocketManager == null) {
            this.mWebSocketManager = new WebSocketManager(this.mAppContext);
        }
        if (this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER)) {
            LogUtils.i(TAG, "==== start2Play ==== already connect start play== !");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_INPUT_WS_SERVER_URL_EMPTY);
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_INPUT_WS_SERVER, JsonUtil.toJsonString(new ReportScreenUrl(URLEncoder.encode(str))));
        LogUtils.e(TAG, "start connect2InstanceWsServer, retryTimes=" + this.mInstanceWsReconnectCount + ", screenUrl=" + str);
        this.mWebSocketManager.connect2InstanceWsServer(str, this.simpleInstanceWsServerConnectionHandler);
    }

    protected boolean continueDownloadTask(DownloadTransferData downloadTransferData) {
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy == null) {
            return false;
        }
        if (downloadTransferData == null) {
            return downloadTaskProxy.continueTask();
        }
        if (!this.mRequestManager.getCloudId().equals(downloadTransferData.cid)) {
            LogUtils.d(TAG, "download-file: transfer data cid is not match");
            return false;
        }
        List<CloudFile> list = downloadTransferData.files;
        if (list == null || list.isEmpty()) {
            LogUtils.d(TAG, "download-file: transfer data files is null or empty");
            return false;
        }
        if (downloadTransferData.downloadCallback == null) {
            LogUtils.d(TAG, "download-file: transfer data DownloadCallback is null");
            return false;
        }
        if (downloadTransferData.downloadMode == null) {
            downloadTransferData.downloadMode = DownloadMode.NORMAL;
            LogUtils.d(TAG, "download-file: transfer data download mode is set DownloadMode.NORMAL");
        }
        LogUtils.d(TAG, "download-file: continue download transfer data");
        download(downloadTransferData.files, downloadTransferData.downloadMode, downloadTransferData.downloadCallback);
        return true;
    }

    protected void controlInternal(Control control, OnContronListener onContronListener) {
        if (this.isBackground) {
            return;
        }
        SwitchControllerManager.getInstance().reset();
        HmcpManager.getInstance();
        if (!HmcpManager.INIT_SUCCESS) {
            if (onContronListener != null) {
                onContronListener.contronResult(false, ResourceManager.getString(R.string.Error_000003));
                return;
            }
            return;
        }
        if (control == null) {
            if (onContronListener != null) {
                onContronListener.contronResult(false, "Control parameters is null");
            }
            CountlyUtil.recordErrorEvent("Control parameters is null");
            return;
        }
        resetState();
        this.isGetControl = true;
        this.mOnContronListener = onContronListener;
        initManager();
        setPlayerRenderview();
        setVideoViewListener();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setUserInfo(this.mUserInfo);
        } else {
            LogUtils.e(TAG, "mRequestManager is null!");
        }
        Boolean bool = control.enableVirtualKeyboard;
        if (bool != null) {
            this.mEnableVirtualKeyboardView = bool.booleanValue();
            this.mUserConfigVirtualKeyboardView = true;
        } else {
            this.mUserConfigVirtualKeyboardView = false;
        }
        HmcpRequestManager.clientISP = control.clientISP;
        HmcpRequestManager.clientProvince = control.clientProvince;
        HmcpRequestManager.clientCity = control.clientCity;
        boolean z10 = !TextUtils.isEmpty("") && control.isIPV6;
        this.mCameraConfig.permissionCheckEachTimeLocal = control.cameraOpenPermissionCheck;
        HmcpRequest hmcpRequest2 = this.mRequestManager;
        if (hmcpRequest2 != null) {
            hmcpRequest2.requestControl(control.cid, control.pinCode, control.accessKeyID, z10, control.enableHighBitRate, onContronListener, new OnGetControlResultListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.29
                @Override // com.haima.hmcp.listeners.OnGetControlResultListener
                public void getControlResult(ContronResult contronResult) {
                    if (contronResult != null) {
                        GSMAddressInfo gSMAddressInfo = contronResult.gsmAddressInfo;
                        if (gSMAddressInfo != null) {
                            AbsIjkVideoView.this.callbackRemoteInfo(gSMAddressInfo.gsmUsbNatData);
                        }
                        AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                        absIjkVideoView.mAppName = contronResult.pkgName;
                        if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                            absIjkVideoView.mHasOperatePermission = false;
                            absIjkVideoView.getExtraConfigure();
                        }
                    }
                }
            }, control.languageConfig);
        } else {
            LogUtils.e(TAG, "mRequestManager is null!");
        }
    }

    protected void controlLost(PlayStreamPayload playStreamPayload) {
        addScene(2L);
        OnContronListener onContronListener = this.mOnContronListener;
        if (onContronListener != null) {
            onContronListener.contronLost();
        }
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            downloadTaskProxy.setUrl(null);
            this.mDownloadTaskProxy.setCid(null);
            this.mDownloadTaskProxy.cancelDownload(null, null);
        }
        stopPlay();
        setPlayerState(5);
        onStopInternal();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void controlPlay(Control control, OnContronListener onContronListener) {
        setOrientationInit(control.orientation);
        controlInternal(control, onContronListener);
    }

    protected boolean correctRenderRotation() {
        ScreenOrientation convertOrientation;
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor != null && hmScreenMonitor.isEnable() && (convertOrientation = getConvertOrientation(DisplayUtil.getSystemDisplayRotation(this.mAppContext))) != null && this.mOrientation != convertOrientation) {
            this.mOrientation = convertOrientation;
            IStreamModel iStreamModel = this.streamModel;
            if (iStreamModel != null) {
                iStreamModel.changeRenderRotation(convertOrientation == ScreenOrientation.PORTRAIT ? 90 : 0);
                LogUtils.d(HmScreenMonitor.TAG, "correct render view rotation to " + this.mOrientation);
                return true;
            }
            LogUtils.d(HmScreenMonitor.TAG, "can`t correct render view rotation to " + this.mOrientation + ", cause streamModel is null");
        }
        return false;
    }

    protected void createTimer(String str) {
        LogUtils.e(TAG, "==time out of timer is schedule");
        int i10 = Constants.VIDEO_URL_TIMER_INTVAL;
        startTimer(i10 * 1000, i10 * 1000, 2, str);
    }

    protected String currentStatusInfo() {
        return "mCloudId = " + this.mCloudId + "; isBackground = " + this.isBackground + "; isNetworkOk = " + this.isNetworkOk + "; currentNetType = " + this.currentNetType + "; closeStream = " + this.closeStream + "; mPlayerState = " + this.mPlayerState + "; curConnectState = " + this.curConnectState + "; curCloudServiceState = " + this.curCloudServiceState + "; mRefreshStokenCount = " + this.mRefreshStokenCount + "; mAppName = " + this.mAppName + "; mWebSocketManager = " + this.mWebSocketManager + "; mRequestManager = " + this.mRequestManager + "; mMessageManager = " + this.mMessageManager + "; mWsMessageManager = " + this.mWsMessageManager + "; ";
    }

    public void disConnectInput(int i10, String str) {
        LogUtils.d(TAG, "disConnectInput");
        this.mHMInput.stopSendPing();
        if (this.isBackground) {
            return;
        }
        String strReplaceSpecialStr = StringUtils.replaceSpecialStr(str);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setResultNetData("input", "fail", i10 + ":" + strReplaceSpecialStr, this.mInputStartTime);
        }
        boolean zIsNeedRefreshStoken = isNeedRefreshStoken(0);
        ReportBaseError reportBaseError = new ReportBaseError("" + i10, strReplaceSpecialStr + "," + (this.mInstanceReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(this.mInstanceReconnectCount)) : ""));
        CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_FAIL, JsonUtil.toJsonString(reportBaseError));
        CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
        if (!this.isNetworkOk) {
            LogUtils.d(TAG, "isNetworkOk=" + this.isNetworkOk + ",onDisconnect(), not refresh stoken");
            return;
        }
        if (this.SASS_SERVER_MAINTENANCE || this.mPlayerState == 5 || this.curConnectState == 5) {
            return;
        }
        if (!zIsNeedRefreshStoken) {
            this.mInstanceReconnectCount++;
            disconnectSocketIo(true, false, false);
            this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34143b.lambda$disConnectInput$15();
                }
            }, 30L);
            return;
        }
        LogUtils.d(TAG, "start2Play disconnect and refreshStoken");
        resetState();
        CountlyUtil.recordErrorEvent("input disconnected and refresh stoken ,retry max time:" + Constants.WS_RETRY_MAX_TIMES);
        disconnectSocketIo(true, false, false);
        refreshStoken(0, "InstanceSocket connect lost", false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disableGyroscope() {
        LogUtils.d(TAG, "disableGyroscope====");
        recordLifeCycleEvent("disableGyroscope");
        this.mIsGyroscopeEnable = false;
        stopGyroscope();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disableVibrator(boolean z10) {
        recordLifeCycleEvent("disableVibrator:" + z10);
        HmVibratorManager hmVibratorManager = this.mHmVibratorManager;
        if (hmVibratorManager != null) {
            hmVibratorManager.disabled(z10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disconnectAccProxy() {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.disconnectAccProxy();
        }
    }

    protected void disconnectSocketIo(boolean z10, boolean z11, boolean z12) {
        HMInput hMInput;
        LogUtils.d(TAG, "disconnectSocketIo disconnectInput:" + z10 + ",disconnectWs:" + z11 + ",transferWs:" + z12);
        if (z10 && (hMInput = this.mHMInput) != null) {
            hMInput.disConnect();
        }
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            if (z11) {
                iWebSocket.disconnect2InstanceWsServer();
                stopSensor();
            }
            if (z12) {
                this.mWebSocketManager.disconnect2Transfer();
            }
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disconnectWSTest() {
        HMInput hMInput = this.mHMInput;
        if (hMInput != null) {
            hMInput.disConnect();
        }
        if (this.mWebSocketManager != null) {
            this.mVInputUrl += "abc";
            if (this.SASS_SERVER_MAINTENANCE || this.mPlayerState == 5) {
                return;
            }
            resetState();
            refreshStoken(0, "InstanceSocket connect lost", false);
            LogUtils.d(TAG, "refresh token");
        }
    }

    protected void disconnectWebSocket() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.dis2Access();
        }
        HMInput hMInput = this.mHMInput;
        if (hMInput != null) {
            hMInput.disConnect();
        }
        if (this.mWebSocketManager != null) {
            LogUtils.i(TAG, "==disconnectWebSocket===");
            this.mWebSocketManager.cleanObserver();
            this.mWebSocketManager.disconnect2InstanceWsServer();
            this.mWebSocketManager.disconnect2Upload();
            this.mWebSocketManager.disconnect2Download();
            this.mWebSocketManager.disconnect2Transfer();
            stopSensor();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void distributeControlPermit(List<ControlInfo> list, OnContronListener onContronListener) {
        LogUtils.i(TAG, "distributeControlPermit()" + this.mRequestManager + "; " + getCid());
        if (this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.requestX86ControlDistribute(HmcpManager.getInstance().getCloudId(), list, onContronListener);
    }

    public void doCli(String str, String str2) {
        HmSysNotify hmSysNotify;
        LogUtils.d(TAG, "hmSysConfigNotify:" + str2);
        if (TextUtils.isEmpty(str2) || (hmSysNotify = (HmSysNotify) JsonUtil.parseObject(str2, HmSysNotify.class)) == null) {
            return;
        }
        HmSysNotify hmSysNotify2 = (HmSysNotify) CacheUtil.get(hmSysNotify.getSocketId(), HmSysNotify.class);
        String hm_sys_config_notify = hmSysNotify.getHm_sys_config_notify();
        String cli = hmSysNotify.getCli();
        if (TextUtils.equals(this.mCli, cli) && TextUtils.isEmpty(cli)) {
            this.mLastStatus = hm_sys_config_notify;
            if (!this.mIsNotifyConnectedWaitOP5) {
                MessageType messageType = MessageType.PAY_TYPE;
                if (messageType != getMessageType()) {
                    setMessageType(messageType);
                }
                sendSysNotify(hm_sys_config_notify);
            }
        }
        if (TextUtils.isEmpty(cli)) {
            setMessageType(MessageType.PAY_TYPE);
            sendSysNotify(hm_sys_config_notify);
        }
        this.mCli = cli;
        CacheUtil.put((str + "," + hmSysNotify.getSocketId()) + "," + hmSysNotify.getHm_sys_config_notify(), hmSysNotify, 60000L);
        if ("disconnected".equals(hm_sys_config_notify)) {
            if (WebSocketManager.WebSocketType.TYPE_TRANSFER.name().equals(str)) {
                setMessageType(MessageType.PAY_TYPE);
                sendSysNotify(hm_sys_config_notify);
                return;
            }
            return;
        }
        if (ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(hm_sys_config_notify)) {
            if (hmSysNotify2 == null || !"disconnected".equals(hmSysNotify2.getHm_sys_config_notify())) {
                LogUtils.i(TAG, "new Message sdk, wait channel deal");
            } else {
                LogUtils.i(TAG, "receive disconnected before connect,ignore ");
            }
        }
    }

    protected void doHmSysConfigNotify(String str) {
        LogUtils.d(TAG, "payloadStr:" + str);
        if (TextUtils.isEmpty(str) || !JsonUtil.isJsonObject(str)) {
            return;
        }
        try {
            doCli(WebSocketManager.WebSocketType.TYPE_ACCESS.name(), new JSONObject(str).optString("data"));
        } catch (JSONException e10) {
            LogUtils.e(TAG, e10.getMessage());
        }
    }

    protected void doOperationForcedOffline(String str, String str2) {
        this.mPlayerState = 5;
        this.promptMsg = chooseMsg(str2, getMetaInfoByKey(Constants.TIPS_FORCED_OFFLINE_ACTION));
        JSONObject jSONObjectCallbackHmcpError = callbackHmcpError(new ErrorInfo().put("errorCode", str).put("errorMessage", this.promptMsg), 24);
        this.object = jSONObjectCallbackHmcpError;
        release(jSONObjectCallbackHmcpError.toString());
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_token_expire));
    }

    protected void doOperationGameOver(String str, String str2, String str3) throws JSONException {
        PlayStreamPayloadData playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data;
        if (playStreamPayloadData != null) {
            this.promptMsg = chooseMsg(str3, getMetaInfoByKey(Constants.TIPS_PROMPT_GAME_OVER));
            JSONObject jSONObject = new JSONObject();
            this.object = jSONObject;
            jSONObject.put("errorMessage", this.promptMsg);
            this.object.put(BaseVideoView.FINISH_BY_SERVER, playStreamPayloadData.finishByServer);
            this.object.put("finishTip", playStreamPayloadData.finishTip);
            if (this.mGamePlatformType == GamePlatformType.X86) {
                this.object.put("quitType", 1);
            }
            UiMessageSend(getCallbackData(15, this.object.toString()));
            if (!playStreamPayloadData.finishByServer) {
                sendSceneTimeoutMessage((System.currentTimeMillis() - this.startPlayTime) / 1000);
                return;
            }
            this.mPlayerState = 5;
            this.object.put("status", 15);
            this.object.put("errorCode", str2);
            release(this.object.toString());
            sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_time_limit));
        }
    }

    protected void doOperationGameTimeCountDown(String str) throws JSONException {
        PlayStreamPayloadData playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data;
        if (playStreamPayloadData != null) {
            JSONObject jSONObject = new JSONObject();
            this.object = jSONObject;
            jSONObject.put("ahead", playStreamPayloadData.ahead);
            this.object.put("countDown", playStreamPayloadData.countDown);
            this.object.put("formatter", playStreamPayloadData.formatter);
            this.object.put("type", playStreamPayloadData.type);
            UiMessageSend(getCallbackData(30, this.object.toString()));
        }
    }

    protected void doOperationGameTimeHighlight(String str) throws JSONException {
        PlayStreamPayloadData playStreamPayloadData;
        if (!this.isShowTime || (playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data) == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("playingTime", playStreamPayloadData.playingTime);
        UiMessageSend(getCallbackData(32, this.object.toString()));
    }

    protected void doOperationIntervalTime(String str, String str2) throws JSONException {
        SendSceneState.startWait(getContext(), this.mListener);
        this.mInQueued = true;
        CommonPayload commonPayload = (CommonPayload) com.alibaba.fastjson.a.parseObject(str, CommonPayload.class);
        if (commonPayload == null || commonPayload.data == null) {
            return;
        }
        String intervalTimePrompt = getIntervalTimePrompt(commonPayload, str2);
        this.mPlayerState = -3;
        addScene(1L);
        cleanTimer();
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("message", intervalTimePrompt);
        this.object.put("time", commonPayload.data.time);
        this.object.put("index", commonPayload.data.index);
        this.object.put("waitTotalNum", commonPayload.data.waitTotalNum);
        List<CommonPayloadDataQueues> list = commonPayload.data.queues;
        if (list != null) {
            this.object.putOpt("queues", com.alibaba.fastjson.a.toJSONString(list));
        } else {
            this.object.putOpt("queues", new ArrayList());
        }
        LogUtils.d(TAG, "OPERATION_INTERVAL_TIME:" + this.object.toString());
        UiMessageSend(13, this.object.toString());
    }

    protected void doOperationKicked(String str, String str2) {
        this.mPlayerState = 4;
        this.isGetCloudServiceSuccess = false;
        JSONObject jSONObjectCallbackHmcpError = callbackHmcpError(new ErrorInfo().put("errorCode", str).put("errorMessage", str2), 11);
        this.object = jSONObjectCallbackHmcpError;
        release(jSONObjectCallbackHmcpError.toString());
        resetState();
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_no_operation));
    }

    protected void doOperationNoInputTimeout(String str) throws JSONException {
        PlayStreamPayloadData playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data;
        if (playStreamPayloadData != null) {
            JSONObject jSONObject = new JSONObject();
            this.object = jSONObject;
            jSONObject.put("noInputRemainingTime", playStreamPayloadData.ahead);
            this.object.put("message", StringUtils.replaceString(getMetaInfoByKey(Constants.TIPS_PROMPT_NO_INPUT), playStreamPayloadData.ahead + ""));
        }
        UiMessageSend(getCallbackData(36, this.object.toString()));
    }

    protected void doOperationOpenMoreSameGame(String str, String str2) {
        this.mPlayerState = 5;
        this.promptMsg = chooseMsg(str2, getMetaInfoByKey(Constants.TOAST_OPEN_SAME_GAME));
        JSONObject jSONObjectCallbackHmcpError = callbackHmcpError(new ErrorInfo().put("errorCode", str).put("errorMessage", this.promptMsg), 27);
        this.object = jSONObjectCallbackHmcpError;
        release(jSONObjectCallbackHmcpError.toString());
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_multi_inst));
    }

    protected void doOperationPausedSaasServer(String str, String str2) {
        this.SASS_SERVER_MAINTENANCE = true;
        StopServicePayload stopServicePayload = (StopServicePayload) com.alibaba.fastjson.a.parseObject(str, StopServicePayload.class);
        if (stopServicePayload != null && stopServicePayload.data != null) {
            String strChooseMsg = chooseMsg(str2, StringUtils.replaceString(getMetaInfoByKey(Constants.TIPS_SAAS_ALREAY_STOPPED), stopServicePayload.data.endTimeText));
            this.promptMsg = strChooseMsg;
            this.mPlayerState = 4;
            UiMessageSend(getCallbackData(19, strChooseMsg));
            if (isModelNull()) {
                return;
            } else {
                stopPlay();
            }
        }
        sendSceneMaitMessage(ResourceManager.getString(R.string.haima_hmcp_scene_start));
    }

    protected void doOperationPinCode(String str, com.alibaba.fastjson.JSONObject jSONObject, String str2, String str3) {
        String str4;
        String str5;
        boolean z10 = jSONObject.getInteger("code").intValue() == 0;
        if (z10) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE_SUCCESS);
            PlayStreamPayloadData playStreamPayloadData = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class)).data;
            str4 = playStreamPayloadData.masterId;
            str5 = playStreamPayloadData.pin;
        } else {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_PIN_CODE_FAIL, str2);
            str4 = "";
            str5 = "";
        }
        OnContronListener onContronListener = this.mOnContronListener;
        if (onContronListener != null) {
            onContronListener.pinCodeResult(z10, str4, str5, str3);
        }
    }

    protected void doOperationQueue(String str) throws JSONException {
        SendSceneState.needWait(getContext(), this.mListener);
        removeScene(1L);
        this.mPlayerState = 0;
        this.isGetCloudServiceSuccess = false;
        this.mInQueued = true;
        cleanTimer();
        CommonPayload commonPayload = (CommonPayload) com.alibaba.fastjson.a.parseObject(str, CommonPayload.class);
        if (commonPayload == null || commonPayload.data == null) {
            return;
        }
        String queuePrompt = getQueuePrompt(commonPayload);
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("message", queuePrompt);
        this.object.put("time", commonPayload.data.time);
        this.object.put("index", commonPayload.data.index);
        this.object.put("waitTotalNum", commonPayload.data.waitTotalNum);
        List<CommonPayloadDataQueues> list = commonPayload.data.queues;
        if (list != null) {
            this.object.putOpt("queues", com.alibaba.fastjson.a.toJSONString(list));
        } else {
            this.object.putOpt("queues", new ArrayList());
        }
        LogUtils.d(TAG, "OPERATION_QUEUE:" + this.object.toString());
        UiMessageSend(7, this.object.toString());
        this.mPlayerState = -2;
    }

    protected void doOperationReadyPauseSaasServer(String str, String str2) throws JSONException {
        PauseServicePayloadData pauseServicePayloadData;
        PauseServicePayload pauseServicePayload = (PauseServicePayload) com.alibaba.fastjson.a.parseObject(str, PauseServicePayload.class);
        String str3 = (pauseServicePayload == null || (pauseServicePayloadData = pauseServicePayload.data) == null) ? "" : pauseServicePayloadData.timeStr;
        this.object = new JSONObject();
        if (this.mPlayerState == 3) {
            this.object.put("errorMessage", getMetaInfoByKey(Constants.TOAST_SAAS_READY_TO_STOP, str3));
            UiMessageSend(getCallbackData(17, this.object.toString()));
        } else {
            String strChooseMsg = chooseMsg(str2, getMetaInfoByKey(Constants.TIPS_SAAS_TO_STOP));
            this.promptMsg = strChooseMsg;
            this.object.put("errorMessage", strChooseMsg);
            UiMessageSend(getCallbackData(17, this.object.toString()));
            this.mPlayerState = 4;
        }
        sendSceneMaitMessage(ResourceManager.getString(R.string.haima_hmcp_scene_soon));
    }

    protected void doOperationRefuseQueue(String str, String str2) throws JSONException {
        List<CommonPayloadDataQueues> list;
        removeScene(1L);
        this.mPlayerState = 4;
        this.isGetCloudServiceSuccess = false;
        cleanTimer();
        CommonPayload commonPayload = (CommonPayload) com.alibaba.fastjson.a.parseObject(str, CommonPayload.class);
        String strChooseMsg = chooseMsg(str2, getMetaInfoByKey(Constants.TIPS_TOAST_WAIT_TOOMANY));
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("message", strChooseMsg);
        CommonPayloadData commonPayloadData = commonPayload.data;
        if (commonPayloadData == null || (list = commonPayloadData.queues) == null) {
            this.object.putOpt("queues", new ArrayList());
        } else {
            this.object.putOpt("queues", com.alibaba.fastjson.a.toJSONString(list));
        }
        UiMessageSend(getCallbackData(10, this.object.toString()));
        disconnectWebSocket();
    }

    protected void doOperationStartLiving(com.alibaba.fastjson.JSONObject jSONObject, String str, String str2) {
        boolean z10 = jSONObject.getInteger("code").intValue() == 0;
        if (z10) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_START_LIVING_SUCCESS);
        } else {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_START_LIVING_FAIL, str);
        }
        OnLivingListener onLivingListener = this.mOnLivingListener;
        if (onLivingListener != null) {
            onLivingListener.start(z10, str2);
        }
    }

    protected void doOperationStateChangeReason(String str, String str2, String str3) throws JSONException {
        StateChangePayloadData stateChangePayloadData = ((StateChangePayload) com.alibaba.fastjson.a.parseObject(str, StateChangePayload.class)).data;
        String str4 = stateChangePayloadData != null ? stateChangePayloadData.stateChangeReason : "";
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorCode", str2);
        jSONObject.put("errorMsg", str3);
        jSONObject.put("stateChangeReason", str4);
        doStateChangeReason(jSONObject.toString());
    }

    protected void doOperationStopLiving(com.alibaba.fastjson.JSONObject jSONObject, String str, String str2) {
        boolean z10 = jSONObject.getInteger("code").intValue() == 0;
        if (z10) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_STOP_LIVING_SUCCESS);
        } else {
            CountlyUtil.recordEvent(Constants.COUNTYLY_GET_STOP_LIVING_FAIL, str);
        }
        OnLivingListener onLivingListener = this.mOnLivingListener;
        if (onLivingListener != null) {
            onLivingListener.stop(z10, str2);
        }
    }

    protected void doOperationStreamUrl(String str, com.alibaba.fastjson.JSONObject jSONObject, Integer num, String str2, String str3) throws JSONException {
        PlayStreamPayloadData playStreamPayloadData;
        ResolutionInfo resolutionInfo;
        PlayStreamPayloadData playStreamPayloadData2;
        ResolutionInfo resolutionInfo2;
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            boolean zCheckHangUpData = downloadTaskProxy.checkHangUpData();
            DownloadMode mode = this.mDownloadTaskProxy.getMode();
            if (zCheckHangUpData && mode != null && mode == DownloadMode.DOWNLOAD_ONLY) {
                this.curConnectState = 0;
            }
        }
        this.mPlayerState = 0;
        TimeUtil.StreamUrl = System.currentTimeMillis();
        JSONObject jSONObject2 = new JSONObject();
        this.object = jSONObject2;
        jSONObject2.put("currentNetType", this.currentNetType);
        this.object.put("currentApkType", this.currentApkType);
        PlayStreamPayload playStreamPayload = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str, PlayStreamPayload.class);
        if (playStreamPayload == null || (playStreamPayloadData = playStreamPayload.data) == null) {
            return;
        }
        callbackRemoteInfo(playStreamPayloadData.gsmUsbNatData);
        CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_OPERATION_FIVE, "receive op5, reconnectStream = " + playStreamPayload.data.reconnectStream);
        if (playStreamPayload.data.reconnectStream) {
            if (this.streamModel.isSupportFirstFrameOptimization()) {
                this.isReconnectStream = true;
            }
            LogUtils.d(TAG, "reconnectStream call rePreparation() =OperationStream");
            rePreparation();
        }
        if (this.streamModel.isValidate(playStreamPayload)) {
            cleanTimer();
        }
        if (this.isGetControl && this.mGamePlatformType == GamePlatformType.X86 && (playStreamPayloadData2 = playStreamPayload.data) != null && (resolutionInfo2 = playStreamPayloadData2.resolutionInfo) != null) {
            this.currenteResolutionID = resolutionInfo2.f33828id;
            setResolutionList(this.mHmcpManager.getResolutionDatas(), playStreamPayload.data.resolutionInfo.f33828id, false, false);
        }
        if (num.intValue() == 55) {
            boolean z10 = jSONObject.getInteger("code").intValue() == 0;
            if (z10) {
                CountlyUtil.recordEvent(Constants.COUNTYLY_HAVE_CONTRON_SUCCESS);
                getContronResult(z10, str3);
            } else {
                CountlyUtil.recordEvent(Constants.COUNTYLY_HAVE_CONTRON_FAIL, str2);
                getContronResult(z10, ResourceManager.getString(R.string.haima_hmcp_pin_code_error));
            }
            this.curCloudServiceState = 2;
            CloudStateSend(2);
            PlayStreamPayloadData playStreamPayloadData3 = playStreamPayload.data;
            if (playStreamPayloadData3 != null && (resolutionInfo = playStreamPayloadData3.resolutionInfo) != null) {
                this.currenteResolutionID = resolutionInfo.f33828id;
                setResolutionList(this.mHmcpManager.getResolutionDatas(), playStreamPayload.data.resolutionInfo.f33828id, false, false);
            }
        }
        if (this.currentApkType == 1 && (!this.streamModel.isSupportFirstFrameOptimization() || !playStreamPayload.data.reconnectStream)) {
            LogUtils.d(TAG, "=OperationStream==turn on Video and Sound");
            if (!this.isAudioMute) {
                turnOnSound();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_TURN_ON_VIDEO, "receive op5, turn on video");
            CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
            if (cloudPlayInfo2 != null) {
                cloudPlayInfo2.isTurnOnVideoSuccess = true;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isTurnOnVideoSuccess = true");
            }
            turnOnVideo();
            this.currentApkType = 2;
            if (this.streamModel.isSupportFirstFrameOptimization() && !this.isStartPlayCallBack) {
                UiMessageSend(2, "");
                this.isStartPlayCallBack = true;
            }
            if (this.isFirstFrameArrived) {
                LogUtils.d(TAG, "=OperationStream==isFirstFrameArrived is true, firstFrameArrival");
                CountlyUtil.recordEvent("12045");
                SendSceneState.firstFrameArrival(getContext(), this.mListener);
                UiMessageSend(102, "");
                this.isCallbackFirstFrameArrived = true;
                LogUtils.i(TAG, "fold screen: FirstFrameArrived");
                resolutionCheck();
                CloudPlayInfo cloudPlayInfo3 = cloudPlayInfo;
                if (cloudPlayInfo3 != null) {
                    cloudPlayInfo3.disable();
                    cloudPlayInfo.reset();
                }
            }
        }
        LogUtils.e(TAG, "OperationStream--OPERATION_STREAM_URL---5===" + this.curConnectState + "  " + this.currentApkType);
        PlayStreamPayloadData playStreamPayloadData4 = playStreamPayload.data;
        if (playStreamPayloadData4 != null && this.curConnectState == 0) {
            playPreparation(2, playStreamPayloadData4);
        }
        UiMessageSend(getCallbackData(14, this.object.toString()));
        PlayStreamPayloadData playStreamPayloadData5 = playStreamPayload.data;
        if (playStreamPayloadData5 == null || TextUtils.isEmpty(playStreamPayloadData5.kqiInfoList)) {
            return;
        }
        UiMessageSend(48, playStreamPayload.data.kqiInfoList);
        LogUtils.d(TAG, "OP-5,KQIInfoList = " + playStreamPayload.data.kqiInfoList);
    }

    protected void doPlayerRelease() {
        if (isModelNull()) {
            return;
        }
        this.streamModel.doPlayerRelease();
    }

    protected void doStateChangeReason(String str) throws JSONException {
        com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.a.parseObject(str);
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("status", 42);
        this.object.put("stateChangeReason", object.getString("stateChangeReason"));
        String strChooseMsg = chooseMsg(object.getString("errorMsg"), getMetaInfoByKey(Constants.TIPS_PROMPT_GAME_OVER));
        this.promptMsg = strChooseMsg;
        this.object.put("errorMsg", strChooseMsg);
        this.object.put("errorCode", object.getString("errorCode"));
        this.object.put(ConstantsInternal.KEY_IN_QUEUED, this.mInQueued);
        UiMessageSend(getCallbackData(42, this.object.toString()));
        release(this.object.toString());
        this.mPlayerState = 5;
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_open_api_release_instance));
    }

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
    public void doSwitchStreamType() {
        String str;
        SwitchStreamTypeData switchStreamTypeData = this.switchStreamTypeData;
        if (switchStreamTypeData == null || switchStreamTypeData.playData == null) {
            return;
        }
        setExtParam(switchStreamTypeData.extParam);
        BattleMode battleMode = this.switchStreamTypeData.battleMode;
        if (battleMode != null) {
            this.tvBattleMode.setBattleMode(battleMode);
        }
        boolean z10 = this.isGetCloudServiceSuccess;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.connect2Access(z10 ? 1 : 0, false);
        }
        SwitchStreamTypeData switchStreamTypeData2 = this.switchStreamTypeData;
        onGetCloudServiceSuccess(switchStreamTypeData2.mCloudId, true, switchStreamTypeData2.resolutionId, z10 ? 1 : 0, false);
        PlayStreamPayloadData playStreamPayloadData = this.switchStreamTypeData.playData;
        this.curCloudServiceState = 2;
        playPreparation(this.currentApkType, playStreamPayloadData);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("switchResolutionList", true);
            ResolutionInfo resolutionInfo = playStreamPayloadData.resolutionInfo;
            if (resolutionInfo != null && (str = resolutionInfo.f33828id) != null) {
                jSONObject.put("defaultChoiceId", str);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        UiMessageSend(getCallbackData(43, jSONObject.toString()));
    }

    public void doSwitchToRtmpStreaming() {
        if (Constants.CONFIG_RTC_CONNECT_FAILURE_TO_RTMP_SWITCH) {
            if (!isWaitStreamUrlPre()) {
                switchStreamType(StreamType.RTMP, 2, null);
                return;
            }
            LogUtils.d(TAG, "Switch to RTMP cancel because pooled restart receive op4.5 but not receive op5");
            CountlyUtil.recordEvent("12200", "Switch to RTMP cancel because pooled restart receive op4.5 but not receive op5");
            this.mNeedToSwitchRtmp = true;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(CloudFile cloudFile) {
        download(cloudFile, this.mCloudOperationListener);
    }

    protected void downloadOnlyReplay() {
        HmcpRequest hmcpRequest;
        LogUtils.d(WebSocketConnection.TAG, "replay when download only complete");
        this.streamModel.rfreshStoken();
        if (this.isBackground || ((hmcpRequest = this.mRequestManager) != null && hmcpRequest.isStopPlay)) {
            LogUtils.d(TAG, "don`t replay, cause in background or is stop play");
            return;
        }
        if (this.mPlayerState == 5 || this.curConnectState == 5) {
            LogUtils.e(TAG, "===game over no refresh ====");
            return;
        }
        setSupportLiving(-1);
        HmcpRequest hmcpRequest2 = this.mRequestManager;
        if (hmcpRequest2 != null) {
            hmcpRequest2.getCloudService(0, 1, false);
        } else {
            LogUtils.e(TAG, "RequestManager is null, replay when download only complete");
            CountlyUtil.recordErrorEvent("RequestManager is null, replay when download only complete");
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enableGyroscope(GyroscopeActivateMode gyroscopeActivateMode) {
        LogUtils.d(TAG, "enableGyroscope====");
        if (!isX86Game()) {
            LogUtils.d(TAG, "arm game not support by this method");
            return;
        }
        this.mIsGyroscopeEnable = true;
        this.mGyroscopeActivateMode = gyroscopeActivateMode;
        recordLifeCycleEvent("enableGyroscope");
        GyroscopeHelper gyroscopeHelper = this.mGyroscopeHelper;
        if (gyroscopeHelper != null) {
            gyroscopeHelper.startDetection();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enableHighBitrate(final boolean z10, final OnEnableHighBitrateListener onEnableHighBitrateListener) {
        recordLifeCycleEvent("enableHighBitrate_level");
        if (isWaitStreamUrlPre()) {
            LogUtils.d(TAG, ENABLE_HIGH_BITRATE_TAG + "enable high bitrate cancel because pooled restart receive op4.5 but not receive op5");
            CountlyUtil.recordEvent("12200", "enable high bitrate cancel because pooled restart receive op4.5 but not receive op5");
            if (onEnableHighBitrateListener != null) {
                onEnableHighBitrateListener.onFail("201-wait op 4.5");
                return;
            }
            return;
        }
        if (this.isExchangeControl) {
            LogUtils.e(TAG, "enable high bitrate-> exchange control, can not enable high bitrate!");
            if (onEnableHighBitrateListener != null) {
                onEnableHighBitrateListener.onFail("201-is exchange control");
                return;
            }
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            LogUtils.e(TAG, "enable high bitrate-> mRequestManager == null!");
            CountlyUtil.recordErrorEvent("enableHighBitrate() mRequestManager == null : " + Log.getStackTraceString(new Throwable()));
            if (onEnableHighBitrateListener != null) {
                onEnableHighBitrateListener.onFail("-1001-Request Manager is null");
                return;
            }
            return;
        }
        RequestPreCheck requestPreCheckPreCheck = hmcpRequest.preCheck(201);
        if (requestPreCheckPreCheck.requestAllow) {
            if (!this.enableHighBitrateRequesting) {
                this.enableHighBitrateRequesting = true;
                this.mRequestManager.enableHighBitrate(Boolean.valueOf(z10), new OnEnableHighBitrateListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.16
                    @Override // com.haima.hmcp.listeners.OnEnableHighBitrateListener
                    public void onFail(String str) {
                        AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                        absIjkVideoView.enableHighBitrateRequesting = false;
                        absIjkVideoView.mRequestManager.setHighBitrateEnable(absIjkVideoView.enableHighBitrate);
                        OnEnableHighBitrateListener onEnableHighBitrateListener2 = onEnableHighBitrateListener;
                        if (onEnableHighBitrateListener2 != null) {
                            onEnableHighBitrateListener2.onFail(str);
                        }
                    }

                    @Override // com.haima.hmcp.listeners.OnEnableHighBitrateListener
                    public void onSuccess() {
                        AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                        absIjkVideoView.enableHighBitrateRequesting = false;
                        absIjkVideoView.enableHighBitrate = Boolean.valueOf(z10);
                        OnEnableHighBitrateListener onEnableHighBitrateListener2 = onEnableHighBitrateListener;
                        if (onEnableHighBitrateListener2 != null) {
                            onEnableHighBitrateListener2.onSuccess();
                        }
                    }
                });
                return;
            } else {
                LogUtils.e(TAG, "enable high bitrate-> has already requesting");
                if (onEnableHighBitrateListener != null) {
                    onEnableHighBitrateListener.onFail("201-has already requesting");
                    return;
                }
                return;
            }
        }
        LogUtils.e(TAG, "enable high bitrate-> quest pre check " + requestPreCheckPreCheck);
        CountlyUtil.recordErrorEvent("enableHighBitrate() failed, cause: quest pre check " + requestPreCheckPreCheck);
        if (onEnableHighBitrateListener != null) {
            onEnableHighBitrateListener.onFail("201-" + requestPreCheckPreCheck.msg);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enableVirtualKeyBoardView(boolean z10) {
        VirtualKeyboardSurfaceView virtualKeyboardSurfaceView = this.mVirtualKeyboardSurfaceView;
        if (virtualKeyboardSurfaceView != null) {
            virtualKeyboardSurfaceView.setVisibility(z10 ? 0 : 8);
            this.mVirtualKeyboardVisible = z10;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enterVirDeviceEditMode(VirtualOperateType virtualOperateType, boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return;
        }
        LogUtils.d(TAG, "enterVirDeviceEditMode : " + virtualOperateType.name() + ",mHasOperatePermission:" + this.mHasOperatePermission);
        if (!this.mHasOperatePermission || virtualOperateType == VirtualOperateType.NONE) {
            return;
        }
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView == null) {
            LogUtils.e(TAG, "enterVirDeviceEditMode error : virtualLayout is null");
            return;
        }
        if (hmVirtualTextureView.isEditModeShow()) {
            LogUtils.d(TAG, "enterVirDeviceEditMode error : is already in edit mode");
            return;
        }
        if (virtualOperateType == VirtualOperateType.VIRTUAL_STICK_XBOX) {
            showVirtualStickInner(true);
            this.mVirtualDeviceLayout.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
        } else if (virtualOperateType == VirtualOperateType.VIRTUAL_KEYBOARD) {
            showVirtualKeyboardInner(true);
            this.mVirtualDeviceLayout.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
        }
        showOverLay(0);
        if (this.mHasOperatePermission) {
            this.mVirtualDeviceLayout.setVisibility(0);
        }
        this.mVirtualDeviceLayout.enterEditModel(getPluginContext(), this.mIsUserConfig, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void entryQueue() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            CountlyUtil.recordErrorEvent("entryQueue() mRequestManager == null : " + Log.getStackTraceString(new Throwable()));
            return;
        }
        RequestPreCheck requestPreCheckPreCheck = hmcpRequest.preCheck(201);
        if (requestPreCheckPreCheck.requestAllow) {
            this.mEntryQueue = true;
            this.mRequestManager.getCloudService(1, 0, false);
            CountlyUtil.recordEvent(Constants.COUNTYLY_USER_CHOOSE_CONTINUE);
            return;
        }
        String cid = getCid();
        boolean zIsEmpty = TextUtils.isEmpty(cid);
        String str = Constants.ERRORCODE_SERVICE_005;
        if (!zIsEmpty) {
            str = Constants.ERRORCODE_SERVICE_005 + "-" + cid;
        }
        String str2 = str + "[entryQueue failed, cause: " + requestPreCheckPreCheck.msg + "]";
        callbackHmcpError(new ErrorInfo().put("errorCode", str).put("errorMessage", str2), 29);
        CountlyUtil.recordErrorEvent(str2);
        LogUtils.e(TAG, str);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void exitQueue() {
        CountlyUtil.recordEvent(Constants.COUNTYLY_USER_ENQUEUE_NO);
    }

    public void forwardMessageToApplication(Message message) {
        LogUtils.i(TAG, "forwardMessageToApplication==ack==> " + message.ack);
        if (message.ack != 0) {
            LogUtils.i(TAG, "this message is send by server, remove message from resend list");
            IMessage iMessage = this.mMessageManager;
            if (iMessage != null) {
                iMessage.removeSendMessage(true, message);
                return;
            }
            return;
        }
        LogUtils.i(TAG, "notify application");
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onMessage(message.payload);
        }
        if (TextUtils.isEmpty(message.payload) || !JsonUtil.isJSONValid(message.payload)) {
            return;
        }
        try {
            if (new JSONObject(message.payload).optInt("status", 0) != 200) {
                return;
            }
            sendInputDevice(4, 3);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getAppName() {
        return this.mAppName;
    }

    protected String getBid() {
        return CountlyUtil.mAccessKey;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getBitRate() {
        return this.mBitRate;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getButtonMappingMode() {
        MappingInputTypeModel mappingInputTypeModel = this.inputTypeModel;
        if (mappingInputTypeModel == null) {
            return 1;
        }
        return mappingInputTypeModel.getmCurrentInputMode();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List getButtonMappings() {
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel != null) {
            return eventMappingModel.getButtonMappings();
        }
        return null;
    }

    public String getCallbackData(int i10, String str) {
        SwitchStreamTypeData switchStreamTypeData;
        if (this.isChangeStreamType && ((i10 == 1 || i10 == 3 || i10 == 20) && ((switchStreamTypeData = this.switchStreamTypeData) == null || switchStreamTypeData.switchCode != 2))) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(STATUS, i10);
            jSONObject.put(DATA, str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }

    protected String getCid() {
        return HmcpManager.getInstance().getCloudId();
    }

    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        return this.streamModel.getClockDiffVideoLatencyInfo();
    }

    public boolean getCloseStream() {
        return this.closeStream;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getCloudFileStatus(CloudOperation cloudOperation, CloudFileProtocol cloudFileProtocol) {
        if (cloudOperation == CloudOperation.DOWNLOAD && cloudFileProtocol == CloudFileProtocol.HTTP) {
            return this.mDownloadTaskProxy.isRunning() ? 1 : 0;
        }
        return -1;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getCloudImeType(GetCloudIMECallback getCloudIMECallback) {
        GetCloudImeTransaction getCloudImeTransaction = this.mGetCloudImeTransaction;
        if (getCloudImeTransaction != null) {
            getCloudImeTransaction.getCloudImeType(getCloudIMECallback, this.mIMEConfig, this.mWebSocketManager);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public CloudPlayInfo getCloudPlayInfo() {
        return cloudPlayInfo;
    }

    public String getCloudPlayStatusCode() {
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            return cloudPlayInfo2.toStatusCode();
        }
        LogUtils.d(TAG, "cloudPlayInfo == null, return empty");
        return "";
    }

    protected void getContronResult(boolean z10, String str) {
        if (!z10) {
            controlFailed(str);
        }
        OnContronListener onContronListener = this.mOnContronListener;
        if (onContronListener != null) {
            onContronListener.contronResult(z10, str);
        }
    }

    public Activity getCurActOrNull() {
        Context context = this.mAttachContext;
        if (context instanceof Activity) {
            return (Activity) context;
        }
        try {
            return HmIMEManager.getInstance().getCurrentActivity();
        } catch (Exception e10) {
            LogUtils.e(TAG, e10);
            return null;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getCurResolution() {
        return this.mCurResolution;
    }

    public int getCurrentApkType() {
        return this.currentApkType;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getCurrentInputMode() {
        IDeviceInput iDeviceInput = this.deviceInputManager;
        if (iDeviceInput != null) {
            return iDeviceInput.getCurrentInputMode();
        }
        return 0;
    }

    protected int getCurrentNetType() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            LogUtils.d(TAG, "==isNetworkOk is false by getCurrentNetType");
            this.isNetworkOk = false;
            SendSceneState.networkCuts(this.mListener, NetWorkState.NO_NETWORK);
            return -1;
        }
        int type = activeNetworkInfo.getType();
        LogUtils.d(TAG, "==isNetworkOk is ture by getCurrentNetType");
        this.isNetworkOk = true;
        return type;
    }

    public float getCurrentSound() {
        return this.currentSound;
    }

    public String getCurrenteResolutionID() {
        return this.currenteResolutionID;
    }

    public MouseView getCursorImageView() {
        return this.mCursorImageView;
    }

    public CircularProgressIndicatorView getCursorOverLay() {
        return this.mCursorOverLay;
    }

    public int getDecodeType() {
        return this.decodeType;
    }

    protected String getDownloadUrl() {
        return this.screenUrl;
    }

    protected String getExtParam() {
        return JsonUtil.toJsonString(null);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public float getFunctionSensitivity() {
        float functionSensitivity;
        String str;
        Float f10;
        AppSettingsState appSettingsState = this.appSettingsState;
        if (appSettingsState == null || (f10 = appSettingsState.functionSensitivitySetByApp) == null) {
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                functionSensitivity = touchUtil.getFunctionSensitivity();
                str = "from SDKInner";
            } else {
                functionSensitivity = 1.0f;
                str = "from default";
            }
        } else {
            functionSensitivity = f10.floatValue();
            str = "from SetByApp";
        }
        LogUtils.e(TAG, "API getFunctionSensitivity " + str + " and result is " + functionSensitivity);
        return functionSensitivity;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public GameArchitectureType getGameArchitectureType() {
        return this.mGamePlatformType == GamePlatformType.ARM ? GameArchitectureType.ARM : GameArchitectureType.X86;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public HmcpPlayerListener getHmcpPlayerListener() {
        return this.mListener;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public IMediaPlayer getIMediaPlayer(boolean z10) {
        if (isModelNull()) {
            return null;
        }
        return this.streamModel.getIMediaPlayer(z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getInputUrl() {
        if (Constants.GET_INPUT) {
            return this.mVInputUrl;
        }
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getInstanceAccessUrl() {
        return this.mInstanceAccessUrl;
    }

    protected String getIntervalTimePrompt(CommonPayload commonPayload, String str) {
        CommonPayloadData commonPayloadData;
        if (commonPayload == null || (commonPayloadData = commonPayload.data) == null) {
            return "";
        }
        if (commonPayloadData.waitTotalNum == 0) {
            return !TextUtils.isEmpty(commonPayloadData.timeStr) ? StringUtils.replaceString(chooseMsg(str, getMetaInfoByKey(Constants.TIPS_PROMPT_WAIT_MAN_TIME, String.valueOf(commonPayload.data.index))), commonPayload.data.timeStr) : chooseMsg(str, getMetaInfoByKey(Constants.TIPS_PROMPT_WAIT_MSG, String.valueOf(commonPayload.data.index)));
        }
        return !TextUtils.isEmpty(commonPayloadData.timeStr) ? StringUtils.replaceString(StringUtils.replaceString(chooseMsg(str, getMetaInfoByKey(Constants.TIPS_PROMPT_WAIT_MAN_TIME_TOTAL_NUM, String.valueOf(commonPayload.data.index))), String.valueOf(commonPayload.data.waitTotalNum)), commonPayload.data.timeStr) : StringUtils.replaceString(chooseMsg(str, getMetaInfoByKey(Constants.TIPS_PROMPT_WAIT_MSG_TOTAL_NUM, String.valueOf(commonPayload.data.index))), String.valueOf(commonPayload.data.waitTotalNum));
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public IntroImageInfo getIntroImageInfo() {
        return this.mIntroImageInfo;
    }

    public Bitmap getLastCapture() {
        return this.mLastCapture;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public long getLastUserOperationTimestamp() {
        LogUtils.i(TAG, "====getLastUserOperationTimestamp=====");
        return this.mLastOperationTimestamp;
    }

    public ELivingCapabilityStatus getLivingCapabilityStatus() {
        return isModelNull() ? ELivingCapabilityStatus.UNKNOWN : this.streamModel.getLivingCapabilityStatus(this.mLivingCapabilityStatus);
    }

    protected String getMessage(String str) {
        this.jsonMap.clear();
        this.jsonMap.put("message", str);
        return JsonUtil.getJsonObj(this.jsonMap).toString();
    }

    public MessageType getMessageType() {
        LogUtils.d(TAG, "mMessageType:" + this.mMessageType);
        return this.mMessageType;
    }

    public String getMetaInfoByKey(String str) {
        LogUtils.i(TAG, "==getMetaInfoByKey====" + str);
        return getMetaInfoByKey(str, "");
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public HashMap<String, String> getMetaInfos() {
        return this.mMetaInfos;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void getMouseSensitivity(float f10) {
        b0.g(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ArrayList getNetText() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            return hmcpRequest.getNetText();
        }
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VirtualOperateType getOperateType() {
        LogUtils.i(TAG, "==VirtualDeviceTag== getOperateType=" + this.mDefaultOperateType);
        VirtualOperateType virtualOperateType = this.mDefaultOperateType;
        return virtualOperateType != null ? virtualOperateType : VirtualOperateType.NONE;
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public ScreenOrientation getOrientation() {
        return this.mOrientation;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getPinCode(OnContronListener onContronListener) {
        if (this.isBackground) {
            return;
        }
        this.mOnContronListener = onContronListener;
        requestPrepare();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.requestPinCode(HmcpManager.getInstance().getCloudId(), onContronListener);
        }
    }

    public PluginContext getPluginContext() {
        PluginContext pluginContext = this.mPluginContext;
        if (pluginContext != null) {
            return pluginContext;
        }
        Activity currentActivity = HmIMEManager.getInstance().getCurrentActivity();
        if (currentActivity == null) {
            LogUtils.e(TAG, "getPluginContext is null because getGlobleActivity error");
            CountlyUtil.recordErrorEvent("getPluginContext is null because getGlobleActivity error");
            return null;
        }
        PluginContext pluginContext2 = new PluginContext(currentActivity);
        this.mPluginContext = pluginContext2;
        return pluginContext2;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getQRCodeData() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (Constants.GET_QR_CODE_DATA) {
                jSONObject.put(BaseVideoView.SCREEN_SHOT_URL, this.screenUrl);
                jSONObject.put(BaseVideoView.SCREEN_RESOLUTION, this.screenResolution);
                jSONObject.put(BaseVideoView.INPUT_URL, this.mVInputUrl);
            }
            TvBattleModel tvBattleModel = this.tvBattleMode;
            int gamePadForQRCode = tvBattleModel.getGamePadForQRCode(tvBattleModel.getBattleMode());
            if (gamePadForQRCode != -1) {
                jSONObject.put(BaseVideoView.GAME_PAD, gamePadForQRCode);
            }
            String metaInfoByKey = getMetaInfoByKey(Constants.KEY_X86_QRCODE_URL);
            if (!TextUtils.isEmpty(metaInfoByKey)) {
                jSONObject.put(BaseVideoView.X86_QRCODE_URL, metaInfoByKey);
            }
            jSONObject.put("encryption", this.encryption);
            jSONObject.put("orientation", this.mOrientation == ScreenOrientation.LANDSCAPE ? 0 : 1);
            CountlyUtil.recordErrorEvent("getQRCodeData :" + jSONObject);
        } catch (JSONException e10) {
            LogUtils.e(TAG, e10.getLocalizedMessage());
        }
        return jSONObject.toString();
    }

    protected String getQueuePrompt(CommonPayload commonPayload) {
        CommonPayloadData commonPayloadData;
        if (commonPayload == null || (commonPayloadData = commonPayload.data) == null) {
            return "";
        }
        if (commonPayloadData.waitTotalNum == 0) {
            return getMetaInfoByKey(Constants.TIPS_TOAST_WAIT_CHOOSE, commonPayload.data.index + "");
        }
        return StringUtils.replaceString(getMetaInfoByKey(Constants.TIPS_TOAST_WAIT_CHOOSE_TOTAL_NUM, commonPayload.data.index + ""), String.valueOf(commonPayload.data.waitTotalNum));
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public IRenderViewBase getRenderView() {
        return this.mRenderView;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VideoDelayInfo getReportDelayInfo() {
        if (this.videoViewDelayReportManager == null) {
            return null;
        }
        return this.videoViewDelayReportManager.getReportDelayInfo();
    }

    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        return this.streamModel.getResolution(list, str, str2);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getResolutionInfo() {
        return this.resolutionInfo;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List<ResolutionInfo> getResolutionList() {
        return this.mResolutionList;
    }

    public float getScreenBrightness(Activity activity) {
        int i10 = 0;
        try {
            i10 = Settings.System.getInt(activity.getContentResolver(), "screen_brightness");
            LogUtils.i(TAG, "setLight.screenBrightness = " + i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return (i10 * 1) / 255.0f;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getScreenHeight() {
        return this.screenHeight;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ScreenOrientation getScreenOrientation() {
        return this.mOrientation;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getScreenWidth() {
        return this.screenWidth;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getSetResolution() {
        return this.mSetResolution;
    }

    public Bitmap getShortcut() {
        return this.streamModel.getShortcut();
    }

    public IStreamModel getStreamModel() {
        return this.streamModel;
    }

    public String getStreamUrl() {
        if (isModelNull()) {
            return null;
        }
        return this.streamModel.getStreamUrl();
    }

    public String getStreamingDomain() {
        if (isModelNull()) {
            return null;
        }
        return this.streamModel.getStreamingDomain();
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List<TipsInfo> getTipsInfo() {
        return this.mTipsInfo;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public TouchMode getTouchMode() {
        return this.mTouchMode;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public TransferHelper getTransferDelegate() {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null || !hmcpRequest.getTransferOpen()) {
            return null;
        }
        return getTransferDelegateInternal();
    }

    public TransferHelper getTransferDelegateInternal() {
        if (this.mTransferHelper == null) {
            TransferHelper transferHelper = new TransferHelper(this.mAppContext);
            this.mTransferHelper = transferHelper;
            transferHelper.setVideoView(this);
            this.mTransferHelper.setWebSocketManager(this.mWebSocketManager);
        }
        return this.mTransferHelper;
    }

    public HmcpUIListener getUiListener() {
        return this.uiListener;
    }

    protected String getUploadUrl() {
        return this.screenUrl;
    }

    public int getValidSpeed(Bundle bundle) {
        if (bundle == null) {
            return 0;
        }
        int i10 = bundle.getInt("internetSpeed");
        if (i10 > 2147400000) {
            i10 = MAX_BITRATE;
        }
        if (i10 < 0) {
            return 0;
        }
        return i10;
    }

    public int getVideoLatency() {
        if (!isPlaying() || isModelNull() || this.streamModel.getVideoLatency()) {
            return 0;
        }
        return Math.max(0, (this.videoViewDelayReportManager == null || this.videoViewDelayReportManager.getReportDelayInfo() == null) ? 0 : this.videoViewDelayReportManager.getReportDelayInfo().getNetDelay());
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public Context getViewContext() {
        return getContext();
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public ViewGroup getViewGroup() {
        return this;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public float getVirtualDeviceAlpha() {
        return HmVirtualDeviceManager.transparency;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean getVirtualKeyVibrate() {
        return HmVirtualDeviceManager.ableVibrator;
    }

    protected IWebSocket getWebSocket() {
        return this.mWebSocketManager;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getWorkingFile(CloudOperation cloudOperation, WorkingFileCallback workingFileCallback) {
        this.mDownloadTaskProxy.getWorkingFiles(cloudOperation, workingFileCallback);
    }

    public String getmAutoSwitchDetectInterval() {
        return this.mAutoSwitchDetectInterval;
    }

    public String getmAutoSwitchDuration() {
        return this.mAutoSwitchDuration;
    }

    public String getmAutoSwitchFrozentime() {
        return this.mAutoSwitchFrozentime;
    }

    public String getmAutoSwitchPlayTimeDelay() {
        return this.mAutoSwitchPlayTimeDelay;
    }

    public int getmBandWidthPeak() {
        return this.mBandWidthPeak;
    }

    public int getmBandWidthPeriod() {
        return this.mBandWidthPeriod;
    }

    public HMCameraConfig getmCameraConfig() {
        return this.mCameraConfig;
    }

    public int getmClockDiffUse() {
        return this.mClockDiffUse;
    }

    public CloudFileManager getmCloudFileManager() {
        return this.mCloudFileManager;
    }

    public int getmCurrentState() {
        return this.mCurrentState;
    }

    public int getmDecodeTimePeriod() {
        return this.mDecodeTimePeriod;
    }

    public String getmDelayCalculateInterval() {
        return this.mDelayCalculateInterval;
    }

    public String getmDelayThresholdPercent() {
        return this.mDelayThresholdPercent;
    }

    public int getmFPSPeriod() {
        return this.mFPSPeriod;
    }

    public FrameDataProxy getmFrameDataProxy() {
        return this.mFrameDataProxy;
    }

    public long getmPlayerBitRate() {
        return this.mPlayerBitRate;
    }

    public long getmPlayerFPS() {
        return this.mPlayerFPS;
    }

    public ScreenShotManager.ScreenShotConfig getmScreenShotConfig() {
        return this.mScreenShotConfig;
    }

    public ScreenShotManager getmScreenShotManager() {
        return this.mScreenShotManager;
    }

    public int getmSeiDataSwitch() {
        return this.mSeiDataSwitch;
    }

    public int getmShowHeight() {
        return this.mShowHeight;
    }

    public int getmShowWidth() {
        return this.mShowWidth;
    }

    public int getmTargetState() {
        return this.mTargetState;
    }

    protected void handleLinkMessage(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(OP_TYPE)) {
            return;
        }
        try {
            com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.a.parseObject(str);
            String string = object.getString(OP_TYPE);
            if (LINK.equals(object.getString("source")) && "1".equals(string)) {
                stopButNotReleaseCid();
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, e10.getLocalizedMessage());
            CountlyUtil.recordEvent("12230", JsonUtil.toJsonString(new ReportBaseError("-1000", e10.getMessage())));
        }
    }

    public void handleMessage(String str) {
        PlayStreamPayloadData playStreamPayloadData;
        if (TextUtils.isEmpty(str)) {
            CountlyUtil.recordEvent("12230", JsonUtil.toJsonString(new ReportBaseError("-1000", "empty")));
            return;
        }
        if (Constants.OPEN_MULTI_CONNECT > 0) {
            handleLinkMessage(str);
        }
        try {
            Message message = (Message) com.alibaba.fastjson.a.parseObject(str, Message.class);
            LogUtils.e(TAG, "handleMessage: " + str);
            int i10 = message.type;
            String str2 = "";
            try {
                if (i10 != 2) {
                    if (5 == i10) {
                        handleMessageVirtualGamePAD(message);
                        return;
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, JsonUtil.toJsonString(new ReportSaasWSMessage("1", "", StringUtils.encodeToBase64String(str))));
                        forwardMessageToApplication(message);
                        return;
                    }
                }
                String str3 = message.payload;
                com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.a.parseObject(str3);
                if (!object.containsKey(JSON_TAG_OPERATION)) {
                    return;
                }
                Integer integer = object.getInteger(JSON_TAG_OPERATION);
                String string = object.getString("errorCode");
                String string2 = object.getString("msg");
                String string3 = object.getString("errorMsg");
                try {
                    String string4 = object.getString("data");
                    LogUtils.e(TAG, "error code: " + string + "  msg: " + string3);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("");
                    sb2.append(message.type);
                    CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, JsonUtil.toJsonString(new ReportSaasWSMessage(sb2.toString(), "" + integer, StringUtils.encodeToBase64String(str))));
                    int iIntValue = integer.intValue();
                    if (iIntValue == 18) {
                        LogUtils.d(TAG, "==OPERATION_GAME_CRASH===");
                        sendSceneGameRestart();
                        return;
                    }
                    if (iIntValue == 19) {
                        LogUtils.d(TAG, "==OPERATION_GAME_RESTART===");
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
                        LogUtils.d(TAG, "==OPERATION_GAME_ARCHIVING===");
                        showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, string, string3);
                        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_instance_err));
                        return;
                    }
                    if (iIntValue == 62) {
                        HmcpRequest hmcpRequest = this.mRequestManager;
                        if (hmcpRequest == null || !hmcpRequest.isDisableAutoStream()) {
                            LogUtils.d(TAG, "=OperationStream==receive op4.5");
                            CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_OPERATION_FOUR_POINT_FIVE, "receive op4.5");
                            if (this.isOperationStreamUrlReceived) {
                                LogUtils.d(TAG, "already receive op5, this op4.5 is untreated");
                                CountlyUtil.recordEvent(Constants.COUNTYLY_SAAS_WS_MESSAGE, "already receive op5, this op4.5 is untreated");
                                return;
                            }
                            this.isOperationStreamUrlPreReceived = true;
                            PlayStreamPayload playStreamPayload = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str3, PlayStreamPayload.class);
                            if (playStreamPayload != null && playStreamPayload.data != null) {
                                rePreparation();
                                playPreparation(1, playStreamPayload.data);
                            }
                            long j10 = Constants.FIRST_FRAME_TIMEOUT;
                            startTimer(j10, j10, 3, "wait operation five");
                            return;
                        }
                        return;
                    }
                    if (iIntValue == 65) {
                        maintenanceInQueued(str3, string4);
                        return;
                    }
                    if (iIntValue == 100) {
                        LogUtils.e(TAG, "===================OPERATION_DEBUG_SWITCH===============");
                        return;
                    }
                    if (iIntValue == 201) {
                        doHmSysConfigNotify(str3);
                        return;
                    }
                    if (iIntValue == 68) {
                        this.isOperationWaitStreamingConfirmReceived = true;
                        LogUtils.d(TAG, "=OperationStream==receive op68");
                        cancelTimer(this.mWaitOperationStreamingConfirm);
                        int i11 = Constants.VIDEO_URL_TIMER_INTVAL;
                        startTimer(i11 * 1000, i11 * 1000, 5, "wait operation 69");
                        CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_OPERATION_STREAMING_CONFIRM, "receive op68");
                        SendSceneState.waitStreamingConfirm(getContext(), this.mListener);
                        return;
                    }
                    if (iIntValue == 69) {
                        LogUtils.d(TAG, "=OperationStream==receive op69");
                        cancelTimer(this.mWaitOperationStreamingTimeOut);
                        CountlyUtil.recordEvent(Constants.COUNTYLY_RECEIVE_STREAMING_TIMEOUT, "receive op69");
                        SendSceneState.waitStreamingTimeout(getContext(), this.mListener);
                        JSONObject jSONObject = new JSONObject();
                        this.object = jSONObject;
                        this.mPlayerState = 5;
                        this.mCurrentState = -1;
                        jSONObject.put("errorCode", 69);
                        release(this.object.toString());
                        return;
                    }
                    switch (iIntValue) {
                        case 1:
                            doOperationIntervalTime(str3, string3);
                            return;
                        case 2:
                            doOperationKicked(string, string3);
                            return;
                        case 3:
                            LogUtils.d(TAG, "==OPERATION_HMCP_ERROR===");
                            showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, string, string3);
                            sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_instance_err));
                            if (TextUtils.isEmpty(string4)) {
                                return;
                            }
                            UiMessageSend(48, string4);
                            LogUtils.d(TAG, "OP-3,KQIInfoList = " + string4);
                            return;
                        case 4:
                            doOperationGameOver(str3, string, string3);
                            return;
                        case 5:
                            LogUtils.d(TAG, "=OperationStream==receive op5");
                            CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
                            if (cloudPlayInfo2 != null) {
                                cloudPlayInfo2.isGetOperationFiveSuccess = true;
                            } else {
                                LogUtils.d(TAG, "cloudPlayInfo == null, can`t set cloudPlayInfo.isGetOperationFiveSuccess = true");
                            }
                            this.isOperationStreamUrlReceived = true;
                            if (this.mNeedToSwitchRtmp) {
                                doSwitchToRtmpStreaming();
                                this.mNeedToSwitchRtmp = false;
                            }
                            break;
                        case 6:
                            doOperationQueue(str3);
                            return;
                        case 7:
                            doOperationRefuseQueue(str3, string3);
                            return;
                        case 8:
                            this.curCloudServiceState = 2;
                            CloudStateSend(2);
                            cancelRefreshStokenTask();
                            if (this.streamModel == null) {
                                return;
                            }
                            stopPlay();
                            return;
                        case 9:
                            addScene(1L);
                            this.mPlayerState = 4;
                            String strChooseMsg = chooseMsg(string3, getMetaInfoByKey(Constants.TIPS_TOAST_INSTANCE_APPLY));
                            this.promptMsg = strChooseMsg;
                            UiMessageSend(getCallbackData(16, strChooseMsg));
                            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_wait), null);
                            this.mCurResolution = null;
                            return;
                        case 10:
                            LogUtils.d(TAG, "timeframe--OPERATION_INSTANCE_INITIATING---10");
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
                            LogUtils.e(TAG, "timeframe===================OPERATION_SWITCHING_RESOLUTION===============");
                            return;
                        case 13:
                            LogUtils.i(TAG, "===================OPERATION_RESUME_SAAS_SERVER===============");
                            return;
                        case 14:
                            doOperationReadyPauseSaasServer(str3, string3);
                            return;
                        case 15:
                            this.promptMsg = chooseMsg(string3, getMetaInfoByKey(Constants.TIPS_SAAS_TO_STOP));
                            JSONObject jSONObject2 = new JSONObject();
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
                            doOperationPausedSaasServer(str3, string3);
                            return;
                        default:
                            switch (iIntValue) {
                                case 35:
                                    doOperationGameTimeCountDown(str3);
                                    return;
                                case 36:
                                    PlayStreamPayloadData playStreamPayloadData2 = ((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str3, PlayStreamPayload.class)).data;
                                    if (playStreamPayloadData2 == null || TextUtils.isEmpty(playStreamPayloadData2.tip)) {
                                        return;
                                    }
                                    JSONObject jSONObject3 = new JSONObject();
                                    this.object = jSONObject3;
                                    jSONObject3.put("tip", playStreamPayloadData2.tip);
                                    UiMessageSend(getCallbackData(31, this.object.toString()));
                                    return;
                                case 37:
                                    doOperationGameTimeHighlight(str3);
                                    return;
                                default:
                                    switch (iIntValue) {
                                        case 40:
                                            doOperationNoInputTimeout(str3);
                                            return;
                                        case 41:
                                            KeepAlivePayload keepAlivePayload = (KeepAlivePayload) com.alibaba.fastjson.a.parseObject(str3).getObject("data", KeepAlivePayload.class);
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
                                                str2 = "request keepAlive failed";
                                            }
                                            onRequestAliveListener.onRequestAliveResult(z10, str2);
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
                                            KeepAlivePayload keepAlivePayload2 = (KeepAlivePayload) com.alibaba.fastjson.a.parseObject(str3).getObject("data", KeepAlivePayload.class);
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
                                                str2 = "stop keepAlive failed";
                                            }
                                            onRequestAliveListener3.onStopAliveResult(z11, str2);
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
                                                case 45:
                                                    this.streamModel.doOperationNetTraceRoute(str3);
                                                    return;
                                                case 46:
                                                case 47:
                                                case 48:
                                                    this.tvBattleMode.handleSaasOperation(integer.intValue(), str3);
                                                    return;
                                                default:
                                                    switch (iIntValue) {
                                                        case 51:
                                                            doOperationStartLiving(object, string, string3);
                                                            break;
                                                        case 52:
                                                            doOperationPinCode(str3, object, string, string3);
                                                            break;
                                                        case 53:
                                                            doOperationStopLiving(object, string, string3);
                                                            break;
                                                        case 54:
                                                            CountlyUtil.recordEvent(Constants.COUNTYLY_LOST_CONTRON_FAIL);
                                                            controlLost((PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str3, PlayStreamPayload.class));
                                                            break;
                                                        case 56:
                                                            LogUtils.e(TAG, "GAME_EXIT operation 56 & : " + str);
                                                            CountlyUtil.recordEvent(Constants.COUNTYLY_GAME_EXIT);
                                                            UiMessageSend(37, "");
                                                            break;
                                                        case 57:
                                                            this.mPlayerState = 0;
                                                            TimeUtil.StreamUrl = System.currentTimeMillis();
                                                            JSONObject jSONObject4 = new JSONObject();
                                                            this.object = jSONObject4;
                                                            jSONObject4.put("currentNetType", this.currentNetType);
                                                            this.object.put("currentApkType", this.currentApkType);
                                                            PlayStreamPayload playStreamPayload2 = (PlayStreamPayload) com.alibaba.fastjson.a.parseObject(str3, PlayStreamPayload.class);
                                                            if (!this.streamModel.isValidate(playStreamPayload2)) {
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
                                                            } else {
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
                                                                    IStreamModel iStreamModel = this.streamModel;
                                                                    if (iStreamModel != null) {
                                                                        iStreamModel.doPlayerRelease();
                                                                        disconnectSocketIo(true, true, true);
                                                                        playPreparation(2, playStreamPayload2.data);
                                                                    }
                                                                }
                                                                UiMessageSend(getCallbackData(14, this.object.toString()));
                                                            }
                                                            break;
                                                        case 58:
                                                            doOperationStateChangeReason(str3, string, string3);
                                                            break;
                                                    }
                                                    return;
                                            }
                                    }
                            }
                    }
                    doOperationStreamUrl(str3, object, integer, string, string2);
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

    protected void handleMessageVirtualGamePAD(final Message message) {
        LogUtils.d(TAG, "message:" + message);
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_ACCESS;
        final boolean zEquals = false;
        String str = String.format(ConstantsInternal.KEY_TO_VIRTUAL_GAME_PAD_CACHE, webSocketType, Integer.valueOf(message.type), message.mid);
        int i10 = message.ack;
        if (i10 != 0) {
            if (1 == i10) {
                boolean zEquals2 = ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(message.code);
                if (!Utils.checkIsVirtualGamePadPullPayMessage(message.payload)) {
                    IMessage iMessage = this.mMessageManager;
                    if (iMessage != null) {
                        iMessage.removeSendMessage(true, message);
                        return;
                    }
                    return;
                }
                if (zEquals2) {
                    IMessage iMessage2 = this.mMessageManager;
                    if (iMessage2 == null) {
                        LogUtils.e(TAG, "mMessageManager is null");
                        return;
                    }
                    OnSendMessageListener onSendMessageListenerRemoveSendMessage = iMessage2.removeSendMessage(message);
                    String str2 = String.format(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_CACHE, webSocketType.name(), Integer.valueOf(message.type));
                    VirtualGamePadCacheBean virtualGamePadCacheBean = new VirtualGamePadCacheBean();
                    virtualGamePadCacheBean.setMessage(message);
                    virtualGamePadCacheBean.setListener(onSendMessageListenerRemoveSendMessage);
                    CacheUtil.put(str, virtualGamePadCacheBean, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS, str2, this.mCacheListener);
                    return;
                }
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        String str3 = "";
        sb2.append("");
        sb2.append(message.type);
        CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_ON_MESSAGE, JsonUtil.toJsonString(new ReportSaasWSMessage(sb2.toString(), "", JsonUtil.toJsonString(message))));
        if (!"1".equals(ConfigureManager.getInstance().getSupportPullUpWXPayForVirtualGamePad())) {
            LogUtils.d(TAG, "virtual game pad message unsupported");
            CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_UNSUPPORTED, JsonUtil.toJsonString(new ReportBaseError(message.mid, "virtual game pad message unsupported")));
            return;
        }
        LogUtils.d(TAG, "this message is send by other, remove message from resend list");
        if (!Utils.checkIsVirtualGamePadPullPayMessage(message.payload)) {
            forwardMessageToApplication(message);
            return;
        }
        final VirtualGamePadCacheBean virtualGamePadCacheBean2 = (VirtualGamePadCacheBean) CacheUtil.remove(str);
        VirtualGamePadPullPayResult virtualGamePadPullPayResult = (VirtualGamePadPullPayResult) JsonUtil.parseObject(((BaseMessageBean) JsonUtil.parseObject(message.payload, BaseMessageBean.class)).getData(), VirtualGamePadPullPayResult.class);
        if (virtualGamePadPullPayResult != null) {
            zEquals = ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(virtualGamePadPullPayResult.code);
            str3 = virtualGamePadPullPayResult.msg;
        }
        if (virtualGamePadCacheBean2 != null && virtualGamePadCacheBean2.getListener() != null) {
            this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.k
                @Override // java.lang.Runnable
                public final void run() {
                    AbsIjkVideoView.lambda$handleMessageVirtualGamePAD$14(virtualGamePadCacheBean2, zEquals, message);
                }
            });
        }
        CountlyUtil.recordEvent(zEquals ? CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_PAY_WX_SUC : CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_PULL_UP_PAY_FAILED, JsonUtil.toJsonString(new ReportVirtualGamePadPayPullResult(message.mid, str3)));
    }

    public void handlePermissionResult(String str, boolean z10) {
        if (isModelNull() || !this.streamModel.handlePermissionResult()) {
            return;
        }
        if (this.mGamePlatformType == GamePlatformType.X86) {
            if (!TextUtils.isEmpty(str)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(";");
                sb2.append(ContextCompat.checkSelfPermission(getContext(), str) == 0);
                CountlyUtil.recordEvent(Constants.Countly.RESPONSE_PERMISSION, sb2.toString());
            }
            if ("android.permission.RECORD_AUDIO".equals(str)) {
                if (GameActionUtil.isRecordPermissionAllowed(this.mContext)) {
                    HmAudioManager.getInstance().startRecord();
                    this.isRecordOn = true;
                } else {
                    LogUtils.d(TAG, "RECORD_AUDIO isNotGranted");
                }
            }
            this.mPermissionQueue.remove(str);
            String strPoll = this.mPermissionQueue.poll();
            if (!TextUtils.isEmpty(strPoll)) {
                LogUtils.d(TAG, "need permission: " + strPoll);
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onPermissionNotGranted(strPoll);
                } else {
                    LogUtils.e(TAG, "mListener is null");
                    CountlyUtil.recordEvent("12200", "mListener is null");
                }
            }
        }
        synchronized (this.mPermissionCBs) {
            HmPermissionCallback hmPermissionCallback = this.mPermissionCBs.get(str);
            if (hmPermissionCallback != null) {
                hmPermissionCallback.handlePermissionResult(z10);
                this.mPermissionCBs.remove(str);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Permission of ");
                sb3.append(str);
                sb3.append(" callback is null.");
            }
        }
    }

    protected void handleSpecialBundle(Bundle bundle) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean handleWSMsg(String str) {
        BaseWsMessage data;
        boolean z10 = false;
        if (!TextUtils.isEmpty(str) && JsonUtil.isJsonObject(str)) {
            try {
                WsUploadDownloadBean wsUploadDownloadBean = (WsUploadDownloadBean) com.alibaba.fastjson.a.parseObject(str, WsUploadDownloadBean.class);
                if (wsUploadDownloadBean != null && TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_MISC) && (data = parseData(str)) != null && this.mListener != null) {
                    if (!(data instanceof ResponseWsMessage) || this.mWsMessageManager == null) {
                        if (data instanceof MiscWsMessage) {
                            this.mWsMessageManager.notifyResponse(this.mRequestManager.getCloudId(), this.mRequestManager.getAccessKeyId(), data.mid, "misc received", Constants.WS_MESSAGE_TYPE_MISC);
                            this.mListener.onMiscResponse((String) ((MiscWsMessage) data).data);
                            z10 = true;
                        }
                    } else if (Constants.WS_MESSAGE_TYPE_INTENT.equals(data.type) || Constants.WS_MESSAGE_TYPE_MISC.equals(data.type)) {
                        this.mWsMessageManager.removeSendWsMessage(true, data.mid);
                    } else if (Constants.WS_MESSAGE_TYPE_CLIPBOARD.equals(data.type)) {
                        this.mWsMessageManager.cancelCountDownTimer(true, data.mid);
                    }
                }
            } catch (Exception e10) {
                LogUtils.e(TAG, e10);
            }
        }
        return z10;
    }

    public boolean hasOperatePermission() {
        return this.mHasOperatePermission;
    }

    protected boolean hidDeviceInsert() {
        for (UsbDevice usbDevice : ((UsbManager) getContext().getSystemService("usb")).getDeviceList().values()) {
            LogUtils.i(TAG, String.format(Locale.US, "hidDeviceInser inserted device: %s", usbDevice.toString()));
            if (isGamePad(usbDevice)) {
                return true;
            }
        }
        return false;
    }

    protected void hideScreenCover() {
        ImageView imageView = this.screenCover;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(8);
    }

    protected void hideScreenShot() {
        Bitmap bitmap;
        if (this.screenShotCover == null) {
            LogUtils.d(TAG, "ScreenShot->screenCover is null when hide screen shot");
            return;
        }
        LogUtils.d(TAG, "ScreenShot->hide screen shot");
        BitmapDrawable bitmapDrawable = (BitmapDrawable) this.screenShotCover.getDrawable();
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = this.mScreenShotBitmap;
        if (bitmap2 != null) {
            synchronized (bitmap2) {
                this.mScreenShotBitmap.recycle();
                this.mScreenShotBitmap = null;
            }
        }
        this.screenShotCover.setImageDrawable(null);
        this.screenShotCover.setVisibility(8);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void imageEnhancement(boolean z10, float f10) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.imageEnhancement(z10, f10);
        } else {
            CountlyUtil.recordErrorEvent("imageEnhancement streamModel is null");
        }
    }

    protected void initArm() {
        updateVirtualKeyBoardViewInfo();
        registerArmDevicesWatcher();
    }

    protected void initHandler() {
        this.mHmcpHandler = new Handler(Looper.getMainLooper()) { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.33
            @Override // android.os.Handler
            public void handleMessage(android.os.Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    if (absIjkVideoView.mPlayerState <= 3 || !absIjkVideoView.isNetworkOk) {
                        absIjkVideoView.rePlay();
                    }
                    AbsIjkVideoView.this.isNetworkOk = true;
                    return;
                }
                if (i10 == 1) {
                    AbsIjkVideoView.this.doPlayerRelease();
                    return;
                }
                if (i10 == 4) {
                    AbsIjkVideoView.this.reconnection();
                    return;
                }
                if (i10 == 5) {
                    AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                    if (absIjkVideoView2.mVideoDelayCallback != null) {
                        VideoDelayInfo clockDiffVideoLatencyInfo = absIjkVideoView2.getClockDiffVideoLatencyInfo();
                        if (clockDiffVideoLatencyInfo != null) {
                            AbsIjkVideoView.this.mVideoDelayCallback.onVideoDelayCallback(clockDiffVideoLatencyInfo);
                        }
                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                        absIjkVideoView3.mHmcpHandler.sendEmptyMessageDelayed(5, absIjkVideoView3.mIntervalMillis);
                        return;
                    }
                    return;
                }
                if (i10 == 7) {
                    AbsIjkVideoView.this.setVisibility(0);
                    AbsIjkVideoView.this.setFocusable(true);
                    AbsIjkVideoView.this.setFocusableInTouchMode(true);
                    AbsIjkVideoView.this.requestFocus();
                    LogUtils.i(AbsIjkVideoView.TAG, "第一帧到达:判断键盘状态");
                    if (AbsIjkVideoView.this.localKeyboardModel.isShowInput()) {
                        AbsIjkVideoView.this.localKeyboardModel.requestFocus();
                    }
                    AbsIjkVideoView.this.correctRenderRotation();
                    return;
                }
                if (i10 == 8) {
                    AbsIjkVideoView.this.setScreenBrightness(((Float) message.obj).floatValue());
                    return;
                }
                if (i10 == 10) {
                    AbsIjkVideoView.this.hideScreenShot();
                    return;
                }
                if (i10 == 11) {
                    if (!AbsIjkVideoView.this.isAudioMute()) {
                        AbsIjkVideoView.this.turnOnSound();
                    }
                    AbsIjkVideoView.this.turnOnVideo();
                    AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                    if (absIjkVideoView4.isReconnectStream) {
                        absIjkVideoView4.isReconnectStream = false;
                    }
                    CloudPlayInfo cloudPlayInfo2 = AbsIjkVideoView.cloudPlayInfo;
                    if (cloudPlayInfo2 != null) {
                        cloudPlayInfo2.isTurnOnVideoSuccess = true;
                    } else {
                        LogUtils.d(AbsIjkVideoView.TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isTurnOnVideoSuccess = true");
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_TURN_ON_VIDEO, "op5 reconnect, turn on video");
                } else if (i10 != 22) {
                    if (i10 != 222) {
                        return;
                    }
                    AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                    if (absIjkVideoView5.isGetCloudServiceSuccess) {
                        absIjkVideoView5.release(message.obj.toString());
                        AbsIjkVideoView.this.mPlayerState = 4;
                        return;
                    }
                    return;
                }
                CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "volume change:" + VolumeUtils.getCurrentMediaVolume(AbsIjkVideoView.this.mAppContext));
            }
        };
    }

    protected void initIME(Context context) {
        try {
            ((Activity) getContext()).getWindow().setSoftInputMode(3);
        } catch (Exception e10) {
            LogUtils.e(TAG, "键盘报错:" + e10.getMessage());
            e10.printStackTrace();
        }
        this.localKeyboardModel.init(context, new LocalKeyboardModelListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.21
            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onCallbackLocalKeyboardShow() {
                AbsIjkVideoView.this.callbackLocalKeyboardShow();
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onCheckImeType(GetCloudIMECallback getCloudIMECallback) {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.mGetCloudImeTransaction.getCloudImeType(getCloudIMECallback, absIjkVideoView.mIMEConfig, absIjkVideoView.mWebSocketManager);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onCheckImeTypeFinished(GetCloudIMECallback getCloudIMECallback) {
                AbsIjkVideoView.this.mGetCloudImeTransaction.removeCallback(getCloudIMECallback);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onInputHide() {
                AbsIjkVideoView.this.stopKeyboardListener();
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onKeyboardEvent(String str, int i10) {
                LogUtils.d(AbsIjkVideoView.TAG, "键盘 发送事件: keyboardType = " + str + ", keyboardValue = " + i10);
                AbsIjkVideoView.this.sendKeyboardEvent(str, i10);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onRegisterKeyboardListener() {
                AbsIjkVideoView.this.initKeyboardListener();
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onScreenOrientationForKeyboard(ScreenOrientation screenOrientation) {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.setScreenOrientationForKeyboard(screenOrientation, absIjkVideoView.mRenderView);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onSendKeyboardHeightPercent() {
                LogUtils.i(AbsIjkVideoView.TAG, "startIM  保持键盘-键盘高度覆盖视频 百分比:" + AbsIjkVideoView.this.mEventContent);
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.sendKeyboardHeightPercent(absIjkVideoView.mEventContent);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onSendText(String str) {
                LogUtils.d(AbsIjkVideoView.TAG, "键盘 发送内容:" + str);
                AbsIjkVideoView.this.sendToInstanceMsg(str);
            }

            @Override // com.haima.hmcp.listeners.LocalKeyboardModelListener
            public void onKeyboardEvent(String str, String str2) {
                LogUtils.d(AbsIjkVideoView.TAG, "键盘 发送事件: keyboardType = " + str + ", keyCode = " + str2);
                AbsIjkVideoView.this.sendKeyboardEvent(str, str2);
            }
        });
        this.localKeyboardModel.bind(this);
        if (Constants.ANDROID_TYPE == 8) {
            this.localKeyboardModel.changeState(0);
        }
    }

    protected void initManager() {
        LogUtils.i(TAG, "====initManager====");
        if (this.mWebSocketManager == null) {
            this.mWebSocketManager = new WebSocketManager(this.mAppContext);
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            HmcpRequest hmcpRequest2 = HmcpRequest.getInstance(getContext());
            this.mRequestManager = hmcpRequest2;
            hmcpRequest2.setHmcpSaasRequestListener(this);
            this.mRequestManager.setWebSocketManager(this.mWebSocketManager);
        } else {
            hmcpRequest.setHmcpSaasRequestListener(this);
        }
        this.mRequestManager.initConfigInfo();
        this.mRequestManager.setHmcpPlayerListener(this.mListener);
        if (this.mMessageManager == null) {
            this.mMessageManager = new MessageManager(this.mContext, this.mWebSocketManager);
        }
        if (this.mWsMessageManager == null) {
            this.mWsMessageManager = new WsMessageManager(this.mAppContext, this.mWebSocketManager);
        }
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            ((MessageManager) this.mMessageManager).setHmcpPlayerListener(hmcpPlayerListener);
            ((WebSocketManager) this.mWebSocketManager).setHmcpPlayerListener(this.mListener);
        }
        initManagerSpecial();
        this.mWebSocketManager.addObserver(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, this.mCloudFileManager);
        IDeviceInput iDeviceInput = this.deviceInputManager;
        if (iDeviceInput != null) {
            iDeviceInput.setWebSocket(this.mWebSocketManager);
        }
    }

    protected abstract void initManagerSpecial();

    /* JADX WARN: Multi-variable type inference failed */
    protected void initView(Context context) {
        if (context instanceof HmcpPlayerListener) {
            this.mListener = (HmcpPlayerListener) context;
        } else {
            LogUtils.e(TAG, "Notice：SDK Need Implement HmcpPlayerListenerD");
        }
        this.mOrientation = ScreenOrientation.LANDSCAPE;
    }

    protected void initVirtualDevice() {
        if ((this.isConfigSuccess.get() && this.isExtraConfigRequestSuccess.get()) || !TextUtils.isEmpty(this.mKeyboardConfigJsonApp)) {
            LogUtils.i(TAG, "VirtualDeviceTag=initVirtualDevice======");
            initX86LayoutConfig();
            addVirtualDevice();
        } else {
            LogUtils.i(TAG, "115 or firstFrame is not success! firstFrame=" + this.isConfigSuccess.get() + " 115=" + this.isExtraConfigRequestSuccess.get());
        }
    }

    protected void initX86() {
        if (Utils.isTV()) {
            LogUtils.i(TAG, "auto set pc mouse mode when initX86");
            setPCMouseModeInternal(true);
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.updateMouse();
            }
        } else {
            Boolean bool = this.mIsPCMouseModeWithClient;
            if (bool != null) {
                setPCMouseModeInternal(bool.booleanValue());
            }
        }
        initVirtualDevice();
        initGamePadDevices();
        registGamePadListener();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean inputText(String str) {
        if (TextUtils.isEmpty(str) || str.length() > 256) {
            LogUtils.i(TAG, "====inputText=====payload is invalid=====" + str);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastCallTime < 1000) {
            LogUtils.i(TAG, "====inputText=====invalid input=====" + str);
            return false;
        }
        lastCallTime = jCurrentTimeMillis;
        return sendToInstanceMsg("textIM:" + str);
    }

    public void instanceConnect() {
        LogUtils.d(TAG, "onConnect connect2Instance, inputUrl=" + this.mVInputUrl);
        LogUtils.i(TAG, "====start2Play====onConnect==Success");
        this.mHMInput.startSendPing();
        this.mBaseConnectInputTime = SystemClock.elapsedRealtime();
        if (this.sendStopIMEOneShot) {
            this.sendStopIMEOneShot = false;
            sendToInstanceMsg("IME:StopIM");
        }
        this.localKeyboardModel.hideInput();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setResultNetData("input", "success", "", this.mInputStartTime);
        }
        onInstanceConnected();
        CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SUCCESS, this.mBaseConnectInputTime + "");
        this.SASS_SERVER_MAINTENANCE = false;
    }

    public void instanceTextMessage(String str) {
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onInputMessage(str);
        }
        onInputMessage(str, this.mRenderView);
    }

    protected boolean interceptKey(int i10) {
        return i10 == 4 || i10 == 3 || i10 == 82;
    }

    public void internalPlayPreparation(int i10, PlayStreamPayloadData playStreamPayloadData) {
    }

    protected void internalScreenShot() {
        Bitmap bitmap = this.mScreenShotBitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            LogUtils.d(TAG, "ScreenShot->recycle last screen shot");
            this.mScreenShotBitmap.recycle();
            this.mScreenShotBitmap = null;
        }
        LogUtils.d(TAG, "ScreenShot->to capture frame");
        this.screenShotCompletionLatch = new CountDownLatch(1);
        this.mScreenShotManager.screenShot(this);
    }

    public boolean isAllowInput() {
        return this.isHandleInputEvent;
    }

    public boolean isAudioMute() {
        return this.isAudioMute;
    }

    public boolean isBandwidthDetectionSwitch() {
        return this.mBandwidthDetectionSwitch;
    }

    protected boolean isGamePad(UsbDevice usbDevice) {
        for (GamePadId gamePadId : __GAME_PAD_LIST) {
            if (gamePadId.vendorId == usbDevice.getVendorId() && gamePadId.productId == usbDevice.getProductId()) {
                return true;
            }
        }
        for (int i10 = 0; i10 < usbDevice.getInterfaceCount(); i10++) {
            if (usbDevice.getInterface(i10).getInterfaceClass() == 3) {
                return true;
            }
        }
        return false;
    }

    public boolean isGamePadToMouse() {
        return this.mIsGamepadToMouse;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isHandleInputEvent() {
        return this.isHandleInputEvent;
    }

    protected boolean isInPlaybackState() {
        int i10;
        return (this.mMediaPlayer == null || this.mAudioPlayer == null || (i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 1) ? false : true;
    }

    protected boolean isInterceptStreaming() {
        DownloadMode mode;
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        boolean z10 = downloadTaskProxy != null && downloadTaskProxy.isRunning() && (mode = this.mDownloadTaskProxy.getMode()) != null && mode == DownloadMode.DOWNLOAD_ONLY;
        if (z10) {
            LogUtils.d(TAG, "download-file: intercept rePlay()...");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "intercept rePlay() function");
        }
        return z10;
    }

    protected boolean isJoystick(InputDevice inputDevice) {
        return HmInputDeviceManager.isJoyStick(inputDevice);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isLoadingShow() {
        return this.mLodingShow;
    }

    public boolean isModelNull() {
        if (this.streamModel != null) {
            return false;
        }
        LogUtils.e(TAG, "streamModel is null");
        CountlyUtil.recordEvent("12200", "streamModel is null");
        return true;
    }

    public boolean isNativeDpadGame() {
        return this.nativeDpadGame;
    }

    protected boolean isNeedRefreshStoken(int i10) {
        if (isWaitStreamUrlPre()) {
            LogUtils.d(TAG, "OperationStream===isWaitStreamUrlPre not refresh SToken");
            return false;
        }
        if (System.currentTimeMillis() - this.webSocketUrlTimeStamp > Constants.REFRESH_STOKEN_VALID_TIME * 1000) {
            CountlyUtil.recordErrorEvent("stoken timeout not valid,nedd refresh stoken");
        } else if (i10 == 0) {
            if (this.mInstanceReconnectCount < Constants.WS_RETRY_MAX_TIMES) {
                return false;
            }
        } else if (i10 == 1) {
            if (this.mInstanceWsReconnectCount < Constants.WS_RETRY_MAX_TIMES) {
                return false;
            }
        } else if (i10 != 2 || this.mTransferReconnectCount < Constants.WS_RETRY_MAX_TIMES) {
            return false;
        }
        return true;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isNetworkOk() {
        return this.isNetworkOk;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isOnSound() {
        return this.currentSound > 0.0f;
    }

    public boolean isPCMouseMode() {
        return this.mIsPCMouseMode;
    }

    public boolean isPlaying() {
        return this.streamModel.isPlaying();
    }

    public boolean isStartPlayCallBack() {
        return this.isStartPlayCallBack;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isSwitchAuto() {
        return this.mSwitchAuto;
    }

    protected boolean isSwitchIMETiming() {
        SwitchIMEAckTimer switchIMEAckTimer = this.switchIMEAckTimer;
        return (switchIMEAckTimer == null || switchIMEAckTimer.isCancel()) ? false : true;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isTurnOffVideo() {
        return this.turnOffVideo;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isVirtualKeyBoardViewVisible() {
        VirtualKeyboardSurfaceView virtualKeyboardSurfaceView = this.mVirtualKeyboardSurfaceView;
        return virtualKeyboardSurfaceView != null && virtualKeyboardSurfaceView.getVisibility() == 0 && this.mVirtualKeyboardVisible;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isVirtualStickShow() {
        return false;
    }

    public boolean isWaitStreamUrlPre() {
        return this.isOperationStreamUrlPreReceived && !this.isOperationStreamUrlReceived && this.currentApkType == 1;
    }

    public boolean isWakeLockPermission() {
        return this.hasWakeLockPermission;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isX86Game() {
        return this.mGamePlatformType == GamePlatformType.X86;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void joinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener) {
        this.tvBattleMode.joinBattle(internalJoinBattle, onJoinBattleListener);
    }

    protected boolean joyStickInsert() {
        InputManager inputManager = (InputManager) getContext().getSystemService("input");
        for (int i10 : inputManager.getInputDeviceIds()) {
            if (isJoystick(inputManager.getInputDevice(i10))) {
                return true;
            }
        }
        return false;
    }

    protected void keepAliveTimeUp(Message message) {
        LogUtils.d(TAG, "download-file: keep alive time up");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_TIME_UP);
        com.alibaba.fastjson.a.parseObject(message.payload).getInteger("code").intValue();
        this.mDownloadTaskProxy.keepAliveTimeUp();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean loadKeyboardConfigFromJson(String str, boolean z10) {
        if (!isValidHmVirtualLayoutJson(str)) {
            LogUtils.e(TAG, "loadKeyboardConfigFromJson failure, keyboardConfigJson is invalid");
            CountlyUtil.recordErrorEvent("loadKeyboardConfigFromJson failure, keyboardConfigJson is invalid");
            return false;
        }
        this.mKeyboardConfigJsonApp = str;
        this.mIsUserConfig = z10;
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.setUserConfig(z10);
            this.mVirtualDeviceLayout.setLoadedFromJson(true);
            this.mVirtualDeviceLayout.resetOperator();
        }
        initVirtualDevice();
        setTouchModeInner(this.mTouchMode);
        showVirtualDeviceByConfig(getVirtualLayoutBean());
        LogUtils.i(TAG, "loadKeyboardConfigFromJson====" + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_LOAD_KEYBOARD_CONFIG_FROM_APP);
        return true;
    }

    public HmVirtualLayoutBean loadKeyboardConfigJsonPre() {
        if (TextUtils.isEmpty(this.mKeyboardConfigJsonApp)) {
            return null;
        }
        return HmVirtualDeviceManager.get().loadingLayoutFromJson(this.mKeyboardConfigJsonApp, this.mAppName, this.mAppContext, false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void loadSwitchStreamTypeData(SwitchStreamTypeData switchStreamTypeData) {
        CloudPlayInfo cloudPlayInfo2;
        this.curCloudServiceState = 2;
        this.switchStreamTypeData = switchStreamTypeData;
        this.mGamePlatformType = switchStreamTypeData.gamePlatformType;
        CloudPlayInfo cloudPlayInfo3 = switchStreamTypeData.cloudPlayInfo;
        if (cloudPlayInfo3 == null || (cloudPlayInfo2 = cloudPlayInfo) == null) {
            return;
        }
        cloudPlayInfo2.syncStatus(cloudPlayInfo3);
    }

    public void logAndReport(String str) {
        LogUtils.e(TAG, str);
        CountlyUtil.recordErrorEvent(str);
    }

    protected void maintenanceInQueued(String str, String str2) throws JSONException {
        String strOptString;
        String strOptString2;
        if (JsonUtil.isJsonObject(str2)) {
            JSONObject jSONObject = new JSONObject(str2);
            strOptString = jSONObject.optString(ConstantsInternal.KEY_MAINTAIN_BEGIN);
            strOptString2 = jSONObject.optString(ConstantsInternal.KEY_MAINTAIN_END);
        } else {
            strOptString = "";
            strOptString2 = "";
        }
        release(str2);
        this.mPlayerState = 5;
        SendSceneState.gameMaintenance(this.mContext, this.mListener, this.mInQueued, strOptString, strOptString2);
    }

    protected void markWebSocketUrlTimeStamp() {
        this.webSocketUrlTimeStamp = System.currentTimeMillis();
    }

    protected void notifyAfterOP5(int i10) {
        LogUtils.d(TAG, "apkType:" + i10 + ",mIsNotifyConnectedWaitOP5:" + this.mIsNotifyConnectedWaitOP5);
        if (2 == i10 && ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(this.mLastStatus)) {
            this.mIsNotifyConnectedWaitOP5 = false;
            sendSysNotify(this.mLastStatus);
        }
    }

    protected void notifyCapScreen(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", Constants.WS_MESSAGE_TYPE_CAP_SCREEN);
            jSONObject.put("data", StringUtils.encodeToBase64String(bArr));
        } catch (JSONException e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, e10);
        }
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener == null) {
            LogUtils.e(TAG, "notifyCapScreen mListener = null");
        } else {
            hmcpPlayerListener.onCloudDeviceStatus(jSONObject.toString());
        }
    }

    protected void notifyClipBoard(ClipBoardData clipBoardData) {
        List<ClipBoardItemData> list;
        ClipBoardItemData clipBoardItemData;
        if (clipBoardData == null || (list = clipBoardData.data) == null || list.isEmpty()) {
            return;
        }
        if (Constants.CONFIG_IS_CLIPBOARD_AUTO_SEND && hasOperatePermission() && (clipBoardItemData = list.get(0)) != null) {
            ClipboardUtils.setClipboardContent(this.mAppContext, clipBoardItemData.itemData);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            jSONObject.put("data", JsonUtil.toJsonString(list));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        callbackCloudDeviceStatus(jSONObject.toString());
    }

    protected void notifyGPSAuth(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", Constants.WS_MESSAGE_TYPE_GPS);
            jSONObject.put("data", str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        callbackCloudDeviceStatus(jSONObject.toString());
    }

    protected void notifyNetworkChanged() {
        String str;
        if (this.isNetworkOk) {
            return;
        }
        if (this.mGamePlatformType == GamePlatformType.X86) {
            stopReportClockDiffLatency();
            stopGyroscope();
        }
        LogUtils.i(TAG, "===notifyNetworkChanged  showNetworkErrorPrompt  = " + getMetaInfoByKey(Constants.TIPS_PROMPT_NETWORK_UNAVAILABLE));
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null || TextUtils.isEmpty(hmcpRequest.getCloudId())) {
            str = Constants.ERRORCODE_OTHER_011;
        } else {
            str = Constants.ERRORCODE_OTHER_011 + "-" + this.mRequestManager.getCloudId();
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = R.string.haima_hmcp_net_timeout;
        sb2.append(ResourceManager.getString(i10));
        sb2.append("[");
        sb2.append(str);
        sb2.append("]");
        String string = sb2.toString();
        callbackHmcpError(new ErrorInfo().put("errorCode", Constants.ERRORCODE_OTHER_011).put("errorMessage", ResourceManager.getString(i10)).put("errorMsg", string), 6);
        CountlyUtil.recordEvent(Constants.COUNTYLY_NO_NET_WORK, string + ",notifyNetworkChanged");
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onPlayerError(string, ResourceManager.getString(i10));
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
        this.streamModel.stopPlay(false, true);
        resetState();
        cancelRefreshStokenTask();
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_network_off));
        this.mPlayerState = 4;
    }

    public void notifyRtmpFrameDelayInfo(FrameDelayInfo frameDelayInfo) {
        if (this.mRequestManager == null || frameDelayInfo == null || FrameNetDelayInfo.getInstance().getClockDiffTime() == 0) {
            return;
        }
        RtmpVideoDelayInfo rtmpVideoDelayInfo = new RtmpVideoDelayInfo(frameDelayInfo);
        int i10 = this.mFPSPeriod;
        if (i10 > 0) {
            rtmpVideoDelayInfo.setVideoFps(this.mPlayerFPS / ((long) i10));
        }
        int i11 = this.mBandWidthPeriod;
        if (i11 > 0) {
            rtmpVideoDelayInfo.setBitRate(this.mPlayerBitRate / ((long) i11));
        }
        if (Constants.rtmpUseSoftwareDecoder) {
            this.decodeType = 0;
        }
        rtmpVideoDelayInfo.setDecodeType(this.decodeType);
        try {
            if (this.videoViewDelayReportManager != null) {
                this.videoViewDelayReportManager.sendDelayInfo(rtmpVideoDelayInfo);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, com.haima.hmcp.beans.GPSData] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, com.haima.hmcp.beans.ClipBoardData] */
    /* JADX WARN: Type inference failed for: r6v6, types: [T, com.haima.hmcp.beans.CapScreenData] */
    protected BaseWsMessage obtainWsMessage(WsMessageType wsMessageType, String str, String str2, String str3) {
        BaseWsMessage intentWsMessage;
        switch (AnonymousClass54.$SwitchMap$com$haima$hmcp$enums$WsMessageType[wsMessageType.ordinal()]) {
            case 1:
                intentWsMessage = new IntentWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_INTENT;
                intentWsMessage.data = str3;
                break;
            case 2:
                intentWsMessage = new GPSWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_GPS;
                intentWsMessage.data = (GPSData) JsonUtil.parseObject(str3, GPSData.class);
                break;
            case 3:
                intentWsMessage = new ClipBoardWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_CLIPBOARD;
                intentWsMessage.data = (ClipBoardData) JsonUtil.parseObject(str3, ClipBoardData.class);
                break;
            case 4:
                intentWsMessage = new UpdateViewWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_UPDATE_VIEW;
                intentWsMessage.data = str3;
                break;
            case 5:
                intentWsMessage = new CapScreenWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_CAP_SCREEN;
                intentWsMessage.data = (CapScreenData) JsonUtil.parseObject(str3, CapScreenData.class);
                break;
            case 6:
                intentWsMessage = new MiscWsMessage();
                intentWsMessage.type = Constants.WS_MESSAGE_TYPE_MISC;
                intentWsMessage.data = str3;
                break;
            default:
                intentWsMessage = null;
                break;
        }
        if (intentWsMessage == null) {
            LogUtils.e(TAG, " msg type :" + wsMessageType + " is invalid");
            return intentWsMessage;
        }
        intentWsMessage.cid = str;
        intentWsMessage.bid = str2;
        intentWsMessage.mid = "A" + System.currentTimeMillis();
        return intentWsMessage;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        LogUtils.i(TAG, "=====onAttachedToWindow===========");
        registerReceiver();
        if (isModelNull()) {
            return;
        }
        this.streamModel.onAttachedToWindow();
        GamePadManager.getInstance().registerDeviceChangeListener(getContext(), new GamePadManager.InputChangeListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.32
            @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
            public void onDeviceAdded(InputDevice inputDevice) {
                AbsIjkVideoView.this.resetLockStatusFlag();
                GamePadManager.getInstance().sendStartGamepad(AbsIjkVideoView.this.mWebSocketManager, inputDevice);
            }

            @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
            public void onDeviceRemoved(InputDevice inputDevice) {
                GamePadManager gamePadManager = GamePadManager.getInstance();
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                gamePadManager.sendStopGamePad(absIjkVideoView.mWebSocketManager, inputDevice, absIjkVideoView.tvBattleMode.needStopWhenRemoved());
            }

            @Override // com.haima.hmcp.business.GamePadManager.InputChangeListener
            public boolean onEvent(String str, boolean z10) {
                return AbsIjkVideoView.this.sendToInstanceMsg(str, z10);
            }
        });
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Handler handler = this.mHmcpHandler;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.15
                @Override // java.lang.Runnable
                public void run() {
                    int measuredWidth = AbsIjkVideoView.this.getMeasuredWidth();
                    int measuredHeight = AbsIjkVideoView.this.getMeasuredHeight();
                    LogUtils.i(AbsIjkVideoView.TAG, "fold screen: view size====width" + measuredWidth + " height=" + measuredHeight);
                    AbsIjkVideoView.this.onViewResolutionChanged(measuredWidth, measuredHeight);
                    AbsIjkVideoView.this.resizeVirtualLayout(measuredWidth, measuredHeight);
                }
            }, 50L);
        }
    }

    public void onDelayInfoNeedSend(HmFrameDelayInfo hmFrameDelayInfo) {
        if (this.mRequestManager == null || this.videoViewDelayReportManager == null || hmFrameDelayInfo == null) {
            return;
        }
        LogUtils.d(TAG, "hmFrameDelayInfo :" + hmFrameDelayInfo);
        RtcVideoDelayInfo rtcVideoDelayInfo = new RtcVideoDelayInfo(hmFrameDelayInfo, this.mClockDiffUse, true);
        rtcVideoDelayInfo.setBoardType(this.streamModel.getBoardType());
        try {
            if (this.videoViewDelayReportManager != null) {
                this.videoViewDelayReportManager.sendDelayInfo(rtcVideoDelayInfo);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onDestroy() {
        ClipboardManager.OnPrimaryClipChangedListener onPrimaryClipChangedListener;
        recordLifeCycleEvent("onDestroy");
        GamePadManager.getInstance().sendStopAllGamePad(this.mWebSocketManager, this.tvBattleMode.needStopWhenRelease());
        cancelExitQueueInBGTimer(ExitQueueInBGCancelType.ACTIVITY_FINISH);
        if (this.mRequestManager != null) {
            LogUtils.i(TAG, "=====cancelRetryTimer====");
            this.mRequestManager.setHmcpSaasRequestListener(null);
            this.mRequestManager.cancelRetryTimer();
        }
        RemoteDeviceInfoManager.reset();
        this.localKeyboardModel.release();
        IDeviceInput iDeviceInput = this.deviceInputManager;
        if (iDeviceInput != null) {
            iDeviceInput.onDestroy();
            this.deviceInputManager = null;
        }
        HmInputDeviceManager.clearGamePadsStatus();
        JobExecutor jobExecutor = this.mDownloadX86JobExecutor;
        if (jobExecutor != null) {
            jobExecutor.shutdown();
            this.mDownloadX86JobExecutor = null;
        }
        JobExecutor jobExecutor2 = this.mUploadX86JobExecutor;
        if (jobExecutor2 != null) {
            jobExecutor2.shutdown();
            this.mUploadX86JobExecutor = null;
        }
        ClipboardUtils.clear();
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null && (onPrimaryClipChangedListener = this.primaryClipChangedListener) != null) {
            clipboardManager.removePrimaryClipChangedListener(onPrimaryClipChangedListener);
            this.clipboardManager = null;
            this.primaryClipChangedListener = null;
        }
        HmCameraWrapper.getInstance().unRegisterPermissionChecker();
        RtcProtoBufUtil.registerCallback(null);
        RecordHelper.getsInstance().release();
        this.curConnectState = 0;
        cleanTimer();
        stop();
        this.mHmcpHandler.removeCallbacksAndMessages(null);
        HmcpManager hmcpManager = this.mHmcpManager;
        if (hmcpManager != null) {
            hmcpManager.stopTraceRoute();
            this.mHmcpManager.stopNetPing();
        }
        HmDataReportToSaasSdk.getInstance().initInstance(false, 0, null);
        this.mOnLivingListener = null;
        this.mOnContronListener = null;
        this.mCloudOperationListener = null;
        this.mOperationDelayCallback = null;
        this.mVideoDelayCallback = null;
        getmScreenShotManager().clearCallback();
        FrameDataProxy frameDataProxy = this.mFrameDataProxy;
        if (frameDataProxy != null) {
            frameDataProxy.setHmFrameCallback(null);
            this.mFrameDataProxy.reset();
        }
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            downloadTaskProxy.release();
        }
        HmRtcAdapter.setCountlyEventRecorderCallback(null);
        HmDataReportToSaasSdk hmDataReportToSaasSdk = this.mSeiReportMgr;
        if (hmDataReportToSaasSdk != null) {
            hmDataReportToSaasSdk.initInstance(false, 0, null);
        }
        Runnable runnable = this.mRequestAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.mRequestAliveTimer = null;
        }
        Runnable runnable2 = this.mStopAliveTimer;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
            this.mStopAliveTimer = null;
        }
        DnsManager.getInstance().release();
        HmcpManager.release();
        CloudFileManager.release();
        PingManager.getInstance().release();
        HmcpRequest.release();
        CountDownUtil.cancelAll();
        cloudPlayInfo = null;
        HmDataChannelManager.release();
        HmIMEManager.release();
        ConnectivityCheck.getInstance().release();
        HmCameraWrapper.getInstance().unRegisterPermissionChecker();
        unregisterScreenMonitor();
        releaseScreenMonitor();
        this.streamModel.onDestroy();
        HmVirtualDeviceManager.get().restoreSettingsState();
        unregisterArmDevicesWatcher();
        HmVirtualDeviceManager.get().resetModeIsCheckedFlags();
        JoyStickMappingManager.restoreSettingsState();
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor != null) {
            streamingMonitor.release();
        }
        stopGyroscope();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LogUtils.i(TAG, "=====onDetachedFromWindow===========");
        HmcpManager.getInstance().removeOnUpdateDataReportStatusListener(this);
        unregisterReceiver();
        if (isModelNull()) {
            return;
        }
        this.streamModel.onDetachedFromWindow();
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public boolean onDeviceInputEvent(String str, boolean z10) {
        LogUtils.d(TAG, "onDeviceInputEvent event:" + str + ",isDiscardable:" + z10);
        return sendToInstanceMsg(str, z10);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onExitGame() {
        recordLifeCycleEvent("onExitGame");
        if (this.mListener != null) {
            MessagePayload messagePayload = new MessagePayload();
            messagePayload.code = 100;
            messagePayload.uid = this.mUid;
            messagePayload.description = "Exit Haima cloud";
            this.mListener.onMessage(JsonUtil.toJsonString(messagePayload));
        }
    }

    @Override // org.hmwebrtc.SeiDataReportEvent
    public void onFrameSeiDataReportCallback(List<SeiData> list) {
        String string;
        if (this.mSeiListener == null) {
            LogUtils.d(TAG, "sei data-> app sei callback is null");
            return;
        }
        if (list == null || list.size() == 0) {
            LogUtils.d(TAG, "sei data-> data is null or empty when rtc callback");
            return;
        }
        ArrayList arrayList = new ArrayList();
        RtcSeiData rtcSeiData = null;
        for (SeiData seiData : list) {
            if (rtcSeiData == null) {
                rtcSeiData = new RtcSeiData(seiData, getCid(), CountlyUtil.mUID);
                arrayList.add(rtcSeiData);
            } else {
                arrayList.add(new RtcSeiData(seiData, getCid(), CountlyUtil.mUID));
            }
        }
        if (rtcSeiData != null) {
            HashMap map = new HashMap();
            map.put("frame_id", Integer.valueOf(rtcSeiData.getFrameId()));
            map.put("pre_encoder_timestamp", Long.valueOf(rtcSeiData.getPreEncoderTimestamp()));
            map.put("encoded_timestamp", Long.valueOf(rtcSeiData.getEncodedTimestamp()));
            map.put("pre_decoder_timestamp", Long.valueOf(rtcSeiData.getPreDecoderTimestamp()));
            map.put("decoded_timestamp", Long.valueOf(rtcSeiData.getDecodedTimestamp()));
            map.put("cid", rtcSeiData.getCid());
            map.put("uid", rtcSeiData.getUid());
            map.put("sei_list_size", Integer.valueOf(arrayList.size()));
            string = JsonUtil.getJsonObj(map).toString();
        } else {
            string = "";
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_MIGU_SEI, string);
        this.mSeiListener.onData(arrayList);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onGSMUsbNatData(GSMUsbNatData gSMUsbNatData) {
        callbackRemoteInfo(gSMUsbNatData);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        TouchUtil touchUtil;
        LogUtils.d(TAG, "onGenericMotionEvent event:" + motionEvent);
        SwitchControllerManager.getInstance().reportGamePadDeviceInfo(motionEvent);
        updateLastOperateDeviceId(motionEvent);
        if (this.mGamePlatformType != GamePlatformType.X86) {
            EventModel eventModel = this.eventModel;
            return (eventModel != null && eventModel.onGenericMotionEvent(motionEvent)) || super.onGenericMotionEvent(motionEvent);
        }
        if (!isAllowInput()) {
            LogUtils.i(TAG, "not allow handle generic motion event");
            return true;
        }
        LogUtils.d(TAG, "onGenericMotionEvent rawX:" + motionEvent.getRawX() + ",rawY:" + motionEvent.getRawY() + ",eventAction: " + motionEvent.getAction() + (" (" + MotionEvent.actionToString(motionEvent.getAction()) + ")") + " *event: " + motionEvent);
        if (motionEvent.getAction() == 7 && (touchUtil = this.mTouchUtil) != null) {
            if (this.mIsPCMouseMode) {
                touchUtil.sendMouseMove(motionEvent);
            } else {
                touchUtil.followSysMouse(motionEvent);
            }
            return true;
        }
        if (this.mouseMotionEventDispatcher.genericMotionEvent(motionEvent) && this.mTouchUtil.sendMouseButtonEvent(motionEvent)) {
            return true;
        }
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8) {
            if (HmInputDeviceManager.isJoyStick(motionEvent) && !isMouseAction(motionEvent)) {
                LogUtils.d(TAG, "onGenericMotionEvent InputDevice = " + motionEvent.getDevice());
                sendGamePadData(motionEvent);
            }
            return true;
        }
        if (JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
            LogUtils.d(TAG, "KeyboardMapperGamepadEnable, don't handle scroll");
            return false;
        }
        if (motionEvent.getAxisValue(9) < 0.0f) {
            LogUtils.d(TAG, "onGenericMotionEvent down");
            sendEvent(ProtoBufUtil.getMouseWheelData(-1));
        } else {
            LogUtils.d(TAG, "onGenericMotionEvent up");
            sendEvent(ProtoBufUtil.getMouseWheelData(1));
        }
        return true;
    }

    public void onGetCloudServiceSuccess(String str, boolean z10, String str2, int i10, boolean z11) {
        LogUtils.i(TAG, this.curConnectState + "==onGetCloudServiceSuccess===" + str + "====isNeedShowToast===" + z10 + " ===mBitRate = " + this.mBitRate + "=OperationStream=");
        this.isGetCloudServiceSuccess = true;
        if (this.streamModel.isSupportFirstFrameOptimization()) {
            this.isReconnectStream = false;
            this.isStartPlayCallBack = false;
            if (i10 != 2) {
                this.isFirstFrameArrived = false;
            }
        } else {
            this.isFirstFrameArrived = false;
        }
        this.mIsFirstGetCloudService = z10;
        if (this.curConnectState == 1) {
            SdkStreamPayloadData sdkStreamPayloadData = new SdkStreamPayloadData();
            Integer num = this.dataTrafficOwner;
            if (num == null) {
                num = null;
            }
            sdkStreamPayloadData.dataTrafficOwner = num;
            syncSpeedVsPlay(sdkStreamPayloadData);
        } else {
            this.curCloudServiceState = 2;
            CloudStateSend(2);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.currenteResolutionID = str2;
        CountlyUtil.mResolutionID = str2;
        setResolutionList(this.mHmcpManager.getResolutionDatas(), this.currenteResolutionID, false, z11);
    }

    protected void onInnerFirstFrameArrival() {
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            downloadTaskProxy.scanFile(this.mRequestManager.getCloudId(), null);
        }
        this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f34123b.lambda$onInnerFirstFrameArrival$0();
            }
        });
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public void onInputDevice(int i10, int i11) {
        sendInputDevice(i10, i11);
    }

    public void onInputMessage(String str, IRenderViewBase iRenderViewBase) {
        LogUtils.i(TAG, "====onInputMessage=====" + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "onInputMessage: no Message");
            return;
        }
        if (!Utils.isTV()) {
            if (str.toLowerCase().contains("im")) {
                CountlyUtil.recordEvent(Constants.COUNTLY_INPUT_KEYBOARD, JsonUtil.toJsonString(new ReportImEvent(str)));
            }
            if (str.startsWith("IME:StartIM")) {
                initKeyboardListener();
                this.isStartIM = true;
            }
            this.localKeyboardModel.handleImeOrder(str);
            return;
        }
        if (str.startsWith("startIM")) {
            LogUtils.d(TAG, "onkeydown onInputMessage startIM");
            this.inputTypeModel.setmCurrentKeyboardMode(1);
            LogUtils.d(TAG, "onkeydown onInputMessage startIM");
        } else if (str.startsWith("stopIM")) {
            LogUtils.d(TAG, "onkeydown onInputMessage stopIM");
            this.eventModel.setKeyboardDirectionDefault();
            this.inputTypeModel.setmCurrentKeyboardMode(0);
            LogUtils.d(TAG, "onkeydown onInputMessage stopIM");
        }
    }

    public void onInstanceConnected() {
        HashMap<Integer, FPoint> map = this.mLastPoints;
        if (map != null) {
            map.clear();
        }
        if (joyStickInsert()) {
            String str = String.format(GamePadManager.GAMEPAD_CONNECTED, "");
            CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "1,msg:" + str + ",sendResult:" + sendToInstanceMsg(str));
        }
        registerArmDevicesWatcher();
        GamePadManager.getInstance().sendStartAllGamepad(getWebSocket(), this.mAppContext);
        TvBattleModel tvBattleModel = this.tvBattleMode;
        tvBattleModel.sendBattleGamePadStart(tvBattleModel.getBattleMode());
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        boolean zHasRequestPointerCapture;
        LogUtils.d(TAG, "onKeyDown -----------: " + i10 + ", " + keyEvent.getKeyCode() + "\n event: " + keyEvent.getKeyCharacterMap() + "\n characters: " + keyEvent.getCharacters() + "\n unicode: " + keyEvent.getUnicodeChar() + "\n source: " + keyEvent.getSource() + "\n string: " + keyEvent.toString() + "\n scan: " + keyEvent.getScanCode() + "\n number: " + keyEvent.getNumber());
        SwitchControllerManager.getInstance().reportGamePadDeviceInfo(keyEvent);
        updateLastOperateDeviceId(keyEvent);
        checkLongClickDown(i10, keyEvent);
        ButtonBarrierConfigBean buttonBarrierConfigBean = this.mButtonBarriersConfig;
        ButtonBarrier buttonBarrierFindButtonBarrier = buttonBarrierConfigBean != null ? buttonBarrierConfigBean.findButtonBarrier(keyEvent, isGamePadToMouse()) : null;
        if (this.mGamePlatformType != GamePlatformType.X86) {
            if (buttonBarrierFindButtonBarrier == null) {
                if (this.eventModel == null) {
                    LogUtils.i(TAG, "eventModel cant handle OnKeyDown, eventModel is null");
                }
                EventModel eventModel = this.eventModel;
                return eventModel != null && eventModel.onKeyDown(i10, keyEvent);
            }
            int i11 = buttonBarrierFindButtonBarrier.sendRomCode;
            if (i11 != 0) {
                int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i11);
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
                } else {
                    sendKeyboardEvent("1", KeyEvent.keyCodeToString(buttonBarrierFindButtonBarrier.sendRomCode), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                }
            }
            LogUtils.i(TAG, "onKeyDown is intercept because buttonBarriersConfig");
            return buttonBarrierFindButtonBarrier.isConsumed;
        }
        if (!isAllowInput()) {
            LogUtils.i(TAG, "not allow handle key down event");
            return false;
        }
        if (fromDpad(keyEvent, i10)) {
            int repeatCount = keyEvent.getRepeatCount();
            LogUtils.d(TAG, "deal dpad direction keys:" + i10 + ",and repeatCount is " + repeatCount);
            if (repeatCount == 0) {
                sendGamePadData(keyEvent);
            }
            this.dpadMouseModel.startDpadMouseLongStepActiveTimer(keyEvent, this);
            return true;
        }
        if (buttonBarrierFindButtonBarrier != null && handleButtonBarrierEvent(buttonBarrierFindButtonBarrier, true)) {
            return buttonBarrierFindButtonBarrier.isConsumed;
        }
        if (HmInputDeviceManager.isJoyStick(keyEvent)) {
            LogUtils.d(TAG, "onKeyDown InputDevice = " + keyEvent.getDevice());
            sendGamePadData(keyEvent);
        } else if (HmInputDeviceManager.isMouseInput(keyEvent)) {
            if (isKeyboardMappingEnabled()) {
                LogUtils.d(TAG, "isKeyboardMappingEnabled is true do nothing");
                return false;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                LogUtils.i(TAG, "onKeyDown# hasPointerCapture = " + hasPointerCapture());
                zHasRequestPointerCapture = hasPointerCapture();
            } else {
                LogUtils.i(TAG, "onKeyDown# hasPointerCapture = " + this.mTouchUtil.hasRequestPointerCapture());
                zHasRequestPointerCapture = this.mTouchUtil.hasRequestPointerCapture();
            }
            if (zHasRequestPointerCapture) {
                LogUtils.i(TAG, "onKeyDown# in pointer capture and block mouse button key event");
                return false;
            }
            if (i10 == 4) {
                this.mTouchUtil.moveToLastMousePoint();
                this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
                return true;
            }
            if (i10 == 125) {
                this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_5, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
                return true;
            }
        } else {
            if (HmInputDeviceManager.getRealInputOp(i10) != null) {
                if (!this.keyLockStatusFlag) {
                    this.keyLockStatusFlag = true;
                    sendKeyboardLockChangedStatus(keyEvent);
                }
                if (LockKeyUtils.isCapsLockOn(keyEvent) && !this.capsLockFlag) {
                    this.capsLockFlag = true;
                    sendKeyLockStatus(GSSDK.OneInputOPData.InputOP.OP_KEY_VK_CAPITAL, LockKeyUtils.isCapsLockOn(keyEvent));
                }
                handleKeyEvent(i10, keyEvent, true);
                if (!KeyMapUtil.isNeedInternalConsume(i10)) {
                    return false;
                }
                LogUtils.d(TAG, "this key is internal consumed:" + i10);
                return true;
            }
            LogUtils.d(TAG, "this key is not support transfer  :" + i10);
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        boolean zHasRequestPointerCapture;
        LogUtils.d(TAG, "onKeyUp -----------: " + i10);
        checkLongClickUp(i10);
        ButtonBarrierConfigBean buttonBarrierConfigBean = this.mButtonBarriersConfig;
        ButtonBarrier buttonBarrierFindButtonBarrier = buttonBarrierConfigBean != null ? buttonBarrierConfigBean.findButtonBarrier(keyEvent, isGamePadToMouse()) : null;
        if (this.mGamePlatformType != GamePlatformType.X86) {
            if (buttonBarrierFindButtonBarrier == null) {
                EventModel eventModel = this.eventModel;
                return eventModel != null && eventModel.onKeyUp(i10, keyEvent);
            }
            int i11 = buttonBarrierFindButtonBarrier.sendRomCode;
            if (i11 != 0) {
                int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(i11);
                if (iAndroidKeyCode2PASSKey != 0) {
                    sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
                } else {
                    sendKeyboardEvent("0", KeyEvent.keyCodeToString(buttonBarrierFindButtonBarrier.sendRomCode), GamePadManager.getInstance().getGamePadNum(keyEvent.getDevice()));
                }
            }
            return buttonBarrierFindButtonBarrier.isConsumed;
        }
        if (!isAllowInput()) {
            LogUtils.i(TAG, "not allow handle key up event");
            return false;
        }
        if (fromDpad(keyEvent, i10)) {
            sendGamePadData(keyEvent);
            this.dpadMouseModel.cancelDpadMouseLongStepActiveTimer();
            return true;
        }
        if (buttonBarrierFindButtonBarrier != null && handleButtonBarrierEvent(buttonBarrierFindButtonBarrier, false)) {
            return buttonBarrierFindButtonBarrier.isConsumed;
        }
        if (HmInputDeviceManager.isJoyStick(keyEvent)) {
            sendGamePadData(keyEvent);
        } else if (HmInputDeviceManager.isMouseInput(keyEvent)) {
            if (isKeyboardMappingEnabled()) {
                LogUtils.d(TAG, "isKeyboardMappingEnabled is true do nothing");
                return false;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                LogUtils.i(TAG, "onKeyDown# hasPointerCapture = " + hasPointerCapture());
                zHasRequestPointerCapture = hasPointerCapture();
            } else {
                LogUtils.i(TAG, "onKeyDown# hasPointerCapture = " + this.mTouchUtil.hasRequestPointerCapture());
                zHasRequestPointerCapture = this.mTouchUtil.hasRequestPointerCapture();
            }
            if (zHasRequestPointerCapture) {
                LogUtils.i(TAG, "onKeyDown# in pointer capture and block mouse button key event");
                return false;
            }
            if (i10 == 4) {
                this.mTouchUtil.moveToLastMousePoint();
                this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                return true;
            }
            if (i10 == 125) {
                this.mTouchUtil.sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_5, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                return true;
            }
        } else {
            if (HmInputDeviceManager.getRealInputOp(i10) != null) {
                if (i10 == 60 || i10 == 59) {
                    resetLockStatusFlag();
                }
                handleKeyEvent(i10, keyEvent, false);
                return false;
            }
            LogUtils.d(TAG, "this key is not support transfer  :" + i10);
        }
        return false;
    }

    protected void onLongClickAction(LongTouchBtnConfig longTouchBtnConfig, final KeyEvent keyEvent) {
        LogUtils.d(TAG, "hmInputEvent onLongClickAction ------btnConfig: " + longTouchBtnConfig);
        if (longTouchBtnConfig == null) {
            logAndReport("btnConfig is null, do nothing");
            return;
        }
        if (longTouchBtnConfig.extraInfo != null) {
            notifyLongTouchToApp(longTouchBtnConfig);
        }
        if (longTouchBtnConfig.fn == 1) {
            switchInputModeInternal();
        }
        this.mHmcpHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.46
            @Override // java.lang.Runnable
            public void run() {
                AbsIjkVideoView.this.sendGamePadData(keyEvent, true);
            }
        }, 500L);
    }

    @Override // com.haima.hmcp.business.DpadMouseLongStepActiveTimer.DpadMouseLongStepActiveTimerListener
    public void onLongStepActive(KeyEvent keyEvent) {
        LogUtils.d(TAG, "dpad_mouse_step-> onLongStepActive");
        this.mDpadMouseMoveStep = this.dpadMouseModel.getDpadMouseLongStep();
        if (keyEvent != null) {
            sendGamePadData(keyEvent);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    public void onMessage(final byte[] bArr) {
        LogUtils.d(TAG, "onMessage");
        this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.35
            @Override // java.lang.Runnable
            public void run() {
                AbsIjkVideoView.this.doOnMessage(bArr);
            }
        });
    }

    @Override // com.haima.hmcp.business.DpadMouseLongStepActiveTimer.DpadMouseLongStepActiveTimerListener
    public void onNormalStepActive() {
        LogUtils.d(TAG, "dpad_mouse_step-> onNormalStepActive");
        this.mDpadMouseMoveStep = this.dpadMouseModel.getDpadMouseStep();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onPause() {
        recordLifeCycleEvent("onPause");
        internalScreenShot();
        sendToInstanceMsg("IME:StopIM");
        this.localKeyboardModel.hideInput();
        if (!this.closeStream) {
            LogUtils.i(TAG, "close stream->onPause");
            return;
        }
        LogUtils.i(TAG, "===onPause====");
        UiMessageSend(getCallbackData(35, ""));
        turnOffSound();
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.mWakeLock.release();
    }

    public void onPlayerCommMsg(PlayNotification playNotification) {
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onPlayNotification(playNotification);
        } else {
            LogUtils.e(TAG, "onPlayerCommMsg mListener is null");
        }
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveDistance(long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("minDistance", j10);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        UiMessageSend(47, jSONObject.toString());
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void onReceiveExtraConfigs(HashMap<String, String> map, boolean z10) {
        this.isExtraConfigRequestSuccess.set(true);
        if (z10) {
            this.mGlobalConfig.getX86KeyMapContentConfig(map, this.mAppContext);
        }
        if (TextUtils.isEmpty(this.mKeyboardConfigJsonApp)) {
            initVirtualDevice();
        } else {
            LogUtils.i(TAG, "app execute loadKeybaordConfigJson, don't handle 115 result");
        }
    }

    public void onReceiveMetaInfos(int i10, HashMap<String, String> map, List<TipsInfo> list, Map<String, List<ResolutionInfo>> map2, List<IntroImageInfo> list2) {
        boolean z10;
        boolean z11;
        ClientImeType clientImeType;
        this.isRelease = false;
        parseInputConfig(map);
        SwitchStreamTypeData switchStreamTypeData = this.switchStreamTypeData;
        if (switchStreamTypeData != null && (clientImeType = switchStreamTypeData.clientImeType) != null) {
            this.mClientImeType = clientImeType;
            int serverImeType = this.mGlobalConfig.getServerImeType(map);
            if (this.mGlobalConfig.parseClientImeTypeEnable(map) && this.mClientImeType.imeTypeSource != -1) {
                int i11 = this.mClientImeType.imeTypeSource;
                Constants.CONFIG_IME_TYPE = i11;
                this.mIMEConfig.setClientImeType(i11);
            } else {
                Constants.CONFIG_IME_TYPE = serverImeType;
                this.mIMEConfig.setClientImeType(-1);
            }
            LogUtils.d(TAG, "client_ime_type-> after switch to rtmp, Constants.CONFIG_IME_TYPE=" + Constants.CONFIG_IME_TYPE);
            this.mIMEConfig.parseConfig(map);
            this.mIMEConfig.setCurrentIMEType(Constants.CONFIG_IME_TYPE);
        }
        GlobalConfig globalConfig = this.mGlobalConfig;
        globalConfig.configs = map;
        this.longTouchBtnConfigMap = globalConfig.parseLongTouchBtnList();
        if (map.containsKey(Constants.H264_SEI_INTERVAL)) {
            String str = map.get(Constants.H264_SEI_INTERVAL);
            LogUtils.d(TAG, "sei data-> saas sei interval: " + str);
            try {
                this.mSeiDataReportInterval = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                LogUtils.d(TAG, "sei data-> saas sei interval is not validate");
            }
            int iMax = Math.max(this.mSeiDataReportInterval, 1);
            this.mSeiDataReportInterval = iMax;
            this.mSeiDataReportInterval = Math.min(iMax, 5);
        } else {
            LogUtils.d(TAG, "sei data-> no have saas sei interval config");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sei data-> mSeiDataReportInterval: ");
        sb2.append(this.mSeiDataReportInterval);
        sb2.append("; sdk Sei enable: ");
        int i12 = this.mSeiDataSwitch;
        String str2 = kotlinx.coroutines.n0.f93598d;
        sb2.append(i12 == 1 ? kotlinx.coroutines.n0.f93598d : kotlinx.coroutines.n0.f93599e);
        LogUtils.d(TAG, sb2.toString());
        if (map.containsKey(Constants.H264_SEI_ENABLE)) {
            String str3 = map.get(Constants.H264_SEI_ENABLE);
            if (TextUtils.isEmpty(str3)) {
                LogUtils.d(TAG, "sei data-> saas sei enable not found and sdk set default true");
                z11 = false;
            } else {
                LogUtils.d(TAG, "sei data-> saas sei enable: " + str3);
                z11 = Boolean.parseBoolean(str3);
            }
            this.mSeiDataSwitch = (this.mSeiDataSwitch == 1 && z11) ? 1 : 0;
        }
        if (map.containsKey(Constants.OPEN_CAMERA_PERMISSION_CHECK_BY_SERVER)) {
            String str4 = map.get(Constants.OPEN_CAMERA_PERMISSION_CHECK_BY_SERVER);
            LogUtils.d(TAG, "Camera Open Permission->Server config: " + str4);
            try {
                z10 = Integer.parseInt(str4) > 0;
            } catch (NumberFormatException unused2) {
            }
            this.mCameraConfig.permissionCheckEachTimeServer = z10;
        }
        if (map.containsKey(Constants.RTC_SURFACE_RENDERER_SCREEN_SHOT_ENABLE)) {
            String str5 = map.get(Constants.RTC_SURFACE_RENDERER_SCREEN_SHOT_ENABLE);
            LogUtils.d(TAG, "rtc surface renderer screen shot enable: " + str5);
            this.mGlobalConfig.rtcSurfaceRendererScreenShotEnable = "1".equals(str5);
        } else {
            this.mGlobalConfig.rtcSurfaceRendererScreenShotEnable = false;
        }
        boolean z12 = this.mGlobalConfig.parseClientImeTypeEnable(map) && this.mClientImeType.imeType != -1;
        if (z12) {
            int i13 = Constants.CONFIG_IME_TYPE;
            int i14 = this.mClientImeType.imeType;
            if (i13 != i14) {
                Constants.CONFIG_IME_TYPE = i14;
                LogUtils.d(TAG, "client_ime_type-> client ime type enable and different with 108 config, use client ime type: " + Constants.CONFIG_IME_TYPE);
            }
        }
        int serverImeType2 = this.mGlobalConfig.getServerImeType(map);
        if (!z12) {
            this.mClientImeType.imeType = serverImeType2;
        }
        this.mIMEConfig.parseConfig(map);
        this.mIMEConfig.setClientImeType(z12 ? this.mClientImeType.imeType : -1);
        if (map.containsKey(Constants.SWITCH_RESOLUTION_CHECK_ACCESS_STATA_ENABLE)) {
            String str6 = map.get(Constants.SWITCH_RESOLUTION_CHECK_ACCESS_STATA_ENABLE);
            if (TextUtils.isEmpty(str6)) {
                this.checkAccessWhenSwitchResolution = false;
            } else {
                try {
                    this.checkAccessWhenSwitchResolution = Integer.parseInt(str6) > 0;
                } catch (NumberFormatException unused3) {
                }
            }
        } else {
            this.checkAccessWhenSwitchResolution = false;
        }
        this.mDownloadTaskProxy.setConfig(new DownloadConfig(map));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("sei data-> mSeiDataReportInterval: ");
        sb3.append(this.mSeiDataReportInterval);
        sb3.append("; sdk Sei enable: ");
        if (this.mSeiDataSwitch != 1) {
            str2 = kotlinx.coroutines.n0.f93599e;
        }
        sb3.append(str2);
        LogUtils.d(TAG, sb3.toString());
        if (i10 != -16711936) {
            return;
        }
        this.mMetaInfos = map;
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.initMetaInfo(map);
        }
        this.mTipsInfo = list;
        if (this.deviceInputManager == null) {
            this.deviceInputManager = new DeviceInputManager(this.mMetaInfos, this);
        }
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            this.deviceInputManager.setWebSocket(iWebSocket);
        }
        if (isModelNull()) {
            return;
        }
        this.streamModel.onReceiveMetaInfos(map2);
        if (list2 != null && list2.size() > 0) {
            this.mIntroImageInfo = list2.get(0);
        }
        LogUtils.i(TAG, "--------------onReceiveMetaInfos--------" + getMetaInfoByKey(Constants.BUTTON_MAP_CONTENT));
        this.mTouchUpPolicy = this.mGlobalConfig.getTouchUpPolicy(map);
        LogUtils.d(TAG, "touch up policy: " + this.mTouchUpPolicy);
        this.mScreenMonitorConfig.setEnable(this.mGlobalConfig.getScreenOrientationChangeEnable(map));
        this.mScreenMonitorConfig.setTimeout(this.mGlobalConfig.getScreenOrientationChangeOrderTimeout(map));
        registerScreenMonitor();
        this.x86TouchConfig.mouseSlideTouchTime = this.mGlobalConfig.getMouseSlideTouchTime(map);
        this.x86TouchConfig.mouseSlideOffset = this.mGlobalConfig.getMouseSlideOffset(map);
        this.x86TouchConfig.touchScreenModeClickDelayTime = this.mGlobalConfig.getTouchScreenModeClickDelay(map);
        this.x86TouchConfig.screenSlideConfig = this.mGlobalConfig.getScreenSlideConfig(map);
        this.mGlobalConfig.getMouseSlideConfig(map, this.x86TouchConfig);
        this.mTouchUtil.setConfig(this.x86TouchConfig);
        this.mGlobalConfig.parseGamepadMappingConfig(map);
        this.mGlobalConfig.parseTouchesMappingConfig(map);
        this.mTouchUtil.setGamepadMappingConfig(this.mGlobalConfig.mJoyStickMappingConfig);
        this.mTouchUtil.setTouchesMappingConfig(this.mGlobalConfig.mTouchesMappingConfig);
        this.mGlobalConfig.parseIsUseLargeConfig(map, this.mAppContext);
        this.localKeyboardModel.setDigits(this.mGlobalConfig.getImeDigits(map));
        this.vibratorModel.setConfig(map);
        this.mGlobalConfig.parseKeyboardMapConfigs(map, this.mAppContext);
        this.mStreamingMonitor.setConfig(map);
        this.tvBattleMode.setConfig(map);
        this.eventMappingModel.setConfig(map);
        this.inputOpModel.setConfig(map);
        if (!this.userConfigNativeDpadGame && this.mMetaInfos.containsKey(Constants.KEY_NATIVE_DPAD_GAME)) {
            try {
                this.nativeDpadGame = Boolean.parseBoolean(this.mMetaInfos.get(Constants.KEY_NATIVE_DPAD_GAME));
                LogUtils.d(TAG, "108 config nativeDpadGame:" + this.nativeDpadGame);
            } catch (NumberFormatException unused4) {
                LogUtils.e(TAG, "108 config nativeDpadGame error");
                this.nativeDpadGame = false;
            }
            setNativeDpadGame(this.nativeDpadGame);
        }
        if (!this.userConfigEnableShareStream && this.mMetaInfos.containsKey("enable_share_stream")) {
            try {
                this.enabelShareStream = Boolean.parseBoolean(this.mMetaInfos.get("enable_share_stream"));
                LogUtils.d(TAG, "108 config enableShareStream:" + this.enabelShareStream);
            } catch (NumberFormatException unused5) {
                LogUtils.e(TAG, "108 config enableShareStream error");
                this.enabelShareStream = false;
            }
            enableShareStream(this.enabelShareStream);
        }
        String metaInfoByKey = getMetaInfoByKey(Constants.KEY_BARRIERS_CONTENT);
        LogUtils.d(TAG, "keyBarriersConfig :" + metaInfoByKey);
        if (!TextUtils.isEmpty(metaInfoByKey)) {
            try {
                this.mButtonBarriersConfig = (ButtonBarrierConfigBean) JsonUtil.parseObject(metaInfoByKey, ButtonBarrierConfigBean.class);
                LogUtils.i(TAG, "--------------KeyBarriersConfig--------" + metaInfoByKey);
            } catch (Exception e10) {
                LogUtils.e(TAG, "mButtonBarriersConfig parse error:" + e10);
            }
        }
        SwitchControllerManager.getInstance().setConfig(map);
        this.isConfigSuccess.set(true);
        initVirtualDevice();
        X86KeyBlocker.getInstance().parseKeyBlockContent(map);
        TouchUtil touchUtil = this.mTouchUtil;
        if (touchUtil != null) {
            touchUtil.parseDeviceData(map.get(Constants.X86_CAPTURE_POINT_REVERSE_DEVICE_INFO));
        }
        this.dpadMouseModel.parseConfig(map);
        this.mDpadMouseMoveStep = this.dpadMouseModel.getDpadMouseStep();
        UiMessageSend(getCallbackData(33, ""));
    }

    @Override // android.view.ViewGroup, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        TouchUtil touchUtil;
        return (this.mGamePlatformType == GamePlatformType.X86 && this.mIsPCMouseMode && (touchUtil = this.mTouchUtil) != null) ? touchUtil.getCurPointerIcon() : super.onResolvePointerIcon(motionEvent, i10);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    public void onResponse(int i10, String str) {
        List<String> accessURList;
        boolean z10;
        if (i10 == 102) {
            if (Constants.MINIMUM_BITRATE.equals(str)) {
                UiMessageSend(getCallbackData(26, getMetaInfoByKey(Constants.TOAST_SPEED_LOWER_BITRATE)));
                sendSceneStopMessage(0L, ResourceManager.getString(R.string.haima_hmcp_scene_start_less_minimum));
            }
            return;
        }
        if (i10 == 201) {
            onSwitchResolutionError();
            return;
        }
        boolean z11 = false;
        switch (i10) {
            case -1:
                accessDisconnect();
                if (!this.isBackground) {
                    HmcpRequest hmcpRequest = this.mRequestManager;
                    if (this.mWsReconnectCount >= ((hmcpRequest == null || (accessURList = hmcpRequest.getAccessURList()) == null || accessURList.size() <= 0) ? 0 : accessURList.size() * Constants.SAAS_WS_MAX_TIMES)) {
                        HmcpRequest hmcpRequest2 = this.mRequestManager;
                        String str2 = Constants.ERRORCODE_OTHER_001;
                        if (hmcpRequest2 != null && !TextUtils.isEmpty(hmcpRequest2.getCloudId())) {
                            str2 = Constants.ERRORCODE_OTHER_001 + "-" + this.mRequestManager.getCloudId();
                        }
                        if (this.isGetControl) {
                            getContronResult(false, str2);
                        } else {
                            showRetryPrompt(Constants.TIPS_PROMPT_HMCP_ERROR, str2, ResourceManager.getString(R.string.haima_hmcp_net_timeout));
                        }
                        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_DISCONNECT);
                    } else {
                        HmcpRequest hmcpRequest3 = this.mRequestManager;
                        hmcpRequest3.setAccessReconnectURL(hmcpRequest3.getAccessURList().get((int) Math.floor(((double) this.mWsReconnectCount) / ((double) Constants.SAAS_WS_MAX_TIMES))));
                        LogUtils.e(TAG, "--------------connect2Access---------refresh after 1s--" + this.mPlayerState + " mWsReconnectCount = " + this.mWsReconnectCount);
                        if (this.mPlayerState <= 3) {
                            reconnectAccess("access disconnect " + str);
                        }
                    }
                }
                break;
            case 0:
                LogUtils.e(TAG, "--------------connect2Access---------refreshStoken--");
                refreshStoken(0, "connect2Access Success type OPTYPE_REFRESH");
                break;
            case 1:
                if (!this.isGameStart) {
                    UiMessageSend(getCallbackData(8, ""));
                }
                break;
            case 2:
                LogUtils.e(TAG, "--------------connect2Access---------heartBeatSuccess--");
                this.mWsReconnectCount = 0;
                break;
            case 3:
                try {
                    doStateChangeReason(str);
                } catch (JSONException e10) {
                    LogUtils.e(TAG, e10.getLocalizedMessage());
                    return;
                }
                break;
            case 4:
                doSwitchStreamType();
                break;
            case 5:
                this.streamModel.setRender();
                break;
            case 6:
                this.tvBattleMode.handleSaasResponse(i10, str);
                if (this.isGetControl) {
                    GlobalConfig globalConfig = this.mGlobalConfig;
                    int serverImeType = globalConfig.getServerImeType(globalConfig.configs);
                    int i11 = Constants.CONFIG_IME_TYPE_NATIVE;
                    if (serverImeType != i11) {
                        this.mClientImeType.imeType = -1;
                    } else {
                        this.mClientImeType.imeType = i11;
                    }
                    break;
                } else {
                    boolean zEquals = "1".equals(str);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("client_ime_type->apply instance status: ");
                    sb2.append(zEquals ? "replay" : "new");
                    LogUtils.d(TAG, sb2.toString());
                    if (!zEquals) {
                        HashMap<String, String> map = this.mGlobalConfig.configs;
                        if (map == null || map.isEmpty()) {
                            z10 = false;
                        } else {
                            GlobalConfig globalConfig2 = this.mGlobalConfig;
                            if (globalConfig2.getServerImeType(globalConfig2.configs) == Constants.CONFIG_IME_TYPE_NATIVE) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                        if (z10) {
                            this.mClientImeType.imeType = -1;
                        } else {
                            HashMap<String, String> map2 = this.mGlobalConfig.configs;
                            if (map2 != null && !map2.isEmpty()) {
                                GlobalConfig globalConfig3 = this.mGlobalConfig;
                                if (globalConfig3.parseClientImeTypeEnable(globalConfig3.configs) && this.mClientImeType.imeTypeSource != -1) {
                                    z11 = true;
                                }
                            }
                            if (z11) {
                                ClientImeType clientImeType = this.mClientImeType;
                                int i12 = clientImeType.imeTypeSource;
                                if (i12 == Constants.CONFIG_IME_TYPE_NATIVE) {
                                    clientImeType.imeType = i12;
                                    LogUtils.d(TAG, "client_ime_type->apply instance status: after 7682 connected switch ime to 1, cause client ime type is 1");
                                }
                            } else {
                                this.mClientImeType.imeType = -1;
                                LogUtils.d(TAG, "client_ime_type->apply instance status: after 7682 connected nothing to do, cause client ime disable");
                            }
                        }
                        this.mIMEConfig.setCurrentIMEType(Constants.CONFIG_IME_TYPE);
                        break;
                    }
                }
                break;
            case 7:
                this.tvBattleMode.handleSaasResponse(i10, str);
                break;
            case 8:
                if (!this.isBackground) {
                    int i13 = Constants.VIDEO_URL_TIMER_INTVAL;
                    startTimer(i13 * 1000, i13 * 1000, 4, "wait operation 68");
                }
                break;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onRestart(int i10) {
        recordLifeCycleEvent("onRestart");
        if (!this.closeStream) {
            LogUtils.i(TAG, "close stream->onRestart");
            return;
        }
        LogUtils.i(TAG, "===onRestart ====" + this.mPlayerState);
        this.curConnectState = 0;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setmPlayTime(i10);
        }
        showScreenShot();
        if (this.mPlayerState <= 3 || queryScene(1L)) {
            rePlay();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onResume() {
        recordLifeCycleEvent("onResume");
        if (!this.closeStream) {
            LogUtils.i(TAG, "close stream->onResume");
            return;
        }
        LogUtils.i(TAG, "===onResume====");
        if (!this.isAudioMute) {
            turnOnSound();
        }
        if (!this.hasWakeLockPermission) {
            CountlyUtil.recordErrorEvent("process no wake_lock permission");
            LogUtils.e(TAG, "process no wake_lock permission");
        } else {
            PowerManager.WakeLock wakeLock = this.mWakeLock;
            if (wakeLock != null) {
                wakeLock.acquire();
            }
        }
    }

    @Override // com.haima.hmcp.utils.ScreenShotManager.IScreenShotCallback
    public void onScreenShot(Bitmap bitmap) {
        CountDownLatch countDownLatch = this.screenShotCompletionLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        if (bitmap == null || bitmap.isRecycled()) {
            LogUtils.d(TAG, "ScreenShot->get capture failed, cause bitmap is null");
            return;
        }
        LogUtils.d(TAG, "ScreenShot->get capture frame success");
        if (!Utils.isAllowAllocate(bitmap.getByteCount())) {
            LogUtils.d(TAG, "ScreenShot->not enough memory to allocate for bitmap");
            return;
        }
        int iCheckBitmap = checkBitmap(bitmap, 100.0f);
        LogUtils.d(TAG, "ScreenShot->get capture frame check pure color result: " + iCheckBitmap);
        if (iCheckBitmap == 4) {
            LogUtils.d(TAG, "ScreenShot->get capture frame is pure color");
        }
        Bitmap bitmap2 = this.mScreenShotBitmap;
        if (bitmap2 != null) {
            synchronized (bitmap2) {
                if (!this.mScreenShotBitmap.isRecycled()) {
                    this.mScreenShotBitmap.recycle();
                }
                this.mScreenShotBitmap = null;
            }
        }
        synchronized (bitmap) {
            if (!bitmap.isRecycled()) {
                this.mScreenShotBitmap = bitmap.copy(bitmap.getConfig(), bitmap.isMutable());
            }
        }
    }

    @Override // com.haima.hmcp.utils.ScreenShotManager.IScreenShotCallback
    public void onScreenShotFailed(String str) {
        LogUtils.d(TAG, "ScreenShot->get capture frame failed: " + str);
        CountDownLatch countDownLatch = this.screenShotCompletionLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onStart() {
        recordLifeCycleEvent("onStart");
        if (this.isBackground) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "app back to the foreground:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
            cancelExitQueueInBGTimer(ExitQueueInBGCancelType.ENTER_FRONT);
        }
        this.isBackground = false;
        CountlyUtil.recordEvent(Constants.COUNTLY_APP_FOREGROUND);
    }

    public void onStop() {
        recordLifeCycleEvent("onStop");
        startExitQueueInBGTimer();
        CountDownLatch countDownLatch = this.screenShotCompletionLatch;
        if (countDownLatch != null) {
            try {
                try {
                    countDownLatch.await(500L, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                    LogUtils.e(TAG, "Screen shot timeout");
                }
                LogUtils.e(TAG, "Screen shot completed!");
            } catch (Throwable th) {
                LogUtils.e(TAG, "Screen shot completed!");
                throw th;
            }
        }
        if (this.closeStream) {
            this.streamModel.releaseScreenShot();
        }
        this.isBackground = true;
        CountlyUtil.recordEvent(Constants.COUNTLY_APP_BACKGROUND);
        stopSensor();
        unregisterScreenMonitor();
        if (!this.closeStream) {
            LogUtils.i(TAG, "close stream->onStop");
            return;
        }
        LogUtils.i(TAG, "===onStop====");
        this.curConnectState = 5;
        doPlayerRelease();
        cleanTimer();
        RecordHelper.getsInstance().stop(true);
        CountDownUtil.cancel(CountDownUtil.CID_CACHE_TIMER, getContext());
        if (this.mGamePlatformType == GamePlatformType.X86) {
            closePcMoueMode();
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.setIsShowMouse(false);
            }
            stopGyroscope();
        }
    }

    protected void onStopInternal() {
        resetState();
        stopRomRecord();
        disconnectWebSocket();
        if (isSwitchIMETiming()) {
            cancelSwitchIMEAckTimer();
            IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
            iMESwitchCallbackResult.result = 0;
            iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
            iMESwitchCallbackResult.message = "control lost";
            iMESwitchCallbackResult.reportMessage = "control lost";
            switchIMECallback(iMESwitchCallbackResult);
        }
        GetCloudImeTransaction getCloudImeTransaction = this.mGetCloudImeTransaction;
        if (getCloudImeTransaction != null) {
            getCloudImeTransaction.cancelGetCloudImeTypeTask("control lost");
        }
        stopReportClockDiffLatency();
        cleanTimer();
        PingManager.getInstance().stop();
        this.localKeyboardModel.hideInput();
        if (isModelNull()) {
            return;
        }
        this.streamModel.onStopInternal();
        CountDownUtil.cancel(CountDownUtil.CID_CACHE_TIMER);
        cleanCidForControlLost();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onSwitchResolution(String str) {
        recordLifeCycleEvent("onSwitchResolution_resId");
        if (this.curCloudServiceState != 3 && this.curConnectState != 3) {
            sendSceneCredError();
            LogUtils.i(TAG, "onSwitchResolution ConnectState not playing");
        } else if (this.mPlayerState == 3) {
            switchResolutionId(str, true);
        } else {
            sendSceneCredError();
            LogUtils.i(TAG, "onSwitchResolution playState not playing");
        }
    }

    protected void onSwitchResolutionError() {
        CloudStateSend(3);
        setResolutionList(this.mHmcpManager.getResolutionDatas(), this.currenteResolutionID, false, false);
        callbackSwitchResolutionFailed();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0116 A[ADDED_TO_REGION] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FPoint fPointCalculatePoint;
        int pointerId;
        int pointerId2;
        int pointerId3;
        LogUtils.i(TAG, "onTouchEvent #event: " + motionEvent);
        int i10 = 0;
        i = 0;
        int i11 = 0;
        i = 0;
        int i12 = 0;
        if (!isPlaying()) {
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.mGamePlatformType != GamePlatformType.ARM) {
            LogUtils.i(TAG, "onTouchEvent: x86 handle");
            boolean z10 = (motionEvent.getSource() & 8194) == 8194;
            LogUtils.i(TAG, "onTouchEvent: x86 handle, is mouse: " + z10);
            try {
                if (!z10 || !isAllowInput()) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                    if (motionEvent.getToolType(iFindPointerIndex) == 0 && isAllowInput()) {
                        float y10 = motionEvent.getY(iFindPointerIndex);
                        if (actionMasked == 0) {
                            this.mTmpUnknownToolTypeDownLocationY = y10;
                        }
                        if (actionMasked == 2) {
                            float f10 = this.mTmpUnknownToolTypeDownLocationY - y10;
                            LogUtils.d(TAG, "onTouchEvent mTmpUnknownToolTypeDownLocationY:" + this.mTmpUnknownToolTypeDownLocationY + ",eventY:" + y10 + ",offSet:" + f10);
                            if (f10 != 0.0f) {
                                if (f10 > 0.0f) {
                                    LogUtils.d(TAG, "onTouchEvent down");
                                    sendEvent(ProtoBufUtil.getMouseWheelData(-1));
                                } else {
                                    LogUtils.d(TAG, "onTouchEvent up");
                                    sendEvent(ProtoBufUtil.getMouseWheelData(1));
                                }
                            }
                            this.mTmpUnknownToolTypeDownLocationY = y10;
                        }
                        return true;
                    }
                    LogUtils.i(TAG, "onTouchEvent: x86 handle, is mouse else ");
                    if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 6 || motionEvent.getActionMasked() == 3) {
                        if (isAllowInput()) {
                            try {
                                handleTouchEvent(motionEvent);
                            } catch (Exception unused) {
                            }
                        }
                        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
                        if (hmVirtualTextureView != null) {
                            hmVirtualTextureView.touchEvent(motionEvent);
                        }
                    } else {
                        HmVirtualTextureView hmVirtualTextureView2 = this.mVirtualDeviceLayout;
                        if (hmVirtualTextureView2 != null) {
                            hmVirtualTextureView2.touchEvent(motionEvent);
                        }
                        if (isAllowInput()) {
                            handleTouchEvent(motionEvent);
                        }
                    }
                } else if (motionEvent.getAction() == 2) {
                    LogUtils.d(TAG, "onTouchEvent, x86 handle mouse move event");
                    this.mTouchUtil.sendMouseMove(motionEvent);
                } else if (this.mouseMotionEventDispatcher.touchMotionEvent(motionEvent)) {
                    this.mTouchUtil.sendMouseButtonEvent(motionEvent);
                }
            } catch (Exception unused2) {
            }
        } else {
            if (this.eventModel.onTouchEvent(motionEvent)) {
                return true;
            }
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    fPointCalculatePoint = null;
                    if (actionMasked == 2) {
                        LogUtils.d(TAG, "ACTION_MOVE");
                        pointerId2 = 0;
                        for (int i13 = 0; i13 < motionEvent.getPointerCount(); i13++) {
                            try {
                                pointerId2 = motionEvent.getPointerId(i13);
                                fPointCalculatePoint = calculatePoint(motionEvent, i13);
                                sendMotionEvent(3, pointerId2, fPointCalculatePoint);
                                this.mHistoryPoints.put(Integer.valueOf(pointerId2), fPointCalculatePoint);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                pointerId2 = pointerId2;
                            }
                        }
                        i10 = 3;
                    } else if (actionMasked == 3) {
                        LogUtils.d(TAG, "ACTION_CANCEL " + MotionEventCompat.getActionIndex(motionEvent));
                        pointerId2 = 0;
                        for (int i14 = 0; i14 < motionEvent.getPointerCount(); i14++) {
                            fPointCalculatePoint = calculateUpPointer(motionEvent);
                            pointerId2 = motionEvent.getPointerId(i14);
                            sendMotionEvent(2, pointerId2, fPointCalculatePoint);
                        }
                        i10 = 2;
                    } else if (actionMasked == 5) {
                        LogUtils.d(TAG, "ACTION_POINTER_DOWN");
                        fPointCalculatePoint = calculatePoint(motionEvent);
                        pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.mHistoryPoints.put(Integer.valueOf(pointerId), fPointCalculatePoint);
                    } else if (actionMasked != 6) {
                        pointerId2 = 0;
                    } else {
                        LogUtils.d(TAG, "ACTION_POINTER_UP");
                        fPointCalculatePoint = calculateUpPointer(motionEvent);
                        pointerId3 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    }
                    if (actionMasked != 2 && actionMasked != 3) {
                        sendMotionEvent(i10, pointerId2, fPointCalculatePoint);
                    }
                } else {
                    LogUtils.d(TAG, "ACTION_UP");
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex >= 0 && actionIndex < motionEvent.getPointerCount()) {
                        i11 = actionIndex;
                    }
                    pointerId3 = motionEvent.getPointerId(i11);
                    fPointCalculatePoint = calculateUpPointer(motionEvent);
                }
                pointerId2 = pointerId3;
                i10 = 2;
                if (actionMasked != 2) {
                    sendMotionEvent(i10, pointerId2, fPointCalculatePoint);
                }
            } else {
                LogUtils.d(TAG, "ACTION_DOWN");
                fPointCalculatePoint = calculatePoint(motionEvent);
                int actionIndex2 = motionEvent.getActionIndex();
                if (actionIndex2 >= 0 && actionIndex2 < motionEvent.getPointerCount()) {
                    i12 = actionIndex2;
                }
                pointerId = motionEvent.getPointerId(i12);
                this.mHistoryPoints.put(Integer.valueOf(pointerId), fPointCalculatePoint);
            }
            pointerId2 = pointerId;
            i10 = 1;
            if (actionMasked != 2) {
                sendMotionEvent(i10, pointerId2, fPointCalculatePoint);
            }
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        LogUtils.d(TAG, "onTrackballEvent #event:" + motionEvent);
        return true;
    }

    public void onViewResolutionChanged(int i10, int i11) {
        String str = "onConfigurationChanged width:" + i10 + " height:" + i11 + " before width:" + this.mChangedViewResolutionWidth + " height:" + this.mChangedViewResolutionHeight + " isCallbackFirstFrameArrived:" + this.isCallbackFirstFrameArrived;
        LogUtils.i(TAG, "fold screen: " + str);
        CountlyUtil.recordErrorEvent(str);
        this.mChangedViewResolutionWidth = i10;
        this.mChangedViewResolutionHeight = i11;
        if (this.isCallbackFirstFrameArrived) {
            resolutionCheck();
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00fa A[Catch: JSONException -> 0x00fd, TRY_LEAVE, TryCatch #1 {JSONException -> 0x00fd, blocks: (B:3:0x0005, B:5:0x001c, B:9:0x002f, B:11:0x0065, B:13:0x006f, B:15:0x0077, B:42:0x00fa, B:20:0x008a, B:22:0x0092, B:25:0x00a6, B:27:0x00ae, B:30:0x00ba, B:32:0x00c2, B:35:0x00ce, B:37:0x00d6, B:40:0x00e4), top: B:49:0x0005 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, com.haima.hmcp.beans.ClipBoardData] */
    /* JADX WARN: Type inference failed for: r1v9, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.haima.hmcp.beans.BaseWsMessage] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.haima.hmcp.beans.BaseWsMessage] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.CharSequence, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5 */
    protected BaseWsMessage parseData(String str) {
        ?? r10 = 0;
        r10 = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            ?? OptString = jSONObject.optString("type");
            String strOptString = jSONObject.optString("mid");
            if (!jSONObject.has("data")) {
                int iOptInt = jSONObject.optInt("code");
                String strOptString2 = jSONObject.optString("message");
                if (iOptInt != 1000 && iOptInt != 0) {
                    LogUtils.e(TAG, "==WsMessage==" + (" type: " + OptString + " code: " + iOptInt + " message: " + strOptString2));
                    return null;
                }
                ResponseWsMessage responseWsMessage = new ResponseWsMessage();
                responseWsMessage.type = OptString;
                responseWsMessage.mid = strOptString;
                return responseWsMessage;
            }
            try {
                if (Constants.WS_MESSAGE_TYPE_INTENT.equals(OptString)) {
                    IntentWsMessage intentWsMessage = new IntentWsMessage();
                    intentWsMessage.data = jSONObject.optString("data");
                    OptString = intentWsMessage;
                } else if (Constants.WS_MESSAGE_TYPE_CLIPBOARD.equals(OptString)) {
                    ClipBoardWsMessage clipBoardWsMessage = new ClipBoardWsMessage();
                    clipBoardWsMessage.data = (ClipBoardData) com.alibaba.fastjson.a.parseObject(jSONObject.optString("data"), ClipBoardData.class);
                    OptString = clipBoardWsMessage;
                } else if (Constants.WS_MESSAGE_TYPE_GPS.equals(OptString)) {
                    GPSAuthWsMessage gPSAuthWsMessage = new GPSAuthWsMessage();
                    gPSAuthWsMessage.data = jSONObject.optString("data");
                    OptString = gPSAuthWsMessage;
                } else {
                    if (!Constants.WS_MESSAGE_TYPE_UPDATE_VIEW.equals(OptString)) {
                        if (TextUtils.equals(Constants.WS_MESSAGE_TYPE_MISC, OptString)) {
                            MiscWsMessage miscWsMessage = new MiscWsMessage();
                            miscWsMessage.mid = strOptString;
                            miscWsMessage.data = jSONObject.optString("data");
                            OptString = miscWsMessage;
                        } else {
                            LogUtils.d(TAG, OptString + " has not handle");
                        }
                        if (r10 != 0) {
                            r10.mid = strOptString;
                        }
                        return r10;
                    }
                    UpdateViewWsMessage updateViewWsMessage = new UpdateViewWsMessage();
                    updateViewWsMessage.data = jSONObject.optString("data");
                    OptString = updateViewWsMessage;
                }
                r10 = OptString;
                if (r10 != 0) {
                    r10.mid = strOptString;
                }
            } catch (JSONException e10) {
                r10 = OptString;
                e = e10;
                LogUtils.e(TAG, e);
            }
            return r10;
        } catch (JSONException e11) {
            e = e11;
        }
    }

    protected void parseDebugConfig(Bundle bundle) {
        if (this.switchStreamTypeData == null && bundle != null) {
            this.mClientImeType.imeType = bundle.getInt(BaseVideoView.IME_TYPE, -1);
            ClientImeType clientImeType = this.mClientImeType;
            int i10 = clientImeType.imeType;
            if (i10 < 0 || i10 > 1) {
                clientImeType.imeType = -1;
                LogUtils.d(TAG, "client_ime_type->client ime type: " + this.mClientImeType.imeType + " is invalid and reset -1");
            } else {
                LogUtils.d(TAG, "client_ime_type->client ime type: " + this.mClientImeType.imeType);
            }
            ClientImeType clientImeType2 = this.mClientImeType;
            int i11 = clientImeType2.imeType;
            clientImeType2.imeTypeSource = i11;
            Constants.IME_TYPE_SOURCE = i11;
            try {
                this.mTransmissionDataToSaas = null;
                if (bundle.containsKey(BaseVideoView.TRANSMISSION_DATA_TO_SAAS)) {
                    this.mTransmissionDataToSaas = (SerializableMap) bundle.getSerializable(BaseVideoView.TRANSMISSION_DATA_TO_SAAS);
                }
            } catch (Exception e10) {
                LogUtils.e(TAG, "get transmissionDataToSaas from bundle has Exception", e10);
            }
        }
        if (bundle != null) {
            if (bundle.getInt(BaseVideoView.CLEAN_CACHE_CID, 0) == 1) {
                DataUtils.getSharedInstance(getContext()).putPreferences(HmcpRequestManager.CID_KEY, "");
                DataUtils.getSharedInstance(getContext()).putPreferences(HmcpRequestManager.CID_VALUE, "");
            }
            HmIMEManager.getInstance().setInputOffset(bundle.getInt(BaseVideoView.SHOW_INPUT_OFFSET, 0));
        }
    }

    protected void parseRecordMessage(String str) {
        if (this.isBackground) {
            LogUtils.d(TAG, "Audio-Record: parse record cmd no handle, cause isBackground. cmd: " + str);
            return;
        }
        LogUtils.e(TAG, "Audio-Record: parse record cmd: " + str);
        if (TextUtils.isEmpty(str) || !str.contains("cmd")) {
            return;
        }
        Matcher matcher = Pattern.compile("\\{([^}])*\\}").matcher(str);
        while (matcher.find()) {
            try {
                RecordCmdResult recordCmdResult = (RecordCmdResult) com.alibaba.fastjson.a.parseObject(matcher.group(), RecordCmdResult.class);
                if (recordCmdResult.getCmd() == 0) {
                    CountlyUtil.recordEvent("13201");
                    RecordHelper.getsInstance().setEnable(true);
                }
                if (recordCmdResult.getCmd() == 1) {
                    CountlyUtil.recordEvent("13203", RecordHelper.getsInstance().getSource().name() + "," + recordCmdResult.getParameter());
                    this.mRecordResult = recordCmdResult;
                    if (RecordHelper.getsInstance().isPermissionAllowed(getContext())) {
                        startRecord(recordCmdResult);
                    } else {
                        LogUtils.d(TAG, "need permission: Manifest.permission.RECORD_AUDIO");
                        HmcpPlayerListener hmcpPlayerListener = this.mListener;
                        if (hmcpPlayerListener != null) {
                            hmcpPlayerListener.onPermissionNotGranted("android.permission.RECORD_AUDIO");
                        }
                    }
                }
                if (recordCmdResult.getCmd() == 2) {
                    CountlyUtil.recordEvent("13207");
                    RecordHelper.getsInstance().stop(true);
                }
                if (recordCmdResult.getCmd() == 3) {
                    CountlyUtil.recordEvent("13202", recordCmdResult.getMsg());
                    LogUtils.e(TAG, "====RecordMessage Err=====" + recordCmdResult.getMsg());
                    RecordHelper.getsInstance().setEnable(false);
                }
            } catch (com.alibaba.fastjson.JSONException unused) {
                CountlyUtil.recordErrorEvent("parseRecordMessage err: " + str);
            }
        }
    }

    protected int parseScreenResolution(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "parse screen resolution is null");
            return 0;
        }
        LogUtils.d(TAG, "parse screen resolution: " + str);
        try {
            return (int) Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            LogUtils.d(TAG, "parse screen resolution exception: " + e10.getMessage());
            return 0;
        }
    }

    protected String parseShare(String str) {
        try {
            return new JSONObject(str).optString("link");
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    protected void pauseDownloadTask() {
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy == null) {
            return;
        }
        downloadTaskProxy.pauseTask();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void pauseGame() {
        recordLifeCycleEvent("pauseGame");
        UiMessageSend(getCallbackData(35, ""));
        turnOffSound();
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.mWakeLock.release();
        }
        this.curConnectState = 5;
        doPlayerRelease();
        if (this.mGamePlatformType == GamePlatformType.X86) {
            closePcMoueMode();
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.setIsShowMouse(false);
            }
            stopGyroscope();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void play(Bundle bundle) {
        CountlyUtil.recordEvent(Constants.COUNTYLY_CLOUD_PLAY_IS_RUN, StringUtils.replaceSpecialStr(Log.getStackTraceString(new Throwable())));
        SwitchControllerManager.getInstance().reset();
        this.mInQueued = false;
        this.sendStopIMEOneShot = true;
        removeScene(1L);
        removeScene(2L);
        int i10 = bundle.containsKey(BaseVideoView.CLEAN_CACHE_CID) ? bundle.getInt(BaseVideoView.CLEAN_CACHE_CID) : 0;
        parseDebugConfig(bundle);
        recordLifeCycleEvent("play_bundle;" + Constants.IME_TYPE + SimpleComparison.EQUAL_TO_OPERATION + this.mClientImeType.imeType + ";" + BaseVideoView.CLEAN_CACHE_CID + SimpleComparison.EQUAL_TO_OPERATION + i10 + ";DISPLAY" + SimpleComparison.EQUAL_TO_OPERATION + Build.DISPLAY);
        this.screen = (ScreenOrientation) bundle.getSerializable("orientation");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mOrientation=");
        sb2.append(this.mOrientation);
        LogUtils.i(TAG, sb2.toString());
        if (!TextUtils.isEmpty(this.mAppName) || checkDataReportIsDisable() || checkSdkNotInit()) {
            return;
        }
        handleSpecialBundle(bundle);
        setOrientationInit((ScreenOrientation) bundle.getSerializable("orientation"));
        long j10 = bundle.getLong("playTime", -1L);
        if (j10 != -1) {
            this.mHPlayTime = j10;
            LogUtils.d(TAG, "play time date type long");
        } else {
            LogUtils.d(TAG, "play time date type int");
            this.mHPlayTime = bundle.getInt("playTime");
        }
        this.mPriority = bundle.getInt("priority");
        this.mAppId = bundle.getInt("appId");
        int i11 = bundle.getInt(BaseVideoView.BITMAP_CACHE_MAX_SIZE_MB, 0);
        if (i11 > 0) {
            HmNetworkBitmapLoader.getInstance().setCacheMaxSize(i11);
        }
        this.mAppName = bundle.getString("appName");
        this.mStreamType = bundle.getString("streamType");
        this.mViewFrameRate = bundle.getInt(BaseVideoView.VIEW_FRAME_RATE);
        this.mAppChannel = bundle.getString("appChannel");
        this.mArchiveFromBid = bundle.getString("archiveFromBid");
        this.mArchiveFromUserId = bundle.getString("archiveFromUserId");
        CountlyUtil.setAppInfo(this.mAppName, this.mAppChannel);
        this.mToken = bundle.getString("cToken");
        this.mExtraId = bundle.getString("extraId");
        this.mProtoData = bundle.getString("protoData");
        this.isShowTime = bundle.getBoolean("isShowTime", true);
        CountlyUtil.mLastCloudID = bundle.getString("cid");
        saveAndResetCidCacheData(bundle.getLong(BaseVideoView.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL));
        Constants.DEMO_TEST_C_ID = bundle.getString(BaseVideoView.DEMO_TEST_C_ID);
        Constants.DEMO_TEST_INTERFACE_ID = bundle.getInt("demoTestInterfaceId");
        Constants.DEMO_TEST_INSTANCE_ID = bundle.getInt("demoTesInstanceId");
        HmcpRequestManager.clientISP = bundle.getString("clientISP", "");
        HmcpRequestManager.clientProvince = bundle.getString("clientProvince", "");
        HmcpRequestManager.clientCity = bundle.getString("clientCity", "");
        this.mComponentType = bundle.getInt(BaseVideoView.COMPONENT_TYPE);
        this.mAction = bundle.getString("action");
        this.mComponentName = bundle.getString(BaseVideoView.COMPONENT_NAME);
        this.mUserDeviceInfo = bundle.getString(BaseVideoView.USER_DEVICE_INFO);
        this.mCutOutsHeightPercent = bundle.getFloatArray(BaseVideoView.CUTOUT_HEIGHT_PERCENT);
        if (bundle.containsKey(BaseVideoView.FINISH_BY_SERVER)) {
            this.mFinishByServer = Boolean.valueOf(bundle.getBoolean(BaseVideoView.FINISH_BY_SERVER));
        } else {
            this.mFinishByServer = null;
        }
        this.verticalBackground = bundle.getInt("verticalBackground", -1);
        LogUtils.d(TAG, "verticalBackground getInt:" + this.verticalBackground);
        setBackground();
        if (bundle.containsKey("payStr")) {
            this.mPayStr = bundle.getString("payStr");
        } else {
            this.mPayStr = "";
        }
        if (bundle.containsKey("internetSpeed")) {
            this.mInternetSpeed = getValidSpeed(bundle);
        } else {
            this.mInternetSpeed = -1.0f;
        }
        if (bundle.containsKey("bitRate")) {
            this.mBitRate = bundle.getInt("bitRate");
        } else {
            this.mBitRate = 0;
        }
        if (bundle.containsKey("resolutionId")) {
            this.mSelfResolutionId = bundle.getInt("resolutionId");
        } else {
            this.mSelfResolutionId = -1;
        }
        if (bundle.containsKey("archived")) {
            this.mArchived = bundle.getBoolean("archived");
        } else {
            this.mArchived = true;
        }
        if (bundle.containsKey(BaseVideoView.STREAMING_MODE)) {
            this.mStreamingMode = bundle.getInt(BaseVideoView.STREAMING_MODE);
        } else {
            this.mStreamingMode = 0;
        }
        this.mFPSPeriod = bundle.getInt("fpsPeriod");
        this.mBandWidthPeriod = bundle.getInt("bandWidthPeriod");
        this.mBandWidthPeak = bundle.getInt("bandWidthPeak");
        this.mDecodeTimePeriod = bundle.getInt("decodeTimePeriod");
        this.mViewResolutionWidth = bundle.getInt("viewResolutionWidth", 0);
        this.mViewResolutionHeight = bundle.getInt("viewResolutionHeight", 0);
        checkWidthAndHeight();
        this.mNoInputLimitTime = bundle.getInt("noInputLimitTime");
        this.decodeType = bundle.getInt(BaseVideoView.DECODE_TYPE, 1);
        this.mIsCustomPlayer = bundle.getBoolean(BaseVideoView.IS_CUSTOM_PLAYER, false);
        this.mDisableAutoStream = bundle.getBoolean(BaseVideoView.DISABLE_AUTO_STREAM, false);
        this.mGid = bundle.getString("gid");
        if (!TextUtils.isEmpty("") && Constants.CONFIG_IS_COMPATIBLE_IPV6) {
            this.mIsAllowCompatibleIPV6 = bundle.getBoolean("allowCompatibleIpv6", false);
        }
        this.mCameraConfig.permissionCheckEachTimeLocal = bundle.getBoolean(BaseVideoView.OPEN_CAMERA_PERMISSION_CHECK, false);
        this.languageFromApp = bundle.getString(Language.LANGUAGE_CONFIG, null);
        if (bundle.containsKey(BaseVideoView.HIGH_BIT_RATE)) {
            this.enableHighBitrate = Boolean.valueOf(bundle.getBoolean(BaseVideoView.HIGH_BIT_RATE, false));
        } else {
            this.enableHighBitrate = null;
        }
        LogUtils.d(TAG, "enable high bit rate: " + this.enableHighBitrate);
        if (bundle.containsKey(BaseVideoView.DATA_TRAFFIC_OWNER)) {
            int i12 = bundle.getInt(BaseVideoView.DATA_TRAFFIC_OWNER, -1);
            this.dataTrafficOwner = i12 != -1 ? Integer.valueOf(i12) : null;
        } else {
            this.dataTrafficOwner = null;
        }
        LogUtils.d(TAG, "data traffic owner id: " + this.dataTrafficOwner);
        if (bundle.containsKey(BaseVideoView.KEEP_ALIVE_TIME_SEC)) {
            int i13 = bundle.getInt(BaseVideoView.KEEP_ALIVE_TIME_SEC, -1);
            this.mKeepAliveTimeSec = i13 >= 0 ? Integer.valueOf(i13) : null;
        } else {
            this.mKeepAliveTimeSec = null;
        }
        if (bundle.containsKey(BaseVideoView.DEVICE_PIXEL_RATIO)) {
            int i14 = bundle.getInt(BaseVideoView.DEVICE_PIXEL_RATIO, -1);
            this.mDevicePixelRatio = i14 != -1 ? Integer.valueOf(i14) : null;
        } else {
            this.mDevicePixelRatio = null;
        }
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
        this.userConfigNativeDpadGame = bundle.containsKey(BaseVideoView.NATIVE_DPAD_GAME);
        this.userConfigEnableShareStream = bundle.containsKey("enable_share_stream");
        setNativeDpadGame(bundle.getBoolean(BaseVideoView.NATIVE_DPAD_GAME, false));
        enableShareStream(bundle.getBoolean("enable_share_stream", false));
        this.tvBattleMode.handBattleBundle(bundle);
        if (bundle.containsKey(BaseVideoView.VIRTUAL_KEYBOARD_ENABLE)) {
            this.mEnableVirtualKeyboardView = bundle.getBoolean(BaseVideoView.VIRTUAL_KEYBOARD_ENABLE, false);
            this.mUserConfigVirtualKeyboardView = true;
        } else {
            this.mUserConfigVirtualKeyboardView = false;
        }
        registerReceiver();
        Source source = Source.SDK;
        if (bundle.containsKey(BaseVideoView.AUDIO_RECORD_SOURCE)) {
            source = (Source) bundle.getSerializable(BaseVideoView.AUDIO_RECORD_SOURCE);
        }
        RecordHelper.getsInstance().setSource(source);
        this.tokenTimeStampModel.updateTimeStamp(this.tokenTimeStampModel.parseTokenTimeStamp(bundle));
        LogUtils.e(TAG, bundle.toString());
        if (this.isChangeStreamType) {
            play();
        } else {
            UiMessageSend(1, "");
            showVideoDialog();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "play(bundle):" + VolumeUtils.getCurrentMediaVolume(getContext()));
        recordDeviceVibratorInfo();
    }

    public void playForTesting(PlayTestData playTestData) {
        if (this.streamModel.playForTesting(playTestData)) {
            LogUtils.i(TAG, "===playForTesting====");
            UiMessageSend(getCallbackData(34, ""));
            initManager();
            if (playTestData.dataChannelInput) {
                HmDataChannelDeviceSwitch.getInstance().setCloudId(String.valueOf(System.currentTimeMillis()));
                HmDataChannelDeviceSwitch.getInstance().setEnablePara(Constants.ERRORCODE_SDK_PREFIX);
            } else {
                this.mVInputUrl = playTestData.inputUrl;
                this.screenUrl = playTestData.screenUrl;
            }
            setOrientationInit(playTestData.orientation);
            Constants.PLAY_PREPARE = false;
            this.streamModel.start2Play(null);
        }
    }

    protected void playInternal() {
        HmcpManager.getInstance();
        if (!HmcpManager.INIT_SUCCESS) {
            HmcpPlayerListener hmcpPlayerListener = this.mListener;
            if (hmcpPlayerListener != null) {
                hmcpPlayerListener.onPlayerError(Constants.ERRORCODE_ERROR_000003, ResourceManager.getString(R.string.Error_000003));
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONFIG_ARG_FAIL, JsonUtil.toJsonString(new ReportBaseFailed(Constants.ERRORCODE_ERROR_000003, "HmcpManager.INIT_SUCCESS is false", 0, "", 0)));
            return;
        }
        this.mHmcpManager = HmcpManager.getInstance();
        if (HmcpManager.isSpeedTesting()) {
            LogUtils.e(TAG, "network speed is testing, to stop");
            this.mHmcpManager.stopSpeedTesting();
        }
        CountlyUtil.mSEQ++;
        LogUtils.i(TAG, "timeframe=====play======sdk current version =====master-7.28.1-a83e5ae0");
        initManager();
        resetGetContron();
        CountlyUtil.mExtraId = this.mExtraId;
        Constants.PLAY_PREPARE = false;
        LogUtils.e(TAG, "currentNetType = getCurrentNetType()");
        this.currentNetType = getCurrentNetType();
        if (!this.isNetworkOk) {
            LogUtils.i(TAG, "===play Network unavailable====");
        }
        HmcpManager.getInstance().stopAdvertDownload();
        if (this.mRequestManager != null) {
            playRequest();
        } else {
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONFIG_ARG_FAIL, JsonUtil.toJsonString(new ReportBaseFailed(Constants.ERRORCODE_ERROR_000003, "mRequestManager is null", 0, "", 0)));
            CountlyUtil.recordErrorEvent("playInternal() " + Log.getStackTraceString(new Throwable()));
        }
        setVideoViewListener();
    }

    public void playPreparation(int i10, PlayStreamPayloadData playStreamPayloadData) {
        String str;
        removeScene(1L);
        this.mEntryQueue = false;
        this.mInQueued = false;
        cancelExitQueueInBGTimer(ExitQueueInBGCancelType.QUEUE_COMPLETE);
        if (playStreamPayloadData == null || isModelNull()) {
            CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
            if (cloudPlayInfo2 != null) {
                cloudPlayInfo2.isGetStreamUrlSuccess = false;
                return;
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isGetStreamUrlSuccess = false");
                return;
            }
        }
        CloudPlayInfo cloudPlayInfo3 = cloudPlayInfo;
        if (cloudPlayInfo3 != null) {
            cloudPlayInfo3.isGetStreamUrlSuccess = true;
        } else {
            LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.isGetStreamUrlSuccess = true");
        }
        LogUtils.i(TAG, "reset mRefreshStokenCount: " + this.mRefreshStokenCount + " -> 0reset mInstanceReconnectCount: " + this.mInstanceReconnectCount + " -> 0reset mInstanceWsReconnectCount: " + this.mInstanceWsReconnectCount + " -> 0");
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        this.mTransferReconnectCount = 0;
        GamePlatformType gamePlatformType = this.mGamePlatformType;
        GamePlatformType gamePlatformType2 = GamePlatformType.X86;
        String str2 = Constants.STREAM_TYPE_RTC;
        if (gamePlatformType == gamePlatformType2) {
            playStreamPayloadData.streamType = Constants.STREAM_TYPE_RTC;
        }
        if (!this.streamModel.isMatchStreamType(playStreamPayloadData)) {
            CloudPlayInfo cloudPlayInfo4 = cloudPlayInfo;
            if (cloudPlayInfo4 != null) {
                cloudPlayInfo4.setWebSocketManager(null);
            } else {
                LogUtils.d(TAG, "cloudPlayInfo == null,can't set cloudPlayInfo.setWebSocketManager(null)");
            }
            changeStreamType(i10, playStreamPayloadData);
            return;
        }
        if (this.mGamePlatformType == GamePlatformType.ARM) {
            String str3 = playStreamPayloadData.inputUrl;
            this.mVInputUrl = str3;
            this.screenUrl = playStreamPayloadData.screenUrl;
            this.streamModel.parseBoardType(str3);
            this.mInstanceAccessUrl = null;
        } else {
            String str4 = playStreamPayloadData.gsmUrl;
            this.mGSUrl = str4;
            this.mInstanceAccessUrl = playStreamPayloadData.instanceAccessUrl;
            this.streamModel.setGSMUrl(str4);
            calcWindowStreamScale(playStreamPayloadData.resolutionInfo.resolution);
        }
        this.currentApkType = i10;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null && !TextUtils.isEmpty(hmcpRequest.getCloudId())) {
            this.mDownloadTaskProxy.setCid(this.mRequestManager.getCloudId());
        }
        this.mDownloadTaskProxy.setUrl(playStreamPayloadData.screenRecordUrl);
        callbackSdkDisplayInfo(playStreamPayloadData);
        markWebSocketUrlTimeStamp();
        checkHangUpTask();
        if (this.dataTrafficOwner != null) {
            if (playStreamPayloadData.sdkStreamPayloadData == null) {
                playStreamPayloadData.sdkStreamPayloadData = new SdkStreamPayloadData();
            }
            playStreamPayloadData.sdkStreamPayloadData.dataTrafficOwner = this.dataTrafficOwner;
        }
        this.streamModel.initUrl(playStreamPayloadData);
        setSupportLiving(playStreamPayloadData.supportLiving);
        ResolutionInfo resolutionInfo = playStreamPayloadData.resolutionInfo;
        String str5 = resolutionInfo == null ? "" : resolutionInfo.resolution;
        this.screenResolution = str5;
        if (!TextUtils.isEmpty(str5)) {
            String[] strArrSplit = this.screenResolution.split("x");
            if (strArrSplit.length == 2) {
                this.streamHeight = parseScreenResolution(strArrSplit[1]);
                this.streamWidth = parseScreenResolution(strArrSplit[0]);
                LogUtils.d(TAG, "parse screen resolution streamWidth = " + this.streamWidth + ", streamHeight" + this.streamHeight);
            }
        }
        this.encryption = playStreamPayloadData.encryption;
        String encodeVideoUrl = this.streamModel.getEncodeVideoUrl();
        if (this.streamModel.getStreamType() == 1) {
            str = "SignalUrl,CoTurnUrl,mRoomId = ";
        } else {
            str = "videoUrl = ";
            str2 = Constants.STREAM_TYPE_RTMP;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_STREAM_URL, JsonUtil.toJsonString(new ReportGetStreamSuc(str + StringUtils.encodeToBase64String(encodeVideoUrl) + "; apkType = " + i10 + "; " + currentStatusInfo(), str2)));
        if (this.curConnectState != 5) {
            this.curConnectState = 1;
        }
        LogUtils.e(TAG, "=OperationStream==playPreparation() curCloudServiceState : " + this.curCloudServiceState + " apkType : " + i10);
        if (this.curCloudServiceState == 2) {
            syncSpeedVsPlay(playStreamPayloadData.sdkStreamPayloadData);
            this.streamModel.updateRenderview();
        }
        notifyAfterOP5(i10);
        internalPlayPreparation(i10, playStreamPayloadData);
    }

    public void playRequest() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("orientation", this.mOrientation);
        bundle.putLong("playTime", this.mHPlayTime);
        bundle.putInt("priority", this.mPriority);
        bundle.putInt("appId", this.mAppId);
        bundle.putString("appName", this.mAppName);
        bundle.putString("appChannel", this.mAppChannel);
        bundle.putString("cToken", this.mToken);
        bundle.putString("extraId", this.mExtraId);
        bundle.putString("payStr", this.mPayStr);
        bundle.putInt("bitRate", Math.max(this.mBitRate, (int) this.mInternetSpeed));
        bundle.putInt("resolutionId", this.mSelfResolutionId);
        bundle.putBoolean("archived", this.mArchived);
        bundle.putString("protoData", this.mProtoData);
        bundle.putInt("noInputLimitTime", this.mNoInputLimitTime);
        bundle.putBoolean("allowCompatibleIpv6", this.mIsAllowCompatibleIPV6);
        bundle.putBoolean(BaseVideoView.IS_CUSTOM_PLAYER, this.mIsCustomPlayer);
        bundle.putInt("viewResolutionWidth", this.mViewResolutionWidth);
        bundle.putInt("viewResolutionHeight", this.mViewResolutionHeight);
        bundle.putInt(BaseVideoView.VIEW_FRAME_RATE, this.mViewFrameRate);
        bundle.putString("streamType", this.mStreamType);
        bundle.putString("archiveFromBid", this.mArchiveFromBid);
        bundle.putString("archiveFromUserId", this.mArchiveFromUserId);
        bundle.putInt(BaseVideoView.COMPONENT_TYPE, this.mComponentType);
        bundle.putString("action", this.mAction);
        bundle.putString(BaseVideoView.COMPONENT_NAME, this.mComponentName);
        bundle.putString(BaseVideoView.USER_DEVICE_INFO, this.mUserDeviceInfo);
        bundle.putFloatArray(BaseVideoView.CUTOUT_HEIGHT_PERCENT, this.mCutOutsHeightPercent);
        bundle.putString(Language.LANGUAGE_CONFIG, this.languageFromApp);
        Boolean bool = this.mFinishByServer;
        if (bool != null) {
            bundle.putBoolean(BaseVideoView.FINISH_BY_SERVER, bool.booleanValue());
        }
        Integer num = this.mKeepAliveTimeSec;
        if (num != null) {
            bundle.putInt(BaseVideoView.KEEP_ALIVE_TIME_SEC, num.intValue());
        }
        Integer num2 = this.mDevicePixelRatio;
        if (num2 != null) {
            bundle.putInt(BaseVideoView.DEVICE_PIXEL_RATIO, num2.intValue());
        }
        Boolean bool2 = this.mOpenMultiArchive;
        if (bool2 != null) {
            bundle.putBoolean(BaseVideoView.OPEN_MULTI_ARCHIVE, bool2.booleanValue());
        }
        Boolean bool3 = this.mSaveArchiveMultiArchive;
        if (bool3 != null) {
            bundle.putBoolean(BaseVideoView.SAVE_ARCHIVE_MULTI_ARCHIVE, bool3.booleanValue());
        }
        String str = this.mSaveArchiveBidMultiArchive;
        if (str != null) {
            bundle.putString(BaseVideoView.SAVE_ARCHIVE_BID_MULTI_ARCHIVE, str);
        }
        String str2 = this.mSaveArchiveUidMultiArchive;
        if (str2 != null) {
            bundle.putString(BaseVideoView.SAVE_ARCHIVE_UID_MULTI_ARCHIVE, str2);
        }
        bundle.putBoolean(BaseVideoView.DISABLE_AUTO_STREAM, this.mDisableAutoStream);
        bundle.putString("gid", this.mGid);
        bundle.putInt(BaseVideoView.STREAMING_MODE, this.mStreamingMode);
        bundle.putLong(BaseVideoView.C_TOKEN_TIME_STAMP, this.tokenTimeStampModel.getTokenTimeStamp());
        this.mRequestManager.setHighBitrateEnable(this.enableHighBitrate);
        specialPlayRequest(bundle);
        if (this.isChangeStreamType) {
            bundle.putBoolean(Constants.RTC_IS_CHANGE_STREAM_TYPE, true);
        }
        Boolean bool4 = this.keepLoginStatus;
        if (bool4 != null) {
            bundle.putBoolean(BaseVideoView.KEEP_LOGIN_STATUS, bool4.booleanValue());
        }
        String str3 = CountlyUtil.mResolutionID;
        this.currenteResolutionID = str3;
        this.mRequestManager.setResolutionID(str3);
        this.mRequestManager.setUserInfo(this.mUserInfo);
        this.mRequestManager.setExtraData(this.mExtraData);
        this.mRequestManager.setConfigInfo(this.mConfigInfo);
        this.mRequestManager.requestData(bundle);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void queryCloudFile(QueryCallback queryCallback) {
        this.mDownloadTaskProxy.setWebSocketManager(this.mWebSocketManager);
        this.mDownloadTaskProxy.queryFiles(queryCallback);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void queryControlUsers(OnContronListener onContronListener) {
        LogUtils.i(TAG, "queryControlUsers() " + this.mRequestManager + ";" + getCid());
        if (this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.queryX86ControlInfo(HmcpManager.getInstance().getCloudId(), onContronListener);
    }

    protected boolean queryScene(long j10) {
        if (j10 < 0) {
            return false;
        }
        boolean z10 = (this.scene & j10) == j10;
        LogUtils.d(TAG, "handle scene->: query : " + j10 + ", result: " + z10 + ", scene: " + this.scene);
        return z10;
    }

    protected void quitManager() {
        LogUtils.i(TAG, "====quitManager======");
        CacheUtil.removeByTag(String.format(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_CACHE, WebSocketManager.WebSocketType.TYPE_ACCESS, 5));
        if (this.mRequestManager != null) {
            LogUtils.i(TAG, "====quitHmcpRequestManager==");
            this.mRequestManager.stopCloudService();
            this.mRequestManager.clearNetText();
        }
        if (this.mMessageManager != null) {
            LogUtils.i(TAG, "====quitMessageManager==");
            this.mMessageManager.stopRetrySendMessage();
            this.mMessageManager = null;
        }
        if (this.mWsMessageManager != null) {
            LogUtils.i(TAG, "====quitWsMessageManager==");
            this.mWsMessageManager.stopRetrySendWsMessage();
            this.mWsMessageManager = null;
        }
        if (this.mWebSocketManager != null) {
            LogUtils.i(TAG, "====quitWebSocketManager==");
            this.mWebSocketManager.cleanObserver();
            this.mWebSocketManager.disconnect();
            HMInput hMInput = this.mHMInput;
            if (hMInput != null) {
                hMInput.disConnect();
            }
            IWebSocket iWebSocket = this.mWebSocketManager;
            if (iWebSocket instanceof WebSocketManager) {
                ((WebSocketManager) iWebSocket).resetListeners();
            }
            if (getCloudPlayInfo() != null) {
                getCloudPlayInfo().setWebSocketManager(null);
            }
            this.mWebSocketManager = null;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.resetListeners();
            this.mRequestManager = null;
        }
    }

    protected void rePlay() {
        LogUtils.e(TAG, "==rePlay ====");
        this.mInQueued = false;
        removeScene(1L);
        if (isWaitStreamUrlPre()) {
            LogUtils.d(TAG, "rePlay cancel because pooled restart receive op4.5 but not receive op5");
            CountlyUtil.recordEvent("12200", "rePlay cancel because pooled restart receive op4.5 but not receive op5");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null && hmcpRequest.isGetCloudServiceRequestV2Requesting()) {
            LogUtils.d(TAG, "replay cancel because last 211 not response");
            return;
        }
        if (getCurrentNetType() < 0) {
            callbackHmcpError(new ErrorInfo().put("errorCode", Constants.ERRORCODE_OTHER_011).put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_net_error)), 6);
            CountlyUtil.recordEvent(Constants.COUNTYLY_NO_NET_WORK, Constants.ERRORCODE_OTHER_011 + ",rePlay");
            return;
        }
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null && hmVirtualTextureView.getVisibility() == 0) {
            this.mVirtualDeviceLayout.exit();
        }
        if (TextUtils.isEmpty(this.mAppName) && TextUtils.isEmpty(this.mGid)) {
            LogUtils.e(TAG, "==rePlay mAppName==null && mGid =null ==");
            return;
        }
        if (checkDataReportIsDisable()) {
            LogUtils.e(TAG, "==rePlay checkDataReportIsDisable");
            return;
        }
        if (checkSdkNotInit()) {
            LogUtils.e(TAG, "==rePlay checkSdkNotInit");
            return;
        }
        if (this.mWebSocketManager != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("==rePlay mWebSocketManager====");
            sb2.append(this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS));
            sb2.append(":");
            HMInput hMInput = this.mHMInput;
            sb2.append(hMInput == null ? "false" : Boolean.valueOf(hMInput.isConnected()));
            sb2.append(":");
            sb2.append(this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER));
            LogUtils.e(TAG, sb2.toString());
            resetState();
            this.mPlayerState = 0;
            this.isNeedShowSwitchSuccess = false;
            disconnectSocketIo(true, true, true);
            IStreamModel iStreamModel = this.streamModel;
            if (iStreamModel != null) {
                iStreamModel.replay();
            }
            if (this.mRequestManager != null) {
                if (!this.isGetControl) {
                    reCloudServiceRequestV2();
                    return;
                }
                this.mWebSocketManager.disconnect2Access();
                this.mRequestManager.getCloudService(0, 1, false);
                this.mRequestManager.connect2Access(1, false);
            }
        }
    }

    protected void rePreparation() {
        cleanTimer();
        this.streamModel.stopPlay(true, false);
        disconnectSocketIo(true, true, true);
        this.curConnectState = 0;
        this.curCloudServiceState = 2;
    }

    protected void reconnectAccess(String str) {
        LogUtils.e(TAG, "===reconnectAccess ====");
        if (!DnsManager.mIsIpv4FirstUse || DnsManager.mIsUsedIpv6) {
            LogUtils.e(TAG, "===reconnectAccess after2s====");
            startTimer(2000L, 2000L, 1, str);
        } else {
            LogUtils.e(TAG, "===reconnectAccess immediately====");
            DnsManager.mIsIpv4FirstUse = false;
            CountlyUtil.recordErrorEventRaw("access ipv6 fail,IVP4 first reconnect,no delay");
            beginReconnect();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void reconnection() {
        recordLifeCycleEvent("reconnection");
        LogUtils.e(TAG, "===reconnection ====" + this.curConnectState);
        setSupportLiving(-1);
        rePlay();
    }

    protected void recordLifeCycleEvent(String str) {
        CountlyUtil.recordEvent(Constants.COUNTLY_LIFE_CYCLE_EVENT, str + " ; " + currentStatusInfo());
    }

    public void recordSceneEvent(String str, String str2) {
        LogUtils.i(TAG, "recordSceneEvent " + str + str2);
        try {
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject(str2);
                if (TextUtils.equals(str, ResourceManager.getString(R.string.haima_hmcp_scene_crst))) {
                    this.mResolutionSwitchStartTime = System.currentTimeMillis();
                    this.mResolutionNow = getResolution(this.mResolutionList, jSONObject.getString("source"), null);
                    ResolutionInfo resolution = getResolution(this.mResolutionList, jSONObject.getString("des"), null);
                    int i10 = jSONObject.getInt(com.alipay.sdk.packet.d.f7195s);
                    this.mSceneMethod = i10;
                    ResolutionInfo resolutionInfo = this.mResolutionNow;
                    if (resolutionInfo != null && resolution != null) {
                        if (i10 == 1) {
                            CountlyUtil.recordEvent("12011", JsonUtil.toJsonString(new ReportChangeResolutionStart(resolutionInfo.f33828id, resolutionInfo.bitRate, resolution.f33828id, resolution.bitRate, this.mAutoSwitchDuration, this.mAutoSwitchFrozentime, this.mAutoSwitchDetectInterval, this.mDelayThresholdPercent)));
                        } else {
                            CountlyUtil.recordEvent(Constants.COUNTYLY_SWITCH_SCENE_MANUAL, JsonUtil.toJsonString(new ReportChangeResolutionInfo(resolutionInfo.f33828id, resolutionInfo.bitRate, resolution.f33828id, resolution.bitRate)));
                        }
                    }
                } else if (TextUtils.equals(str, ResourceManager.getString(R.string.haima_hmcp_scene_cred))) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i11 = jSONObject.getInt("result");
                    ResolutionInfo resolution2 = getResolution(this.mResolutionList, jSONObject.getString("cur_rate"), null);
                    ResolutionInfo resolutionInfo2 = this.mResolutionNow;
                    if (resolutionInfo2 != null && resolution2 != null) {
                        ReportChangeResolutionEnd reportChangeResolutionEnd = new ReportChangeResolutionEnd(resolutionInfo2.f33828id, resolutionInfo2.bitRate, resolution2.f33828id, resolution2.bitRate, WMConstants.TIMER_STAGE_NONE);
                        int i12 = this.mSceneMethod;
                        if (i12 == 1) {
                            if (i11 == 1) {
                                reportChangeResolutionEnd.interval = "" + (jCurrentTimeMillis - this.mResolutionSwitchStartTime);
                                CountlyUtil.recordEvent("12012", JsonUtil.toJsonString(reportChangeResolutionEnd));
                            } else if (i11 == 0) {
                                reportChangeResolutionEnd.interval = WMConstants.TIMER_STAGE_NONE;
                                CountlyUtil.recordEvent(Constants.COUNTYLY_SWITCH_SCENE_AUTO_FAIL, JsonUtil.toJsonString(reportChangeResolutionEnd));
                            }
                        } else if (i12 == 0) {
                            if (i11 == 1) {
                                reportChangeResolutionEnd.interval = "" + (jCurrentTimeMillis - this.mResolutionSwitchStartTime);
                                CountlyUtil.recordEvent(Constants.COUNTYLY_SWITCH_SCENE_MANUAL_SUCCESS, JsonUtil.toJsonString(reportChangeResolutionEnd));
                            } else if (i11 == 0) {
                                reportChangeResolutionEnd.interval = WMConstants.TIMER_STAGE_NONE;
                                CountlyUtil.recordEvent(Constants.COUNTYLY_SWITCH_SCENE_MANUAL_FAIL, JsonUtil.toJsonString(reportChangeResolutionEnd));
                            }
                        }
                    }
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("recordSceneEvent::JSONException=>" + Log.getStackTraceString(e10));
        }
    }

    @NonNull
    protected void recordStopGameError(String str, int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("eventDataVer", "1.0");
            jSONObject.put("version", "1.0");
            CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
            if (cloudPlayInfo2 != null) {
                jSONObject.put("statusCode", cloudPlayInfo2.reportStatusCode);
            }
            jSONObject.put("stopByApp", i10);
            jSONObject.put("errorCode", str);
            LogUtils.i(TAG, jSONObject.toString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME_ERROR, jSONObject.toString());
    }

    protected void refreshStoken(int i10, String str, boolean z10) {
        refreshStoken(i10, str, z10, true);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void refreshTransferToken(int i10, String str) {
        if (this.isBackground) {
            return;
        }
        if (!this.isNetworkOk) {
            LogUtils.d(TAG, "isNetworkOk=" + this.isNetworkOk + ",refreshTransferToken(), not refresh stoken");
            return;
        }
        LogUtils.d(TAG, "code:" + i10 + ",reason:" + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_TRANSFER_RECONNECT, JsonUtil.toJsonString(new ReportBaseError("" + i10, str + "," + (this.mTransferReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(this.mTransferReconnectCount)) : ""))));
        if (this.SASS_SERVER_MAINTENANCE || this.mPlayerState == 5 || this.curConnectState == 5) {
            return;
        }
        boolean zIsNeedRefreshStoken = isNeedRefreshStoken(2);
        LogUtils.d(TAG, "isNeedRefreshSToken:" + zIsNeedRefreshStoken);
        if (!zIsNeedRefreshStoken) {
            this.mTransferReconnectCount++;
            this.mHmcpHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34140b.lambda$refreshTransferToken$5();
                }
            }, 30L);
        } else {
            resetState();
            disconnectSocketIo(false, false, true);
            refreshStoken(0, "Transfer Socket connect lost", false);
            LogUtils.d(TAG, "refresh token");
        }
    }

    protected void registerReceiver() {
        if (this.networkReceiver == null) {
            LogUtils.i(TAG, "=====registerReceiver===========");
            CountlyUtil.recordEvent(Constants.COUNTLY_REGISTER_NETWORK_BROADCAST, "network broadcast register");
            this.networkReceiver = new HmNetworkBroadcastReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().getApplicationContext().registerReceiver(this.networkReceiver, intentFilter);
        }
        if (this.volumeChangeReceiver == null) {
            LogUtils.i(TAG, "=====registerReceiver===========");
            this.volumeChangeReceiver = new VolumeChangeReceiver();
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(VolumeUtils.VOLUME_CHANGED_ACTION);
            getContext().getApplicationContext().registerReceiver(this.volumeChangeReceiver, intentFilter2);
        }
    }

    protected void registerScreenMonitor() {
        HmScreenMonitorConfig hmScreenMonitorConfig = this.mScreenMonitorConfig;
        if (hmScreenMonitorConfig != null && !hmScreenMonitorConfig.isEnable()) {
            LogUtils.d(HmScreenMonitor.TAG, "Screen monitor can not register, cause disable");
            return;
        }
        if (this.mHmScreenMonitor == null) {
            this.mHmScreenMonitor = new HmScreenMonitor(getContext(), this.mWebSocketManager);
        }
        this.mHmScreenMonitor.setConfig(this.mScreenMonitorConfig);
        this.mHmScreenMonitor.setHmScreenOrientationListener(new HmScreenOrientationListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.48
            @Override // com.haima.hmcp.business.display.HmScreenOrientationListener
            public void onScreenOrientationChanged(int i10) {
                ScreenOrientation convertOrientation = AbsIjkVideoView.this.getConvertOrientation(i10);
                if (convertOrientation == null) {
                    return;
                }
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.mOrientation = convertOrientation;
                IStreamModel iStreamModel = absIjkVideoView.streamModel;
                if (iStreamModel == null) {
                    return;
                }
                iStreamModel.changeRenderRotation(convertOrientation == ScreenOrientation.PORTRAIT ? 90 : 0);
            }
        });
        this.mHmScreenMonitor.register();
        ScreenOrientation screenOrientationCorrectOrientation = correctOrientation(this.mOrientation, getConvertOrientation(DisplayUtil.getSystemDisplayRotation(this.mAppContext)));
        if (screenOrientationCorrectOrientation != null) {
            this.mOrientation = screenOrientationCorrectOrientation;
            IStreamModel iStreamModel = this.streamModel;
            if (iStreamModel != null) {
                iStreamModel.changeRenderRotation(screenOrientationCorrectOrientation == ScreenOrientation.PORTRAIT ? 90 : 0);
            }
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void relaunchGame(OnRelaunchGameListener onRelaunchGameListener) {
        recordLifeCycleEvent("relaunchGame");
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null || TextUtils.isEmpty(hmcpRequest.getCloudId())) {
            LogUtils.e(TAG, "relaunchGame(), mRequestManager is null or mRequestManager.getCloudId()=null");
        } else if (isPlaying()) {
            this.mRequestManager.relaunchGame(onRelaunchGameListener);
        } else {
            LogUtils.e(TAG, "relaunchGame failed! playState not playing");
        }
    }

    public void release(String str) {
        String strOptString;
        removeScene(1L);
        String strReplaceSpecialStr = StringUtils.replaceSpecialStr(Log.getStackTraceString(new Throwable()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("release(error) ");
        sb2.append(TextUtils.isEmpty(str) ? "error" : str);
        sb2.append("; ");
        sb2.append(strReplaceSpecialStr);
        CountlyUtil.recordErrorEvent(sb2.toString());
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.reset();
        }
        recordLifeCycleEvent("release: " + str);
        LogUtils.i(TAG, "==release===");
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME, "1 ; " + currentStatusInfo());
        String strOptString2 = "";
        if (JsonUtil.isJsonObject(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                strOptString = jSONObject.optString("errorCode", "");
                try {
                    strOptString2 = jSONObject.optString("from", "");
                } catch (JSONException e10) {
                    e = e10;
                    e.printStackTrace();
                }
            } catch (JSONException e11) {
                e = e11;
                strOptString = "";
            }
        } else {
            strOptString = "";
        }
        recordStopGameError(strOptString, TextUtils.equals("app", strOptString2) ? 1 : 0);
        cancelRefreshStokenTask();
        cleanTimer();
        unregisterReceiver();
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            downloadTaskProxy.setUrl(null);
            this.mDownloadTaskProxy.setCid(null);
            this.mDownloadTaskProxy.cancelDownload(null, null);
        }
        stopRomRecord();
        disconnectWebSocket();
        if (isSwitchIMETiming()) {
            cancelSwitchIMEAckTimer();
            IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
            iMESwitchCallbackResult.result = 0;
            iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
            iMESwitchCallbackResult.message = "release";
            iMESwitchCallbackResult.reportMessage = "release";
            switchIMECallback(iMESwitchCallbackResult);
        }
        Runnable runnable = this.mRequestAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.mRequestAliveTimer = null;
        }
        Runnable runnable2 = this.mStopAliveTimer;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
            this.mStopAliveTimer = null;
        }
        GetCloudImeTransaction getCloudImeTransaction = this.mGetCloudImeTransaction;
        if (getCloudImeTransaction != null) {
            getCloudImeTransaction.cancelGetCloudImeTypeTask("release");
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.stopCloudService();
        }
        resetState();
        unregisterScreenMonitor();
        SwitchControllerManager.getInstance().release();
        this.streamModel.release();
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor != null) {
            streamingMonitor.release();
        }
        if (this.mGamePlatformType == GamePlatformType.X86) {
            closePcMoueMode();
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.setIsShowMouse(false);
            }
            stopGyroscope();
        }
        HmNetworkBitmapLoader.getInstance().release();
    }

    public void releaseNotStop() {
        this.mPlayerState = 5;
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.reset();
        }
        cancelRefreshStokenTask();
        stopRomRecord();
        disconnectWebSocket();
        cleanTimer();
        resetState();
        this.streamModel.releaseNotStop();
    }

    protected void releaseScreenMonitor() {
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor != null) {
            hmScreenMonitor.setHmScreenOrientationListener(null);
            this.mHmScreenMonitor.release();
            this.mHmScreenMonitor = null;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void remoteCapture(RemoteCaptureParameters remoteCaptureParameters, RemoteCaptureListener remoteCaptureListener) {
        LogUtils.i(TAG, "remoteCapture()" + this.mRequestManager + "; " + getCid());
        if (this.mRequestManager == null || TextUtils.isEmpty(getCid())) {
            return;
        }
        this.mRequestManager.remoteCapture(remoteCaptureParameters, remoteCaptureListener);
    }

    protected void removeScene(long j10) {
        if (j10 >= 0 && queryScene(j10)) {
            this.scene = j10 ^ this.scene;
            LogUtils.d(TAG, "handle scene->: remove : " + this.scene);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void reportFinishInfo(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        CloudPlayInfo cloudPlayInfo2;
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put("finishCode", (Object) Integer.valueOf(i10));
        jSONObject.put("cid", (Object) str);
        jSONObject.put("pkgName", (Object) str2);
        jSONObject.put("appChannel", (Object) str3);
        jSONObject.put("appVersion", (Object) str4);
        jSONObject.put("imei", (Object) str5);
        jSONObject.put("deviceId", (Object) StringUtils.encodeToBase64String(str6));
        jSONObject.put("gameId", (Object) str7);
        if (i10 != 0 && (cloudPlayInfo2 = cloudPlayInfo) != null) {
            jSONObject.put("statusCode", (Object) cloudPlayInfo2.toStatusCode());
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_APP_CLOUD_GAME_FINISH, jSONObject.toJSONString());
    }

    @Override // org.webrtc.haima.listeners.HmPermissionHandler
    public boolean request(String str, HmPermissionCallback hmPermissionCallback) {
        if (hmPermissionCallback == null) {
            LogUtils.e(TAG, "HmPermissionCallback is null");
            return false;
        }
        synchronized (this.mPermissionCBs) {
            if (this.mPermissionCBs.get(str) == null) {
                this.mPermissionCBs.put(str, hmPermissionCallback);
                LogUtils.d(TAG, "need permission: " + str);
                this.mListener.onPermissionNotGranted(str);
            } else {
                LogUtils.e(TAG, "Duplicate permission request, did u write some bugs?");
                LogUtils.e(TAG, "Duplicate permission request, yes, u did write a bug and I fixed.");
                this.mPermissionCBs.remove(str);
                this.mPermissionCBs.put(str, hmPermissionCallback);
                if (this.mCameraConfig.allowPermissionCheck()) {
                    LogUtils.d(TAG, "need permission: " + str);
                    this.mListener.onPermissionNotGranted(str);
                }
            }
        }
        return true;
    }

    protected void requestIMEList() {
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null && iWebSocket.isConnect(webSocketType)) {
            LogUtils.d(HmIMEManager.TAG, "request IME list");
            this.mWebSocketManager.sendTextMessage(webSocketType, new IMEListMessage().toString());
        } else {
            LogUtils.d(HmIMEManager.TAG, "request IME list fail, cause ws server is not active");
            CountlyUtil.recordErrorEvent("request IME list fail, cause ws server is not active");
            this.mIMEConfig.setIMEList(null);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void requestKeepAlive(long j10, final OnRequestAliveListener onRequestAliveListener) {
        if (onRequestAliveListener == null) {
            return;
        }
        setRequestAliveListener(onRequestAliveListener);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            onRequestAliveListener.onRequestAliveResult(false, "RequestManager null cannot startKeepAlive");
            return;
        }
        String cloudId = hmcpRequest.getCloudId();
        if (TextUtils.isEmpty(cloudId)) {
            onRequestAliveListener.onRequestAliveResult(false, "Cannot getCloudId for startKeepAlive");
            return;
        }
        Runnable runnable = this.mRequestAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.haima.hmcp.widgets.o
            @Override // java.lang.Runnable
            public final void run() {
                AbsIjkVideoView.lambda$requestKeepAlive$9(onRequestAliveListener);
            }
        };
        this.mRequestAliveTimer = runnable2;
        postDelayed(runnable2, 5000L);
        this.mRequestManager.requestStartForceKeepAlive(cloudId, j10, new OnForceKeepAliveListener() { // from class: com.haima.hmcp.widgets.p
            @Override // com.haima.hmcp.listeners.OnForceKeepAliveListener
            public final void onKeepAlive(boolean z10, String str) {
                this.f34146a.lambda$requestKeepAlive$10(onRequestAliveListener, z10, str);
            }
        });
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void requestKeyFrame() {
        this.streamModel.requestKeyFrame();
    }

    public void requestPermission(String str) {
        if (this.mListener == null) {
            LogUtils.e(TAG, "playerListener is empty");
            CountlyUtil.recordEvent("12200", "playerListener is empty");
            return;
        }
        CountlyUtil.recordEvent(Constants.Countly.REQUEST_PERMISSION, str);
        if (!this.mPermissionQueue.isEmpty()) {
            if (this.mPermissionQueue.contains(str)) {
                LogUtils.e(TAG, "contains permission already");
                return;
            } else {
                this.mPermissionQueue.add(str);
                return;
            }
        }
        LogUtils.d(TAG, "need permission: " + str);
        this.mListener.onPermissionNotGranted(str);
        this.mPermissionQueue.add(str);
    }

    protected void requestPrepare() {
        if (this.mWebSocketManager == null) {
            WebSocketManager webSocketManager = new WebSocketManager(getContext());
            this.mWebSocketManager = webSocketManager;
            webSocketManager.addObserver(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, this.mCloudFileManager);
        }
        if (this.mRequestManager == null) {
            HmcpRequest hmcpRequest = HmcpRequest.getInstance(getContext());
            this.mRequestManager = hmcpRequest;
            hmcpRequest.setHmcpSaasRequestListener(this);
            this.mRequestManager.setWebSocketManager(this.mWebSocketManager);
        }
        this.mRequestManager.initConfigInfo();
        this.mRequestManager.setHmcpPlayerListener(this.mListener);
        if (this.mMessageManager == null) {
            this.mMessageManager = new MessageManager(getContext(), this.mWebSocketManager);
        }
        ((MessageManager) this.mMessageManager).setHmcpPlayerListener(this.mListener);
        if (this.mWsMessageManager == null) {
            this.mWsMessageManager = new WsMessageManager(getContext(), this.mWebSocketManager);
        }
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 == null) {
            LogUtils.d(TAG, "cloudPlayInfo == null, can't set cloudPlayInfo.setWebSocketManager(mWebSocketManager)");
        } else {
            cloudPlayInfo2.setWebSocketManager((WebSocketManager) this.mWebSocketManager);
            cloudPlayInfo.setHMInput(this.mHMInput);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean requestRemoteImageList(int i10, int i11, OnCloudImageListListener onCloudImageListListener) throws Throwable {
        ?? IsConnect;
        JSONObject jSONObject;
        String string;
        this.mCloudImageListListener = onCloudImageListListener;
        this.isRequestImageListTimeout = false;
        startRequestImageListTimer();
        CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_IMAGE_LIST_REQUEST);
        IWebSocket webSocket = getWebSocket();
        if (webSocket == null || (IsConnect = webSocket.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER)) == 0) {
            LogUtils.e(TAG, "cloud-file: requestRemoteImageList: screen web-socket is not active");
            CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_IMAGE_LIST_RESPONSE, "request image list screen web-socket is not active");
            LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + "request image list screen web-socket is not active");
            OnCloudImageListListener onCloudImageListListener2 = this.mCloudImageListListener;
            if (onCloudImageListListener2 != null) {
                onCloudImageListListener2.onError("request image list screen web-socket is not active");
            }
            return false;
        }
        ?? r10 = 0;
        try {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("type", "image_list");
                    jSONObject.put("limit", i10);
                    jSONObject.put("offset", i11);
                    string = jSONObject.toString();
                    IsConnect = jSONObject;
                } catch (JSONException e10) {
                    e = e10;
                    e.printStackTrace();
                    string = jSONObject != null ? jSONObject.toString() : null;
                    IsConnect = jSONObject;
                }
            } catch (Throwable th) {
                th = th;
                r10 = IsConnect;
                if (r10 != 0) {
                    r10.toString();
                }
                throw th;
            }
        } catch (JSONException e11) {
            e = e11;
            jSONObject = null;
        } catch (Throwable th2) {
            th = th2;
            if (r10 != 0) {
                r10.toString();
            }
            throw th;
        }
        LogUtils.d(TAG, "cloud-file: requestRemoteImageList order: " + string);
        webSocket.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, string);
        return true;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void requestStopKeepAlive(final OnRequestAliveListener onRequestAliveListener) {
        if (onRequestAliveListener == null) {
            return;
        }
        setRequestAliveListener(onRequestAliveListener);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            onRequestAliveListener.onStopAliveResult(false, "RequestManager null cannot stopKeepAlive");
            return;
        }
        String cloudId = hmcpRequest.getCloudId();
        if (TextUtils.isEmpty(cloudId)) {
            onRequestAliveListener.onStopAliveResult(false, "Cannot getCloudId for stopKeepAlive");
            return;
        }
        Runnable runnable = this.mStopAliveTimer;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.haima.hmcp.widgets.h
            @Override // java.lang.Runnable
            public final void run() {
                AbsIjkVideoView.lambda$requestStopKeepAlive$11(onRequestAliveListener);
            }
        };
        this.mStopAliveTimer = runnable2;
        postDelayed(runnable2, 5000L);
        HmcpRequest.getInstance(getContext()).requestStopForceKeepAlive(cloudId, new OnForceKeepAliveListener() { // from class: com.haima.hmcp.widgets.i
            @Override // com.haima.hmcp.listeners.OnForceKeepAliveListener
            public final void onKeepAlive(boolean z10, String str) {
                this.f34133a.lambda$requestStopKeepAlive$12(onRequestAliveListener, z10, str);
            }
        });
    }

    protected void resetGetContron() {
        this.isGetControl = false;
        this.isExchangeControl = false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int resetInputTimer(boolean z10) {
        LogUtils.i(TAG, "====resetInputTimer=====" + z10);
        if (checkDataReportIsDisable() || checkSdkNotInit()) {
            return 0;
        }
        if (this.mGamePlatformType != GamePlatformType.X86) {
            if (z10) {
                this.mLastOperationTimestamp = System.currentTimeMillis();
            }
            return sendToInstanceMsg(Constants.RESET_INPUT_TIMER) ? 1 : 0;
        }
        boolean zSendEvent = sendEvent(ProtoBufUtil.getResetInputTimerData(1));
        if (z10 && zSendEvent) {
            this.mLastOperationTimestamp = System.currentTimeMillis();
        }
        return zSendEvent ? 1 : 0;
    }

    protected void resetState() {
        LogUtils.i(TAG, "==resetState===");
        this.curCloudServiceState = 0;
        CloudStateSend(0);
        if (this.curConnectState != 5) {
            this.curConnectState = 0;
        }
    }

    public void resolutionCheck() {
        ScreenInfo screenInfo;
        if (!Constants.CONFIG_IS_ADAPT_FOLD_SCREEN) {
            LogUtils.i(TAG, "fold screen: is_adapt_fold_screen switch is off");
            CountlyUtil.recordErrorEvent("is_adapt_fold_screen switch is off");
            return;
        }
        LogUtils.i(TAG, "fold screen: resolutionCheck call");
        int i10 = this.mViewResolutionWidth;
        int i11 = this.mChangedViewResolutionWidth;
        if (i10 == i11 && this.mViewResolutionHeight == this.mChangedViewResolutionHeight) {
            return;
        }
        this.mViewResolutionWidth = i11;
        this.mViewResolutionHeight = this.mChangedViewResolutionHeight;
        setScreenWidth(i11);
        setScreenHeight(this.mViewResolutionHeight);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            DeviceInfo deviceInfo = hmcpRequest.getDeviceInfo();
            if (deviceInfo != null && (screenInfo = deviceInfo.screenInfo) != null) {
                if (this.mViewResolutionWidth > this.mViewResolutionHeight) {
                    screenInfo.resolution = this.mViewResolutionWidth + "x" + this.mViewResolutionHeight;
                } else {
                    screenInfo.resolution = this.mViewResolutionHeight + "x" + this.mViewResolutionWidth;
                }
                this.mRequestManager.setDeviceInfo(deviceInfo);
            }
            LogUtils.i(TAG, "fold screen: onSwitchResolution call");
            resetState();
            this.mRequestManager.getCloudService(0, 2, true);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void restartGame(int i10) {
        recordLifeCycleEvent("restartGame");
        this.curConnectState = 0;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setmPlayTime(i10);
        }
        if (this.mPlayerState <= 3 || queryScene(1L)) {
            rePlay();
        }
        if (!this.isAudioMute) {
            turnOnSound();
        }
        if (!this.hasWakeLockPermission) {
            CountlyUtil.recordErrorEvent("process no wake_lock permission");
            LogUtils.e(TAG, "process no wake_lock permission");
            return;
        }
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.mWakeLock.acquire();
    }

    protected void saveAndResetCidCacheData(long j10) {
        if (j10 != DataUtils.getSharedInstance(getContext()).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL)) {
            CountDownUtil.cancel(CountDownUtil.CID_CACHE_TIMER, getContext());
            DataUtils.getSharedInstance(getContext()).putPreferences(DataUtils.CID_CACHE_EXPIRE_TIME, 0L);
        }
        DataUtils.getSharedInstance(getContext()).putPreferences(DataUtils.CID_CACHE_INTERVAL, j10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void searchCloudFile(SearchCallback searchCallback) {
        String cloudId = this.mHmcpManager.getCloudId();
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_SEARCH);
        this.mDownloadTaskProxy.scanFile(cloudId, searchCallback);
    }

    public boolean sendARMDCEventByDataType(byte[] bArr, boolean z10) {
        LogUtils.d(TAG, "sendARMDCEventByDataType isDiscardable:" + z10);
        return z10 ? this.streamModel.sendEventByDataType(4, bArr) : this.streamModel.sendEventByDataType(3, bArr);
    }

    protected void sendAccessMSG(String str, String str2, String str3, MessageType messageType, OnSendMessageListener onSendMessageListener) {
        LogUtils.d(TAG, "mMessageType:" + this.mMessageType + ",mIsNotifyConnected:" + this.mIsNotifyConnected);
        MessageType messageType2 = MessageType.TRANSFER;
        this.mMessageManager.sendMessage(str, str2, str3, (messageType2 == this.mMessageType && MessageType.PAY_TYPE == messageType) ? messageType2 : messageType, onSendMessageListener);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendAudioData(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        RecordHelper.RecordState state = RecordHelper.getsInstance().getState();
        if (state != RecordHelper.RecordState.IDLE && state != RecordHelper.RecordState.STOP && state != RecordHelper.RecordState.ERROR) {
            sendWsMessageRecord(bArr);
            return;
        }
        LogUtils.d(TAG, "Audio-Record: send audio data failed: Record state is " + state);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendCustomKeycode(HMInputOpData hMInputOpData) {
        ArrayList<HMInputOpData.HMOneInputOPData> arrayList;
        boolean zIsBlockKeyEvent;
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        if (!isAllowInput()) {
            LogUtils.i(TAG, "not allow handle custom key code event");
            return false;
        }
        if (this.streamModel == null) {
            LogUtils.e(TAG, "streamModel is null");
            return false;
        }
        if (hMInputOpData == null || (arrayList = hMInputOpData.opListArray) == null || arrayList.size() == 0) {
            LogUtils.e(TAG, "sendCustomKeycode error: param is null");
            return false;
        }
        Iterator<HMInputOpData.HMOneInputOPData> it2 = hMInputOpData.opListArray.iterator();
        while (it2.hasNext()) {
            HMInputOpData.HMOneInputOPData next = it2.next();
            HMInputOpData.HMOneInputOPData_InputOP hMOneInputOPData_InputOP = next.inputOp;
            if (hMOneInputOPData_InputOP == null) {
                LogUtils.w(TAG, "sendCustomKeycode: inputOp is null, skip this operation");
                it2.remove();
            } else {
                int value = hMOneInputOPData_InputOP.getValue();
                HMInputOpData.HMOneInputOPData_InputState hMOneInputOPData_InputState = next.inputState;
                if (hMOneInputOPData_InputState != null) {
                    int sate = hMOneInputOPData_InputState.getSate();
                    if (sate == HMInputOpData.HMOneInputOPData_InputState.HMOneInputOPData_InputState_OpStateDown.getSate()) {
                        zIsBlockKeyEvent = X86KeyBlocker.getInstance().isBlockKeyEvent(0, value);
                    } else {
                        zIsBlockKeyEvent = sate == HMInputOpData.HMOneInputOPData_InputState.HMOneInputOPData_InputState_OpStateUp.getSate() ? X86KeyBlocker.getInstance().isBlockKeyEvent(1, value) : false;
                    }
                    if (zIsBlockKeyEvent) {
                        LogUtils.d(TAG, "sendCustomKeycode: 按键被拦截，从列表中移除，keyCode: " + value + ", state: " + sate);
                        it2.remove();
                    }
                }
            }
        }
        this.mTouchUtil.wrapCustomInputOPData(hMInputOpData.opListArray);
        byte[] customInputOPData = ProtoBufUtil.getCustomInputOPData(hMInputOpData.opListArray);
        if (customInputOPData != null) {
            return sendEvent(customInputOPData);
        }
        LogUtils.e(TAG, "sendCustomKeycode error: content is null");
        return false;
    }

    public boolean sendEvent(byte[] bArr) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        LogUtils.d(TAG, "internalUploadX86->sendEvent");
        int iSendLargeData = this.streamModel.sendLargeData(bArr, null);
        LogUtils.d(TAG, "internalUploadX86->sendEvent: " + iSendLargeData);
        return iSendLargeData == 0;
    }

    public boolean sendEventByDataType(byte[] bArr, boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        return z10 ? this.streamModel.sendEventByDataType(2, bArr) : this.streamModel.sendEventByDataType(1, bArr);
    }

    public boolean sendGamePadDataMappingKey(String str, InputEvent inputEvent, int i10) {
        if (TextUtils.isEmpty(str) || inputEvent == null) {
            return false;
        }
        String mappingVendorId = getMappingVendorId();
        this.mMappingJoyBean = HmInputDeviceManager.parseJoyKey(str, inputEvent, i10);
        LogUtils.d(TAG, "sendGamePadDataMapping joyValue=" + this.mMappingJoyBean.toString() + ";" + this.mMappingJoyBean.getBtnValue());
        JoyStickBean joyStickBean = this.mMappingJoyBean;
        int i11 = joyStickBean.L2 ? 255 : 0;
        int i12 = joyStickBean.R2 ? 255 : 0;
        sendEvent(ProtoBufUtil.getGamePadLTData(this.mJoyStickL2Value | i11, mappingVendorId, 0));
        sendEvent(ProtoBufUtil.getGamePadRTData(this.mJoyStickR2Value | i12, mappingVendorId, 0));
        LogUtils.d(TAG, "sendGamePadDataMapping getBtnValue=" + this.mMappingJoyBean.getBtnValue() + "; mJoyStickValue=" + this.mJoyStickValue);
        sendEvent(ProtoBufUtil.getGamePadData(this.mMappingJoyBean.getBtnValue() | this.mJoyStickValue, mappingVendorId, 0));
        JoyStickBean joyStickBean2 = this.mMappingJoyBean;
        sendEvent(ProtoBufUtil.getGamePadStickData(new Point((int) (joyStickBean2.L_X * 32767.0f), (int) (joyStickBean2.L_Y * 32767.0f)), mappingVendorId, 0));
        JoyStickBean joyStickBean3 = this.mMappingJoyBean;
        sendEvent(ProtoBufUtil.getGamepadThumbRData(new Point((int) (joyStickBean3.R_X * 32767.0f), (int) (joyStickBean3.R_Y * 32767.0f)), mappingVendorId, 0));
        return true;
    }

    public boolean sendGamePadDataMappingMotion(InputEvent inputEvent, float f10, float f11, int i10, boolean z10) {
        String mappingVendorId = z10 ? getMappingVendorId() : Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT;
        JoyStickBean mappingMotion = HmInputDeviceManager.parseMappingMotion(inputEvent, f10, f11, i10);
        LogUtils.d(TAG, "sendGamePadDataMapping joyValue=" + mappingMotion.toString() + ";" + mappingMotion.getBtnValue());
        if (i10 == 2) {
            sendEvent(ProtoBufUtil.getGamePadStickData(new Point((int) (mappingMotion.L_X * 32767.0f), (int) (mappingMotion.L_Y * 32767.0f)), mappingVendorId, 0));
        }
        if (i10 != 3) {
            return true;
        }
        sendEvent(ProtoBufUtil.getGamepadThumbRData(new Point((int) (mappingMotion.R_X * 32767.0f), (int) (mappingMotion.R_Y * 32767.0f)), mappingVendorId, 0));
        return true;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13) {
        this.eventModel.sendGamepadKeyEvent(i10, i11, f10, f11, f12, f13);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendInputOp(ArrayList<HmInputOp> arrayList, HmInputOpListener hmInputOpListener) {
        this.inputOpModel.sendInputOp(arrayList, hmInputOpListener);
    }

    public void sendInputOpMotionEvent(int i10, FPoint fPoint) {
        String sendMotionEventContent = MotionEventUtil.getSendMotionEventContent(i10, fPoint);
        LogUtils.i(TAG, "sendInputOpMotionEvent, eventContent = " + sendMotionEventContent);
        sendToInstanceMsg(sendMotionEventContent);
    }

    public boolean sendKeyCodeDown(GSSDK.OneInputOPData.InputOP inputOP) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        if (inputOP == null) {
            LogUtils.e(TAG, "sendKeyCodeDown error: param is null");
            return false;
        }
        if (this.streamModel == null) {
            LogUtils.e(TAG, "streamModel is null");
            return false;
        }
        if (X86KeyBlocker.getInstance().isBlockKeyEvent(0, inputOP.getNumber())) {
            LogUtils.i(TAG, "sendKeyCodeDown block: " + inputOP.getNumber());
            return false;
        }
        LogUtils.d(TAG, "sendKeyCodeDown: " + inputOP.getNumber());
        boolean zSendEvent = sendEvent(ProtoBufUtil.sendKeyboard(inputOP, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN));
        LogUtils.d(TAG, "DataChannel sendUpKeyEventResult:" + zSendEvent);
        return zSendEvent;
    }

    public boolean sendKeyCodeUp(GSSDK.OneInputOPData.InputOP inputOP) {
        if (inputOP == null) {
            LogUtils.e(TAG, "sendKeyCodeUp error: param is null");
            return false;
        }
        if (this.streamModel == null) {
            LogUtils.e(TAG, "RtcAdapter is null");
            return false;
        }
        if (X86KeyBlocker.getInstance().isBlockKeyEvent(1, inputOP.getNumber())) {
            LogUtils.i(TAG, "sendKeyCodeUp block: " + inputOP.getNumber());
            return false;
        }
        LogUtils.d(TAG, "sendKeyCodeUp: " + inputOP.getNumber());
        boolean zSendEvent = sendEvent(ProtoBufUtil.sendKeyboard(inputOP, GSSDK.OneInputOPData.InputState.OP_STATE_UP));
        LogUtils.d(TAG, "DataChannel sendUpKeyEventResult:" + zSendEvent);
        return zSendEvent;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendKeyEvent(KeyType keyType) {
        if (AnonymousClass54.$SwitchMap$com$haima$hmcp$device$input$enums$KeyType[keyType.ordinal()] != 1) {
            return;
        }
        int iAndroidKeyCode2PASSKey = KeyMapUtil.androidKeyCode2PASSKey(4);
        sendKeyboardEvent("keyDown", iAndroidKeyCode2PASSKey);
        sendKeyboardEvent("keyUp", iAndroidKeyCode2PASSKey);
    }

    public boolean sendKeyLockStatus(GSSDK.OneInputOPData.InputOP inputOP, boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return false;
        }
        if (inputOP == null) {
            LogUtils.e(TAG, "sendKeyLockStatus error: param is null");
            return false;
        }
        LogUtils.d(TAG, "sendKeyLockStatus: " + inputOP.getNumber() + " " + z10);
        boolean zSendEvent = sendEvent(ProtoBufUtil.sendKeyboard(inputOP, z10 ? GSSDK.OneInputOPData.InputState.OP_VK_TOGGLED : GSSDK.OneInputOPData.InputState.OP_VK_UNTOGGLED));
        LogUtils.d(TAG, "DataChannel sendKeyLockStatusResult:" + inputOP.getNumber() + " " + zSendEvent);
        return zSendEvent;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendKeyboardEvent(String str, int i10) {
        String sendKeyboardEventContent = MotionEventUtil.getSendKeyboardEventContent(str, i10);
        LogUtils.d(TAG, "sendKeyboardEvent: " + sendKeyboardEventContent);
        sendToInstanceMsg(sendKeyboardEventContent);
    }

    protected void sendKeyboardHeightPercent(String str) {
        LogUtils.d(TAG, "sendKeyboardHeightPercent---" + str);
        sendToInstanceMsg(str);
    }

    public int sendLargeData(byte[] bArr, HaimaDataChannel.Listener listener) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return -1;
        }
        LogUtils.d(TAG, "internalUploadX86->sendEvent");
        return this.streamModel.sendLargeData(bArr, listener);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendMessage(final String str, final MessageType messageType, final OnSendMessageListener onSendMessageListener) {
        IWebSocket iWebSocket;
        LogUtils.i(TAG, "====sendMessage=====mGamePlatformType:" + this.mGamePlatformType);
        HmcpRequest hmcpRequest = this.mRequestManager;
        String cloudId = hmcpRequest != null ? hmcpRequest.getCloudId() : "";
        if (this.mGamePlatformType == GamePlatformType.X86) {
            UserInfo userInfo = this.mUserInfo;
            boolean zSendEvent = sendEvent(ProtoBufUtil.getPrivateData(cloudId, userInfo == null ? "" : userInfo.userId, str));
            if (onSendMessageListener != null) {
                onSendMessageListener.result(zSendEvent, "");
            }
            return zSendEvent;
        }
        boolean z10 = (this.mMessageManager == null || (iWebSocket = this.mWebSocketManager) == null || !iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS)) ? false : true;
        if (MessageType.TYPE_VIRTUAL_GAME_PAD == messageType) {
            CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_SEND_MESSAGE, JsonUtil.toJsonString(new ReportEventDataVer()));
            if (!"1".equals(ConfigureManager.getInstance().getSupportPullUpWXPayForVirtualGamePad())) {
                LogUtils.e(TAG, "virtual game pad message unsupported");
                this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbsIjkVideoView.lambda$sendMessage$3(onSendMessageListener);
                    }
                });
                CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_UNSUPPORTED, JsonUtil.toJsonString(new ReportBaseError("", "virtual game pad message unsupported")));
                return z10;
            }
        }
        if (z10) {
            sendAccessMSG(str, cloudId, this.mUid, messageType, onSendMessageListener);
        } else {
            CountlyUtil.recordErrorEvent("sendMessage() mMessageManager == null; " + currentStatusInfo() + Log.getStackTraceString(new Throwable()));
            this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.widgets.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34117b.lambda$sendMessage$4(onSendMessageListener, messageType, str);
                }
            });
        }
        return z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendMotionEvent(int i10, FPoint fPoint) {
        sendMotionEvent(i10, 0, fPoint);
    }

    public boolean sendMouse(int i10, int i11, int i12, int i13, GSSDK.OneInputOPData.PositionMode positionMode, GSSDK.OneInputOPData.InputOP inputOP, GSSDK.OneInputOPData.InputState inputState, boolean z10) {
        if (this.streamModel == null) {
            LogUtils.e(TAG, "RtcAdapter is null");
            return false;
        }
        LogUtils.d(TAG, "sendMouse mouseX:" + i10 + ",mouseY:" + i11 + ",cursorX:" + i12 + ",cursorY:" + i13 + ",positionMode:" + positionMode + ";inputOP=" + inputOP.getNumber() + ";inputState=" + inputState);
        byte[] sendMouseData = ProtoBufUtil.getSendMouseData(i10, i11, i12, i13, positionMode, inputOP, inputState);
        boolean zSendEventByDataType = sendEventByDataType(sendMouseData, z10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendMouse sendDataResult:");
        sb2.append(zSendEventByDataType);
        sb2.append(";data=");
        sb2.append(Arrays.toString(sendMouseData));
        LogUtils.d(TAG, sb2.toString());
        return zSendEventByDataType;
    }

    public void sendSceneChangedMessage(String str, String str2) {
        recordSceneEvent(str, str2);
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_id), (Object) str);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_extra_info), (Object) str2);
        HmcpUIListener hmcpUIListener = this.uiListener;
        if (hmcpUIListener != null) {
            hmcpUIListener.onSceneChanged(jSONObject.toJSONString());
        }
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onSceneChanged(jSONObject.toJSONString());
        }
    }

    protected void sendSceneCredError() {
        ResolutionInfo resolutionInfo = this.mCurResolution;
        String str = resolutionInfo != null ? resolutionInfo.peakBitRate : "";
        ResolutionInfo resolutionInfo2 = this.mSetResolution;
        String str2 = resolutionInfo2 != null ? resolutionInfo2.f33828id : "";
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_result), (Object) 0);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_id), (Object) str2);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) str);
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_cred), jSONObject.toJSONString());
    }

    protected void sendSceneGameRestart() {
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_game_restart), "");
    }

    protected void sendSceneMaitMessage(String str) {
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_progress), (Object) str);
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_mait), jSONObject.toJSONString());
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendSceneStopMessage(long j10, String str) {
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_interval), (Object) Long.valueOf(j10));
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_reason), (Object) str);
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_stop), jSONObject.toJSONString());
    }

    protected void sendSceneTimeoutMessage(long j10) {
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_interval), (Object) Long.valueOf(j10));
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_timeout), jSONObject.toJSONString());
    }

    @Override // com.haima.hmcp.device.input.listener.DeviceInputListener
    public void sendSceneUSBMouseMessage(float f10, int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_sensitivity), f10);
            jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_operation_mode), i10);
            sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_usb_mouse_change), jSONObject.toString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    protected void sendScreenBrightness() {
        float f10 = Constants.SCREEN_BRIGHTNESS;
        if (f10 <= 0.0f || f10 > 1.0f) {
            return;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 8;
        messageObtain.obj = Float.valueOf(Constants.SCREEN_BRIGHTNESS);
        this.mHmcpHandler.sendMessage(messageObtain);
    }

    protected void sendScreenOrientation() {
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
            return;
        }
        this.mHmScreenMonitor.sendScreenOrientation();
    }

    public void sendSysNotify(String str) {
        LogUtils.d(TAG, "status:" + str + ",mIsNotifyConnected:" + this.mIsNotifyConnected + ",mIsNotifyDisConnected:" + this.mIsNotifyDisConnected);
        if (ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(str)) {
            if (this.mIsNotifyConnected) {
                return;
            }
            this.mIsNotifyConnected = true;
            this.mIsNotifyDisConnected = false;
            this.mReportSysNotifyStatus.setCli(this.mCli);
            CountlyUtil.recordEvent(Constants.COUNTYLY_SYS_NOTIFY_CONNECTED, JsonUtil.toJsonString(this.mReportSysNotifyStatus));
            return;
        }
        if (!"disconnected".equals(str) || this.mIsNotifyDisConnected) {
            return;
        }
        this.mIsNotifyDisConnected = true;
        this.mIsNotifyConnected = false;
        this.mReportSysNotifyStatus.setCli(this.mCli);
        CountlyUtil.recordEvent(Constants.COUNTYLY_SYS_NOTIFY_DISCONNECTED, JsonUtil.toJsonString(this.mReportSysNotifyStatus));
    }

    public boolean sendToInstanceMsg(String str) {
        return sendToInstanceMsg(str, false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendWsMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        return this.mGamePlatformType == GamePlatformType.X86 ? x86SendMessage(str, wsMessageType, onSendWsMessageListener) : armSendMessage(str, wsMessageType, onSendWsMessageListener);
    }

    protected void sendWsMessageRecord(byte[] bArr) {
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null || !iWebSocket.isConnect(webSocketType)) {
            return;
        }
        this.mWebSocketManager.sendBinaryMessage(webSocketType, bArr);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAttachContext(Context context) {
        recordLifeCycleEvent("setAttachContext() context:" + context);
        if (context != null) {
            this.mAttachContext = context;
            this.mPluginContext = new PluginContext(context);
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            HmCameraWrapper.getInstance().installCamera(activity);
            this.localKeyboardModel.setAttachContext(activity);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAudioMute(boolean z10) {
        this.isAudioMute = z10;
        if (z10) {
            turnOffSound();
        } else {
            turnOnSound();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAudioRecordCallback(AudioRecordSourceCallback audioRecordSourceCallback) {
        RecordHelper.getsInstance().setAudioRecordCallback(audioRecordSourceCallback);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAutoShowIME(boolean z10) {
        LogUtils.d(TAG, "setAutoShowIME enable:" + z10);
        this.mAutoShowInput = z10;
    }

    protected void setBackground() {
        LogUtils.d(TAG, "setVerticalBackground setVerticalBackground start");
        if (this.verticalBackground <= 0) {
            LogUtils.d(TAG, "setVerticalBackground setBackgroundResource default:" + Constants.LOADING_BG);
            setBackgroundColor(Constants.LOADING_BG);
            return;
        }
        try {
            ((View) getParent()).setBackgroundResource(this.verticalBackground);
            LogUtils.d(TAG, "setVerticalBackground setBackgroundResource:" + this.verticalBackground);
        } catch (Exception e10) {
            LogUtils.d(TAG, "setVerticalBackground exception:" + e10.toString());
            setBackgroundColor(Constants.LOADING_BG);
            e10.printStackTrace();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setButtonMapping(ButtonMappings buttonMappings) {
        IDeviceInput iDeviceInput = this.deviceInputManager;
        if (iDeviceInput != null) {
            iDeviceInput.setButtonMapping(buttonMappings);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setButtonMappingMode(int i10) {
        if (!Utils.isTV()) {
            LogUtils.i(TAG, "setButtonMappingMode fail, Android not support");
            return false;
        }
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return this.inputTypeModel.setButtonMappingMode(i10);
        }
        LogUtils.i(TAG, "setButtonMappingMode fail, x86 not support");
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setChangeStreamStatus(boolean z10) {
        this.isChangeStreamType = z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCloseStream(boolean z10) {
        List<String> list = HmcpManager.getInstance().surfaceTypeList;
        if (list == null || list.size() <= 0 || !list.contains(Build.MODEL)) {
            this.closeStream = z10;
        } else {
            this.closeStream = true;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCloudOperationListener(CloudOperationListener cloudOperationListener) {
        this.mCloudOperationListener = cloudOperationListener;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setColorMode(final ColorMode colorMode, final ColorModeListener colorModeListener) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.setColorMode(colorMode, new ColorModeListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.47
                @Override // com.haima.hmcp.listeners.ColorModeListener
                public void onColorModeResult(boolean z10, String str) {
                    ColorMode colorMode2;
                    if (z10 && (colorMode2 = AbsIjkVideoView.this.mColorMode) != null) {
                        colorMode2.setMode(colorMode.getMode());
                    }
                    ColorModeListener colorModeListener2 = colorModeListener;
                    if (colorModeListener2 != null) {
                        colorModeListener2.onColorModeResult(z10, str);
                    }
                }
            });
            return;
        }
        LogUtils.d(TAG, "stream mode is not init");
        if (colorModeListener != null) {
            colorModeListener.onColorModeResult(false, "stream mode is not init");
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setConfigInfo(String str) {
        LogUtils.i(TAG, "===setConfigInfo====" + str);
        this.mConfigInfo = str;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setControlListener(OnContronListener onContronListener) {
        b0.q(this, onContronListener);
    }

    public void setCurrentApkType(int i10) {
        this.currentApkType = i10;
    }

    public void setCurrentSound(float f10) {
        this.currentSound = f10;
    }

    public void setCurrenteResolutionID(String str) {
        this.currenteResolutionID = str;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCursorSize(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            LogUtils.e(TAG, "setCursorSizeRatio failure, parameter is invalid");
            return;
        }
        MouseView mouseView = this.mCursorImageView;
        if (mouseView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mouseView.getLayoutParams();
            float f10 = i10 / layoutParams.width;
            layoutParams.width = i10;
            layoutParams.height = i11;
            this.mCursorWidth = i10;
            this.mCursorHeight = i11;
            this.mCursorImageView.setLayoutParams(layoutParams);
            this.mCursorImageView.requestLayout();
            setOverLayParams(this.mCursorWidth, this.mCursorHeight);
            CircularProgressIndicatorView circularProgressIndicatorView = this.mCursorOverLay;
            if (circularProgressIndicatorView != null) {
                circularProgressIndicatorView.requestLayout();
            }
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.updateHotSpotScale(f10);
            }
        }
    }

    public void setCustomVideoView(IHmcpIJKVideoView iHmcpIJKVideoView) {
        setPlayerRenderview();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setDevicePixelRatio(int i10) {
        recordLifeCycleEvent("setDevicePixelRatio() pixelRatio:" + i10);
        if (this.mGamePlatformType != GamePlatformType.X86) {
            LogUtils.e(TAG, "setDevicePixelRatio only support x86");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            LogUtils.e(TAG, "setDevicePixelRatio mRequestManager = null");
        } else {
            hmcpRequest.setDevicePixelRatio(i10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setDpadMouseMoveStep(float f10) {
        LogUtils.i(TAG, "setDpadMouseMoveStep step=" + f10);
        setDpadMouseMoveStep(Float.valueOf(f10), null);
    }

    protected void setExtParam(String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setExtraData(IntentExtraData intentExtraData) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setExtraData = ");
        sb2.append(intentExtraData);
        sb2.append(" mRequestManager is ");
        sb2.append(this.mRequestManager == null);
        LogUtils.i(TAG, sb2.toString());
        this.mExtraData = intentExtraData;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setFixedGamepadType(GamepadType gamepadType) {
        String str = "setFixedGamepadType fixedGamepadType=" + gamepadType;
        LogUtils.i(TAG, str);
        CountlyUtil.recordEvent("12200", str);
        if (gamepadType == GamepadType.XBOX) {
            this.fixedGamepadVendorId = Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT;
        } else if (gamepadType == GamepadType.PS) {
            this.fixedGamepadVendorId = Constants.GAMEPAD_PS_VENDOR_ID_DEFAULT;
        } else {
            this.fixedGamepadVendorId = "";
        }
        replugGamepad();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setFunctionSensitivity(float f10) {
        if (this.appSettingsState == null || f10 < 0.0f) {
            LogUtils.e(TAG, "API setFunctionSensitivity failed:" + f10);
        } else {
            LogUtils.e(TAG, "API setFunctionSensitivity :" + f10);
            this.appSettingsState.functionSensitivitySetByApp = Float.valueOf(f10);
            this.mTouchUtil.setSpecificSensitivity(f10);
        }
        this.mFunctionSensitivityReportFlag = Float.valueOf(f10);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void setGamePlatformType(GamePlatformType gamePlatformType) {
        this.mGamePlatformType = gamePlatformType;
        LogUtils.i(TAG, "platformType = " + gamePlatformType.name());
        HmcpManager.getInstance().setGameArchitectureType(this.mGamePlatformType == GamePlatformType.ARM ? GameArchitectureType.ARM : GameArchitectureType.X86);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setGyroToMouseXSensitivity(int i10) {
        LogUtils.d(TAG, "setGyroToMouseSensitivity==xSensitivity=" + i10);
        recordLifeCycleEvent("setGyroToMouseXSensitivity:" + i10);
        if (!isX86Game()) {
            LogUtils.d(TAG, "arm game not support by this method");
        } else if (i10 <= 0) {
            LogUtils.d(TAG, "setGyroToMouseSensitivity failure，parameter is invalid");
        } else {
            Constants.CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY = i10;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setGyroToMouseYSensitivity(int i10) {
        LogUtils.d(TAG, "setGyroToMouseSensitivity==ySensitivity=" + i10);
        recordLifeCycleEvent("setGyroToMouseYSensitivity:" + i10);
        if (!isX86Game()) {
            LogUtils.d(TAG, "arm game not support by this method");
        } else if (i10 <= 0) {
            LogUtils.d(TAG, "setGyroToMouseSensitivity failure，parameter is invalid");
        } else {
            Constants.CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY = i10;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setHandleInputEvent(boolean z10) {
        if (this.mGamePlatformType == GamePlatformType.ARM) {
            LogUtils.i(TAG, "setHandleInputEvent fail, ARM not support");
            return false;
        }
        this.isHandleInputEvent = z10;
        return true;
    }

    public void setHasOperatePermission(boolean z10) {
        this.mHasOperatePermission = z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.setHmFrameCallback(hmFrameCallback);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.setHmStreamerIPCallback(hmStreamerIPCallback);
        }
    }

    protected void setHmcpIJKVideoViewListener() {
        if (isModelNull()) {
            return;
        }
        this.streamModel.setHmcpVideoPlayerListener(new AnonymousClass25());
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmcpPlayerListener(HmcpPlayerListener hmcpPlayerListener) {
        this.mListener = hmcpPlayerListener;
    }

    public void setImageSize() {
        if (isModelNull()) {
            return;
        }
        this.streamModel.setImageSize();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setInitMousePoint(float f10, float f11) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            return armMouseModel.setInitMousePoint(f10, f11);
        }
        return false;
    }

    public void setIsStartPlayCallBackFlag(boolean z10) {
        this.isStartPlayCallBack = z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setKeyPressedVibrator(boolean z10) {
        if (this.mGamePlatformType == GamePlatformType.X86) {
            HmVirtualDeviceManager.ableVibrator = z10;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setKeyboardMapperGamepadEnable(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return;
        }
        LogUtils.d(TAG, "setKeyboardMapperGamepadEnable = " + z10);
        JoyStickMappingManager.isKeyboardMapperGamepadEnable = z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setLoadingShow(boolean z10) {
        this.mLodingShow = z10;
    }

    public void setMessageType(MessageType messageType) {
        LogUtils.d(TAG, "messageType:" + messageType);
        if (!this.mHasDealChannel && MessageType.TRANSFER == this.mMessageType) {
            this.mHasDealChannel = true;
        }
        this.mMessageType = messageType;
    }

    public void setModeByGsNotice(int i10) {
        if (i10 == 0) {
            this.mIsGamepadToMouse = false;
            setPCMouseModeInternal(this.mIsPCMouseMode);
            TouchUtil touchUtil = this.mTouchUtil;
            if (touchUtil != null) {
                touchUtil.updateMouse();
            }
        } else {
            this.mIsGamepadToMouse = true;
            TouchUtil touchUtil2 = this.mTouchUtil;
            if (touchUtil2 != null) {
                touchUtil2.setIsShowMouse(true);
            }
        }
        SendSceneState.inputModeNotify(this.mContext, this.mListener, i10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseBitmap(Bitmap bitmap) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            armMouseModel.setMouseBitmap(bitmap);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseIcon(String str, int i10) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            armMouseModel.setMouseIcon(str, i10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setMouseMoveStep(int i10) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            return armMouseModel.setMouseMoveStep(i10);
        }
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseOffSet(int i10, int i11) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            armMouseModel.setMouseOffSet(i10, i11);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseOffSetRatio(float f10, float f11) {
        ArmMouseModel armMouseModel = this.armMouseModel;
        if (armMouseModel != null) {
            armMouseModel.setMouseOffSetRatio(f10, f11);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseSensitivity(float f10) {
        this.appSettingsState.isSensitivitySetByApp = true;
        LogUtils.d(TAG, "appSettingsState: setMouseSensitivity: " + f10);
        setSensitivityInner(f10);
        this.mSensitivityReportFlag = Float.valueOf(f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.setOperationDelayCallback(iOperationDelayCallback);
        }
    }

    public void setOrientationInit(ScreenOrientation screenOrientation) {
        this.mOrientation = screenOrientation;
        this.mOrientationOrigin = screenOrientation;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setPCMouseMode(boolean z10) {
        recordLifeCycleEvent("setPCMouseMode() isPCMouseMode:" + z10);
        this.mIsPCMouseModeWithClient = Boolean.valueOf(z10);
        setPCMouseModeInternal(z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setPhysicalMouseViewOnSensitivity(float f10) {
        TouchUtil touchUtil;
        if (this.mGamePlatformType != GamePlatformType.X86 || (touchUtil = this.mTouchUtil) == null) {
            return;
        }
        touchUtil.setPhysicalMouseViewOnSensitivity(f10);
    }

    protected void setPlayerRenderview() {
        this.mRenderView = this.streamModel.getRenderView();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setPlayerState(int i10) {
        this.mPlayerState = i10;
    }

    public void setRenderView(IRenderViewBase iRenderViewBase) {
        this.mRenderView = iRenderViewBase;
    }

    public void setResolutionInfo(ResolutionInfo resolutionInfo) {
        this.resolutionInfo = resolutionInfo;
    }

    public void setResolutionList(List<ResolutionInfo> list, String str, boolean z10, boolean z11) {
        if (list != null && list.size() > 0) {
            this.mResolutionList = list;
        }
        this.mSetResolution = getResolution(this.mResolutionList, null, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("switchResolution", z10);
            jSONObject.put("defaultChoiceId", str);
            jSONObject.put("resolutionList", list != null);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        if (z11) {
            return;
        }
        UiMessageSend(getCallbackData(20, jSONObject.toString()));
    }

    protected void setScreenBrightness(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            int intValue = com.alibaba.fastjson.a.parseObject(str).getJSONObject("data").getIntValue("data");
            setScreenBrightness(intValue < 0 ? -1.0f : intValue / 255.0f);
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("screen message format is error:" + e10.getLocalizedMessage());
            LogUtils.i(TAG, "setScreenBrightness：" + e10.getLocalizedMessage());
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenHeight(int i10) {
        this.screenHeight = i10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenOrientation(ScreenOrientation screenOrientation) {
        this.mOrientation = screenOrientation;
    }

    protected void setScreenOrientationForKeyboard(ScreenOrientation screenOrientation, IRenderViewBase iRenderViewBase) {
        if (iRenderViewBase == null) {
            return;
        }
        this.mRenderView = iRenderViewBase;
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor != null && hmScreenMonitor.isEnable()) {
            LogUtils.d(HmScreenMonitor.TAG, "screen orientation change is enable, don`t need to change screen orientation for keyboard");
            return;
        }
        if (screenOrientation == this.mOrientation) {
            LogUtils.i(TAG, "====键盘方向====不变:" + screenOrientation);
            return;
        }
        LogUtils.i(TAG, "====键盘方向====更改:" + screenOrientation);
        CountlyUtil.recordEvent(Constants.COUNTLY_ORIENTATION, "orientation to change:" + screenOrientation);
        SoftKeyBoardListener.clearVisibleHeight();
        Activity curActOrNull = getCurActOrNull();
        ScreenOrientation screenOrientation2 = ScreenOrientation.PORTRAIT;
        if (screenOrientation == screenOrientation2) {
            this.mOrientation = screenOrientation2;
            this.mRenderView.setVideoRotation(90);
            if (curActOrNull != null) {
                curActOrNull.setRequestedOrientation(7);
            } else if (getContext() instanceof Activity) {
                ((Activity) getContext()).setRequestedOrientation(7);
            }
        } else {
            this.mOrientation = ScreenOrientation.LANDSCAPE;
            this.mRenderView.setVideoRotation(0);
            if (curActOrNull != null) {
                curActOrNull.setRequestedOrientation(6);
            } else if (getContext() instanceof Activity) {
                ((Activity) getContext()).setRequestedOrientation(6);
            }
        }
        LogUtils.i(TAG, "====键盘方向====更改:" + screenOrientation + ",横竖屏切换：代码执行完成;");
        postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f34125b.lambda$setScreenOrientationForKeyboard$2();
            }
        }, 50L);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenWidth(int i10) {
        this.screenWidth = i10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setSeiListener(ISeiListener iSeiListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setShowVirtualRawKey(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return;
        }
        LogUtils.d(TAG, "setShowVirtualRawKey = " + z10);
        HmVirtualDeviceManager.showRawKey = z10;
        HmVirtualDeviceManager.isShowRawKeySetByApp = true;
    }

    public void setStartIM(boolean z10) {
        this.isStartIM = z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setStreamTypeChangeListener(OnStreamTypeChangeListener onStreamTypeChangeListener) {
        this.mOnStreamTypeChangeListener = onStreamTypeChangeListener;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setStreamingCallback(StreamingCallback streamingCallback) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.setStreamingCallback(streamingCallback);
        } else {
            LogUtils.d(TAG, "setStreamingCallback streamModel is null");
        }
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor != null) {
            streamingMonitor.setStreamingCallback(streamingCallback);
        } else {
            LogUtils.d(TAG, "mStreamingMonitor is null");
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setStreamingMode(StreamingMode streamingMode, final IStreamingModeCallback iStreamingModeCallback) {
        LogUtils.i(TAG, "====setStreamingMode=====");
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null && streamingMode != null) {
            hmcpRequest.setStreamingModeRequest(streamingMode.getValue(), new OnSetStreamingModeListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.49
                @Override // com.haima.hmcp.listeners.OnSetStreamingModeListener
                public void onFail(String str) {
                    LogUtils.i(AbsIjkVideoView.TAG, "====setStreamingModeRequest===onFail==" + str);
                    CountlyUtil.recordErrorEvent(str);
                    IStreamingModeCallback iStreamingModeCallback2 = iStreamingModeCallback;
                    if (iStreamingModeCallback2 != null) {
                        iStreamingModeCallback2.onFail(str);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnSetStreamingModeListener
                public void onSuccess() {
                    LogUtils.i(AbsIjkVideoView.TAG, "====setStreamingModeRequest===onSuccess==");
                    IStreamingModeCallback iStreamingModeCallback2 = iStreamingModeCallback;
                    if (iStreamingModeCallback2 != null) {
                        iStreamingModeCallback2.onSuccess();
                    }
                }
            });
        } else {
            LogUtils.e(TAG, "RequestManager or mode is null, setStreamingMode failure");
            CountlyUtil.recordErrorEvent("RequestManager or mode is null, setStreamingMode failure");
        }
    }

    protected void setSupportLiving(int i10) {
        if (i10 == 0) {
            this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNSUPPORTED;
        } else if (i10 != 1) {
            this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNKNOWN;
        } else {
            this.mLivingCapabilityStatus = ELivingCapabilityStatus.SUPPORTED;
        }
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        this.surfaceTexture = surfaceTexture;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setTouchMode(TouchMode touchMode) {
        this.appSettingsState.isTouchModeSetByApp = true;
        LogUtils.d(TAG, "appSettingsState: setTouchMode: " + touchMode);
        return setTouchModeInner(touchMode);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setTouchesMoveMapperRockerEnable(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return;
        }
        LogUtils.d(TAG, "setTouchesMoveMapperRockerEnable = " + z10);
        JoyStickMappingManager.isTouchesMoveMapperRockerEnable = z10;
    }

    protected void setTransferBack(boolean z10) {
        TransferHelper transferHelper = this.mTransferHelper;
        if (transferHelper != null) {
            transferHelper.setBackground(z10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setUIListener(HmcpUIListener hmcpUIListener) {
        this.uiListener = hmcpUIListener;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setUserInfo(UserInfo userInfo) {
        if (userInfo == null) {
            throw new RuntimeException(getContext().toString() + " must set userInfo");
        }
        LogUtils.i(TAG, "===setUserInfo====" + userInfo);
        String str = userInfo.userId;
        this.mUid = str;
        CountlyUtil.mUID = str;
        this.mUserInfo = userInfo;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVideoDelayCallback(IVideoDelayCallback iVideoDelayCallback) {
        if (iVideoDelayCallback != null) {
            this.mVideoDelayCallback = iVideoDelayCallback;
        } else {
            LogUtils.d(TAG, "parameter is invalid, callback is null");
            CountlyUtil.recordErrorEvent("parameter is invalid, callback is null");
        }
    }

    protected void setVideoViewListener() {
        setHmcpIJKVideoViewListener();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVirtualBaseScale(float f10) {
        recordLifeCycleEvent("setVirtualBaseScale() scale:" + f10);
        LogUtils.d(TAG, "setVirtualBaseScale scale:" + f10);
        if (f10 <= 0.0f || f10 > 3.0f) {
            LogUtils.d(TAG, "setVirtualBaseScale failed:scale value must be between 0 and 3");
            return;
        }
        HmVirtualDeviceManager.get().setBaseScale(f10);
        HmVirtualDeviceManager.get().setScaleByApp(f10);
        HmVirtualDeviceManager.isScaleSetByApp = true;
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.notifyBaseScale();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVirtualKeyboardSurfaceView(VirtualKeyboardSurfaceView virtualKeyboardSurfaceView) {
        this.mVirtualKeyboardSurfaceView = virtualKeyboardSurfaceView;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVirtualStickAlpha(float f10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            return;
        }
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        HmVirtualDeviceManager.isAlphaSetByApp = true;
        HmVirtualDeviceManager.get().setTransparency(f10);
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.setTransparency(f10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setWsMessageListener(OnSendWsMessageListener onSendWsMessageListener) {
        this.wsMessageListener = onSendWsMessageListener;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setXAxisReverse(boolean z10) {
        LogUtils.d(TAG, "setXAxisReverse==isXAxisReverse=" + z10);
        recordLifeCycleEvent("setXAxisReverse:" + z10);
        if (!isX86Game()) {
            LogUtils.d(TAG, "arm game not support by this method");
            return;
        }
        GyroscopeHelper gyroscopeHelper = this.mGyroscopeHelper;
        if (gyroscopeHelper != null) {
            gyroscopeHelper.setXAxisReverse(z10);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setYAxisReverse(boolean z10) {
        LogUtils.d(TAG, "setYAxisReverse==isYAxisReverse=" + z10);
        recordLifeCycleEvent("setYAxisReverse:" + z10);
        if (!isX86Game()) {
            LogUtils.d(TAG, "arm game not support by this method");
            return;
        }
        GyroscopeHelper gyroscopeHelper = this.mGyroscopeHelper;
        if (gyroscopeHelper != null) {
            gyroscopeHelper.setYAxisReverse(z10);
        }
    }

    public void setmAutoSwitchDetectInterval(String str) {
        this.mAutoSwitchDetectInterval = str;
    }

    public void setmAutoSwitchDuration(String str) {
        this.mAutoSwitchDuration = str;
    }

    public void setmAutoSwitchFrozentime(String str) {
        this.mAutoSwitchFrozentime = str;
    }

    public void setmAutoSwitchPlayTimeDelay(String str) {
        this.mAutoSwitchPlayTimeDelay = str;
    }

    public void setmClockDiffUse(int i10) {
        this.mClockDiffUse = i10;
        LogUtils.d(TAG, "setmClockDiffUse:" + i10);
    }

    public void setmCurResolution(ResolutionInfo resolutionInfo) {
        this.mCurResolution = resolutionInfo;
    }

    public void setmCurrentState(int i10) {
        this.mCurrentState = i10;
    }

    public void setmDelayCalculateInterval(String str) {
        this.mDelayCalculateInterval = str;
    }

    public void setmDelayThresholdPercent(String str) {
        this.mDelayThresholdPercent = str;
    }

    public void setmFrameDataProxy(FrameDataProxy frameDataProxy) {
        this.mFrameDataProxy = frameDataProxy;
    }

    public void setmPlayerBitRate(long j10) {
        this.mPlayerBitRate = j10;
    }

    public void setmPlayerFPS(long j10) {
        this.mPlayerFPS = j10;
    }

    public void setmResolutionList(List<ResolutionInfo> list) {
        this.mResolutionList = list;
    }

    public void setmSeiDataSwitch(int i10) {
        this.mSeiDataSwitch = i10;
    }

    public void setmSetResolution(ResolutionInfo resolutionInfo) {
        this.mSetResolution = resolutionInfo;
    }

    public void setmShowHeight(int i10) {
        this.mShowHeight = i10;
    }

    public void setmShowWidth(int i10) {
        this.mShowWidth = i10;
    }

    public void setmSwitchAuto(boolean z10) {
        this.mSwitchAuto = z10;
    }

    public void setmTargetState(int i10) {
        this.mTargetState = i10;
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void showRetryPrompt(String str, String str2, String str3) {
        LogUtils.i(TAG, "====showRetryPrompt===mOrientation = " + this.mOrientation + "; errorCode=" + str2 + "; errorMsg=" + str3);
        this.mEntryQueue = false;
        this.mPlayerState = 4;
        FileDownloadUtil fileDownloadUtil = this.mFileDownloadUtil;
        if (fileDownloadUtil != null) {
            fileDownloadUtil.stopSpeedTest();
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_STOP_GAME, "2 ; " + currentStatusInfo());
        cleanTimer();
        resetState();
        if (isModelNull()) {
            return;
        }
        stopPlay();
        disconnectWebSocket();
        this.isNeedShowSwitchSuccess = false;
        this.isGetCloudServiceSuccess = false;
        CloudPlayInfo cloudPlayInfo2 = cloudPlayInfo;
        if (cloudPlayInfo2 != null) {
            cloudPlayInfo2.reset();
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.stopCloudService();
        }
        this.streamModel.stopFrameDataProxy();
        if (TextUtils.isEmpty(str3)) {
            this.promptMsg = getMetaInfoByKey(Constants.TIPS_PROMPT_HMCP_ERROR);
        } else {
            this.promptMsg = str3;
        }
        callbackHmcpError(new ErrorInfo().put("errorCode", str2).put("errorMessage", this.promptMsg), 29);
        recordStopGameError(str2, 0);
        sendSceneStopMessage((System.currentTimeMillis() - this.startPlayTime) / 1000, ResourceManager.getString(R.string.haima_hmcp_scene_request_err));
    }

    protected void showScreenCover() {
        if (this.screenCover == null) {
            boolean z10 = getChildAt(0) instanceof IRenderViewBase;
            ImageView imageView = new ImageView(getContext());
            this.screenCover = imageView;
            imageView.setBackgroundColor(-16777216);
            this.screenCover.setTag("screen_cover");
            addView(this.screenCover, z10 ? 1 : 0, new FrameLayout.LayoutParams(-1, -1));
        }
        if (this.screenCover.getVisibility() == 0) {
            return;
        }
        this.screenCover.setVisibility(0);
    }

    protected void showScreenShot() {
        Bitmap bitmapAdjustBitmapRotation;
        if (this.mScreenShotBitmap == null) {
            LogUtils.d(TAG, "ScreenShot->nothing to show screen shot is null");
            return;
        }
        if (this.screenShotCover == null) {
            View childAt = getChildAt(0);
            int i10 = ((childAt instanceof IRenderView) || (childAt instanceof com.haima.hmcp.rtmp.widgets.IRenderView)) ? 2 : 0;
            View childAt2 = getChildAt(i10);
            if ((childAt2 != null ? "screen_cover".equals(childAt2.getTag()) : false) && (childAt2 instanceof ImageView)) {
                this.screenShotCover = (ImageView) childAt2;
                LogUtils.d(TAG, "ScreenShot->init screen shot view, already exist");
            } else {
                ImageView imageView = new ImageView(getContext());
                this.screenShotCover = imageView;
                imageView.setTag("screen_cover");
                addView(this.screenShotCover, i10, new FrameLayout.LayoutParams(-1, -1));
                LogUtils.d(TAG, "ScreenShot->init screen shot view, to make one");
            }
        }
        synchronized (this.mScreenShotBitmap) {
            Bitmap bitmap = this.mScreenShotBitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                bitmapAdjustBitmapRotation = null;
            } else {
                Bitmap bitmap2 = this.mScreenShotBitmap;
                bitmapAdjustBitmapRotation = bitmap2.copy(bitmap2.getConfig(), this.mScreenShotBitmap.isMutable());
            }
        }
        if (bitmapAdjustBitmapRotation == null) {
            LogUtils.d(TAG, "ScreenShot->screen shot bitmap is null or recycled when set to show");
            return;
        }
        ScreenOrientation screenOrientation = this.mOrientation;
        ScreenOrientation screenOrientation2 = ScreenOrientation.PORTRAIT;
        char c10 = screenOrientation == screenOrientation2 ? 'Z' : (char) 0;
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor != null && hmScreenMonitor.isEnable()) {
            Context context = this.mAttachContext;
            if (context == null) {
                context = this.mAppContext;
            }
            ScreenOrientation convertOrientation = getConvertOrientation(Utils.getSysOrientationRotation(context));
            LogUtils.d(HmScreenMonitor.TAG, "sys orientation = " + convertOrientation + "; mOrientation = " + this.mOrientation);
            if (convertOrientation != null && convertOrientation != this.mOrientation) {
                c10 = convertOrientation == screenOrientation2 ? 'Z' : (char) 0;
            }
        }
        if (c10 == 'Z') {
            bitmapAdjustBitmapRotation = ImageUtil.adjustBitmapRotation(bitmapAdjustBitmapRotation, 90);
        }
        this.screenShotCover.setImageBitmap(bitmapAdjustBitmapRotation);
        this.screenShotCover.setVisibility(0);
        LogUtils.d(TAG, "ScreenShot->show screen shot");
    }

    protected void showVideoDialog() {
        LogUtils.i(TAG, "timeframe==showVideoDialog = ");
        SendSceneState.startPlayingTitles(getContext(), this.mListener);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean showVirtualKeyboard(boolean z10) {
        this.appSettingsState.isOperateTypeSetByApp = true;
        LogUtils.d(TAG, "showVirtualKeyboard: " + z10);
        return showVirtualKeyboardInner(z10);
    }

    public boolean showVirtualKeyboardInner(boolean z10) {
        LogUtils.d(TAG, "=VirtualDeviceTag= : " + z10 + " mDefaultOperateType: " + this.mDefaultOperateType);
        if (this.mGamePlatformType != GamePlatformType.X86 || Utils.isTV()) {
            return false;
        }
        this.mDefaultOperateType = z10 ? VirtualOperateType.VIRTUAL_KEYBOARD : VirtualOperateType.NONE;
        LogUtils.i(TAG, "==VirtualDeviceTag== showVirtualKeyboard=" + this.mDefaultOperateType);
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView == null) {
            LogUtils.e(TAG, "showVirtualKeyboard error : virtualLayout is null");
            return false;
        }
        if (hmVirtualTextureView.isEditModeShow()) {
            this.mVirtualDeviceLayout.exit();
        }
        if (!z10) {
            boolean z11 = this.mVirtualDeviceLayout.getVisibility() != 8;
            this.mVirtualDeviceLayout.setVisibility(8);
            return z11;
        }
        this.mVirtualDeviceLayout.setVirtualType(1);
        this.mVirtualDeviceLayout.loadVirtualData(HmVirtualDeviceManager.get().getKeyboardLayout(), 1);
        if (HmVirtualDeviceManager.get().getKeyboardLayout() == null || HmVirtualDeviceManager.get().getKeyboardLayout().isEmpty()) {
            LogUtils.e(TAG, " error : KeyboardLayout is null");
            this.mVirtualDeviceLayout.setVisibility(8);
            return false;
        }
        resetSensitivityAfterSwitchMode(-1, HmVirtualDeviceManager.get().getKeyboardLayout());
        if (!this.mHasOperatePermission) {
            return false;
        }
        boolean z12 = this.mVirtualDeviceLayout.getVisibility() != 0;
        this.mVirtualDeviceLayout.setVisibility(0);
        return z12;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean showVirtualStick(boolean z10) {
        this.appSettingsState.isOperateTypeSetByApp = true;
        LogUtils.d(TAG, "showVirtualStick: " + z10);
        return showVirtualStickInner(z10);
    }

    public boolean showVirtualStickInner(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86 || Utils.isTV()) {
            return false;
        }
        this.mDefaultOperateType = z10 ? VirtualOperateType.VIRTUAL_STICK_XBOX : VirtualOperateType.NONE;
        LogUtils.i(TAG, "==VirtualDeviceTag== showVirtualStick=" + this.mDefaultOperateType);
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView == null) {
            LogUtils.e(TAG, "showVirtualKeyboard error : virtualLayout is null");
            return false;
        }
        if (hmVirtualTextureView.isEditModeShow()) {
            this.mVirtualDeviceLayout.exit();
        }
        if (!z10) {
            boolean z11 = this.mVirtualDeviceLayout.getVisibility() != 8;
            this.mVirtualDeviceLayout.setVisibility(8);
            return z11;
        }
        this.mVirtualDeviceLayout.setVirtualType(0);
        this.mVirtualDeviceLayout.loadVirtualData(HmVirtualDeviceManager.get().getXboxLayout(), 0);
        if (HmVirtualDeviceManager.get().getXboxLayout() == null || HmVirtualDeviceManager.get().getXboxLayout().isEmpty()) {
            LogUtils.e(TAG, " error : XboxLayout is null");
            this.mVirtualDeviceLayout.setVisibility(8);
            return false;
        }
        resetSensitivityAfterSwitchMode(-2, HmVirtualDeviceManager.get().getXboxLayout());
        if (!this.mHasOperatePermission) {
            return false;
        }
        boolean z12 = this.mVirtualDeviceLayout.getVisibility() != 0;
        this.mVirtualDeviceLayout.setVisibility(0);
        return z12;
    }

    protected void specialPlayRequest(Bundle bundle) {
        if (bundle != null) {
            bundle.putBoolean(Constants.H264_SEI_DATA_ENABLE, this.mSeiDataSwitch == 1);
            SerializableMap serializableMap = this.mTransmissionDataToSaas;
            if (serializableMap != null) {
                bundle.putSerializable(BaseVideoView.TRANSMISSION_DATA_TO_SAAS, serializableMap);
            }
        }
        this.tvBattleMode.specialPlayRequest(bundle);
    }

    public void start2Play(SdkStreamPayloadData sdkStreamPayloadData) {
        LogUtils.i(TAG, "====start2Play=====");
        if (this.mWebSocketManager == null) {
            CountlyUtil.recordErrorEvent("start2Play() mWebSocketManager == null" + Log.getStackTraceString(new Throwable()));
            return;
        }
        this.streamModel.startPlay(sdkStreamPayloadData);
        if (this.mIsFirstGetCloudService) {
            this.startPlayTime = System.currentTimeMillis();
        }
        HmcpPlayerListener hmcpPlayerListener = this.mListener;
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onSuccess();
        }
        this.isGameStart = true;
        if (this.mGamePlatformType == GamePlatformType.ARM) {
            connect2Instance(this.mVInputUrl);
            if (!DevDebugManager.getInstance().getDevDebugConfig().isNotConnectWsService()) {
                if (DevDebugManager.getInstance().getDevDebugConfig().isDelayConnectWsService()) {
                    this.mHmcpHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.23
                        @Override // java.lang.Runnable
                        public void run() {
                            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                            absIjkVideoView.connectWsServer(absIjkVideoView.screenUrl);
                        }
                    }, DevDebugManager.getInstance().getDevDebugConfig().getDelayConnectWsServiceTime());
                } else {
                    connectWsServer(this.screenUrl);
                }
            }
            connectTransferServer(this.screenUrl);
        }
    }

    protected void startExitQueueInBGTimer() {
        LogUtils.d(TAG, "startExitQueueInBGTimer timeout time:" + Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND + ",mEntryQueue:" + this.mEntryQueue + ",mPlayerState:" + this.mPlayerState);
        if (Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND <= 0 || !this.mEntryQueue || this.mPlayerState >= 3) {
            return;
        }
        ExitQueueInBGTimer exitQueueInBGTimer = this.mExitQueueInBGTimer;
        if (exitQueueInBGTimer != null) {
            exitQueueInBGTimer.cancel();
        }
        long j10 = Constants.EXIT_QUEUE_IN_BG_TIMEOUT_SECOND;
        ExitQueueInBGTimer exitQueueInBGTimer2 = new ExitQueueInBGTimer(j10 * 1000, j10 * 1000);
        this.mExitQueueInBGTimer = exitQueueInBGTimer2;
        exitQueueInBGTimer2.start();
        CountlyUtil.recordEvent(Constants.COUNTLY_EXIT_QUEUE_IN_BG_TIMER_START);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startLiving(String str, String str2, OnLivingListener onLivingListener) {
        if (this.isBackground) {
            return;
        }
        this.mOnLivingListener = onLivingListener;
        requestPrepare();
        String cloudId = HmcpManager.getInstance().getCloudId();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.requestStartLiving(cloudId, str, str2, onLivingListener);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startPlay() {
        recordLifeCycleEvent("startPlay");
        UiMessageSend(getCallbackData(8, ""));
        if (getCurrentNetType() < 0) {
            callbackHmcpError(new ErrorInfo().put("errorCode", Constants.ERRORCODE_OTHER_011).put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_net_error)), 6);
            CountlyUtil.recordEvent(Constants.COUNTYLY_NO_NET_WORK, Constants.ERRORCODE_OTHER_011 + ",startPlay");
            return;
        }
        if (this.mRequestManager == null) {
            initManager();
        }
        this.mHmcpManager = HmcpManager.getInstance();
        if (checkDataReportIsDisable()) {
            return;
        }
        this.mHmcpManager.init(null, getContext(), new OnInitCallBackListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.28
            @Override // com.haima.hmcp.listeners.OnInitCallBackListener
            public void fail(String str) {
                LogUtils.i(AbsIjkVideoView.TAG, "HmcpManager.init fail " + str);
            }

            @Override // com.haima.hmcp.listeners.OnInitCallBackListener
            public void success() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                String str = absIjkVideoView.mAppName;
                absIjkVideoView.mAppName = "";
                absIjkVideoView.setChangeStreamStatus(false);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                absIjkVideoView2.play(absIjkVideoView2.mOrientation, absIjkVideoView2.mHPlayTime, absIjkVideoView2.mPriority, absIjkVideoView2.mAppId, str, absIjkVideoView2.mToken, absIjkVideoView2.mExtraId, -1.0f);
            }
        }, this.mHmcpManager.isJson, Utils.isTV());
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startRecord() {
        if (this.mGamePlatformType != GamePlatformType.X86 || !this.mHasOperatePermission) {
            RecordCmdResult recordCmdResult = this.mRecordResult;
            if (recordCmdResult == null || recordCmdResult.getParm() == null) {
                return;
            }
            startRecord(this.mRecordResult);
            return;
        }
        if (Constants.CONFIG_RECORD_MODE == Constants.RECORD_MODE_APP && HmRtcGlobalConfig.rtc_upload_audio_on) {
            if (GameActionUtil.isRecordPermissionAllowed(this.mAppContext)) {
                HmAudioManager.getInstance().startRecord();
                this.isRecordOn = true;
                return;
            } else if (getHmcpPlayerListener() != null) {
                requestPermission("android.permission.RECORD_AUDIO");
                return;
            } else {
                LogUtils.e(TAG, "playerListener is empty");
                return;
            }
        }
        String str = "config record mode and rtc_upload_audio not right or not permission config record mode is" + Constants.CONFIG_RECORD_MODE + " rtc_upload_audio_on is " + HmRtcGlobalConfig.rtc_upload_audio_on + " mHasOperatePermission is " + this.mHasOperatePermission;
        LogUtils.e(TAG, str);
        CountlyUtil.recordErrorEvent(str);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startRecordStream(final StartRecordStreamListener startRecordStreamListener) {
        if (startRecordStreamListener == null) {
            LogUtils.e(TAG, "StartRecordStreamListener is null");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            startRecordStreamListener.startRecord(false, ResourceManager.getString(R.string.haima_hmcp_requestManager_error_null));
            return;
        }
        String cloudId = hmcpRequest.getCloudId();
        if (TextUtils.isEmpty(cloudId)) {
            startRecordStreamListener.startRecord(false, ResourceManager.getString(R.string.haima_hmcp_no_cid));
        } else {
            this.mRequestManager.requestStartRecordStream(cloudId, new StartRecordStreamListener() { // from class: com.haima.hmcp.widgets.m
                @Override // com.haima.hmcp.listeners.StartRecordStreamListener
                public final void startRecord(boolean z10, String str) {
                    AbsIjkVideoView.lambda$startRecordStream$6(startRecordStreamListener, z10, str);
                }
            });
        }
    }

    public void startReportClockDiffLatency() {
        if (this.videoViewDelayReportManager == null) {
            this.videoViewDelayReportManager = new VideoViewDelayReportManager(this);
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        int reportFrameDelayInterval = hmcpRequest != null ? hmcpRequest.getReportFrameDelayInterval() : -1;
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor != null && streamingMonitor.isEnable()) {
            this.videoViewDelayReportManager.registerStreamingMonitor(this.mStreamingMonitor);
        }
        this.videoViewDelayReportManager.startCollectionReport(reportFrameDelayInterval);
        startSendVideoDelay();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean startStreaming() {
        LogUtils.i(TAG, "====startStreaming=====");
        cancelTimer(this.mWaitOperationStreamingTimeOut);
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            LogUtils.e(TAG, "RequestManager is null, startStreaming failure");
            CountlyUtil.recordErrorEvent("RequestManager is null, startStreaming failure");
            return false;
        }
        if (this.isOperationWaitStreamingConfirmReceived) {
            hmcpRequest.getStartStreamingRequest(new OnStartStreamingListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.3
                @Override // com.haima.hmcp.listeners.OnStartStreamingListener
                public void onFail(String str) {
                    LogUtils.e(AbsIjkVideoView.TAG, "====startStreaming==getStartStreamingRequest=onFail==");
                    CountlyUtil.recordErrorEvent("====startStreaming==getStartStreamingRequest=onFail==");
                }

                @Override // com.haima.hmcp.listeners.OnStartStreamingListener
                public void onSuccess() {
                    LogUtils.i(AbsIjkVideoView.TAG, "====startStreaming==getStartStreamingRequest=onSuccess==");
                }
            });
            this.isOperationWaitStreamingConfirmReceived = false;
            return true;
        }
        LogUtils.e(TAG, "Operation 68 is not received, startStreaming failure");
        CountlyUtil.recordErrorEvent("Operation 68 is not received, startStreaming failure");
        return false;
    }

    protected void startSwitchIMEAckTimer(String str) {
        cancelSwitchIMEAckTimer();
        LogUtils.d(HmIMEManager.TAG, "start switch IME timer");
        SwitchIMEAckTimer switchIMEAckTimer = new SwitchIMEAckTimer(str);
        this.switchIMEAckTimer = switchIMEAckTimer;
        postDelayed(switchIMEAckTimer, this.mIMEConfig.getSwitchIMEAckTimeout() * 1000);
        CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer("SwitchIMEAckTimer", "" + this.switchIMEAckTimer.hashCode(), this.mIMEConfig.getSwitchIMEAckTimeout() * 1000, false, ReportTimer.Action.CREATE)));
    }

    public void startTimer(long j10, long j11, int i10, String str) {
        if (i10 == 0) {
            cancelTimer(this.mRefreshStokenTask);
            RefreshStokenTask refreshStokenTask = new RefreshStokenTask(j10, j11);
            this.mRefreshStokenTask = refreshStokenTask;
            refreshStokenTask.start();
            return;
        }
        if (i10 == 1) {
            cancelTimer(this.mReconnectAccess);
            ReconnectAccess reconnectAccess = new ReconnectAccess(j10, j11);
            this.mReconnectAccess = reconnectAccess;
            reconnectAccess.start();
            return;
        }
        if (i10 == 2) {
            cancelTimer(this.mTimeOutTask);
            TimeOutTask timeOutTask = new TimeOutTask(j10, j11, str);
            this.mTimeOutTask = timeOutTask;
            timeOutTask.start();
            return;
        }
        if (i10 == 3) {
            cancelTimer(this.mWaitOperationFive);
            WaitOperationFive waitOperationFive = new WaitOperationFive(j10, j11);
            this.mWaitOperationFive = waitOperationFive;
            waitOperationFive.start();
            return;
        }
        if (i10 == 4) {
            cancelTimer(this.mWaitOperationStreamingConfirm);
            WaitOperationStreamingConfirm waitOperationStreamingConfirm = new WaitOperationStreamingConfirm(j10, j11);
            this.mWaitOperationStreamingConfirm = waitOperationStreamingConfirm;
            waitOperationStreamingConfirm.start();
            return;
        }
        if (i10 != 5) {
            return;
        }
        cancelTimer(this.mWaitOperationStreamingTimeOut);
        WaitOperationStreamingTimeOut waitOperationStreamingTimeOut = new WaitOperationStreamingTimeOut(j10, j11);
        this.mWaitOperationStreamingTimeOut = waitOperationStreamingTimeOut;
        waitOperationStreamingTimeOut.start();
    }

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
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("status", ConstantsInternal.STOP);
                jSONObject.put("stopByApp", "0");
                jSONObject.put("msg", "internal stop called");
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_SPEED_TEST_STATUS, jSONObject.toString());
        }
        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
        if (downloadTaskProxy != null) {
            downloadTaskProxy.setUrl(null);
            this.mDownloadTaskProxy.setCid(null);
            this.mDownloadTaskProxy.cancelDownload(null, null);
        }
        unregisterReceiver();
        if (isModelNull()) {
            return;
        }
        this.streamModel.stop();
        stopRomRecord();
        stopTransfer();
        quitManager();
        if (isSwitchIMETiming()) {
            cancelSwitchIMEAckTimer();
            IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
            iMESwitchCallbackResult.result = 0;
            iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
            iMESwitchCallbackResult.message = "stop cloud game";
            iMESwitchCallbackResult.reportMessage = "stop cloud game";
            switchIMECallback(iMESwitchCallbackResult);
        }
        GetCloudImeTransaction getCloudImeTransaction = this.mGetCloudImeTransaction;
        if (getCloudImeTransaction != null) {
            getCloudImeTransaction.cancelGetCloudImeTypeTask("stop cloud game");
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        CloudFileManager cloudFileManager = this.mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.DOWNLOAD);
        }
    }

    public void stopAllPhoneVibrators() {
        HmVibratorManager hmVibratorManager = this.mHmVibratorManager;
        if (hmVibratorManager != null) {
            hmVibratorManager.stopAllVibrators();
        }
    }

    public void stopAllVibrators() {
        if (HmInputDeviceManager.isSystemAPISupportVibrator()) {
            HmInputDeviceManager.stopAllVibrators(this.mContext);
        } else {
            LogUtils.d(VIBRATOR_TAG, "stopAllVibrators failed:SystemAPISupportVibrator is unsupported");
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopAndDismiss(Activity activity, int i10) {
        HmcpRequestManager.mArchiveMinSeconds = i10;
        release();
        if (activity != null) {
            activity.finish();
        }
    }

    protected void stopButNotReleaseCid() throws JSONException {
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.clearCloudId();
        }
        JSONObject jSONObject = new JSONObject();
        this.object = jSONObject;
        jSONObject.put("errorCode", 401);
        this.object.put("errorMessage", chooseMsg("", getMetaInfoByKey(Constants.TIPS_PROMPT_GAME_OVER)));
        UiMessageSend(401, this.object.toString());
        release(this.object.toString());
        this.mPlayerState = 5;
        sendSceneStopMessage(0L, ResourceManager.getString(R.string.haima_hmcp_scene_link_limit));
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopLiving(String str, OnLivingListener onLivingListener) {
        if (this.isBackground) {
            return;
        }
        this.mOnLivingListener = onLivingListener;
        requestPrepare();
        String cloudId = HmcpManager.getInstance().getCloudId();
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.requestStopLiving(cloudId, str, onLivingListener);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopRecord() {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            stopRomRecord();
        } else if (Constants.CONFIG_RECORD_MODE == Constants.RECORD_MODE_APP) {
            HmAudioManager.getInstance().stopRecord();
            this.isRecordOn = false;
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopRecordStream(final StopRecordStreamListener stopRecordStreamListener) {
        if (stopRecordStreamListener == null) {
            LogUtils.e(TAG, "StopRecordStreamListener is null");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            stopRecordStreamListener.stopRecord(false, ResourceManager.getString(R.string.haima_hmcp_requestManager_error_null), null);
            return;
        }
        String cloudId = hmcpRequest.getCloudId();
        if (TextUtils.isEmpty(cloudId)) {
            stopRecordStreamListener.stopRecord(false, ResourceManager.getString(R.string.haima_hmcp_no_cid), null);
        } else {
            this.mRequestManager.stopRecordStream(cloudId, new StopRecordStreamListener() { // from class: com.haima.hmcp.widgets.g
                @Override // com.haima.hmcp.listeners.StopRecordStreamListener
                public final void stopRecord(boolean z10, String str, RecordStreamInfo recordStreamInfo) {
                    AbsIjkVideoView.lambda$stopRecordStream$7(stopRecordStreamListener, z10, str, recordStreamInfo);
                }
            });
        }
    }

    public void stopReportClockDiffLatency() {
        if (this.videoViewDelayReportManager != null) {
            this.videoViewDelayReportManager.unregisterStreamingMonitor();
            this.videoViewDelayReportManager.stopCollectionReport();
            this.videoViewDelayReportManager = null;
        }
        stopSendVideoDelay();
    }

    protected void stopRomRecord() {
        sendWsMessageRecord("STOP_RECORD");
        RecordHelper.getsInstance().stop(false);
    }

    protected void stopSensor() {
        HmSensorManager hmSensorManager = this.mHmSensorManager;
        if (hmSensorManager != null) {
            hmSensorManager.stopAllSensors();
        }
    }

    public void stopTransfer() {
        if (getTransferDelegateInternal() != null) {
            getTransferDelegateInternal().disconnectInternal();
        }
    }

    public void stopUploadX86() {
        LogUtils.e(TAG, "internalUploadX86 stop");
        JobExecutor jobExecutor = this.mUploadX86JobExecutor;
        if (jobExecutor != null) {
            if (jobExecutor.isRunning()) {
                callBackUploadX86Failure("upload fail because rtc is disconnect");
            }
            this.mUploadX86JobExecutor.cancelAllJobs();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean switchBandWidthDetection(boolean z10) {
        LogUtils.d(TAG, "switchBandWidthDetection:" + z10);
        this.mBandwidthDetectionSwitch = z10;
        IStreamModel iStreamModel = this.streamModel;
        boolean zSwitchBandWidthDetection = iStreamModel != null ? iStreamModel.switchBandWidthDetection(z10) : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("streamModel is null?=");
        sb2.append(this.streamModel == null);
        sb2.append(",switchBandWidthDetection:");
        sb2.append(z10);
        sb2.append(",result:");
        sb2.append(zSwitchBandWidthDetection);
        CountlyUtil.recordEvent(Constants.COUNTLY_SWITCH_BANDWIDTH_DETECTION, sb2.toString());
        return zSwitchBandWidthDetection;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchIME(SwitchIMECallback switchIMECallback) {
        LogUtils.d(HmIMEManager.TAG, "start switch IME");
        CountlyUtil.recordEvent(Constants.COUNTLY_IME_SWITCH);
        this.mSwitchIMECallback = switchIMECallback;
        IMESwitchCallbackResult iMESwitchCallbackResultSwitchIMECheck = switchIMECheck();
        if (iMESwitchCallbackResultSwitchIMECheck != null) {
            switchIMECallback(iMESwitchCallbackResultSwitchIMECheck);
        } else {
            toSwitchIME();
        }
    }

    protected void switchIMECallback(IMESwitchCallbackResult iMESwitchCallbackResult) {
        LogUtils.d(HmIMEManager.TAG, "end switch IME: " + iMESwitchCallbackResult.toCountlyString());
        CountlyUtil.recordEvent(Constants.COUNTLY_IME_SWITCH_RESULT, iMESwitchCallbackResult.toCountlyString());
        SwitchIMECallback switchIMECallback = this.mSwitchIMECallback;
        if (switchIMECallback != null) {
            switchIMECallback.onSwitchIMEResult(iMESwitchCallbackResult.result, iMESwitchCallbackResult.toString());
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchInputMode() {
        if (hasOperatePermission()) {
            switchInputModeInternal();
        } else {
            LogUtils.i(TAG, "switchInputMode failed：not has control permission");
        }
    }

    public void switchInputModeInternal() {
        LogUtils.i(TAG, "switchInputMode sendEvent to gs");
        sendEvent(ProtoBufUtil.gamePadToMouse(true));
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean switchKeyboard(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            LogUtils.w(TAG, "only x86 games support input-keyboard");
            return false;
        }
        LogUtils.d(TAG, "switchKeyboard:" + z10);
        return showFullKeyboard(z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean switchLocalKeyboard(boolean z10) {
        if (this.mGamePlatformType != GamePlatformType.X86) {
            LogUtils.w(TAG, "only x86 games support input-switchLocalKeyboard");
            return false;
        }
        LogUtils.d(TAG, "switchLocalKeyboard:" + z10);
        return showLocalKeyboard(z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchMobileNetworkTransport(boolean z10) {
        IStreamModel iStreamModel = this.streamModel;
        if (iStreamModel != null) {
            iStreamModel.switchMobileNetworkTransport(z10);
        }
    }

    protected void switchResolutionId(String str, boolean z10) {
        setResolutionList(null, str, z10, false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchStreamType(StreamType streamType, OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
        switchStreamType(streamType, 1, onSwitchStreamTypeListener);
    }

    public void syncCapLock(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cap status: ");
        sb2.append(z10 ? "cap lock" : "cap unlock");
        LogUtils.d(TAG, sb2.toString());
        boolean zSendEvent = sendEvent(ProtoBufUtil.sendCapLockStatus(z10 ? GSSDK.OneInputOPData.InputState.OP_VK_TOGGLED : GSSDK.OneInputOPData.InputState.OP_VK_UNTOGGLED));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("cap status: ");
        sb3.append(z10 ? "cap lock" : "cap unlock");
        sb3.append(zSendEvent ? " success" : " fail");
        LogUtils.d(TAG, sb3.toString());
    }

    public void syncSpeedVsPlay(SdkStreamPayloadData sdkStreamPayloadData) {
        DownloadTransferData downloadTransferData;
        DownloadMode mode;
        if (this.mGamePlatformType == GamePlatformType.ARM) {
            DownloadMode mode2 = null;
            if (!this.streamModel.isSupportFirstFrameOptimization()) {
                SwitchStreamTypeData switchStreamTypeData = this.switchStreamTypeData;
                if (switchStreamTypeData != null) {
                    downloadTransferData = switchStreamTypeData.downloadTransferData;
                    switchStreamTypeData.downloadTransferData = null;
                } else {
                    downloadTransferData = null;
                }
                if (continueDownloadTask(downloadTransferData)) {
                    if (downloadTransferData != null) {
                        mode2 = downloadTransferData.downloadMode;
                    } else {
                        DownloadTaskProxy downloadTaskProxy = this.mDownloadTaskProxy;
                        if (downloadTaskProxy != null) {
                            mode2 = downloadTaskProxy.getMode();
                        }
                    }
                    if (mode2 != null && mode2 == DownloadMode.DOWNLOAD_ONLY) {
                        LogUtils.d(TAG, "download-file: intercept play stream when continue task");
                        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "intercept play stream when continue task");
                        connectWsServer(this.screenUrl);
                        this.isGameStart = true;
                        UiMessageSend(45, "");
                        return;
                    }
                }
            } else if (continueDownloadTask(null)) {
                DownloadTaskProxy downloadTaskProxy2 = this.mDownloadTaskProxy;
                if ((downloadTaskProxy2 == null || (mode = downloadTaskProxy2.getMode()) == null || mode != DownloadMode.DOWNLOAD_ONLY) ? false : true) {
                    LogUtils.d(TAG, "download-file: intercept play stream when continue task");
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "intercept play stream when continue task");
                    connectWsServer(this.screenUrl);
                    this.isGameStart = true;
                    UiMessageSend(45, "");
                    return;
                }
            }
            if (isInterceptStreaming()) {
                connectWsServer(this.screenUrl);
                UiMessageSend(45, "");
                LogUtils.d(TAG, "download-file: intercept play stream");
                return;
            }
        }
        CloudStateSend(3);
        this.curCloudServiceState = 3;
        LogUtils.i(TAG, this.mIsFirstGetCloudService + ":" + this.mPlayerState + "--------------- = syncSpeedVsPlay = " + this.mBitRate + "=curConnectState=" + this.curConnectState);
        if (this.curConnectState == 1 && this.mPlayerState != 5) {
            this.streamModel.start2Play(sdkStreamPayloadData);
            this.curConnectState = 3;
        }
    }

    protected void toSwitchIME() {
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        IWebSocket iWebSocket = this.mWebSocketManager;
        boolean z10 = iWebSocket != null;
        boolean zIsConnect = z10 ? iWebSocket.isConnect(webSocketType) : false;
        if (z10 && zIsConnect) {
            IMESwitchMessage iMESwitchMessage = new IMESwitchMessage();
            iMESwitchMessage.setEvent(this.mIMEConfig.getCurrentIMEType() == 1 ? this.mIMEConfig.getInstanceIMEName() : this.mIMEConfig.getLocalIMEName());
            LogUtils.d(HmIMEManager.TAG, "switch： " + iMESwitchMessage.getEvent());
            this.mWebSocketManager.sendTextMessage(webSocketType, iMESwitchMessage.toString());
            LocalKeyboardModel localKeyboardModel = this.localKeyboardModel;
            if (localKeyboardModel != null) {
                localKeyboardModel.hideInput();
            }
            startSwitchIMEAckTimer(iMESwitchMessage.getEvent());
            return;
        }
        IMESwitchCallbackResult iMESwitchCallbackResult = new IMESwitchCallbackResult();
        iMESwitchCallbackResult.result = 0;
        iMESwitchCallbackResult.code = HmIMEManager.ERROR_CODE_OTHER;
        iMESwitchCallbackResult.message = "ws server is not active";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(iMESwitchCallbackResult.message);
        stringBuffer.append("; ");
        stringBuffer.append("mWebSocketManager is null: ");
        stringBuffer.append(z10);
        stringBuffer.append("; ");
        stringBuffer.append("ws server connected: ");
        stringBuffer.append(zIsConnect);
        iMESwitchCallbackResult.reportMessage = stringBuffer.toString();
        switchIMECallback(iMESwitchCallbackResult);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void turnOffSound() {
        LogUtils.i(TAG, "===turnOffSound====");
        this.currentSound = 0.0f;
        if (isModelNull()) {
            return;
        }
        this.streamModel.turnOffSound();
    }

    protected void turnOffVideo() {
        this.turnOffVideo = true;
        showScreenCover();
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void turnOnSound() {
        LogUtils.i(TAG, "===turnOnSound====");
        this.currentSound = 1.0f;
        if (isModelNull()) {
            return;
        }
        this.streamModel.turnOnSound();
    }

    public void turnOnVideo() {
        this.turnOffVideo = false;
        hideScreenCover();
    }

    protected void unregisterReceiver() {
        if (this.networkReceiver != null) {
            try {
                LogUtils.i(TAG, "=====unregisterReceiver===========");
                CountlyUtil.recordEvent(Constants.COUNTLY_REGISTER_NETWORK_BROADCAST, "network broadcast unregister");
                getContext().getApplicationContext().unregisterReceiver(this.networkReceiver);
                this.networkReceiver = null;
            } catch (Exception e10) {
                LogUtils.e(TAG, "==unregisterReceiver==" + e10.toString());
            }
        }
        if (this.volumeChangeReceiver != null) {
            try {
                LogUtils.i(TAG, "=====unregisterReceiver===========");
                getContext().getApplicationContext().unregisterReceiver(this.volumeChangeReceiver);
                this.volumeChangeReceiver = null;
            } catch (Exception e11) {
                LogUtils.e(TAG, "==unregisterReceiver==" + e11.toString());
            }
        }
    }

    protected void unregisterScreenMonitor() {
        HmScreenMonitor hmScreenMonitor = this.mHmScreenMonitor;
        if (hmScreenMonitor == null) {
            return;
        }
        if (!hmScreenMonitor.isEnable()) {
            LogUtils.d(HmScreenMonitor.TAG, "Screen monitor can not unregister, cause disable");
        } else {
            this.mHmScreenMonitor.setHmScreenOrientationListener(null);
            this.mHmScreenMonitor.unregister();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean updateCTokenTimeStamp(String str, Long l10) {
        LogUtils.e(TAG, "updateCTokenTimeStamp: cToken = " + str + ", timeStamp = " + l10);
        recordLifeCycleEvent("updateCTokenTimeStamp");
        if (!this.tokenTimeStampModel.isWait()) {
            LogUtils.e(TAG, "don`t wait update cToken and time stamp");
            return false;
        }
        this.tokenTimeStampModel.wait(false);
        if (this.mRequestManager == null) {
            LogUtils.e(TAG, "updateCToken fail, mRequestManager is null...");
            return false;
        }
        if (l10 != null) {
            this.tokenTimeStampModel.updateTimeStamp(l10);
        }
        this.mRequestManager.updateCTokenData(str, l10);
        this.mRequestManager.getReCloudServiceRequestV2();
        return true;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateCloudFile(CloudOperation cloudOperation, List<CloudFile> list, UpdateCallback updateCallback) {
        this.mDownloadTaskProxy.updateFiles(cloudOperation, list, updateCallback);
    }

    @Override // com.haima.hmcp.HmcpManager.OnUpdateDataReportStatusListener
    public boolean updateDataReportEnable(boolean z10) {
        if (!z10 && !this.isRelease) {
            checkDataReportIsDisable();
            release();
            this.isRelease = true;
        }
        return z10;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateGameUID(final Bundle bundle, final OnUpdataGameUIDListener onUpdataGameUIDListener) {
        if (this.mRequestManager != null) {
            final Long tokenTimeStamp = this.tokenTimeStampModel.parseTokenTimeStamp(bundle);
            this.mRequestManager.updateGameUID(bundle, new OnUpdataGameUIDListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.24
                @Override // com.haima.hmcp.listeners.OnUpdataGameUIDListener
                public void fail(String str) {
                    OnUpdataGameUIDListener onUpdataGameUIDListener2 = onUpdataGameUIDListener;
                    if (onUpdataGameUIDListener2 != null) {
                        onUpdataGameUIDListener2.fail(str);
                    }
                }

                @Override // com.haima.hmcp.listeners.OnUpdataGameUIDListener
                public void success(boolean z10) {
                    if (tokenTimeStamp != null) {
                        AbsIjkVideoView.this.tokenTimeStampModel.updateTimeStamp(tokenTimeStamp);
                    }
                    OnUpdataGameUIDListener onUpdataGameUIDListener2 = onUpdataGameUIDListener;
                    if (onUpdataGameUIDListener2 != null) {
                        onUpdataGameUIDListener2.success(z10);
                    }
                    if (TextUtils.isEmpty(bundle.getString("cToken"))) {
                        return;
                    }
                    AbsIjkVideoView.this.mToken = bundle.getString("cToken");
                }
            });
        } else {
            CountlyUtil.recordErrorEvent("updateGameUID() mRequestManager == null : " + Log.getStackTraceString(new Throwable()));
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateInstanceTime(int i10, int i11, final OnUpdateInstanceTimeListener onUpdateInstanceTimeListener) {
        if (onUpdateInstanceTimeListener == null) {
            LogUtils.e(TAG, "OnUpdateInstanceTimeListener == null");
            return;
        }
        if (this.mGamePlatformType != GamePlatformType.X86) {
            LogUtils.e(TAG, "updateInstanceTime only support x86!");
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, "updateInstanceTime only support x86!");
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null) {
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, "RequestManager null cannot updateInstanceTime");
            return;
        }
        String cloudId = hmcpRequest.getCloudId();
        if (TextUtils.isEmpty(cloudId)) {
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, "Cannot getCloudId for updateInstanceTime");
            return;
        }
        if (i10 < 0 || i11 < 0) {
            LogUtils.e(TAG, "updateInstanceTime parameters is wrong");
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, "updateInstanceTime parameters is wrong!");
        } else if (i10 != 0 || i11 != 0) {
            this.mRequestManager.updateInstanceTimeRequest(cloudId, i10, i11, new OnUpdateInstanceTimeListener() { // from class: com.haima.hmcp.widgets.q
                @Override // com.haima.hmcp.listeners.OnUpdateInstanceTimeListener
                public final void onUpdateInstanceTimeResult(boolean z10, String str) {
                    AbsIjkVideoView.lambda$updateInstanceTime$13(onUpdateInstanceTimeListener, z10, str);
                }
            });
        } else {
            LogUtils.e(TAG, "The parameters must have a value greater than 0");
            onUpdateInstanceTimeListener.onUpdateInstanceTimeResult(false, "The parameters must have a value greater than 0");
        }
    }

    protected void updateLastOperateDeviceId(InputEvent inputEvent) {
        InputDevice device = inputEvent.getDevice();
        if (device != null && HmInputDeviceManager.isJoyStick(inputEvent)) {
            if (this.mLastOperateDeviceId != device.getId()) {
                InputDeviceInfo deviceInfoByEvent = HmInputDeviceManager.getDeviceInfoByEvent(inputEvent);
                if (deviceInfoByEvent == null) {
                    return;
                } else {
                    notifyDeviceActive(deviceInfoByEvent, Integer.valueOf(HmInputDeviceManager.getIndexByEvent(inputEvent)));
                }
            }
            this.mLastOperateDeviceId = device.getId();
        }
    }

    public void updateVirtualDevice(String str) {
        com.alibaba.fastjson.JSONObject jSONObject;
        LogUtils.i(TAG, "==VirtualDeviceTag==updateVirtualDevice()= " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(TAG, "updateVirtualDevice error: packageName is empty");
            CountlyUtil.recordErrorEvent("updateVirtualDevice error: packageName is empty");
            return;
        }
        boolean zEquals = TextUtils.equals(this.mPackageName, str);
        this.mPackageName = str;
        HmVirtualTextureView hmVirtualTextureView = this.mVirtualDeviceLayout;
        if (hmVirtualTextureView != null) {
            hmVirtualTextureView.setVisibility(8);
        }
        GlobalConfig globalConfig = this.mGlobalConfig;
        if (globalConfig == null || (jSONObject = globalConfig.x86KeyboardMapConfigs) == null || jSONObject.isEmpty()) {
            LogUtils.e(TAG, "updateVirtualDevice error: config is not exist");
            CountlyUtil.recordErrorEvent("updateVirtualDevice error: config is not exist");
            return;
        }
        HmVirtualLayoutBean hmVirtualLayoutBeanLoadingLayoutFromJson = HmVirtualDeviceManager.get().loadingLayoutFromJson(getVirLayoutJson(str), str, this.mAppContext, false);
        if (hmVirtualLayoutBeanLoadingLayoutFromJson == null) {
            LogUtils.e(TAG, "updateVirtualDevice error : layout is empty");
            CountlyUtil.recordErrorEvent("updateVirtualDevice error : layout is empty");
        } else if (!hasOperatePermission()) {
            VirtualOperateType virtualOperateTypeFromLayoutJson = getVirtualOperateTypeFromLayoutJson(hmVirtualLayoutBeanLoadingLayoutFromJson);
            this.mDefaultOperateType = virtualOperateTypeFromLayoutJson;
            loadVirtualDeviceLayoutAndHide(virtualOperateTypeFromLayoutJson);
        } else if (zEquals) {
            showVirtualDeviceByOperate(this.mDefaultOperateType);
        } else {
            showVirtualDeviceByConfig(hmVirtualLayoutBeanLoadingLayoutFromJson);
        }
    }

    protected void updateVirtualDeviceAndCursor() {
        if (this.mVirtualDeviceLayout != null) {
            LogUtils.i(TAG, "virtualDevice is exist");
            if (this.mDefaultOperateType != VirtualOperateType.NONE && this.mHasOperatePermission) {
                this.mVirtualDeviceLayout.setVisibility(0);
            }
        }
        Bitmap bitmap = this.mCursorBitmap;
        if (bitmap != null) {
            this.mTouchUtil.setCursorBitmap(bitmap);
        }
        MouseView mouseView = this.mCursorImageView;
        if (mouseView != null) {
            mouseView.setVisibility(0);
        }
        this.mTouchUtil.updateMouse();
    }

    protected void updateVirtualKeyBoardViewInfo() {
        boolean virtualKeyViewEnable;
        EventMappingModel eventMappingModel = this.eventMappingModel;
        if (eventMappingModel == null || eventMappingModel.getButtonMappingUtil() == null) {
            LogUtils.i(TAG, "buttonMappingUtil is null");
            return;
        }
        JSONArray keymappingList = this.eventMappingModel.getButtonMappingUtil().getKeymappingList(null, 2);
        List<PointCoord> array = keymappingList != null ? com.alibaba.fastjson.a.parseArray(keymappingList.toString(), PointCoord.class) : null;
        if (keymappingList == null || array == null || array.size() == 0) {
            LogUtils.e(TAG, "keyboardMap error : layout is empty");
            return;
        }
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            width = ConfigUtil.getScreenWidth(getContext());
            height = ConfigUtil.getScreenHeight(getContext());
            LogUtils.d(TAG, "==addVirtualKeyBoardView()===width:" + width + ",height:" + height);
        }
        VirtualKeyboardSurfaceView virtualKeyboardSurfaceView = this.mVirtualKeyboardSurfaceView;
        if (virtualKeyboardSurfaceView == null) {
            LogUtils.i(TAG, "updateVirtualLayoutSize failed:mVirtualKeyboardSurfaceView is null");
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) virtualKeyboardSurfaceView.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = height;
        this.mVirtualKeyboardSurfaceView.setLayoutParams(layoutParams);
        this.mVirtualKeyboardSurfaceView.updateKeyboardMapping(array);
        this.mVirtualKeyboardSurfaceView.setFocusable(false);
        this.mVirtualKeyboardSurfaceView.setClickable(false);
        if (this.eventMappingModel.getButtonMappingUtil().mFireCoord != null) {
            this.mVirtualKeyboardSurfaceView.setFireCoord(this.eventMappingModel.getButtonMappingUtil().mFireCoord);
        }
        if (this.eventMappingModel.getButtonMappingUtil().mSightbBeadCoord != null) {
            this.mVirtualKeyboardSurfaceView.setSightBeadCoord(this.eventMappingModel.getButtonMappingUtil().mSightbBeadCoord);
        }
        if (!this.mInitVirtualKeyboardViewConfig) {
            if (this.mUserConfigVirtualKeyboardView) {
                virtualKeyViewEnable = this.mEnableVirtualKeyboardView;
            } else {
                GlobalConfig globalConfig = this.mGlobalConfig;
                virtualKeyViewEnable = globalConfig != null ? globalConfig.getVirtualKeyViewEnable() : false;
            }
            this.mVirtualKeyboardVisible = virtualKeyViewEnable;
            this.mInitVirtualKeyboardViewConfig = true;
        }
        this.mVirtualKeyboardSurfaceView.setVisibility(this.mVirtualKeyboardVisible ? 0 : 8);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public synchronized void upload(CloudFile cloudFile) {
        upload(cloudFile, this.mCloudOperationListener);
    }

    @Override // com.haima.hmcp.business.HmcpRequestManager.OnHmcpSaasRequestListener
    public void waitStreamUrl(String str) {
        this.mIsNotifyConnectedWaitOP5 = true;
        this.isOperationStreamUrlReceived = false;
        this.isOperationStreamUrlPreReceived = false;
        if (this.isBackground) {
            return;
        }
        createTimer(str);
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
    protected void wsServerMessageDispatcher(String str) {
        WsUploadDownloadBean wsUploadDownloadBean;
        BaseWsMessage data;
        String strOptString;
        String str2;
        String str3 = "";
        LogUtils.i(TAG, "====onInputMessageWsServer=====" + str);
        string = null;
        String string = null;
        try {
            wsUploadDownloadBean = (WsUploadDownloadBean) com.alibaba.fastjson.a.parseObject(str, WsUploadDownloadBean.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            wsUploadDownloadBean = null;
        }
        if (wsUploadDownloadBean == null) {
            return;
        }
        if (TextUtils.equals(wsUploadDownloadBean.type, "share_link")) {
            LogUtils.i(TAG, BaseCloudFileManager.FILTER_TAG + str);
            if (TextUtils.isEmpty(parseShare(str))) {
                CountlyUtil.recordErrorEvent("onShare is empty data");
                return;
            } else {
                if (this.mListener != null) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_SHARE);
                    this.mListener.onCloudDeviceStatus(str);
                    return;
                }
                return;
            }
        }
        if (TextUtils.equals(wsUploadDownloadBean.type, "open_camera")) {
            LogUtils.i(TAG, BaseCloudFileManager.FILTER_TAG + str);
            if (this.mListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_OPEN_CAMERA);
                this.mListener.onCloudDeviceStatus(str);
                return;
            }
            return;
        }
        if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_OPEN_GALLERY)) {
            LogUtils.i(TAG, BaseCloudFileManager.FILTER_TAG + str);
            if (this.mListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_OPEN_GALLERY);
                this.mListener.onCloudDeviceStatus(str);
                return;
            }
            return;
        }
        if (TextUtils.equals(wsUploadDownloadBean.type, "screen_cap")) {
            LogUtils.i(TAG, BaseCloudFileManager.FILTER_TAG + str);
            if (this.mListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_SCREEN_CAP);
                this.mListener.onCloudDeviceStatus(str);
                return;
            }
            return;
        }
        if (TextUtils.equals(wsUploadDownloadBean.type, "image_list")) {
            LogUtils.i(TAG, BaseCloudFileManager.FILTER_TAG + str);
            cancelRequestImageListTimer();
            if (this.mListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_IMAGE_LIST_RESPONSE, str);
                OnCloudImageListListener onCloudImageListListener = this.mCloudImageListListener;
                if (onCloudImageListListener != null) {
                    if (!this.isRequestImageListTimeout) {
                        onCloudImageListListener.onSuccess(str);
                        return;
                    }
                    LogUtils.e(TAG, "cloud-file: request image list time out:" + str);
                    CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_IMAGE_LIST_RESPONSE, "request image list time out");
                    return;
                }
                return;
            }
            return;
        }
        if (!TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE)) {
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_INTENT) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_CLIPBOARD) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_GPS) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_UPDATE_VIEW)) {
                LogUtils.i(TAG, "====onInputMessageWsServer=====" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_RECEIVE, getMessage("===receive WsMessage===" + str));
                if (this.mRequestManager == null || (data = parseData(str)) == null || this.mListener == null) {
                    return;
                }
                if ((data instanceof ResponseWsMessage) && this.mWsMessageManager != null) {
                    if (Constants.WS_MESSAGE_TYPE_INTENT.equals(data.type) || Constants.WS_MESSAGE_TYPE_UPDATE_VIEW.equals(data.type)) {
                        this.mWsMessageManager.removeSendWsMessage(true, data.mid);
                        return;
                    } else {
                        if (Constants.WS_MESSAGE_TYPE_CLIPBOARD.equals(data.type)) {
                            this.mWsMessageManager.cancelCountDownTimer(true, data.mid);
                            return;
                        }
                        return;
                    }
                }
                if (data instanceof IntentWsMessage) {
                    this.mWsMessageManager.notifyResponse(this.mRequestManager.getCloudId(), this.mRequestManager.getAccessKeyId(), data.mid);
                    this.mListener.onInterceptIntent((String) ((IntentWsMessage) data).data);
                    return;
                }
                if (!(data instanceof ClipBoardWsMessage)) {
                    if (data instanceof GPSAuthWsMessage) {
                        notifyGPSAuth((String) ((GPSAuthWsMessage) data).data);
                        return;
                    }
                    return;
                } else {
                    ClipBoardWsMessage clipBoardWsMessage = (ClipBoardWsMessage) data;
                    if (clipBoardWsMessage.dataIsValid()) {
                        notifyClipBoard((ClipBoardData) clipBoardWsMessage.data);
                        return;
                    } else {
                        CountlyUtil.recordErrorEvent("clipboard message is not valid");
                        LogUtils.d(TAG, "clipboard message is not valid");
                        return;
                    }
                }
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_ANDROID_SHARE) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_WEIXIN_SHARE) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_QQ_SHARE) || TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_WEIBO_SHARE)) {
                processShareMessage(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_SCREEN)) {
                setScreenBrightness(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_SWITCH_IME)) {
                parseSwitchIMEMessage(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_GET_CLOUD_IME_TYPE)) {
                GetCloudImeTransaction getCloudImeTransaction = this.mGetCloudImeTransaction;
                if (getCloudImeTransaction != null) {
                    getCloudImeTransaction.parseGetCloudImeTypeMessage(str);
                    return;
                }
                return;
            }
            if ("sensor".equals(wsUploadDownloadBean.type)) {
                processSensorSingle(str);
                return;
            }
            if (Constants.WS_MESSAGE_TYPE_SENSOR_LIST.equals(wsUploadDownloadBean.type)) {
                processSensorList(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_STORAGE)) {
                processStorageStatus(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_SCREEN_ROTATION)) {
                processScreenOrientation(str);
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_VIBRATOR_ON)) {
                HmVibratorManager hmVibratorManager = this.mHmVibratorManager;
                if (hmVibratorManager != null) {
                    hmVibratorManager.processVibratorOn(str);
                    return;
                }
                return;
            }
            if (TextUtils.equals(wsUploadDownloadBean.type, Constants.WS_MESSAGE_TYPE_VIBRATOR_OFF)) {
                HmVibratorManager hmVibratorManager2 = this.mHmVibratorManager;
                if (hmVibratorManager2 != null) {
                    hmVibratorManager2.processVibratorOff(str);
                    return;
                }
                return;
            }
            if (str.contains("orientation")) {
                if (Utils.isTV()) {
                    this.tvModel.switchOrientation(str);
                    return;
                }
                return;
            }
            IStreamModel iStreamModel = this.streamModel;
            boolean z10 = false;
            if (iStreamModel != null && iStreamModel.getStreamType() == 1) {
                RtcPlayer rtcPlayer = ((RtcModel) this.streamModel).getRtcPlayer();
                HmRtcAdapter hmRtcAdapter = rtcPlayer != null ? rtcPlayer.getmHmRtcAdapter() : null;
                boolean z11 = hmRtcAdapter != null && hmRtcAdapter.isRtcUploadAudioChannelConfigOn();
                LogUtils.d(TAG, "rtc handle audio available: " + z11);
                z10 = z11;
            }
            if (!z10) {
                LogUtils.d(TAG, "sdk handle audio");
                parseRecordMessage(str);
                return;
            }
            if (!RecordHelper.getsInstance().isPermissionAllowed(getContext())) {
                LogUtils.d(TAG, "need permission: Manifest.permission.RECORD_AUDIO");
                HmcpPlayerListener hmcpPlayerListener = this.mListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onPermissionNotGranted("android.permission.RECORD_AUDIO");
                }
            }
            LogUtils.d(TAG, "rtc handle audio");
            return;
        }
        LogUtils.e(TAG, "download-file: parse vide payload");
        try {
            JSONObject jSONObject = new JSONObject(str);
            strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, "");
            try {
                if (Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE.equals(strOptString) || "create_file".equals(strOptString)) {
                    String strOptString2 = jSONObject.optString("data", "");
                    try {
                        JSONObject jSONObject2 = new JSONObject(strOptString2);
                        String strOptString3 = jSONObject2.optString("name", "");
                        String strOptString4 = jSONObject2.optString("path", "");
                        if (Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE.equals(strOptString)) {
                            str3 = strOptString4 + net.lingala.zip4j.util.e.F0 + strOptString3;
                        } else {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("name", strOptString3);
                            jSONObject3.put("path", strOptString4);
                            strOptString2 = jSONObject3.toString();
                        }
                    } catch (JSONException unused) {
                    }
                    if (TextUtils.isEmpty(strOptString2)) {
                        LogUtils.e(TAG, "download-file: parse vide payload fail, cause data is null");
                    } else {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("type", Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE);
                        jSONObject4.put(NotificationCompat.CATEGORY_EVENT, strOptString);
                        jSONObject4.put("data", strOptString2);
                        string = jSONObject4.toString();
                        LogUtils.e(TAG, "download-file: parse vide payload success: " + jSONObject4);
                    }
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    if (Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE.equals(strOptString)) {
                        if (this.mWebSocketManager != null) {
                            JSONObject jSONObject5 = new JSONObject();
                            try {
                                HmcpRequest hmcpRequest = this.mRequestManager;
                                if (hmcpRequest != null) {
                                    jSONObject5.put("cid", hmcpRequest.getCloudId());
                                    jSONObject5.put(Constants.WS_MSG_KEY_BID, this.mRequestManager.getAccessKeyId());
                                }
                                jSONObject5.put("code", 1000);
                                jSONObject5.put("type", Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE);
                                jSONObject5.put(NotificationCompat.CATEGORY_EVENT, ConstantsInternal.ACK);
                                jSONObject5.put("fileName", str3);
                            } catch (JSONException e11) {
                                e11.printStackTrace();
                            }
                            this.mWebSocketManager.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, jSONObject5.toString());
                        }
                        str2 = "save file=" + string;
                        LogUtils.d(TAG, "download-file: a video file saved from rom; file=" + string);
                    } else {
                        str2 = "create file=" + string;
                        LogUtils.d(TAG, "download-file: a video file create from rom; file=" + string);
                    }
                    CountlyUtil.recordEvent(Constants.COUNTLY_REMOTE_VIDEO_RECORD, str2);
                    HmcpPlayerListener hmcpPlayerListener2 = this.mListener;
                    if (hmcpPlayerListener2 != null) {
                        hmcpPlayerListener2.onCloudDeviceStatus(string);
                    }
                }
            } catch (JSONException e12) {
                e = e12;
                LogUtils.e(TAG, "download-file: parse vide payload error: " + Log.getStackTraceString(e));
            }
        } catch (JSONException e13) {
            e = e13;
            strOptString = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00eb A[PHI: r8
      0x00eb: PHI (r8v6 int) = (r8v4 int), (r8v18 int), (r8v18 int) binds: [B:44:0x00fc, B:37:0x00ef, B:33:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    public void sendGamePadData(InputEvent inputEvent, boolean z10) {
        int iFloatValue;
        int indexByEvent = HmInputDeviceManager.getIndexByEvent(inputEvent);
        JoyStickBean joyStickBean = getJoyStickBean(inputEvent, z10);
        String vendorIdByEvent = getVendorIdByEvent(inputEvent);
        if (SwitchControllerManager.getInstance().isJoyCon(inputEvent.getDevice())) {
            SwitchControllerManager.getInstance().handleJoyStickBean(joyStickBean, inputEvent);
            indexByEvent = SwitchControllerManager.getInstance().getDeviceIndex(inputEvent, indexByEvent);
            LogUtils.d(TAG, "input is switch joy-con and index = " + indexByEvent);
        }
        if (isX86SingleGamePadMode()) {
            indexByEvent = 0;
        }
        LogUtils.d(TAG, "sendGamePadData vendorId=" + vendorIdByEvent + " index=" + indexByEvent);
        if (isGamePadToMouse() && (inputEvent instanceof KeyEvent)) {
            KeyEvent keyEvent = (KeyEvent) inputEvent;
            int keyCode = keyEvent.getKeyCode();
            if (isDpadDirection(keyCode)) {
                joyStickBean = keyEvent.getAction() == 0 ? getJoyStickBeanByEvent(keyCode) : new JoyStickBean();
                vendorIdByEvent = Constants.GAMEPAD_XBOX_VENDOR_ID_DEFAULT;
            }
        }
        LogUtils.d(TAG, "joyValue=" + joyStickBean.toString() + ";" + joyStickBean.getBtnValue());
        sendEventByDataType(ProtoBufUtil.getGamePadData(joyStickBean.getBtnValue(), vendorIdByEvent, indexByEvent), false);
        int iFloatValue2 = 255;
        if (inputEvent instanceof MotionEvent) {
            Float f10 = joyStickBean.L2AxisValue;
            if (f10 != null) {
                if (joyStickBean.L2) {
                    iFloatValue = (int) (f10.floatValue() * 255.0f);
                } else {
                    iFloatValue = 0;
                }
            } else if (joyStickBean.L2) {
                iFloatValue = 255;
            } else {
                iFloatValue = 0;
            }
            Float f11 = joyStickBean.R2AxisValue;
            if (f11 != null) {
                if (joyStickBean.R2) {
                    iFloatValue2 = (int) (f11.floatValue() * 255.0f);
                } else {
                    iFloatValue2 = 0;
                }
            } else if (!joyStickBean.R2) {
                iFloatValue2 = 0;
            }
        } else {
            iFloatValue = joyStickBean.L2 ? 255 : 0;
            if (!joyStickBean.R2) {
                iFloatValue2 = 0;
            }
        }
        sendEventByDataType(ProtoBufUtil.getGamePadLTData(iFloatValue, vendorIdByEvent, indexByEvent), false);
        sendEventByDataType(ProtoBufUtil.getGamePadRTData(iFloatValue2, vendorIdByEvent, indexByEvent), false);
        sendEventByDataType(ProtoBufUtil.getGamePadStickData(new Point((int) (joyStickBean.L_X * 32767.0f), (int) (joyStickBean.L_Y * 32767.0f)), vendorIdByEvent, indexByEvent), false);
        sendEventByDataType(ProtoBufUtil.getGamepadThumbRData(new Point((int) (joyStickBean.R_X * 32767.0f), (int) (joyStickBean.R_Y * 32767.0f)), vendorIdByEvent, indexByEvent), false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
        if (!hasOperatePermission()) {
            LogUtils.d(TAG, "not has control permission");
            CountlyUtil.recordErrorEvent("not has control permission");
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_START, getFileInfo(cloudFile));
        if (this.mGamePlatformType != GamePlatformType.X86) {
            this.mCloudFileManager.resetDownloadRetry();
            internalDownload(cloudFile);
        } else {
            if (cloudOperationListener == null) {
                cloudOperationListener = this.mCloudOperationListener;
            }
            internalDownloadX86(cloudFile, cloudOperationListener);
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public float getMouseSensitivity() {
        TouchUtil touchUtil = this.mTouchUtil;
        if (touchUtil != null) {
            return touchUtil.getSensitivity();
        }
        return 0.0f;
    }

    public void refreshStoken(int i10, String str, boolean z10, boolean z11) {
        LogUtils.i(TAG, "===start refresh stoken====" + str);
        if (this.isBackground) {
            return;
        }
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest == null || !hmcpRequest.isStopPlay) {
            this.streamModel.rfreshStoken();
            if (this.isGameStart && z10) {
                this.streamModel.stopPlay(z11, true);
            }
            if (this.mPlayerState == 5 || this.curConnectState == 5) {
                LogUtils.e(TAG, "===game over no refresh ====");
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
            String str2 = Constants.ERRORCODE_OTHER_010;
            if (hmcpRequest2 != null && !TextUtils.isEmpty(hmcpRequest2.getCloudId())) {
                str2 = Constants.ERRORCODE_OTHER_010 + "-" + this.mRequestManager.getCloudId();
            }
            JSONObject jSONObjectCallbackHmcpError = callbackHmcpError(new ErrorInfo().put("errorCode", str2).put("rootCause", this.mResfreshStokenReasons).put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_refresh_stoken_over_max)), 23);
            this.object = jSONObjectCallbackHmcpError;
            release(jSONObjectCallbackHmcpError.toString());
            this.mPlayerState = 4;
        }
    }

    public void sendMotionEvent(int i10, int i11, FPoint fPoint) {
        String strBuildEventContent;
        if (Constants.CONFIG_INPUT_PROTOCOL_VERSION != 2 && !Constants.CONFIG_COMPUTE_DELAY_TIME_SWITCH) {
            strBuildEventContent = MotionEventUtil.getSendMotionEventContent(i10, fPoint);
        } else {
            if (fPoint == null) {
                return;
            }
            if (fPoint.f33815x > 1.0f) {
                fPoint.f33815x = 1.0f;
            }
            if (fPoint.f33815x < 0.0f) {
                fPoint.f33815x = 0.0f;
            }
            if (fPoint.f33816y > 1.0f) {
                fPoint.f33816y = 1.0f;
            }
            if (fPoint.f33816y < 0.0f) {
                fPoint.f33816y = 0.0f;
            }
            strBuildEventContent = buildEventContent(i10, i11, fPoint, this.eventBuilder);
        }
        sendToInstanceMsg(strBuildEventContent);
    }

    public boolean sendToInstanceMsg(String str, boolean z10) {
        LogUtils.d(TAG, "sendToInstanceMsg payload:" + str + ",isDiscardable:" + z10);
        HMInput hMInput = this.mHMInput;
        if (hMInput != null) {
            return hMInput.sendMessage(str, z10);
        }
        return false;
    }

    protected void switchStreamType(StreamType streamType, int i10, OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
        HmcpRequest hmcpRequest;
        if (this.mGamePlatformType == GamePlatformType.X86 && streamType == StreamType.RTMP) {
            Utils.switchStreamTypeResultCallback(streamType, i10, false, onSwitchStreamTypeListener, SwitchStreamTypeError.UN_SUPPORT_ERROR);
            return;
        }
        pauseDownloadTask();
        if (this.isBackground || this.mRequestManager == null || isModelNull()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("isBackground:");
            sb2.append(this.isBackground);
            sb2.append(",mRequestManager is null:");
            sb2.append(this.mRequestManager == null);
            LogUtils.e(TAG, sb2.toString());
            return;
        }
        LogUtils.d(TAG, "streamType:" + streamType + ",switchCode:" + i10);
        ReportStreamTypeCall reportStreamTypeCall = new ReportStreamTypeCall();
        reportStreamTypeCall.setStreamType(streamType == null ? "null" : streamType.name());
        reportStreamTypeCall.setSwitchCode(i10);
        CountlyUtil.recordEvent(CountlyEventId.SWITCH_STREAM_TYPE_CALLED, JsonUtil.toJsonString(reportStreamTypeCall));
        if (streamType == null) {
            Utils.switchStreamTypeResultCallback(null, i10, false, onSwitchStreamTypeListener, SwitchStreamTypeError.TARGET_TYPE_IS_NULL);
            return;
        }
        if (HmcpManager.getInstance().getStreamType().equals(streamType)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("switch stream type failed:");
            SwitchStreamTypeError switchStreamTypeError = SwitchStreamTypeError.ALREADY_IN_TYPE;
            sb3.append(switchStreamTypeError);
            LogUtils.e(TAG, sb3.toString());
            Utils.switchStreamTypeResultCallback(streamType, i10, false, onSwitchStreamTypeListener, switchStreamTypeError);
            return;
        }
        if (this.mRequestManager.isInTvRtcBlackList()) {
            Utils.switchStreamTypeResultCallback(streamType, i10, false, onSwitchStreamTypeListener, SwitchStreamTypeError.IN_DEVICE_BLACK_LIST);
        } else if (this.isBackground || (hmcpRequest = this.mRequestManager) == null) {
            Utils.switchStreamTypeResultCallback(streamType, i10, false, onSwitchStreamTypeListener, SwitchStreamTypeError.IN_BACKGROUND);
        } else {
            hmcpRequest.getSwitchStreamTypeRequest(streamType, i10, onSwitchStreamTypeListener, new AnonymousClass31(streamType, i10, onSwitchStreamTypeListener));
        }
    }

    protected class TimeOutTask extends CountDownTimer {
        private String rootCause;

        public TimeOutTask(long j10, long j11) {
            super(j10, j11);
            this.rootCause = "";
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
            HmcpRequest hmcpRequest = absIjkVideoView.mRequestManager;
            if (hmcpRequest == null) {
                return;
            }
            if (!absIjkVideoView.isGetControl && !hmcpRequest.isStopPlay) {
                absIjkVideoView.reCloudServiceRequestV2();
                return;
            }
            CloudPlayInfo cloudPlayInfo = AbsIjkVideoView.cloudPlayInfo;
            String str = (cloudPlayInfo == null || cloudPlayInfo.isPingPongNormal()) ? Constants.ERRORCODE_OTHER_009 : Constants.ERRORCODE_OTHER_099;
            if (!TextUtils.isEmpty(AbsIjkVideoView.this.mRequestManager.getCloudId())) {
                str = str + "-" + AbsIjkVideoView.this.mRequestManager.getCloudId();
            }
            AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
            absIjkVideoView2.object = absIjkVideoView2.callbackHmcpError(new ErrorInfo().put("errorCode", str).put("rootCause", this.rootCause).put("errorMessage", ResourceManager.getString(R.string.haima_hmcp_net_timeout)), 23);
            Handler handler = AbsIjkVideoView.this.mHmcpHandler;
            if (handler != null) {
                android.os.Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = 222;
                messageObtainMessage.obj = AbsIjkVideoView.this.object.toString();
                AbsIjkVideoView.this.mHmcpHandler.sendMessage(messageObtainMessage);
            }
            LogUtils.e(AbsIjkVideoView.TAG, "imeOutTask extends TimerTask");
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }

        public TimeOutTask(long j10, long j11, String str) {
            super(j10, j11);
            this.rootCause = str;
        }
    }

    protected FPoint calculatePoint(MotionEvent motionEvent, int i10) {
        float landscapeX;
        float landscapeY;
        float x10 = MotionEventCompat.getX(motionEvent, i10);
        float y10 = MotionEventCompat.getY(motionEvent, i10);
        if (this.mOrientation == ScreenOrientation.PORTRAIT) {
            landscapeX = this.mRenderView.getPortaitX(x10, y10);
            landscapeY = this.mRenderView.getPortaitY(x10, y10);
        } else {
            landscapeX = this.mRenderView.getLandscapeX(x10, y10);
            landscapeY = this.mRenderView.getLandscapeY(x10, y10);
        }
        LogUtils.d(TAG, x10 + ", " + y10 + ", " + landscapeX + ", sendTextMessage==send success" + landscapeY);
        FPoint fPoint = new FPoint();
        fPoint.f33815x = formatValue(landscapeX);
        fPoint.f33816y = formatValue(landscapeY);
        fPoint.ts = SystemClock.elapsedRealtime() - this.mBaseConnectInputTime;
        return fPoint;
    }

    protected String getMetaInfoByKey(String str, String str2) {
        LogUtils.i(TAG, "==getMetaInfoByKey====key===" + str + "===value===" + str2);
        String string = "";
        if (this.mMetaInfos != null) {
            if (!TextUtils.isEmpty(str)) {
                string = this.mMetaInfos.get(str);
                if (TextUtils.isEmpty(string) && !Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                    CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
                }
            }
        } else {
            LogUtils.e(TAG, "==getMetaInfoByKey====mMetaInfos == null");
            if (Constants.TIPS_PROMPT_NETWORK_UNAVAILABLE.equals(str)) {
                string = ResourceManager.getString(R.string.haima_hmcp_network_unavailable_prompt);
            } else {
                str.equals(Constants.REVOLVE_TIME);
            }
            if (!Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
            }
        }
        String strReplaceString = StringUtils.replaceString(string, str2);
        LogUtils.i(TAG, "==getMetaInfoByKey====tip==value=" + strReplaceString);
        return strReplaceString;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setDpadMouseMoveStep(Float f10, Float f11) {
        LogUtils.i(TAG, "setDpadMouseMoveStep step = " + f10 + ", longStep = " + f11);
        this.dpadMouseModel.setDpadMouseMoveStep(f10, f11);
        this.mDpadMouseMoveStep = this.dpadMouseModel.getDpadMouseStep();
    }

    protected void stopRomRecord(Source source) {
        CountlyUtil.recordEvent("13210", source.name());
        LogUtils.d(TAG, "Audio-Record: stopRomRecord");
        sendWsMessageRecord("STOP_RECORD");
        RecordHelper.getsInstance().stop(false);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public synchronized void upload(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
        if (!hasOperatePermission()) {
            LogUtils.d(TAG, "not has control permission");
            CountlyUtil.recordErrorEvent("not has control permission");
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_START, getFileInfo(cloudFile));
        if (this.mGamePlatformType == GamePlatformType.X86) {
            if (cloudOperationListener == null) {
                cloudOperationListener = this.mCloudOperationListener;
            }
            internalUploadX86(cloudFile, cloudOperationListener);
        } else {
            this.mCloudFileManager.resetUploadRetry();
            internalUpload(cloudFile);
        }
    }

    protected void sendKeyboardEvent(String str, String str2) {
        sendToInstanceMsg(MotionEventUtil.getSendKeyboardEventContent(str, str2));
        if ("1".equals(str)) {
            this.downEventMap.put(str2, "gamePad:" + str2 + ":0");
            return;
        }
        this.downEventMap.remove(str2);
    }

    protected void sendWsMessageRecord(String str) {
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null && iWebSocket.isConnect(webSocketType)) {
            this.mWebSocketManager.sendTextMessage(webSocketType, str);
        }
        LogUtils.i(TAG, "Audio-Record: ====sendWsMessageRecord=====" + str);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelDownload(CloudFile cloudFile, CancelCallback cancelCallback) {
        this.mDownloadTaskProxy.cancelDownload(cloudFile, cancelCallback);
    }

    protected void setScreenBrightness(float f10) {
        try {
            if (this.mScreenActivity == null) {
                this.mScreenActivity = getCurActOrNull();
            }
            Activity activity = this.mScreenActivity;
            if (activity != null) {
                Window window = activity.getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.screenBrightness = f10;
                window.setAttributes(attributes);
            }
        } catch (Exception e10) {
            LogUtils.i(TAG, "setScreenBrightness error：" + e10.getLocalizedMessage());
        }
    }

    public void UiMessageSend(int i10, String str) {
        UiMessageSend(getCallbackData(i10, str));
    }

    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        return onSwitchResolution(i10, resolutionInfo, i11, null);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int resetInputTimer() {
        LogUtils.i(TAG, "====resetInputTimer=====");
        if (checkDataReportIsDisable() || checkSdkNotInit()) {
            return 0;
        }
        return resetInputTimer(true);
    }

    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11, ResolutionInfoExtra resolutionInfoExtra) {
        IStreamModel iStreamModel;
        recordLifeCycleEvent("onSwitchResolution_level");
        String str = "";
        if (isInterceptStreaming()) {
            LogUtils.d(TAG, "download-file: not allow switch resolution in download only mode");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "not allow switch resolution in download only mode");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", 1);
                jSONObject.put("message", "download only mode");
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            UiMessageSend(21, "");
            return false;
        }
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
        checkAccessState();
        disconnectSocketIo(false, false, false);
        this.isNeedShowSwitchSuccess = true;
        this.mRequestManager.switchResolution(resolutionInfo.f33828id, i11, resolutionInfoExtra != null ? resolutionInfoExtra.viewFrameRate : 0);
        ResolutionInfo resolutionInfo2 = this.mCurResolution;
        if (resolutionInfo2 != null) {
            String str2 = resolutionInfo2.bitRate;
            String str3 = resolutionInfo2.f33828id;
            str = resolutionInfo2.peakBitRate;
        }
        com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
        jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_source), (Object) str);
        jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_des), (Object) resolutionInfo.peakBitRate);
        jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_method), (Object) Integer.valueOf(this.mSwitchAuto ? 1 : 0));
        sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_crst), jSONObject2.toJSONString());
        if (!this.mSwitchAuto && (iStreamModel = this.streamModel) != null) {
            this.mBitRate = iStreamModel.getCurrentBitRate();
        }
        this.mSwitchAuto = false;
        return true;
    }

    protected void sendKeyboardEvent(String str, String str2, String str3) {
        String sendKeyboardEventContent = MotionEventUtil.getSendKeyboardEventContent(str, str2, this.tvBattleMode.getGamePadNumInBattle(str3));
        LogUtils.d("WebSocketManager", "sendKeyboardEvent---sendtoString==null:" + sendKeyboardEventContent);
        sendToInstanceMsg(sendKeyboardEventContent);
        if ("1".equals(str)) {
            this.downEventMap.put(str2, MotionEventUtil.getGamePadContent(str3) + str2 + ":0");
            return;
        }
        this.downEventMap.remove(str2);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(List<CloudFile> list, DownloadMode downloadMode, DownloadCallback downloadCallback) {
        this.mDownloadTaskProxy.setHmcpRequest(this.mRequestManager);
        this.mDownloadTaskProxy.setWebSocketManager(this.mWebSocketManager);
        this.mDownloadTaskProxy.execute(list, downloadMode, new AnonymousClass2(downloadCallback));
    }

    public void calcWindowStreamScale(float f10, float f11, int i10, int i11) {
        LogUtils.d(TAG, "calcWindowStreamScale streamWidth:" + f10 + ",steamHeight:" + f11 + "viewWidth:" + i10 + ",viewHeight:" + i11);
        if (this.mGamePlatformType != GamePlatformType.X86 || i10 == 0 || i11 == 0) {
            return;
        }
        float f12 = i10;
        float f13 = f10 / f12;
        float f14 = i11;
        float f15 = f11 / f14;
        if (this.mOrientation == ScreenOrientation.PORTRAIT) {
            f13 = f10 / f14;
            f15 = f11 / f12;
        }
        LogUtils.d(TAG, "scaleX:" + f13 + ",scaleY:" + f15 + ";width=" + i10 + ";height=" + i11);
        if (f13 > f15) {
            this.streamScale = f13;
        } else {
            this.streamScale = f15;
        }
        if (this.mTouchUtil == null) {
            TouchUtil touchUtil = new TouchUtil();
            this.mTouchUtil = touchUtil;
            touchUtil.setView(this);
        }
        this.mTouchUtil.setScale(this.streamScale);
    }

    private void startRecord(RecordCmdResult recordCmdResult) {
        RecordHelper.getsInstance().start(recordCmdResult.getParm());
        RecordHelper.getsInstance().setRecordDataListener(new RecordHelper.RecordDataListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.4
            @Override // com.haima.hmcp.business.RecordHelper.RecordDataListener
            public void onData(byte[] bArr) {
                AbsIjkVideoView.this.sendWsMessageRecord(bArr);
            }
        });
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startPlay(boolean z10) {
        this.mIsAhead = z10;
        HmcpRequest hmcpRequest = this.mRequestManager;
        if (hmcpRequest != null) {
            hmcpRequest.setIsAhead(z10);
            rePlay();
        } else {
            startPlay();
        }
    }

    public void refreshStoken(int i10, String str) {
        refreshStoken(i10, str, true);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void release() {
        EventModel eventModel = this.eventModel;
        if (eventModel != null) {
            eventModel.setKeyboardDirectionDefault();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("from", "app");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        release(jSONObject.toString());
    }

    public AbsIjkVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fixedGamepadVendorId = "";
        this.CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
        this.CACHE_EVENT_KEYBOARD_DIRECTION = "keyboardDirection";
        this.MAX_AMPLITUDE = 255;
        this.MIN_AMPLITUDE = 1;
        this.DEFAULT_VIBRATOR_AMPLITUDE = 128;
        this.MAX_X86_AMPLITUDE = 65535;
        this.VIBRATOR_CONVERSION = 0.0038910506f;
        this.downEventMap = new ConcurrentHashMap<>();
        this.mKeyboardConfigJsonApp = "";
        this.mCurrentInputDevice = 0;
        this.QUIT_TYPE = "quitType";
        this.QUIT_TYPE_VALUE_TIME_LIMIT = 1;
        this.QUIT_TYPE_VALUE_PROCESS_KILLED = 2;
        this.QUIT_TYPE_VALUE_OWNER_EXIT = 3;
        this.SASS_SERVER_MAINTENANCE = false;
        this.mKeepAliveTimeSec = null;
        this.isShowTime = true;
        this.sendStopIMEOneShot = false;
        this.mCutOutsHeightPercent = new float[]{0.0f, 0.0f};
        this.verticalBackground = -1;
        this.mInternetSpeed = -1.0f;
        this.mSelfResolutionId = -1;
        this.mIsAllowCompatibleIPV6 = false;
        this.mIsCustomPlayer = false;
        this.languageFromApp = null;
        this.mStreamingMode = 0;
        this.isBackground = false;
        this.isNetworkOk = true;
        this.currentNetType = -1;
        this.closeStream = true;
        this.curConnectState = 0;
        this.curCloudServiceState = 0;
        this.isRecordOn = false;
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        this.mTransferReconnectCount = 0;
        this.mClockDiffUse = 0;
        this.mIntervalMillis = 1000L;
        this.mCursorWidth = 40;
        this.mCursorHeight = 40;
        this.isRequestImageListTimeout = false;
        this.mVirtualKeyboardVisible = false;
        this.mCameraConfig = new HMCameraConfig();
        this.mGlobalConfig = new GlobalConfig();
        this.mIMEConfig = new IMEConfig();
        this.mClientImeType = new ClientImeType();
        this.mSeiDataSwitch = 0;
        this.mSeiDataReportInterval = 1;
        this.currentSound = 1.0f;
        this.isAudioMute = false;
        this.checkAccessWhenSwitchResolution = false;
        this.isGetControl = false;
        this.enableHighBitrate = null;
        this.enableHighBitrateRequesting = false;
        this.jsonMap = new HashMap();
        this.webSocketUrlTimeStamp = -1L;
        this.isStartIM = false;
        this.mPermissionCBs = new HashMap<>();
        this.mPermissionQueue = new ArrayBlockingQueue<>(20, true);
        this.mTransferHelper = null;
        this.currentVolume = -1;
        this.mMessageType = MessageType.PAY_TYPE;
        this.mReportSysNotifyStatus = new ReportSysNotifyStatus();
        this.scene = 0L;
        this.isReconnectStream = false;
        this.isStartPlayCallBack = false;
        this.isCallbackFirstFrameArrived = false;
        this.mTouchUpPolicy = 1;
        this.isFirstFrameArrived = false;
        this.mSceneMethod = 0;
        this.screenWidth = 0;
        this.screenHeight = 0;
        this.currentApkType = 0;
        this.turnOffVideo = false;
        this.decodeType = 1;
        this.mSwitchAuto = false;
        this.isGameStart = false;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMediaPlayer = null;
        this.mAudioPlayer = null;
        this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNKNOWN;
        this.mGamePlatformType = GamePlatformType.ARM;
        this.mHasOperatePermission = true;
        this.overLaySizeTimes = 1.8f;
        this.mTouchMode = Constants.DEFAULT_TOUCH_MODE;
        this.mDefaultOperateType = null;
        this.isShowOrHideChanged = null;
        this.lastCursorShowHide = null;
        this.longPressTimers = new HashMap<>();
        this.mIsGamepadToMouse = false;
        this.mDpadMouseMoveStep = 0.21f;
        this.mIsGyroscopeEnable = false;
        this.isExchangeControl = false;
        this.isRelease = false;
        this.mIsPCMouseMode = false;
        this.mIsPCMouseModeWithClient = null;
        this.dataTrafficOwner = null;
        this.mDevicePixelRatio = null;
        this.hasWakeLockPermission = true;
        this.isExtraConfigRequestSuccess = new AtomicBoolean(false);
        this.isConfigSuccess = new AtomicBoolean(false);
        this.mouseMotionEventDispatcher = new MouseMotionEventDispatcher();
        this.tokenTimeStampModel = new TokenTimeStampModel();
        this.nativeDpadGame = false;
        this.enabelShareStream = false;
        this.isHandleInputEvent = true;
        this.keyLockStatusFlag = false;
        this.capsLockFlag = false;
        this.mAutoShowInput = true;
        this.isPlugged = false;
        this.firstDeviceVendorId = "";
        this.curOperateVendorId = "";
        this.mFinishByServer = null;
        this.mHMInputFactory = new HMInputSenderFactory();
        this.mHMInputConfig = new HMInputConfig();
        this.updateTimeMs = 0L;
        this.simpleInstanceWsServerConnectionHandler = new WebSocketManager.SimpleInstanceConnectionHandler() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onClockDiffChange(long j10, int i10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onConnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "isReconnect=" + z10);
                LogUtils.i(AbsIjkVideoView.TAG, "====connectWsServer onConnect Success====");
                CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_SUCCESS);
                AbsIjkVideoView.this.sendWsMessageRecord("START_RECORD");
                AbsIjkVideoView.this.requestIMEList();
                AbsIjkVideoView.this.initSensor();
                AbsIjkVideoView.this.sendScreenOrientation();
                AbsIjkVideoView.this.registerScreenMonitor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i10, String str, boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onDisconnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "reason=" + str + "showPrompt=" + z10);
                RecordHelper.getsInstance().stop(true);
                LogUtils.i(AbsIjkVideoView.TAG, "==== connectWsServer onDisconnect====");
                boolean zIsNeedRefreshStoken = AbsIjkVideoView.this.isNeedRefreshStoken(1);
                ReportBaseError reportBaseError = new ReportBaseError("" + i10, str + "," + (AbsIjkVideoView.this.mInstanceWsReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(AbsIjkVideoView.this.mInstanceWsReconnectCount)) : ""));
                if (!AbsIjkVideoView.this.isBackground) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    if (absIjkVideoView.isNetworkOk) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER, JsonUtil.toJsonString(new ReportInput(URLEncoder.encode(absIjkVideoView.mVInputUrl))));
                        AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                        if (!absIjkVideoView2.SASS_SERVER_MAINTENANCE && absIjkVideoView2.mPlayerState != 5 && absIjkVideoView2.mCurrentState != 5) {
                            if (zIsNeedRefreshStoken) {
                                absIjkVideoView2.resetState();
                                CountlyUtil.recordErrorEvent("screen disconnected and refresh stoken ,retry max time:" + Constants.WS_RETRY_MAX_TIMES);
                                AbsIjkVideoView.this.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.refreshStoken(0, "InstanceWsServer Socket connect lost", false);
                                LogUtils.d(AbsIjkVideoView.TAG, "refresh token");
                            } else {
                                absIjkVideoView2.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                                        absIjkVideoView3.mInstanceWsReconnectCount++;
                                        absIjkVideoView3.connectWsServer(absIjkVideoView3.screenUrl);
                                    }
                                }, 30L);
                            }
                        }
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER_NETWOED_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    }
                }
                AbsIjkVideoView.this.stopSensor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onFirstDiffClockSuccess(long j10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
                AbsIjkVideoView.this.notifyCapScreen(bArr);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onTextMessage(String str) {
                LogUtils.i(AbsIjkVideoView.TAG, "====onInputMessageWsServer7682=====" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_RECEIVE, StringUtils.encodeToBase64String(AbsIjkVideoView.this.getMessage("===receive WsMessage===" + str)));
                if (AbsIjkVideoView.this.handleWSMsg(str)) {
                    return;
                }
                AbsIjkVideoView.this.wsServerMessageDispatcher(str);
            }
        };
        this.hmKeyBoardListener = new HmIMEManager.HmKeyBoardListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.22
            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onError() {
                LogUtils.e(AbsIjkVideoView.TAG, "监听键盘状态失败");
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onKeyBoardFlowMode() {
                if (AbsIjkVideoView.this.mGamePlatformType == GamePlatformType.X86) {
                    return;
                }
                LogUtils.i(AbsIjkVideoView.TAG, "进入输入法软键盘悬浮模式");
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(0.0f));
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.sendKeyboardHeightPercent(absIjkVideoView.mEventContent);
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardHide() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "===onKeyBoardHide====");
                    InputEditDialog inputEditDialog = AbsIjkVideoView.this.localKeyBoardDialog;
                    if (inputEditDialog != null && inputEditDialog.isShowing()) {
                        AbsIjkVideoView.this.localKeyBoardDialog.dismiss();
                    }
                    return false;
                }
                absIjkVideoView.stopKeyboardListener();
                AbsIjkVideoView.this.sendToInstanceMsg("IME:StopIM");
                AbsIjkVideoView.this.callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_HIDE);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.mOrientation != absIjkVideoView2.mOrientationOrigin) {
                    LogUtils.i(AbsIjkVideoView.TAG, "隐藏键盘：切回原视频方向；" + AbsIjkVideoView.this.mOrientationOrigin + "当前方向：" + AbsIjkVideoView.this.mOrientation);
                    HmScreenMonitor hmScreenMonitor = AbsIjkVideoView.this.mHmScreenMonitor;
                    if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                        absIjkVideoView3.setScreenOrientationForKeyboard(absIjkVideoView3.mOrientationOrigin, absIjkVideoView3.mRenderView);
                    } else {
                        AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                        absIjkVideoView4.setScreenOrientationForKeyboard(absIjkVideoView4.mOrientation, absIjkVideoView4.mRenderView);
                    }
                }
                AbsIjkVideoView.this.localKeyboardModel.clearText();
                AbsIjkVideoView.this.localKeyboardModel.changeState(0);
                return true;
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardShowHeight(int i10) {
                int iMax;
                int iMax2;
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==onKeyBoardShowHeight====");
                    return false;
                }
                if (absIjkVideoView.screenWidth == 0) {
                    absIjkVideoView.screenWidth = ConfigUtil.getScreenWidth(absIjkVideoView.getContext());
                }
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.screenHeight == 0) {
                    absIjkVideoView2.screenHeight = ConfigUtil.getScreenHeight(absIjkVideoView2.getContext());
                }
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                int i11 = absIjkVideoView3.mShowHeight;
                if (i11 == 0) {
                    i11 = absIjkVideoView3.screenHeight;
                }
                absIjkVideoView3.mShowHeight = i11;
                int i12 = absIjkVideoView3.mShowWidth;
                if (i12 == 0) {
                    i12 = absIjkVideoView3.screenWidth;
                }
                absIjkVideoView3.mShowWidth = i12;
                LogUtils.i(AbsIjkVideoView.TAG, "<==开启键盘状态 高度: " + i10 + ";screenHeight: " + AbsIjkVideoView.this.screenHeight + ";mShowHeight: " + AbsIjkVideoView.this.mShowHeight + ";screenWidth: " + AbsIjkVideoView.this.screenWidth + ";mShowWidth: " + AbsIjkVideoView.this.mShowWidth);
                AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                if (i10 == Math.abs(absIjkVideoView4.screenWidth - absIjkVideoView4.screenHeight)) {
                    LogUtils.i(AbsIjkVideoView.TAG, "横竖屏切换，忽略键盘状态；");
                    return false;
                }
                int i13 = AbsIjkVideoView.this.mAppContext.getResources().getConfiguration().orientation;
                if (i13 == 2) {
                    AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                    iMax = Math.min(absIjkVideoView5.screenHeight, absIjkVideoView5.screenWidth);
                    AbsIjkVideoView absIjkVideoView6 = AbsIjkVideoView.this;
                    iMax2 = Math.min(absIjkVideoView6.mShowHeight, absIjkVideoView6.mShowWidth);
                } else if (i13 == 1) {
                    AbsIjkVideoView absIjkVideoView7 = AbsIjkVideoView.this;
                    iMax = Math.max(absIjkVideoView7.screenHeight, absIjkVideoView7.screenWidth);
                    AbsIjkVideoView absIjkVideoView8 = AbsIjkVideoView.this;
                    iMax2 = Math.max(absIjkVideoView8.mShowHeight, absIjkVideoView8.mShowWidth);
                } else {
                    iMax = 0;
                    iMax2 = 0;
                }
                int i14 = (iMax - iMax2) / 2;
                int inputOffset = HmIMEManager.getInstance().getInputOffset();
                float f10 = 0.5f;
                float f11 = iMax2 != 0 ? ((i10 - i14) + inputOffset) / iMax2 : 0.5f;
                if (f11 > 1.0f || f11 < 0.0f) {
                    CountlyUtil.recordErrorEvent("heightScale error: inputShowOffset" + inputOffset + ",surfaceHeight:" + iMax2 + ",height:" + i10);
                } else {
                    f10 = f11;
                }
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(f10));
                AbsIjkVideoView absIjkVideoView9 = AbsIjkVideoView.this;
                absIjkVideoView9.sendKeyboardHeightPercent(absIjkVideoView9.mEventContent);
                return true;
            }
        };
        this.mWsReconnectCount = 0;
        this.waitingUsersNum = 0;
        this.mResfreshStokenReasons = "";
        this.eventBuilder = new StringBuilder();
        this.mBaseConnectInputTime = 0L;
        this.intervalBegin = SystemClock.elapsedRealtime();
        this.streamWidth = 0;
        this.streamHeight = 0;
        this.paint = new Paint();
        this.point = new Point();
        this.mSpeed = 0.0f;
        this.SAAS_WS_DELAY = 2;
        this.mIsAhead = false;
        this.mCacheListener = new AnonymousClass51();
        this.mHMInputCallback = new HMInputCallback() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.53
            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onClockDiffChange(long j10, int i10) {
                AbsIjkVideoView.this.streamModel.onClockDiffChange(i10);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onConnect(boolean z10) {
                AbsIjkVideoView.this.instanceConnect();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onDisconnect(int i10, String str, boolean z10) {
                AbsIjkVideoView.this.disConnectInput(i10, str);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onFirstDiffClockSuccess(long j10) {
                AbsIjkVideoView.this.streamModel.onFirstDiffClockSuccess();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onTextMessage(String str) {
                AbsIjkVideoView.this.instanceTextMessage(str);
            }
        };
        init(context);
    }

    protected void play(ScreenOrientation screenOrientation, long j10, int i10, int i11, String str, String str2, String str3, float f10) {
        play(screenOrientation, j10, i10, i11, str, str2, str3, f10, "");
    }

    protected void play(ScreenOrientation screenOrientation, long j10, int i10, int i11, String str, String str2, String str3, float f10, String str4) {
        if (TextUtils.isEmpty(this.mAppName)) {
            setOrientationInit(screenOrientation);
            this.mHPlayTime = j10;
            this.mPriority = i10;
            this.mAppId = i11;
            this.mAppName = str;
            this.mToken = str2;
            this.mExtraId = str3;
            this.mPayStr = str4;
            this.mInternetSpeed = f10;
            this.mArchived = true;
            playInternal();
        }
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void play() {
        recordLifeCycleEvent("play");
        playInternal();
    }

    public AbsIjkVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.fixedGamepadVendorId = "";
        this.CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
        this.CACHE_EVENT_KEYBOARD_DIRECTION = "keyboardDirection";
        this.MAX_AMPLITUDE = 255;
        this.MIN_AMPLITUDE = 1;
        this.DEFAULT_VIBRATOR_AMPLITUDE = 128;
        this.MAX_X86_AMPLITUDE = 65535;
        this.VIBRATOR_CONVERSION = 0.0038910506f;
        this.downEventMap = new ConcurrentHashMap<>();
        this.mKeyboardConfigJsonApp = "";
        this.mCurrentInputDevice = 0;
        this.QUIT_TYPE = "quitType";
        this.QUIT_TYPE_VALUE_TIME_LIMIT = 1;
        this.QUIT_TYPE_VALUE_PROCESS_KILLED = 2;
        this.QUIT_TYPE_VALUE_OWNER_EXIT = 3;
        this.SASS_SERVER_MAINTENANCE = false;
        this.mKeepAliveTimeSec = null;
        this.isShowTime = true;
        this.sendStopIMEOneShot = false;
        this.mCutOutsHeightPercent = new float[]{0.0f, 0.0f};
        this.verticalBackground = -1;
        this.mInternetSpeed = -1.0f;
        this.mSelfResolutionId = -1;
        this.mIsAllowCompatibleIPV6 = false;
        this.mIsCustomPlayer = false;
        this.languageFromApp = null;
        this.mStreamingMode = 0;
        this.isBackground = false;
        this.isNetworkOk = true;
        this.currentNetType = -1;
        this.closeStream = true;
        this.curConnectState = 0;
        this.curCloudServiceState = 0;
        this.isRecordOn = false;
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        this.mTransferReconnectCount = 0;
        this.mClockDiffUse = 0;
        this.mIntervalMillis = 1000L;
        this.mCursorWidth = 40;
        this.mCursorHeight = 40;
        this.isRequestImageListTimeout = false;
        this.mVirtualKeyboardVisible = false;
        this.mCameraConfig = new HMCameraConfig();
        this.mGlobalConfig = new GlobalConfig();
        this.mIMEConfig = new IMEConfig();
        this.mClientImeType = new ClientImeType();
        this.mSeiDataSwitch = 0;
        this.mSeiDataReportInterval = 1;
        this.currentSound = 1.0f;
        this.isAudioMute = false;
        this.checkAccessWhenSwitchResolution = false;
        this.isGetControl = false;
        this.enableHighBitrate = null;
        this.enableHighBitrateRequesting = false;
        this.jsonMap = new HashMap();
        this.webSocketUrlTimeStamp = -1L;
        this.isStartIM = false;
        this.mPermissionCBs = new HashMap<>();
        this.mPermissionQueue = new ArrayBlockingQueue<>(20, true);
        this.mTransferHelper = null;
        this.currentVolume = -1;
        this.mMessageType = MessageType.PAY_TYPE;
        this.mReportSysNotifyStatus = new ReportSysNotifyStatus();
        this.scene = 0L;
        this.isReconnectStream = false;
        this.isStartPlayCallBack = false;
        this.isCallbackFirstFrameArrived = false;
        this.mTouchUpPolicy = 1;
        this.isFirstFrameArrived = false;
        this.mSceneMethod = 0;
        this.screenWidth = 0;
        this.screenHeight = 0;
        this.currentApkType = 0;
        this.turnOffVideo = false;
        this.decodeType = 1;
        this.mSwitchAuto = false;
        this.isGameStart = false;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMediaPlayer = null;
        this.mAudioPlayer = null;
        this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNKNOWN;
        this.mGamePlatformType = GamePlatformType.ARM;
        this.mHasOperatePermission = true;
        this.overLaySizeTimes = 1.8f;
        this.mTouchMode = Constants.DEFAULT_TOUCH_MODE;
        this.mDefaultOperateType = null;
        this.isShowOrHideChanged = null;
        this.lastCursorShowHide = null;
        this.longPressTimers = new HashMap<>();
        this.mIsGamepadToMouse = false;
        this.mDpadMouseMoveStep = 0.21f;
        this.mIsGyroscopeEnable = false;
        this.isExchangeControl = false;
        this.isRelease = false;
        this.mIsPCMouseMode = false;
        this.mIsPCMouseModeWithClient = null;
        this.dataTrafficOwner = null;
        this.mDevicePixelRatio = null;
        this.hasWakeLockPermission = true;
        this.isExtraConfigRequestSuccess = new AtomicBoolean(false);
        this.isConfigSuccess = new AtomicBoolean(false);
        this.mouseMotionEventDispatcher = new MouseMotionEventDispatcher();
        this.tokenTimeStampModel = new TokenTimeStampModel();
        this.nativeDpadGame = false;
        this.enabelShareStream = false;
        this.isHandleInputEvent = true;
        this.keyLockStatusFlag = false;
        this.capsLockFlag = false;
        this.mAutoShowInput = true;
        this.isPlugged = false;
        this.firstDeviceVendorId = "";
        this.curOperateVendorId = "";
        this.mFinishByServer = null;
        this.mHMInputFactory = new HMInputSenderFactory();
        this.mHMInputConfig = new HMInputConfig();
        this.updateTimeMs = 0L;
        this.simpleInstanceWsServerConnectionHandler = new WebSocketManager.SimpleInstanceConnectionHandler() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onClockDiffChange(long j10, int i11) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onConnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "isReconnect=" + z10);
                LogUtils.i(AbsIjkVideoView.TAG, "====connectWsServer onConnect Success====");
                CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_SUCCESS);
                AbsIjkVideoView.this.sendWsMessageRecord("START_RECORD");
                AbsIjkVideoView.this.requestIMEList();
                AbsIjkVideoView.this.initSensor();
                AbsIjkVideoView.this.sendScreenOrientation();
                AbsIjkVideoView.this.registerScreenMonitor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i11, String str, boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onDisconnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "reason=" + str + "showPrompt=" + z10);
                RecordHelper.getsInstance().stop(true);
                LogUtils.i(AbsIjkVideoView.TAG, "==== connectWsServer onDisconnect====");
                boolean zIsNeedRefreshStoken = AbsIjkVideoView.this.isNeedRefreshStoken(1);
                ReportBaseError reportBaseError = new ReportBaseError("" + i11, str + "," + (AbsIjkVideoView.this.mInstanceWsReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(AbsIjkVideoView.this.mInstanceWsReconnectCount)) : ""));
                if (!AbsIjkVideoView.this.isBackground) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    if (absIjkVideoView.isNetworkOk) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER, JsonUtil.toJsonString(new ReportInput(URLEncoder.encode(absIjkVideoView.mVInputUrl))));
                        AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                        if (!absIjkVideoView2.SASS_SERVER_MAINTENANCE && absIjkVideoView2.mPlayerState != 5 && absIjkVideoView2.mCurrentState != 5) {
                            if (zIsNeedRefreshStoken) {
                                absIjkVideoView2.resetState();
                                CountlyUtil.recordErrorEvent("screen disconnected and refresh stoken ,retry max time:" + Constants.WS_RETRY_MAX_TIMES);
                                AbsIjkVideoView.this.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.refreshStoken(0, "InstanceWsServer Socket connect lost", false);
                                LogUtils.d(AbsIjkVideoView.TAG, "refresh token");
                            } else {
                                absIjkVideoView2.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                                        absIjkVideoView3.mInstanceWsReconnectCount++;
                                        absIjkVideoView3.connectWsServer(absIjkVideoView3.screenUrl);
                                    }
                                }, 30L);
                            }
                        }
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER_NETWOED_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    }
                }
                AbsIjkVideoView.this.stopSensor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onFirstDiffClockSuccess(long j10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
                AbsIjkVideoView.this.notifyCapScreen(bArr);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onTextMessage(String str) {
                LogUtils.i(AbsIjkVideoView.TAG, "====onInputMessageWsServer7682=====" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_RECEIVE, StringUtils.encodeToBase64String(AbsIjkVideoView.this.getMessage("===receive WsMessage===" + str)));
                if (AbsIjkVideoView.this.handleWSMsg(str)) {
                    return;
                }
                AbsIjkVideoView.this.wsServerMessageDispatcher(str);
            }
        };
        this.hmKeyBoardListener = new HmIMEManager.HmKeyBoardListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.22
            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onError() {
                LogUtils.e(AbsIjkVideoView.TAG, "监听键盘状态失败");
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onKeyBoardFlowMode() {
                if (AbsIjkVideoView.this.mGamePlatformType == GamePlatformType.X86) {
                    return;
                }
                LogUtils.i(AbsIjkVideoView.TAG, "进入输入法软键盘悬浮模式");
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(0.0f));
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.sendKeyboardHeightPercent(absIjkVideoView.mEventContent);
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardHide() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "===onKeyBoardHide====");
                    InputEditDialog inputEditDialog = AbsIjkVideoView.this.localKeyBoardDialog;
                    if (inputEditDialog != null && inputEditDialog.isShowing()) {
                        AbsIjkVideoView.this.localKeyBoardDialog.dismiss();
                    }
                    return false;
                }
                absIjkVideoView.stopKeyboardListener();
                AbsIjkVideoView.this.sendToInstanceMsg("IME:StopIM");
                AbsIjkVideoView.this.callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_HIDE);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.mOrientation != absIjkVideoView2.mOrientationOrigin) {
                    LogUtils.i(AbsIjkVideoView.TAG, "隐藏键盘：切回原视频方向；" + AbsIjkVideoView.this.mOrientationOrigin + "当前方向：" + AbsIjkVideoView.this.mOrientation);
                    HmScreenMonitor hmScreenMonitor = AbsIjkVideoView.this.mHmScreenMonitor;
                    if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                        absIjkVideoView3.setScreenOrientationForKeyboard(absIjkVideoView3.mOrientationOrigin, absIjkVideoView3.mRenderView);
                    } else {
                        AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                        absIjkVideoView4.setScreenOrientationForKeyboard(absIjkVideoView4.mOrientation, absIjkVideoView4.mRenderView);
                    }
                }
                AbsIjkVideoView.this.localKeyboardModel.clearText();
                AbsIjkVideoView.this.localKeyboardModel.changeState(0);
                return true;
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardShowHeight(int i11) {
                int iMax;
                int iMax2;
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==onKeyBoardShowHeight====");
                    return false;
                }
                if (absIjkVideoView.screenWidth == 0) {
                    absIjkVideoView.screenWidth = ConfigUtil.getScreenWidth(absIjkVideoView.getContext());
                }
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.screenHeight == 0) {
                    absIjkVideoView2.screenHeight = ConfigUtil.getScreenHeight(absIjkVideoView2.getContext());
                }
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                int i12 = absIjkVideoView3.mShowHeight;
                if (i12 == 0) {
                    i12 = absIjkVideoView3.screenHeight;
                }
                absIjkVideoView3.mShowHeight = i12;
                int i13 = absIjkVideoView3.mShowWidth;
                if (i13 == 0) {
                    i13 = absIjkVideoView3.screenWidth;
                }
                absIjkVideoView3.mShowWidth = i13;
                LogUtils.i(AbsIjkVideoView.TAG, "<==开启键盘状态 高度: " + i11 + ";screenHeight: " + AbsIjkVideoView.this.screenHeight + ";mShowHeight: " + AbsIjkVideoView.this.mShowHeight + ";screenWidth: " + AbsIjkVideoView.this.screenWidth + ";mShowWidth: " + AbsIjkVideoView.this.mShowWidth);
                AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                if (i11 == Math.abs(absIjkVideoView4.screenWidth - absIjkVideoView4.screenHeight)) {
                    LogUtils.i(AbsIjkVideoView.TAG, "横竖屏切换，忽略键盘状态；");
                    return false;
                }
                int i14 = AbsIjkVideoView.this.mAppContext.getResources().getConfiguration().orientation;
                if (i14 == 2) {
                    AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                    iMax = Math.min(absIjkVideoView5.screenHeight, absIjkVideoView5.screenWidth);
                    AbsIjkVideoView absIjkVideoView6 = AbsIjkVideoView.this;
                    iMax2 = Math.min(absIjkVideoView6.mShowHeight, absIjkVideoView6.mShowWidth);
                } else if (i14 == 1) {
                    AbsIjkVideoView absIjkVideoView7 = AbsIjkVideoView.this;
                    iMax = Math.max(absIjkVideoView7.screenHeight, absIjkVideoView7.screenWidth);
                    AbsIjkVideoView absIjkVideoView8 = AbsIjkVideoView.this;
                    iMax2 = Math.max(absIjkVideoView8.mShowHeight, absIjkVideoView8.mShowWidth);
                } else {
                    iMax = 0;
                    iMax2 = 0;
                }
                int i15 = (iMax - iMax2) / 2;
                int inputOffset = HmIMEManager.getInstance().getInputOffset();
                float f10 = 0.5f;
                float f11 = iMax2 != 0 ? ((i11 - i15) + inputOffset) / iMax2 : 0.5f;
                if (f11 > 1.0f || f11 < 0.0f) {
                    CountlyUtil.recordErrorEvent("heightScale error: inputShowOffset" + inputOffset + ",surfaceHeight:" + iMax2 + ",height:" + i11);
                } else {
                    f10 = f11;
                }
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(f10));
                AbsIjkVideoView absIjkVideoView9 = AbsIjkVideoView.this;
                absIjkVideoView9.sendKeyboardHeightPercent(absIjkVideoView9.mEventContent);
                return true;
            }
        };
        this.mWsReconnectCount = 0;
        this.waitingUsersNum = 0;
        this.mResfreshStokenReasons = "";
        this.eventBuilder = new StringBuilder();
        this.mBaseConnectInputTime = 0L;
        this.intervalBegin = SystemClock.elapsedRealtime();
        this.streamWidth = 0;
        this.streamHeight = 0;
        this.paint = new Paint();
        this.point = new Point();
        this.mSpeed = 0.0f;
        this.SAAS_WS_DELAY = 2;
        this.mIsAhead = false;
        this.mCacheListener = new AnonymousClass51();
        this.mHMInputCallback = new HMInputCallback() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.53
            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onClockDiffChange(long j10, int i11) {
                AbsIjkVideoView.this.streamModel.onClockDiffChange(i11);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onConnect(boolean z10) {
                AbsIjkVideoView.this.instanceConnect();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onDisconnect(int i11, String str, boolean z10) {
                AbsIjkVideoView.this.disConnectInput(i11, str);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onFirstDiffClockSuccess(long j10) {
                AbsIjkVideoView.this.streamModel.onFirstDiffClockSuccess();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onTextMessage(String str) {
                AbsIjkVideoView.this.instanceTextMessage(str);
            }
        };
        init(context);
    }

    @TargetApi(21)
    public AbsIjkVideoView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.fixedGamepadVendorId = "";
        this.CACHE_EVENT_MORE_POINT_MOVE = "morePointMove";
        this.CACHE_EVENT_KEYBOARD_DIRECTION = "keyboardDirection";
        this.MAX_AMPLITUDE = 255;
        this.MIN_AMPLITUDE = 1;
        this.DEFAULT_VIBRATOR_AMPLITUDE = 128;
        this.MAX_X86_AMPLITUDE = 65535;
        this.VIBRATOR_CONVERSION = 0.0038910506f;
        this.downEventMap = new ConcurrentHashMap<>();
        this.mKeyboardConfigJsonApp = "";
        this.mCurrentInputDevice = 0;
        this.QUIT_TYPE = "quitType";
        this.QUIT_TYPE_VALUE_TIME_LIMIT = 1;
        this.QUIT_TYPE_VALUE_PROCESS_KILLED = 2;
        this.QUIT_TYPE_VALUE_OWNER_EXIT = 3;
        this.SASS_SERVER_MAINTENANCE = false;
        this.mKeepAliveTimeSec = null;
        this.isShowTime = true;
        this.sendStopIMEOneShot = false;
        this.mCutOutsHeightPercent = new float[]{0.0f, 0.0f};
        this.verticalBackground = -1;
        this.mInternetSpeed = -1.0f;
        this.mSelfResolutionId = -1;
        this.mIsAllowCompatibleIPV6 = false;
        this.mIsCustomPlayer = false;
        this.languageFromApp = null;
        this.mStreamingMode = 0;
        this.isBackground = false;
        this.isNetworkOk = true;
        this.currentNetType = -1;
        this.closeStream = true;
        this.curConnectState = 0;
        this.curCloudServiceState = 0;
        this.isRecordOn = false;
        this.mRefreshStokenCount = 0;
        this.mInstanceReconnectCount = 0;
        this.mInstanceWsReconnectCount = 0;
        this.mTransferReconnectCount = 0;
        this.mClockDiffUse = 0;
        this.mIntervalMillis = 1000L;
        this.mCursorWidth = 40;
        this.mCursorHeight = 40;
        this.isRequestImageListTimeout = false;
        this.mVirtualKeyboardVisible = false;
        this.mCameraConfig = new HMCameraConfig();
        this.mGlobalConfig = new GlobalConfig();
        this.mIMEConfig = new IMEConfig();
        this.mClientImeType = new ClientImeType();
        this.mSeiDataSwitch = 0;
        this.mSeiDataReportInterval = 1;
        this.currentSound = 1.0f;
        this.isAudioMute = false;
        this.checkAccessWhenSwitchResolution = false;
        this.isGetControl = false;
        this.enableHighBitrate = null;
        this.enableHighBitrateRequesting = false;
        this.jsonMap = new HashMap();
        this.webSocketUrlTimeStamp = -1L;
        this.isStartIM = false;
        this.mPermissionCBs = new HashMap<>();
        this.mPermissionQueue = new ArrayBlockingQueue<>(20, true);
        this.mTransferHelper = null;
        this.currentVolume = -1;
        this.mMessageType = MessageType.PAY_TYPE;
        this.mReportSysNotifyStatus = new ReportSysNotifyStatus();
        this.scene = 0L;
        this.isReconnectStream = false;
        this.isStartPlayCallBack = false;
        this.isCallbackFirstFrameArrived = false;
        this.mTouchUpPolicy = 1;
        this.isFirstFrameArrived = false;
        this.mSceneMethod = 0;
        this.screenWidth = 0;
        this.screenHeight = 0;
        this.currentApkType = 0;
        this.turnOffVideo = false;
        this.decodeType = 1;
        this.mSwitchAuto = false;
        this.isGameStart = false;
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMediaPlayer = null;
        this.mAudioPlayer = null;
        this.mLivingCapabilityStatus = ELivingCapabilityStatus.UNKNOWN;
        this.mGamePlatformType = GamePlatformType.ARM;
        this.mHasOperatePermission = true;
        this.overLaySizeTimes = 1.8f;
        this.mTouchMode = Constants.DEFAULT_TOUCH_MODE;
        this.mDefaultOperateType = null;
        this.isShowOrHideChanged = null;
        this.lastCursorShowHide = null;
        this.longPressTimers = new HashMap<>();
        this.mIsGamepadToMouse = false;
        this.mDpadMouseMoveStep = 0.21f;
        this.mIsGyroscopeEnable = false;
        this.isExchangeControl = false;
        this.isRelease = false;
        this.mIsPCMouseMode = false;
        this.mIsPCMouseModeWithClient = null;
        this.dataTrafficOwner = null;
        this.mDevicePixelRatio = null;
        this.hasWakeLockPermission = true;
        this.isExtraConfigRequestSuccess = new AtomicBoolean(false);
        this.isConfigSuccess = new AtomicBoolean(false);
        this.mouseMotionEventDispatcher = new MouseMotionEventDispatcher();
        this.tokenTimeStampModel = new TokenTimeStampModel();
        this.nativeDpadGame = false;
        this.enabelShareStream = false;
        this.isHandleInputEvent = true;
        this.keyLockStatusFlag = false;
        this.capsLockFlag = false;
        this.mAutoShowInput = true;
        this.isPlugged = false;
        this.firstDeviceVendorId = "";
        this.curOperateVendorId = "";
        this.mFinishByServer = null;
        this.mHMInputFactory = new HMInputSenderFactory();
        this.mHMInputConfig = new HMInputConfig();
        this.updateTimeMs = 0L;
        this.simpleInstanceWsServerConnectionHandler = new WebSocketManager.SimpleInstanceConnectionHandler() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onClockDiffChange(long j10, int i12) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onConnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "isReconnect=" + z10);
                LogUtils.i(AbsIjkVideoView.TAG, "====connectWsServer onConnect Success====");
                CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_SUCCESS);
                AbsIjkVideoView.this.sendWsMessageRecord("START_RECORD");
                AbsIjkVideoView.this.requestIMEList();
                AbsIjkVideoView.this.initSensor();
                AbsIjkVideoView.this.sendScreenOrientation();
                AbsIjkVideoView.this.registerScreenMonitor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i12, String str, boolean z10) {
                LogUtils.e(WebSocketConnection.TAG, "onDisconnect connect2InstanceWsServer, screenUrl=" + AbsIjkVideoView.this.screenUrl + "reason=" + str + "showPrompt=" + z10);
                RecordHelper.getsInstance().stop(true);
                LogUtils.i(AbsIjkVideoView.TAG, "==== connectWsServer onDisconnect====");
                boolean zIsNeedRefreshStoken = AbsIjkVideoView.this.isNeedRefreshStoken(1);
                ReportBaseError reportBaseError = new ReportBaseError("" + i12, str + "," + (AbsIjkVideoView.this.mInstanceWsReconnectCount > 0 ? String.format(Locale.getDefault(), Constants.SOCKET_RETRY_FAILED_MSG_FORMAT, Integer.valueOf(AbsIjkVideoView.this.mInstanceWsReconnectCount)) : ""));
                if (!AbsIjkVideoView.this.isBackground) {
                    CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_INPUT_WS_SERVER_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                    if (absIjkVideoView.isNetworkOk) {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER, JsonUtil.toJsonString(new ReportInput(URLEncoder.encode(absIjkVideoView.mVInputUrl))));
                        AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                        if (!absIjkVideoView2.SASS_SERVER_MAINTENANCE && absIjkVideoView2.mPlayerState != 5 && absIjkVideoView2.mCurrentState != 5) {
                            if (zIsNeedRefreshStoken) {
                                absIjkVideoView2.resetState();
                                CountlyUtil.recordErrorEvent("screen disconnected and refresh stoken ,retry max time:" + Constants.WS_RETRY_MAX_TIMES);
                                AbsIjkVideoView.this.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.refreshStoken(0, "InstanceWsServer Socket connect lost", false);
                                LogUtils.d(AbsIjkVideoView.TAG, "refresh token");
                            } else {
                                absIjkVideoView2.disconnectSocketIo(false, true, false);
                                AbsIjkVideoView.this.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.20.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                                        absIjkVideoView3.mInstanceWsReconnectCount++;
                                        absIjkVideoView3.connectWsServer(absIjkVideoView3.screenUrl);
                                    }
                                }, 30L);
                            }
                        }
                    } else {
                        CountlyUtil.recordEvent(Constants.COUNTYLY_REONNECT_INPUT_WS_SERVER_NETWOED_DISCONNECT, JsonUtil.toJsonString(reportBaseError));
                    }
                }
                AbsIjkVideoView.this.stopSensor();
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onFirstDiffClockSuccess(long j10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
                AbsIjkVideoView.this.notifyCapScreen(bArr);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleInstanceConnectionHandler
            public void onTextMessage(String str) {
                LogUtils.i(AbsIjkVideoView.TAG, "====onInputMessageWsServer7682=====" + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_RECEIVE, StringUtils.encodeToBase64String(AbsIjkVideoView.this.getMessage("===receive WsMessage===" + str)));
                if (AbsIjkVideoView.this.handleWSMsg(str)) {
                    return;
                }
                AbsIjkVideoView.this.wsServerMessageDispatcher(str);
            }
        };
        this.hmKeyBoardListener = new HmIMEManager.HmKeyBoardListener() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.22
            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onError() {
                LogUtils.e(AbsIjkVideoView.TAG, "监听键盘状态失败");
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public void onKeyBoardFlowMode() {
                if (AbsIjkVideoView.this.mGamePlatformType == GamePlatformType.X86) {
                    return;
                }
                LogUtils.i(AbsIjkVideoView.TAG, "进入输入法软键盘悬浮模式");
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(0.0f));
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                absIjkVideoView.sendKeyboardHeightPercent(absIjkVideoView.mEventContent);
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardHide() {
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "===onKeyBoardHide====");
                    InputEditDialog inputEditDialog = AbsIjkVideoView.this.localKeyBoardDialog;
                    if (inputEditDialog != null && inputEditDialog.isShowing()) {
                        AbsIjkVideoView.this.localKeyBoardDialog.dismiss();
                    }
                    return false;
                }
                absIjkVideoView.stopKeyboardListener();
                AbsIjkVideoView.this.sendToInstanceMsg("IME:StopIM");
                AbsIjkVideoView.this.callbackCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_HIDE);
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.mOrientation != absIjkVideoView2.mOrientationOrigin) {
                    LogUtils.i(AbsIjkVideoView.TAG, "隐藏键盘：切回原视频方向；" + AbsIjkVideoView.this.mOrientationOrigin + "当前方向：" + AbsIjkVideoView.this.mOrientation);
                    HmScreenMonitor hmScreenMonitor = AbsIjkVideoView.this.mHmScreenMonitor;
                    if (hmScreenMonitor == null || !hmScreenMonitor.isEnable()) {
                        AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                        absIjkVideoView3.setScreenOrientationForKeyboard(absIjkVideoView3.mOrientationOrigin, absIjkVideoView3.mRenderView);
                    } else {
                        AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                        absIjkVideoView4.setScreenOrientationForKeyboard(absIjkVideoView4.mOrientation, absIjkVideoView4.mRenderView);
                    }
                }
                AbsIjkVideoView.this.localKeyboardModel.clearText();
                AbsIjkVideoView.this.localKeyboardModel.changeState(0);
                return true;
            }

            @Override // com.haima.hmcp.utils.HmIMEManager.HmKeyBoardListener
            public boolean onKeyBoardShowHeight(int i12) {
                int iMax;
                int iMax2;
                AbsIjkVideoView absIjkVideoView = AbsIjkVideoView.this;
                if (absIjkVideoView.mGamePlatformType == GamePlatformType.X86) {
                    LogUtils.e(AbsIjkVideoView.TAG, "==onKeyBoardShowHeight====");
                    return false;
                }
                if (absIjkVideoView.screenWidth == 0) {
                    absIjkVideoView.screenWidth = ConfigUtil.getScreenWidth(absIjkVideoView.getContext());
                }
                AbsIjkVideoView absIjkVideoView2 = AbsIjkVideoView.this;
                if (absIjkVideoView2.screenHeight == 0) {
                    absIjkVideoView2.screenHeight = ConfigUtil.getScreenHeight(absIjkVideoView2.getContext());
                }
                AbsIjkVideoView absIjkVideoView3 = AbsIjkVideoView.this;
                int i13 = absIjkVideoView3.mShowHeight;
                if (i13 == 0) {
                    i13 = absIjkVideoView3.screenHeight;
                }
                absIjkVideoView3.mShowHeight = i13;
                int i14 = absIjkVideoView3.mShowWidth;
                if (i14 == 0) {
                    i14 = absIjkVideoView3.screenWidth;
                }
                absIjkVideoView3.mShowWidth = i14;
                LogUtils.i(AbsIjkVideoView.TAG, "<==开启键盘状态 高度: " + i12 + ";screenHeight: " + AbsIjkVideoView.this.screenHeight + ";mShowHeight: " + AbsIjkVideoView.this.mShowHeight + ";screenWidth: " + AbsIjkVideoView.this.screenWidth + ";mShowWidth: " + AbsIjkVideoView.this.mShowWidth);
                AbsIjkVideoView absIjkVideoView4 = AbsIjkVideoView.this;
                if (i12 == Math.abs(absIjkVideoView4.screenWidth - absIjkVideoView4.screenHeight)) {
                    LogUtils.i(AbsIjkVideoView.TAG, "横竖屏切换，忽略键盘状态；");
                    return false;
                }
                int i15 = AbsIjkVideoView.this.mAppContext.getResources().getConfiguration().orientation;
                if (i15 == 2) {
                    AbsIjkVideoView absIjkVideoView5 = AbsIjkVideoView.this;
                    iMax = Math.min(absIjkVideoView5.screenHeight, absIjkVideoView5.screenWidth);
                    AbsIjkVideoView absIjkVideoView6 = AbsIjkVideoView.this;
                    iMax2 = Math.min(absIjkVideoView6.mShowHeight, absIjkVideoView6.mShowWidth);
                } else if (i15 == 1) {
                    AbsIjkVideoView absIjkVideoView7 = AbsIjkVideoView.this;
                    iMax = Math.max(absIjkVideoView7.screenHeight, absIjkVideoView7.screenWidth);
                    AbsIjkVideoView absIjkVideoView8 = AbsIjkVideoView.this;
                    iMax2 = Math.max(absIjkVideoView8.mShowHeight, absIjkVideoView8.mShowWidth);
                } else {
                    iMax = 0;
                    iMax2 = 0;
                }
                int i16 = (iMax - iMax2) / 2;
                int inputOffset = HmIMEManager.getInstance().getInputOffset();
                float f10 = 0.5f;
                float f11 = iMax2 != 0 ? ((i12 - i16) + inputOffset) / iMax2 : 0.5f;
                if (f11 > 1.0f || f11 < 0.0f) {
                    CountlyUtil.recordErrorEvent("heightScale error: inputShowOffset" + inputOffset + ",surfaceHeight:" + iMax2 + ",height:" + i12);
                } else {
                    f10 = f11;
                }
                AbsIjkVideoView.this.mEventContent = String.format(Locale.US, "IME:KBH:%f", Float.valueOf(f10));
                AbsIjkVideoView absIjkVideoView9 = AbsIjkVideoView.this;
                absIjkVideoView9.sendKeyboardHeightPercent(absIjkVideoView9.mEventContent);
                return true;
            }
        };
        this.mWsReconnectCount = 0;
        this.waitingUsersNum = 0;
        this.mResfreshStokenReasons = "";
        this.eventBuilder = new StringBuilder();
        this.mBaseConnectInputTime = 0L;
        this.intervalBegin = SystemClock.elapsedRealtime();
        this.streamWidth = 0;
        this.streamHeight = 0;
        this.paint = new Paint();
        this.point = new Point();
        this.mSpeed = 0.0f;
        this.SAAS_WS_DELAY = 2;
        this.mIsAhead = false;
        this.mCacheListener = new AnonymousClass51();
        this.mHMInputCallback = new HMInputCallback() { // from class: com.haima.hmcp.widgets.AbsIjkVideoView.53
            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onClockDiffChange(long j10, int i12) {
                AbsIjkVideoView.this.streamModel.onClockDiffChange(i12);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onConnect(boolean z10) {
                AbsIjkVideoView.this.instanceConnect();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onDisconnect(int i12, String str, boolean z10) {
                AbsIjkVideoView.this.disConnectInput(i12, str);
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onFirstDiffClockSuccess(long j10) {
                AbsIjkVideoView.this.streamModel.onFirstDiffClockSuccess();
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.input.listener.HMInputCallback
            public void onTextMessage(String str) {
                AbsIjkVideoView.this.instanceTextMessage(str);
            }
        };
        init(context);
    }
}
