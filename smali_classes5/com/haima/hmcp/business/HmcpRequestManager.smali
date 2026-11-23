.class public Lcom/haima/hmcp/business/HmcpRequestManager;
.super Lcom/haima/hmcp/business/BaseManager;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHmcpRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;
    }
.end annotation


# static fields
.field protected static final ACCESS_KEY_ID:Ljava/lang/String; = "HMCP_ACCESS_KEY_ID"

.field protected static final CHANNEL_ID:Ljava/lang/String; = "HMCP_CHANNEL_ID"

.field public static final CID_KEY:Ljava/lang/String; = "HMCP_CID"

.field public static final CID_VALUE:Ljava/lang/String; = "HMCP_CID_VALUE"

.field public static final HMCP_CID_BATTLE_TYPE:Ljava/lang/String; = "HMCP_CID_BATTLE_TYPE"

.field public static final JSON_TAG_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final JSON_TAG_ERROR_MESSAGE:Ljava/lang/String; = "errorMsg"

.field public static final JSON_TAG_STATE_CHANGE_REASON:Ljava/lang/String; = "stateChangeReason"

.field private static final KEY_PREFERENCE_DID:Ljava/lang/String; = "key_preference_did"

.field public static final NOT_REPORT:I = -0x1

.field public static final OPTYPE_NORMAL:I = 0x0

.field public static final OPTYPE_REFRESH:I = 0x1

.field public static final OPTYPE_RESOLUTION:I = 0x2

.field public static final OPTYPE_V2:I = 0x3

.field public static final QUEUE_CONFIRM:I = 0x1

.field public static final QUEUE_DEFAULT:I = 0x0

.field public static final REPORT_INTERVAL_MIN:I = 0x5

.field private static final REQUEST_MAX_TIME:I = 0x3

.field public static final SDK_ABILITY_APK_TYPE_POOL_BINTANG:J = 0x80L

.field public static final SDK_ABILITY_CTOKEN_CHECK:J = 0x10L

.field public static final SDK_ABILITY_H265_FEC_SUPPORT:J = 0x40L

.field public static final SDK_ABILITY_NO_NEW_CID:J = 0x1L

.field public static final SDK_ABILITY_OPEN_STREAMER_PARALLEL:J = 0x200L

.field public static final SDK_ABILITY_RTC:J = 0x4L

.field public static final SDK_ABILITY_SURFACE_FACEID_MEGRE:J = 0x20L

.field public static final SDK_ABILITY_TV:J = 0x8L

.field private static final TAG:Ljava/lang/String; = "HmcpRequestManager"

.field public static clientCity:Ljava/lang/String;

.field public static clientISP:Ljava/lang/String;

.field public static clientProvince:Ljava/lang/String;

.field public static mArchiveMinSeconds:I


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private cTokenTimeStamp:Ljava/lang/Long;

.field private confirm:I

.field private currentOPType:I

.field private enableHighBitrate:Ljava/lang/Boolean;

.field public isAccessConnecting:Z

.field protected isAccessWebSocketConnected:Z

.field public isAllowConnect2Access:Z

.field private isChangeStreamType:Z

.field private isCloudIdChange:Z

.field private isCustomPlayer:Z

.field private isGetCloudServiceRequestV2Requesting:Z

.field public isStopPlay:Z

.field private isTransfer:Z

.field protected keepLoginStatus:Ljava/lang/Boolean;

.field private languageFromApp:Ljava/lang/String;

.field protected mAccessKeyId:Ljava/lang/String;

.field private mAccessReconnectURL:Ljava/lang/String;

.field protected mAccessURL:Ljava/lang/String;

.field private mAccessURList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field public mAnomalousLeft:F

.field public mAnomalousRight:F

.field private mAppChannel:Ljava/lang/String;

.field private mAppId:I

.field private mAppName:Ljava/lang/String;

.field public mArchive:Z

.field public mArchiveFromBid:Ljava/lang/String;

.field public mArchiveFromUserId:Ljava/lang/String;

.field protected mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

.field private mBitRate:I

.field protected mCToken:Ljava/lang/String;

.field protected mCallBack:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

.field protected mChannelId:Ljava/lang/String;

.field private mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

.field protected mCloudId:Ljava/lang/String;

.field private mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

.field private mComponentName:Ljava/lang/String;

.field private mComponentType:I

.field private mConfigInfo:Ljava/lang/String;

.field protected mDeviceId:Ljava/lang/String;

.field private mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

.field private mDevicePixelRation:Ljava/lang/Integer;

.field private mDisableAutoStream:Z

.field private mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

.field private mExtraId:Ljava/lang/String;

.field private mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

.field protected mFinishByServer:Ljava/lang/Boolean;

.field private mGid:Ljava/lang/String;

.field protected mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

.field public mIsAhead:Z

.field private mIsAllowCompatibleIPV6:Z

.field private mIsInTvRtcBlackList:Z

.field private mKeepAliveTimeSeconds:Ljava/lang/Integer;

.field protected mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

.field protected mLinkSt:Ljava/lang/String;

.field private mMessageServerInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

.field mMetaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoInputLimitTime:I

.field private mOpenMultiArchive:Ljava/lang/Boolean;

.field private mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

.field private mPasswordKey:Ljava/lang/String;

.field public mPayStr:Ljava/lang/String;

.field private mPlayTime:J

.field private mPriority:I

.field public mProtoData:Ljava/lang/String;

.field private mRandomKey:Ljava/lang/String;

.field protected mRequestTime:I

.field protected mResolutionID:Ljava/lang/String;

.field private mRetryTimer:Ljava/util/Timer;

.field protected mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

.field private mSaveArchiveBidMultiArchive:Ljava/lang/String;

.field private mSaveArchiveMultiArchive:Ljava/lang/Boolean;

.field private mSaveArchiveUidMultiArchive:Ljava/lang/String;

.field private mSecretKey:Ljava/lang/String;

.field private mSeiEnable:Z

.field protected mSignature:Ljava/lang/String;

.field private mStreamingMode:I

.field private mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;

.field private mUserDeviceInfo:Ljava/lang/String;

.field private mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

.field private mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

.field private mViewFrameRate:I

.field private mViewResolutionHeight:I

.field private mViewResolutionWidth:I

.field protected mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

.field private netTestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/NetTestData;",
            ">;"
        }
    .end annotation
.end field

.field private netTestUtil:Lcom/haima/hmcp/utils/NetTestUtil;

.field private onEnableHighBitrateListener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

.field private opType:I

.field private packageName:Ljava/lang/String;

.field private protoDataGameInfo:Lcom/haima/hmcp/beans/ProtoDataGameInfo;

.field private reportFrameDelayInterval:I

.field private saasAuthUrl:Ljava/lang/String;

.field private streamType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/BaseManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->currentOPType:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v1, Lcom/haima/hmcp/utils/NetTestUtil;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/haima/hmcp/utils/NetTestUtil;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestUtil:Lcom/haima/hmcp/utils/NetTestUtil;

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isTransfer:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsInTvRtcBlackList:Z

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSeiEnable:Z

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isChangeStreamType:Z

    .line 40
    .line 41
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCustomPlayer:Z

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousLeft:F

    .line 45
    .line 46
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousRight:F

    .line 47
    .line 48
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    .line 51
    .line 52
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mKeepAliveTimeSeconds:Ljava/lang/Integer;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 57
    .line 58
    new-instance v0, Lcom/haima/hmcp/beans/BattleMode;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/haima/hmcp/beans/BattleMode;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->initConfigInfo()V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "DownFirstFrame---HmcpRequestManager==constructor="

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1002(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->onEnableHighBitrateListener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->initX86Data(Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getJsonObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/business/HmcpRequestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->quitVolleyManager()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1602(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->cTokenTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lcom/haima/hmcp/business/HmcpRequestManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1800(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1802(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/UserInfo2;)Lcom/haima/hmcp/beans/UserInfo2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1902(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyPlayerListener(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2002(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2302(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2402(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURList:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2602(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2700(Lcom/haima/hmcp/business/HmcpRequestManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCloudIdChange:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2702(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCloudIdChange:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/DistanceLimit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->resolveDistanceInfo(Lcom/haima/hmcp/beans/DistanceLimit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2902(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ProtoDataGameInfo;)Lcom/haima/hmcp/beans/ProtoDataGameInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->protoDataGameInfo:Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3000(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3100(Lcom/haima/hmcp/business/HmcpRequestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->doConfigureResultNull()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mGid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/business/IRetryPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->doGetCloudServiceResult2Null(Lcom/haima/hmcp/business/IRetryPolicy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->retryByErrorCode(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3500(Lcom/haima/hmcp/business/HmcpRequestManager;ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattleInternetProtocol(ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3600(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/JoinBattle;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattle(Lcom/haima/hmcp/beans/JoinBattle;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/HmcpRequestManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsInTvRtcBlackList:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsInTvRtcBlackList:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMessageServerInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/MessageServerInfo;)Lcom/haima/hmcp/beans/MessageServerInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMessageServerInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->currentOPType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ConfigureResult;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->handleConfigureMetaInfo(Lcom/haima/hmcp/beans/ConfigureResult;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyGetConfigureErrorListener(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private doConfigureResultNull()V
    .locals 10

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    const-class v0, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v9, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 14
    .line 15
    const-string v2, "-1001"

    .line 16
    .line 17
    const/16 v4, -0x3e9

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move-object v3, v5

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 37
    .line 38
    const-string v0, "13214"

    .line 39
    .line 40
    invoke-static {v9}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 48
    .line 49
    const-string v1, "Failed to get config"

    .line 50
    .line 51
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyPlayerListener(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyGetConfigureErrorListener(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_errorMsg_null:I

    .line 60
    .line 61
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "100108004"

    .line 66
    .line 67
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private doGetCloudServiceResult2Null(Lcom/haima/hmcp/business/IRetryPolicy;)V
    .locals 9
    .param p1    # Lcom/haima/hmcp/business/IRetryPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    move v5, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    new-instance v8, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    .line 21
    .line 22
    const-string v1, "-1001"

    .line 23
    .line 24
    const-string v2, "result is null"

    .line 25
    .line 26
    const/16 v3, 0xc8

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 31
    .line 32
    const-string v7, ""

    .line 33
    .line 34
    move-object v0, v8

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput p1, v8, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 39
    .line 40
    const-string p1, "13214"

    .line 41
    .line 42
    invoke-static {v8}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 50
    .line 51
    const-string v0, "Failed to get cloud service v2"

    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyPlayerListener(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 57
    .line 58
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "100211003"

    .line 63
    .line 64
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 4
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==enableHighBitrate() enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    .line 6
    iput-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->onEnableHighBitrateListener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 7
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v8, v9}, Lcom/haima/hmcp/beans/ReportGetCloudService;-><init>(II)V

    const-string v1, "12083"

    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "12232"

    if-eqz v0, :cond_1

    const-string v0, "enableHighBitrate-----empty cid"

    .line 10
    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    const-string v9, "100201003"

    const-string v10, "cloudId is empty"

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->onEnableHighBitrateListener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    if-eqz v0, :cond_0

    const-string v1, "-1001-cid null"

    .line 14
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iput v8, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    const-string v0, "enableHighBitrate-----Network unavailable"

    .line 17
    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    const-string v9, "100201003"

    const-string v10, "Network unavailable"

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 19
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->onEnableHighBitrateListener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    if-eqz v0, :cond_2

    const-string v1, "-1002-network unavailable"

    .line 21
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "enableHighBitrate-----Network available"

    .line 22
    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput v9, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->opType:I

    .line 24
    iput v8, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->confirm:I

    .line 25
    new-instance v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/GetCloudServiceParameters;-><init>()V

    .line 26
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->cloudId:Ljava/lang/String;

    .line 27
    iget v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppId:I

    iput v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appId:I

    .line 28
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appName:Ljava/lang/String;

    .line 29
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appChannel:Ljava/lang/String;

    .line 30
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->signature:Ljava/lang/String;

    .line 31
    iget-wide v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    iput-wide v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->playingTime:J

    .line 32
    iget v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mPriority:I

    iput v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->priority:I

    .line 33
    iput v8, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->confirm:I

    .line 34
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->resolution:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->knockKnock:Ljava/lang/String;

    .line 36
    iput v9, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->opType:I

    .line 37
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mPayStr:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->payStr:Ljava/lang/String;

    .line 38
    iget v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    iput v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->bitRate:I

    .line 39
    sget v0, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    iput v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientType:I

    .line 40
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->orientation:I

    const-string v0, "Formal"

    .line 41
    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->envType:Ljava/lang/String;

    .line 42
    iget-boolean v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchive:Z

    iput-boolean v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->isArchive:Z

    .line 43
    iput-boolean v9, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->syncRefresh:Z

    .line 44
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientISP:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientProvince:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientCity:Ljava/lang/String;

    .line 47
    iget v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    iget v1, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    invoke-direct {v6, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getViewResolutionStr(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->viewResolution:Ljava/lang/String;

    move-object/from16 v0, p3

    .line 48
    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->routingIp:Ljava/lang/String;

    .line 49
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->enlargeBitRate:Ljava/lang/Boolean;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeframe--enableHighBitrate--request-->"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v1, 0xc9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v14

    .line 53
    iget-object v0, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->applyCloudInstance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    if-eqz v0, :cond_5

    .line 56
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->resetCloudPlayInfo()V

    :cond_5
    const-string v12, "12011"

    .line 57
    new-instance v13, Lcom/haima/hmcp/business/RequestDiscardPolicy;

    invoke-direct {v13}, Lcom/haima/hmcp/business/RequestDiscardPolicy;-><init>()V

    .line 58
    iget-object v0, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v11

    const-class v15, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$19;

    invoke-direct {v0, v6, v8, v9}, Lcom/haima/hmcp/business/HmcpRequestManager$19;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;II)V

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method private getCTokenTimeStamp(Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "c_token_time_stamp"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v0, v2

    .line 17
    :goto_0
    cmp-long p1, v0, v2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_1
    return-object p1
.end method

.method private getCloudServiceParametersV2(Ljava/lang/String;Z)Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;
    .locals 10

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "HMCP_CID_BATTLE_TYPE"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    sget-object v2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "tv_battle->current player: "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 51
    .line 52
    iget v5, v5, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, ", cache player: "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAhead:Z

    .line 73
    .line 74
    iput-boolean v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->ahead:Z

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    const-string v6, ""

    .line 78
    .line 79
    const/4 v7, 0x1

    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    sget-object v4, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_1

    .line 89
    .line 90
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 93
    .line 94
    sput-object v6, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    if-eqz p2, :cond_2

    .line 98
    .line 99
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object v4, v6

    .line 103
    :goto_1
    iput-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 106
    .line 107
    iget v4, v4, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 108
    .line 109
    if-ne v4, v7, :cond_3

    .line 110
    .line 111
    if-ne v1, v5, :cond_3

    .line 112
    .line 113
    iput-object v6, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 114
    .line 115
    const-string v1, "isRequestWithCid --- false, cid: "

    .line 116
    .line 117
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v4, "isRequestWithCid --- "

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v4, ", cid: "

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAhead:Z

    .line 152
    .line 153
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraId:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraId:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appName:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromBid:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromBid:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromUserId:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromUserId:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 170
    .line 171
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appChannel:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 174
    .line 175
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 176
    .line 177
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mConfigInfo:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->configInfo:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cToken:Ljava/lang/String;

    .line 184
    .line 185
    const-string v4, "Formal"

    .line 186
    .line 187
    iput-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->envType:Ljava/lang/String;

    .line 188
    .line 189
    iget-wide v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    .line 190
    .line 191
    iput-wide v8, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->playingTime:J

    .line 192
    .line 193
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPriority:I

    .line 194
    .line 195
    int-to-long v8, v8

    .line 196
    iput-wide v8, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->priority:J

    .line 197
    .line 198
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v8, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->resolution:Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v8, "userInfo"

    .line 210
    .line 211
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 215
    .line 216
    invoke-virtual {v8}, Lcom/haima/hmcp/beans/UserInfo2;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v8, "timeframe--getCloudServiceRequestV3--request-->"

    .line 236
    .line 237
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v8, "  "

    .line 246
    .line 247
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    .line 251
    .line 252
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPayStr:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->payStr:Ljava/lang/String;

    .line 265
    .line 266
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    .line 267
    .line 268
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->bitRate:I

    .line 269
    .line 270
    sget v1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 271
    .line 272
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientType:I

    .line 273
    .line 274
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 275
    .line 276
    sget-object v8, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 277
    .line 278
    if-ne v1, v8, :cond_6

    .line 279
    .line 280
    const/4 v1, 0x0

    .line 281
    goto :goto_3

    .line 282
    :cond_6
    const/4 v1, 0x1

    .line 283
    :goto_3
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->orientation:I

    .line 284
    .line 285
    iput-object v4, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->envType:Ljava/lang/String;

    .line 286
    .line 287
    iget-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchive:Z

    .line 288
    .line 289
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->isArchive:Z

    .line 290
    .line 291
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    .line 292
    .line 293
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->protoData:Ljava/lang/String;

    .line 294
    .line 295
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mNoInputLimitTime:I

    .line 296
    .line 297
    int-to-long v8, v1

    .line 298
    iput-wide v8, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->noInputTimeout:J

    .line 299
    .line 300
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    .line 301
    .line 302
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientISP:Ljava/lang/String;

    .line 303
    .line 304
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    .line 305
    .line 306
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientProvince:Ljava/lang/String;

    .line 307
    .line 308
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    .line 309
    .line 310
    iput-object v1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientCity:Ljava/lang/String;

    .line 311
    .line 312
    iput-boolean v7, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->syncRefresh:Z

    .line 313
    .line 314
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->routingIp:Ljava/lang/String;

    .line 315
    .line 316
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    .line 317
    .line 318
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    .line 319
    .line 320
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getViewResolutionStr(II)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->viewResolution:Ljava/lang/String;

    .line 325
    .line 326
    new-instance p1, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->streamingTypes:Ljava/util/List;

    .line 337
    .line 338
    iput-boolean v7, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->support2k:Z

    .line 339
    .line 340
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousLeft:F

    .line 341
    .line 342
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousLeft:F

    .line 343
    .line 344
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousRight:F

    .line 345
    .line 346
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousRight:F

    .line 347
    .line 348
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mKeepAliveTimeSeconds:Ljava/lang/Integer;

    .line 349
    .line 350
    if-eqz p1, :cond_7

    .line 351
    .line 352
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->keepAliveTimeSeconds:Ljava/lang/Integer;

    .line 353
    .line 354
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 355
    .line 356
    if-eqz p1, :cond_8

    .line 357
    .line 358
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->devicePixelRatio:Ljava/lang/Integer;

    .line 359
    .line 360
    :cond_8
    sget p1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 361
    .line 362
    if-ne p1, v5, :cond_9

    .line 363
    .line 364
    sget p1, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 365
    .line 366
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->imeType:I

    .line 367
    .line 368
    :cond_9
    sget p1, Lcom/haima/hmcp/Constants;->IME_TYPE_SOURCE:I

    .line 369
    .line 370
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientImeType:I

    .line 371
    .line 372
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 373
    .line 374
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 375
    .line 376
    if-eqz p1, :cond_a

    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/IntentExtraData;->getAppLink()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_b

    .line 387
    .line 388
    :cond_a
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentType:I

    .line 389
    .line 390
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentType:I

    .line 391
    .line 392
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAction:Ljava/lang/String;

    .line 393
    .line 394
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->action:Ljava/lang/String;

    .line 395
    .line 396
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentName:Ljava/lang/String;

    .line 397
    .line 398
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentName:Ljava/lang/String;

    .line 399
    .line 400
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v1, "post ExtraData = "

    .line 406
    .line 407
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 411
    .line 412
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    sget p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_INTERFACE_ID:I

    .line 427
    .line 428
    if-lez p1, :cond_c

    .line 429
    .line 430
    iput-boolean v7, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTest:Z

    .line 431
    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInterfaceId:Ljava/lang/Integer;

    .line 437
    .line 438
    sget p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_INSTANCE_ID:I

    .line 439
    .line 440
    if-lez p1, :cond_c

    .line 441
    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInstanceId:Ljava/lang/Integer;

    .line 447
    .line 448
    :cond_c
    sget-object p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_C_ID:Ljava/lang/String;

    .line 449
    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-nez p1, :cond_d

    .line 455
    .line 456
    sget-object p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_C_ID:Ljava/lang/String;

    .line 457
    .line 458
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 459
    .line 460
    :cond_d
    sget-boolean p1, Lcom/haima/hmcp/Constants;->ENABLE_FREE_FLOW_TAG:Z

    .line 461
    .line 462
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->freeFlowTag:Z

    .line 463
    .line 464
    if-eqz p2, :cond_e

    .line 465
    .line 466
    iget-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-nez p1, :cond_e

    .line 473
    .line 474
    const/4 v3, 0x1

    .line 475
    :cond_e
    invoke-direct {p0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkAbility:[J

    .line 480
    .line 481
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSeiEnable:Z

    .line 482
    .line 483
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->h264SeiDataReportEnable:Z

    .line 484
    .line 485
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    .line 486
    .line 487
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->enlargeBitRate:Ljava/lang/Boolean;

    .line 488
    .line 489
    :try_start_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserDeviceInfo:Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .line 497
    goto :goto_4

    .line 498
    :catch_0
    nop

    .line 499
    :goto_4
    iget-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 500
    .line 501
    if-nez p1, :cond_f

    .line 502
    .line 503
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    .line 504
    .line 505
    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 506
    .line 507
    .line 508
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 509
    .line 510
    :cond_f
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;

    .line 511
    .line 512
    if-eqz p1, :cond_10

    .line 513
    .line 514
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/SerializableMap;->getMap()Ljava/util/Map;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->richData:Ljava/util/Map;

    .line 519
    .line 520
    :cond_10
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    .line 521
    .line 522
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->disableAutoStream:Ljava/lang/Boolean;

    .line 527
    .line 528
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mGid:Ljava/lang/String;

    .line 529
    .line 530
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gameId:Ljava/lang/String;

    .line 531
    .line 532
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    .line 533
    .line 534
    iput p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->streamingMode:I

    .line 535
    .line 536
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->cTokenTimeStamp:Ljava/lang/Long;

    .line 537
    .line 538
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->timestamp:Ljava/lang/Long;

    .line 539
    .line 540
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->keepLoginStatus:Ljava/lang/Boolean;

    .line 541
    .line 542
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->keepLoginStatus:Ljava/lang/Boolean;

    .line 543
    .line 544
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOpenMultiArchive:Ljava/lang/Boolean;

    .line 545
    .line 546
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->openMultiArchive:Ljava/lang/Boolean;

    .line 547
    .line 548
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveMultiArchive:Ljava/lang/Boolean;

    .line 549
    .line 550
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveMultiArchive:Ljava/lang/Boolean;

    .line 551
    .line 552
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveBidMultiArchive:Ljava/lang/String;

    .line 553
    .line 554
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveBidMultiArchive:Ljava/lang/String;

    .line 555
    .line 556
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveUidMultiArchive:Ljava/lang/String;

    .line 557
    .line 558
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveUidMultiArchive:Ljava/lang/String;

    .line 559
    .line 560
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 561
    .line 562
    if-lez p1, :cond_11

    .line 563
    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    iget p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 570
    .line 571
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->viewFrameRate:Ljava/lang/String;

    .line 582
    .line 583
    :cond_11
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 584
    .line 585
    iget p2, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 586
    .line 587
    iput p2, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->battleOnlineType:I

    .line 588
    .line 589
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 590
    .line 591
    if-eqz p1, :cond_12

    .line 592
    .line 593
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 594
    .line 595
    if-eqz p1, :cond_12

    .line 596
    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gamePad:Ljava/lang/Integer;

    .line 602
    .line 603
    goto :goto_5

    .line 604
    :cond_12
    const/4 p1, 0x0

    .line 605
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gamePad:Ljava/lang/Integer;

    .line 606
    .line 607
    :goto_5
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFinishByServer:Ljava/lang/Boolean;

    .line 608
    .line 609
    iput-object p1, v0, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->finishByServer:Ljava/lang/Boolean;

    .line 610
    .line 611
    return-object v0
.end method

.method private getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/haima/hmcp/business/HmRetryPolicy;

    .line 14
    .line 15
    sget-object v0, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {p1, v0, v1}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lcom/haima/hmcp/business/HmRetryPolicy;

    .line 23
    .line 24
    sget-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {p1, v0, v1}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p1
.end method

.method private getDeviceIdParameters()Lcom/haima/hmcp/beans/DeviceIdParameters;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/DeviceIdParameters;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/DeviceIdParameters;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 7
    .line 8
    iput v1, v0, Lcom/haima/hmcp/beans/DeviceIdParameters;->type:I

    .line 9
    .line 10
    const-string v1, "Formal"

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/DeviceIdParameters;->envType:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method private getJoinBattle(Lcom/haima/hmcp/beans/JoinBattle;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 11

    const-string v0, "12809"

    const-string v1, "tv_battle->"

    if-nez p3, :cond_0

    .line 19
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "OnJoinBattleListener is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v0, p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 21
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle is null"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 24
    :cond_1
    iget-object v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->cid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle.cid is null or empty"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 28
    :cond_2
    iget-object v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle.packageName is null or empty"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 32
    :cond_3
    iget-object v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->cToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 33
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle.cToken is null or empty"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 36
    :cond_4
    iget v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->streamingType:I

    if-ltz v3, :cond_d

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    goto/16 :goto_2

    .line 37
    :cond_5
    iget v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->playTime:I

    int-to-long v5, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_6

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinBattle.playTime is not validate: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/haima/hmcp/beans/JoinBattle;->playTime:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 42
    :cond_6
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tv_battle->getJoinBattle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/haima/hmcp/beans/report/ReportGetJoinBattle;

    invoke-direct {v1, p1}, Lcom/haima/hmcp/beans/report/ReportGetJoinBattle;-><init>(Lcom/haima/hmcp/beans/JoinBattle;)V

    const-string v3, "12807"

    .line 44
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    const/4 v3, 0x2

    if-nez v1, :cond_7

    .line 46
    iput v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    goto :goto_0

    :cond_7
    if-ltz v1, :cond_8

    if-le v1, v3, :cond_9

    .line 47
    :cond_8
    iput v3, p1, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    .line 48
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    iget-object v5, v1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    if-nez v5, :cond_a

    .line 49
    new-instance v5, Lcom/haima/hmcp/beans/Battle;

    invoke-direct {v5}, Lcom/haima/hmcp/beans/Battle;-><init>()V

    iput-object v5, v1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 50
    :cond_a
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    iget-object v5, v1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    iput v4, v5, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 51
    iget v6, p1, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    iput v6, v5, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 52
    iput v3, v1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 53
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientISP:Ljava/lang/String;

    sput-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientProvince:Ljava/lang/String;

    sput-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    .line 55
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientCity:Ljava/lang/String;

    sput-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    .line 56
    iget v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->playTime:I

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    .line 57
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 58
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->appChannel:Ljava/lang/String;

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 59
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->cToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget v5, p1, Lcom/haima/hmcp/beans/JoinBattle;->streamingType:I

    if-ne v5, v4, :cond_b

    const-string v4, "WEBRTC"

    goto :goto_1

    :cond_b
    const-string v4, "RTMP"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v7, Lcom/haima/hmcp/beans/RequestJoinBattle;

    invoke-direct {v7}, Lcom/haima/hmcp/beans/RequestJoinBattle;-><init>()V

    .line 63
    iget-object v4, p1, Lcom/haima/hmcp/beans/JoinBattle;->cid:Ljava/lang/String;

    iput-object v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->ownerCid:Ljava/lang/String;

    .line 64
    iget-object v4, p1, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    iput-object v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->pkgName:Ljava/lang/String;

    .line 65
    iget-object v4, p1, Lcom/haima/hmcp/beans/JoinBattle;->appChannel:Ljava/lang/String;

    iput-object v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->appChannel:Ljava/lang/String;

    .line 66
    iget-object v4, p1, Lcom/haima/hmcp/beans/JoinBattle;->cToken:Ljava/lang/String;

    iput-object v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->cToken:Ljava/lang/String;

    const-string v4, "Formal"

    .line 67
    iput-object v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->envType:Ljava/lang/String;

    .line 68
    iput-object v1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->streamingTypes:Ljava/util/List;

    .line 69
    iget v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->playTime:I

    int-to-long v4, v1

    iput-wide v4, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->playingTime:J

    .line 70
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iput-object v1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 71
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientISP:Ljava/lang/String;

    iput-object v1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->clientISP:Ljava/lang/String;

    .line 72
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientProvince:Ljava/lang/String;

    iput-object v1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->clientProvince:Ljava/lang/String;

    .line 73
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->clientCity:Ljava/lang/String;

    iput-object v1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->clientCity:Ljava/lang/String;

    .line 74
    iput-object p2, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->routingIp:Ljava/lang/String;

    .line 75
    iput v3, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->battleOnlineType:I

    .line 76
    iget p2, p1, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    iput p2, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->gamePad:I

    .line 77
    invoke-direct {p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    move-result-object p2

    iput-object p2, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->sdkAbility:[J

    .line 78
    iget-object p1, p1, Lcom/haima/hmcp/beans/JoinBattle;->protoData:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 79
    iput-object p1, v7, Lcom/haima/hmcp/beans/RequestJoinBattle;->protoData:Ljava/lang/String;

    .line 80
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tv_battle->getJoinBattle---request encrypt before--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x137

    const/4 v8, 0x0

    move-object v5, p0

    move-wide v9, p1

    .line 82
    invoke-direct/range {v5 .. v10}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tv_battle->getJoinBattle---request encrypt after--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v0

    new-instance v2, Lcom/haima/hmcp/business/HmcpRequestManager$53;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$53;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnJoinBattleListener;J)V

    const-string p1, "13110"

    const-class p2, Lcom/haima/hmcp/beans/JoinBattleResult;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void

    .line 85
    :cond_d
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoinBattle.streamingType is not validate: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/haima/hmcp/beans/JoinBattle;->streamingType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void
.end method

.method private getJoinBattleInternetProtocol(ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/haima/hmcp/business/HmcpRequestManager$52;

    .line 6
    .line 7
    invoke-direct {p1, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$52;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, ""

    .line 15
    .line 16
    invoke-direct {p0, p2, p1, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattle(Lcom/haima/hmcp/beans/JoinBattle;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private getJsonObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "errorCode"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p1, "errorMsg"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p1, "stateChangeReason"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v0
.end method

.method private getNetTestData(Ljava/lang/String;J)Lcom/haima/hmcp/beans/NetTestData;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v1, v3, :cond_3

    .line 23
    .line 24
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/haima/hmcp/beans/NetTestData;

    .line 31
    .line 32
    iget-object v4, v3, Lcom/haima/hmcp/beans/NetTestData;->action:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget-wide v4, v3, Lcom/haima/hmcp/beans/NetTestData;->startTime:J

    .line 41
    .line 42
    cmp-long v6, p2, v4

    .line 43
    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    iget-object p1, v3, Lcom/haima/hmcp/beans/NetTestData;->result:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :cond_0
    iput v1, v3, Lcom/haima/hmcp/beans/NetTestData;->index:I

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object v3

    .line 60
    :cond_1
    iget-object v4, v3, Lcom/haima/hmcp/beans/NetTestData;->action:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    const-string v4, "fail"

    .line 69
    .line 70
    iget-object v5, v3, Lcom/haima/hmcp/beans/NetTestData;->result:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    iput v1, v3, Lcom/haima/hmcp/beans/NetTestData;->index:I

    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-object v3

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    monitor-exit v0

    .line 86
    return-object v2

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method private declared-synchronized getPostJson(ILcom/haima/hmcp/beans/IParameter;JLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;
    .locals 9

    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/beans/PostJson;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/PostJson;-><init>()V

    .line 7
    new-instance v1, Lcom/haima/hmcp/beans/ActionInfo;

    invoke-direct {v1}, Lcom/haima/hmcp/beans/ActionInfo;-><init>()V

    const-string v2, "3.0.10"

    .line 8
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->protocolVersion:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->transactionId:Ljava/lang/String;

    .line 10
    iput p1, v1, Lcom/haima/hmcp/beans/ActionInfo;->actionId:I

    .line 11
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->deviceId:Ljava/lang/String;

    .line 12
    sget v2, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    iput v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->sdkType:I

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->clientTransId:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 16
    invoke-static {v3}, Lcom/haima/hmcp/utils/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    :cond_1
    const/16 v2, 0x66

    const/4 v3, 0x0

    const/16 v4, 0xd3

    const/16 v5, 0x68

    if-eq p1, v2, :cond_4

    if-eq p1, v5, :cond_4

    const/16 v2, 0x73

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v2, 0xd6

    if-eq p1, v2, :cond_2

    const/16 v2, 0xe2

    if-eq p1, v2, :cond_4

    const/16 v2, 0xe4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x70

    if-eq p1, v2, :cond_4

    const/16 v2, 0x71

    if-eq p1, v2, :cond_4

    const/16 v2, 0xc9

    if-eq p1, v2, :cond_2

    const/16 v2, 0xca

    if-eq p1, v2, :cond_2

    const/16 v2, 0x137

    if-eq p1, v2, :cond_4

    const/16 v2, 0x138

    if-eq p1, v2, :cond_2

    const/16 v2, 0x140

    if-eq p1, v2, :cond_2

    const/16 v2, 0x141

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_1

    .line 17
    :cond_2
    :pswitch_0
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->randomKey:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 19
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "actionId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mSecretKey is empty:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mCloudId is empty:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-object v3

    .line 23
    :cond_4
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->randomKey:Ljava/lang/String;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "and0123456789012"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 27
    monitor-exit p0

    return-object v3

    .line 28
    :cond_5
    :try_start_2
    sget-object v2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "password key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    invoke-virtual {v3}, Lcom/haima/hmcp/beans/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v1, v0, Lcom/haima/hmcp/beans/PostJson;->action:Lcom/haima/hmcp/beans/ActionInfo;

    .line 31
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    if-eqz v3, :cond_6

    .line 32
    new-instance v3, Lcom/haima/hmcp/beans/ClientInfo;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/ClientInfo;-><init>()V

    .line 33
    iput-object p5, v3, Lcom/haima/hmcp/beans/ClientInfo;->accessKeyId:Ljava/lang/String;

    .line 34
    iget-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    iget-object v6, p5, Lcom/haima/hmcp/beans/ClientInfo;->channelId:Ljava/lang/String;

    iput-object v6, v3, Lcom/haima/hmcp/beans/ClientInfo;->channelId:Ljava/lang/String;

    .line 35
    iget-object v6, p5, Lcom/haima/hmcp/beans/ClientInfo;->clientPkgName:Ljava/lang/String;

    iput-object v6, v3, Lcom/haima/hmcp/beans/ClientInfo;->clientPkgName:Ljava/lang/String;

    .line 36
    iget-object p5, p5, Lcom/haima/hmcp/beans/ClientInfo;->sdkVersion:Ljava/lang/String;

    iput-object p5, v3, Lcom/haima/hmcp/beans/ClientInfo;->sdkVersion:Ljava/lang/String;

    .line 37
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-static {p5, v3}, Lcom/haima/hmcp/utils/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->client:Ljava/lang/String;

    goto :goto_2

    .line 38
    :cond_6
    iget-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    invoke-static {p5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-static {p5, v3}, Lcom/haima/hmcp/utils/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->client:Ljava/lang/String;

    .line 39
    :goto_2
    iget-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    invoke-static {p5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-static {p5, v3}, Lcom/haima/hmcp/utils/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->device:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    invoke-static {p2, p5}, Lcom/haima/hmcp/utils/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/haima/hmcp/beans/PostJson;->data:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    iput-object p2, v0, Lcom/haima/hmcp/beans/PostJson;->passwordKey:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSaasLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/haima/hmcp/beans/PostJson;->language:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguageConfigLevel()I

    move-result p2

    const/16 p5, 0x28

    if-ne p2, p5, :cond_8

    if-eq p1, v5, :cond_7

    const/16 p2, 0x6c

    if-eq p1, p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, ""

    .line 44
    iput-object p2, v0, Lcom/haima/hmcp/beans/PostJson;->language:Ljava/lang/String;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getPostJson::LanguageConfigLevel is default before 108,reset request saas language to empty"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->language:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    if-eq p1, v4, :cond_9

    const/16 p2, 0xde

    if-eq p1, p2, :cond_9

    const/16 p2, 0xdd

    if-ne p1, p2, :cond_a

    .line 46
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "saas language: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->language:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSaasLanguageReport()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "15489"

    .line 47
    invoke-static {p5, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getPostJson:: request saas language = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, v0, Lcom/haima/hmcp/beans/PostJson;->language:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, v1, Lcom/haima/hmcp/beans/ActionInfo;->clientTransId:Ljava/lang/String;

    iget-object v6, v1, Lcom/haima/hmcp/beans/ActionInfo;->deviceId:Ljava/lang/String;

    move-object v3, p0

    move v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->setAuthUrl(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xeb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x130
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p1

    return-object p1
.end method

.method private getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-string p3, "0"

    .line 1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "100104005"

    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p6

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;JLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 4
    :cond_2
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "100000005"

    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getRawPostJson(ILcom/haima/hmcp/beans/IParameter;Ljava/lang/String;)Lcom/haima/hmcp/beans/RawPostJson;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/beans/RawPostJson;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/haima/hmcp/beans/RawPostJson;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/haima/hmcp/beans/ActionInfo;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/haima/hmcp/beans/ActionInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "3.0.10"

    .line 13
    .line 14
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->protocolVersion:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    new-instance v4, Ljava/util/Random;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v5, 0x2710

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-long v4, v4

    .line 32
    add-long/2addr v2, v4

    .line 33
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->transactionId:Ljava/lang/String;

    .line 38
    .line 39
    iput p1, v1, Lcom/haima/hmcp/beans/ActionInfo;->actionId:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->deviceId:Ljava/lang/String;

    .line 44
    .line 45
    sget v2, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 46
    .line 47
    iput v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->sdkType:I

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget v3, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    .line 60
    .line 61
    if-lez v3, :cond_0

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "."

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget v4, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v3, ""

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->clientTransId:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v2, :cond_1

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, ""

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const/16 v3, 0x10

    .line 109
    .line 110
    invoke-static {v3}, Lcom/haima/hmcp/utils/CryptoUtils;->getRandomString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    .line 122
    .line 123
    :cond_1
    const/16 v2, 0x66

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    const/16 v4, 0x6c

    .line 127
    .line 128
    const/16 v5, 0x68

    .line 129
    .line 130
    if-eq p1, v2, :cond_4

    .line 131
    .line 132
    if-eq p1, v5, :cond_4

    .line 133
    .line 134
    if-eq p1, v4, :cond_4

    .line 135
    .line 136
    const/16 v2, 0x6e

    .line 137
    .line 138
    if-eq p1, v2, :cond_4

    .line 139
    .line 140
    const/16 v2, 0x73

    .line 141
    .line 142
    if-eq p1, v2, :cond_4

    .line 143
    .line 144
    const/16 v2, 0xd3

    .line 145
    .line 146
    if-eq p1, v2, :cond_4

    .line 147
    .line 148
    const/16 v2, 0xd6

    .line 149
    .line 150
    if-eq p1, v2, :cond_2

    .line 151
    .line 152
    const/16 v2, 0xe2

    .line 153
    .line 154
    if-eq p1, v2, :cond_4

    .line 155
    .line 156
    const/16 v2, 0xe4

    .line 157
    .line 158
    if-eq p1, v2, :cond_4

    .line 159
    .line 160
    const/16 v2, 0x138

    .line 161
    .line 162
    if-eq p1, v2, :cond_2

    .line 163
    .line 164
    const/16 v2, 0x70

    .line 165
    .line 166
    if-eq p1, v2, :cond_4

    .line 167
    .line 168
    const/16 v2, 0x71

    .line 169
    .line 170
    if-eq p1, v2, :cond_4

    .line 171
    .line 172
    const/16 v2, 0xc9

    .line 173
    .line 174
    if-eq p1, v2, :cond_2

    .line 175
    .line 176
    const/16 v2, 0xca

    .line 177
    .line 178
    if-eq p1, v2, :cond_2

    .line 179
    .line 180
    const/16 v2, 0xec

    .line 181
    .line 182
    if-eq p1, v2, :cond_2

    .line 183
    .line 184
    const/16 v2, 0xed

    .line 185
    .line 186
    if-eq p1, v2, :cond_2

    .line 187
    .line 188
    const/16 v2, 0x140

    .line 189
    .line 190
    if-eq p1, v2, :cond_2

    .line 191
    .line 192
    const/16 v2, 0x141

    .line 193
    .line 194
    if-eq p1, v2, :cond_2

    .line 195
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 197
    .line 198
    .line 199
    packed-switch p1, :pswitch_data_1

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->randomKey:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v2, :cond_3

    .line 220
    .line 221
    if-nez v6, :cond_3

    .line 222
    .line 223
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string p3, "actionId:"

    .line 238
    .line 239
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string p1, ",mSecretKey is empty:"

    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string p1, ",mCloudId is empty:"

    .line 254
    .line 255
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    monitor-exit p0

    .line 269
    return-object v3

    .line 270
    :cond_4
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    .line 271
    .line 272
    iput-object v2, v1, Lcom/haima/hmcp/beans/ActionInfo;->randomKey:Ljava/lang/String;

    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v6, "and0123456789012"

    .line 280
    .line 281
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRandomKey:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 300
    .line 301
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    if-eqz v2, :cond_5

    .line 308
    .line 309
    monitor-exit p0

    .line 310
    return-object v3

    .line 311
    :cond_5
    :try_start_2
    sget-object v2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v6, "password key: "

    .line 319
    .line 320
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 336
    .line 337
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/DeviceInfo;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iput-object v1, v0, Lcom/haima/hmcp/beans/RawPostJson;->action:Lcom/haima/hmcp/beans/ActionInfo;

    .line 345
    .line 346
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-nez v1, :cond_6

    .line 351
    .line 352
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 353
    .line 354
    if-eqz v1, :cond_6

    .line 355
    .line 356
    new-instance v1, Lcom/haima/hmcp/beans/ClientInfo;

    .line 357
    .line 358
    invoke-direct {v1}, Lcom/haima/hmcp/beans/ClientInfo;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object p3, v1, Lcom/haima/hmcp/beans/ClientInfo;->accessKeyId:Ljava/lang/String;

    .line 362
    .line 363
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 364
    .line 365
    iget-object v3, p3, Lcom/haima/hmcp/beans/ClientInfo;->channelId:Ljava/lang/String;

    .line 366
    .line 367
    iput-object v3, v1, Lcom/haima/hmcp/beans/ClientInfo;->channelId:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v3, p3, Lcom/haima/hmcp/beans/ClientInfo;->clientPkgName:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v3, v1, Lcom/haima/hmcp/beans/ClientInfo;->clientPkgName:Ljava/lang/String;

    .line 372
    .line 373
    iget-object p3, p3, Lcom/haima/hmcp/beans/ClientInfo;->sdkVersion:Ljava/lang/String;

    .line 374
    .line 375
    iput-object p3, v1, Lcom/haima/hmcp/beans/ClientInfo;->sdkVersion:Ljava/lang/String;

    .line 376
    .line 377
    iput-object v1, v0, Lcom/haima/hmcp/beans/RawPostJson;->client:Lcom/haima/hmcp/beans/ClientInfo;

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_6
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 381
    .line 382
    iput-object p3, v0, Lcom/haima/hmcp/beans/RawPostJson;->client:Lcom/haima/hmcp/beans/ClientInfo;

    .line 383
    .line 384
    :goto_2
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 385
    .line 386
    iput-object p3, v0, Lcom/haima/hmcp/beans/RawPostJson;->device:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 387
    .line 388
    iput-object p2, v0, Lcom/haima/hmcp/beans/RawPostJson;->data:Lcom/haima/hmcp/beans/IParameter;

    .line 389
    .line 390
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPasswordKey:Ljava/lang/String;

    .line 391
    .line 392
    iput-object p2, v0, Lcom/haima/hmcp/beans/RawPostJson;->passwordKey:Ljava/lang/String;

    .line 393
    .line 394
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSaasLanguage()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    iput-object p2, v0, Lcom/haima/hmcp/beans/RawPostJson;->language:Ljava/lang/String;

    .line 399
    .line 400
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguageConfigLevel()I

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    const/16 p3, 0x28

    .line 405
    .line 406
    if-ne p2, p3, :cond_8

    .line 407
    .line 408
    if-eq p1, v5, :cond_7

    .line 409
    .line 410
    if-eq p1, v4, :cond_7

    .line 411
    .line 412
    goto :goto_3

    .line 413
    :cond_7
    const-string p1, ""

    .line 414
    .line 415
    iput-object p1, v0, Lcom/haima/hmcp/beans/RawPostJson;->language:Ljava/lang/String;

    .line 416
    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string p2, "getPostJson::LanguageConfigLevel is default before 108,reset request saas language to empty"

    .line 423
    .line 424
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    iget-object p2, v0, Lcom/haima/hmcp/beans/RawPostJson;->language:Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string p2, "getPostJson:: request saas language = "

    .line 445
    .line 446
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    iget-object p2, v0, Lcom/haima/hmcp/beans/RawPostJson;->language:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    .line 460
    .line 461
    monitor-exit p0

    .line 462
    return-object v0

    .line 463
    :catchall_0
    move-exception p1

    .line 464
    monitor-exit p0

    .line 465
    throw p1

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0xd9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :pswitch_data_1
    .packed-switch 0x130
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestConfigureData()Lcom/haima/hmcp/beans/RequestConfigure;
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/RequestConfigure;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/RequestConfigure;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->accessKeyId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->appChannel:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "Formal"

    .line 19
    .line 20
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->envType:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->isReduce:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->sdkAbility:[J

    .line 31
    .line 32
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mGid:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->streamingTypes:Ljava/util/List;

    .line 55
    .line 56
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 57
    .line 58
    if-lez v1, :cond_1

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ""

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/haima/hmcp/beans/RequestConfigure;->viewFrameRate:Ljava/lang/String;

    .line 80
    .line 81
    :cond_1
    return-object v0
.end method

.method private getSaasLanguage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/HmcpManager;->getSystemLocalStr(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguage()Lcom/haima/hmcp/beans/Language;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/Language;->getConfig()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method private getSaasLanguageReport()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/HmcpManager;->getSystemLocalStr(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "app language: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "null"

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move-object v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    const-string v2, ", "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    const-string v4, "android os language: "

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    move-object v0, v3

    .line 54
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    const-string v0, "sdk language: "

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguage()Lcom/haima/hmcp/beans/Language;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/Language;->getConfig()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method private getSdkAbility(Z)[J
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-wide/16 v2, 0x8

    .line 15
    .line 16
    :goto_1
    or-long/2addr v0, v2

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCustomPlayer:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    const-wide/16 v2, 0x4

    .line 23
    .line 24
    or-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x10

    .line 26
    .line 27
    or-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x20

    .line 29
    .line 30
    or-long/2addr v0, v2

    .line 31
    const-wide/16 v2, 0x40

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_2
    const-wide/16 v2, 0x80

    .line 35
    .line 36
    or-long/2addr v0, v2

    .line 37
    const-wide/16 v2, 0x200

    .line 38
    .line 39
    or-long/2addr v0, v2

    .line 40
    const/4 p1, 0x1

    .line 41
    new-array p1, p1, [J

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-wide v0, p1, v2

    .line 45
    .line 46
    return-object p1
.end method

.method private getViewResolutionStr(II)Ljava/lang/String;
    .locals 2

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    if-gtz p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-string v0, "x"

    .line 7
    .line 8
    if-le p1, p2, :cond_1

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    return-object p1

    .line 48
    :cond_2
    :goto_1
    const-string p1, ""

    .line 49
    .line 50
    return-object p1
.end method

.method private handleConfigureMetaInfo(Lcom/haima/hmcp/beans/ConfigureResult;ZI)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v3, "handleConfigureMetaInfo--start"

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v2, "handleConfigureMetaInfo--result is null."

    .line 2
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/haima/hmcp/beans/ConfigureResult;

    invoke-direct {v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    move-result-object v0

    .line 4
    new-instance v10, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    const-string v3, "100108003"

    const-string v4, "handleConfigureMetaInfo--result is null."

    const/16 v5, 0xc8

    const-string v6, ""

    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    move-result v7

    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iget-object v9, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "12233"

    .line 6
    invoke-static {v10}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, v2, Lcom/haima/hmcp/beans/ConfigureResult;->setDataInfo:Ljava/util/List;

    .line 8
    iget-object v3, v2, Lcom/haima/hmcp/beans/ConfigureResult;->interactiveTalkInfo:Ljava/util/List;

    .line 9
    iget-object v4, v2, Lcom/haima/hmcp/beans/ConfigureResult;->switchInfo:Ljava/util/List;

    .line 10
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v5, v2, Lcom/haima/hmcp/beans/ConfigureResult;->webrtcResolutionInfo:Ljava/util/List;

    const-string v6, "12235"

    const-string v7, "WEBRTC"

    if-nez v5, :cond_2

    .line 12
    iget-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    invoke-static {v6}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    move-object v12, v5

    .line 15
    invoke-interface {v11, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v5, v2, Lcom/haima/hmcp/beans/ConfigureResult;->resolutionInfo:Ljava/util/List;

    const-string v7, "RTMP"

    if-nez v5, :cond_4

    .line 17
    iget-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    invoke-static {v6}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 19
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v13, v5

    .line 20
    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v14, v2, Lcom/haima/hmcp/beans/ConfigureResult;->tipsInfo:Ljava/util/List;

    .line 22
    iget-object v5, v2, Lcom/haima/hmcp/beans/ConfigureResult;->introAnimationInfo:Ljava/util/List;

    .line 23
    iget-object v15, v2, Lcom/haima/hmcp/beans/ConfigureResult;->introImageInfo:Ljava/util/List;

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 24
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/haima/hmcp/beans/CommonMeta;

    .line 27
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/haima/hmcp/beans/CommonMeta;->k:Ljava/lang/String;

    iget-object v9, v6, Lcom/haima/hmcp/beans/CommonMeta;->v:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v7, v6, Lcom/haima/hmcp/beans/CommonMeta;->k:Ljava/lang/String;

    const-string v8, "loading_bg_color_value"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 29
    iget-object v6, v6, Lcom/haima/hmcp/beans/CommonMeta;->v:Ljava/lang/String;

    .line 30
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading_bg_color_value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v7, "#"

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/haima/hmcp/Constants;->LOADING_BG:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v6, -0x1000000

    .line 32
    sput v6, Lcom/haima/hmcp/Constants;->LOADING_BG:I

    goto :goto_0

    .line 33
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/haima/hmcp/beans/SwitchInfo;

    .line 34
    iget-object v6, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/haima/hmcp/beans/SwitchInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/haima/hmcp/beans/SwitchInfo;->enable:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_7
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    const-string v4, "new_resource_os_min_version_code"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    :try_start_1
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/ResourceManager;->updateResourceByOSVersionCode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 38
    :catch_1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "KEY_RESOURCE_MANAGER_LEVEL config parse occurs exception!"

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_8
    :goto_2
    iget-object v0, v2, Lcom/haima/hmcp/beans/ConfigureResult;->langList:Ljava/util/List;

    move/from16 v4, p3

    invoke-direct {v1, v0, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->processSaasLanguageConfig(Ljava/util/List;I)V

    .line 40
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "retryErrorcodeInfo"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 43
    :try_start_2
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retryErrorcodeInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    const-class v6, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 45
    invoke-static {v0, v6}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    sput-object v4, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 47
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retryErrorcodeInfoerror:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "sensor_countly_switch"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    :try_start_3
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 50
    :catch_3
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "sensor_countly_switch config parse occurs exception!"

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    .line 51
    :goto_4
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->setSensorCountlySwitch(I)V

    .line 52
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "sensor_data_countly_interval_ms"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    :try_start_4
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 54
    :catch_4
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "sensor_data_countly_interval_ms config parse occurs exception!"

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v0, 0x2710

    .line 55
    :goto_5
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->setCountlyDataIntervalMs(I)V

    .line 56
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "sensor_sampling_min_interval_us"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    :try_start_5
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 58
    :catch_5
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "sensor_sampling_min_interval_us config parse occurs exception!"

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0x4e20

    .line 59
    :goto_6
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->setSensorSamplingMinUs(I)V

    .line 60
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "retryConfig"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, ""

    if-eqz v0, :cond_d

    .line 61
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    goto :goto_7

    .line 62
    :cond_d
    sput-object v6, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 63
    :goto_7
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "customRetryConfig"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    goto :goto_8

    .line 65
    :cond_e
    sput-object v6, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    .line 66
    :goto_8
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "customErrorRetryConfig"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/haima/hmcp/Constants;->CUSTOM_ERROR_RETRY_CONFIG:Ljava/lang/String;

    goto :goto_9

    .line 68
    :cond_f
    sput-object v6, Lcom/haima/hmcp/Constants;->CUSTOM_ERROR_RETRY_CONFIG:Ljava/lang/String;

    .line 69
    :goto_9
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==\u7f51\u7edc\u91cd\u8bd5\u914d\u7f6e RETRY_CONFIG="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; CUSTOM_RETRY_CONFIG="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; CUSTOM_ERROR_RETRY_CONFIG="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/haima/hmcp/Constants;->CUSTOM_ERROR_RETRY_CONFIG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "webrtcFpsTimeout"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "first_frame_timeout_ms error:"

    if-eqz v0, :cond_10

    .line 71
    :try_start_6
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->WEBRTC_FPS_TIMEOUT:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WEBRTC_FPS_TIMEOUT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/haima/hmcp/Constants;->WEBRTC_FPS_TIMEOUT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 73
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 74
    :cond_10
    sget v0, Lcom/haima/hmcp/Constants;->DEFAULT_WEBRTC_FPS_TIMEOUT_MS:I

    sput v0, Lcom/haima/hmcp/Constants;->WEBRTC_FPS_TIMEOUT:I

    .line 75
    :goto_a
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "first_frame_timeout_ms"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "config: first_frame_timeout_ms = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_11

    .line 77
    :try_start_7
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    sput-wide v8, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 78
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x2134

    .line 79
    sput-wide v7, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J

    goto :goto_b

    :cond_11
    const-wide/16 v7, 0x2134

    .line 80
    sput-wide v7, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J

    .line 81
    :goto_b
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config: Constants.FIRST_FRAME_TIMEOUT = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    .line 82
    sput-wide v7, Lcom/haima/hmcp/Constants;->EXIT_QUEUE_IN_BG_TIMEOUT_SECOND:J

    .line 83
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "timeout_second_of_exit_queue_in_bg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    :try_start_8
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    sput-wide v9, Lcom/haima/hmcp/Constants;->EXIT_QUEUE_IN_BG_TIMEOUT_SECOND:J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 85
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeout_second_of_exit_queue_in_bg error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_12
    :goto_c
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXIT_QUEUE_IN_BG_TIMEOUT_SECOND:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/haima/hmcp/Constants;->EXIT_QUEUE_IN_BG_TIMEOUT_SECOND:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "refresh_stoken_times"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    :try_start_9
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "refresh_stoken_times"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_MAX_TIMES:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 89
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refresh_stoken_times error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_13
    :goto_d
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "sdk_stoken_valid_time"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    :try_start_a
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "sdk_stoken_valid_time"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_VALID_TIME:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 92
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sdk_stoken_valid_time error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_14
    :goto_e
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "ime_type"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 94
    :try_start_b
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "ime_type"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 95
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ime_typeerror:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 96
    sput v4, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    .line 97
    sput v4, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 98
    :goto_f
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "forceH264"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_16

    .line 99
    :try_start_c
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "forceH264"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_FORCE_H264:Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 100
    sget-object v9, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ime_typeerror:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sput-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_FORCE_H264:Z

    goto :goto_10

    .line 102
    :cond_16
    sput-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_FORCE_H264:Z

    .line 103
    :goto_10
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_frame_wait_time"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 104
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_frame_wait_time"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 106
    :try_start_d
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->wertcConnectTimeout:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 107
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webrtc_frame_wait_time error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_17
    :goto_11
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_socket_timeout"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_socket_timeout"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 111
    :try_start_e
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->webrtcSignalTimeout:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 112
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webrtc_socket_timeout error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_18
    :goto_12
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_reconnection_delayMax"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 114
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_reconnection_delayMax"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 116
    :try_start_f
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->webrtcSignalReconnectionDelayMax:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    .line 117
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webrtc_reconnection_delayMax error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_19
    :goto_13
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_reconnection_attempts"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 119
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "webrtc_reconnection_attempts"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 121
    :try_start_10
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->webrtcSignalReconnectionAttempts:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 122
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webrtc_reconnection_attempts error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_14
    new-array v0, v4, [I

    .line 123
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "use_surface_texture_flag"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v9

    .line 124
    sput v0, Lcom/haima/hmcp/Constants;->USE_SURFACE_TEXTURE_FLAG:I

    .line 125
    sput-boolean v9, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    .line 126
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 127
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtmp_use_software_decoder_via_model"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 128
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtmp_use_software_decoder_via_model"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    sget-boolean v7, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    const/4 v8, 0x0

    invoke-static {v4, v0, v7, v8}, Lcom/haima/hmcp/utils/Utils;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    .line 130
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RTMP Filter Model for useSoftwareDecoder model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1b
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtmp_use_software_decoder_via_model_exact"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 132
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtmp_use_software_decoder_via_model_exact"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    sget-boolean v7, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    invoke-static {v4, v0, v7, v4}, Lcom/haima/hmcp/utils/Utils;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    .line 134
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RTMP Filter Model for useSoftwareDecoder exact model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_1c
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/haima/hmcp/utils/KeyMapUtil;->parseKeyboardConsumedConfig(Ljava/util/HashMap;)V

    new-array v0, v4, [I

    .line 136
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "openMultiConnect"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v9

    .line 137
    sput v0, Lcom/haima/hmcp/Constants;->OPEN_MULTI_CONNECT:I

    .line 138
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtc_connect_failure_to_rtmp_switch"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_RTC_CONNECT_FAILURE_TO_RTMP_SWITCH:Z

    .line 139
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtc_connect_retry_count"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 140
    :try_start_11
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "rtc_connect_retry_count"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_RTC_RETRY_COUNT:I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 141
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rtc_connect_retry_count error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1d
    :goto_15
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "websocket_connect_timeout_switch"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 143
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "websocket_connect_timeout_switch"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "true"

    .line 144
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH:Z

    goto :goto_16

    :cond_1e
    const/4 v7, 0x0

    .line 145
    sput-boolean v7, Lcom/haima/hmcp/Constants;->CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH:Z

    .line 146
    :goto_16
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "countly_debug_switch"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 147
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "compute_delay_time_switch"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_COMPUTE_DELAY_TIME_SWITCH:Z

    new-array v0, v4, [I

    .line 148
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "compute_delay_time_interval"

    sget v9, Lcom/haima/hmcp/Constants;->COMPUTE_DELAY_TIME_INTERVAL_DEFAULT:I

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    const/4 v7, 0x0

    aget v0, v0, v7

    .line 149
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_COMPUTE_DELAY_TIME_INTERVAL:I

    new-array v0, v4, [I

    .line 150
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "input_protocol_version"

    invoke-static {v8, v9, v4, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 151
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_INPUT_PROTOCOL_VERSION:I

    new-array v0, v4, [I

    .line 152
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "audio_record_mode"

    sget v10, Lcom/haima/hmcp/Constants;->RECORD_MODE_AUTO:I

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 153
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_RECORD_MODE:I

    new-array v0, v4, [I

    .line 154
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "max_clipboard_data_size"

    const/16 v10, 0x400

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 155
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_CLIPBOARD_DATA_SIZE:I

    new-array v0, v4, [I

    .line 156
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "max_upload_file_size_x86"

    const/high16 v10, 0x500000

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 157
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_UPLOAD_FILE_SIZE_X86:I

    new-array v0, v4, [F

    .line 158
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "gyro_to_mouse_degree_threshold"

    sget v10, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD:F

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseFloatFlag(Ljava/util/Map;Ljava/lang/String;F[F)V

    aget v0, v0, v7

    .line 159
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD:F

    new-array v0, v4, [I

    .line 160
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "sensor_send_interval_ms"

    sget v10, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SEND_INTERVAL_MS:I

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 161
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SEND_INTERVAL_MS:I

    new-array v0, v4, [I

    .line 162
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "sensor_sampling_interval_us"

    sget v10, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SAMPLING_INTERVAL_US:I

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 163
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SAMPLING_INTERVAL_US:I

    new-array v0, v4, [I

    .line 164
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "gyro_to_mouse_x_sensitivity"

    sget v10, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY:I

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 165
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY:I

    new-array v0, v4, [I

    .line 166
    iget-object v8, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v9, "gyro_to_mouse_y_sensitivity"

    sget v10, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY:I

    invoke-static {v8, v9, v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v7

    .line 167
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY:I

    .line 168
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GyroscopeConfig: sensorDegreeThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " sensorSendIntervalMs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SEND_INTERVAL_MS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " sensorSamplingIntervalUs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SAMPLING_INTERVAL_US:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " gyroToMouseXSensitivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " gyroToMouseYSensitivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_clipboard_auto_send"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_CLIPBOARD_AUTO_SEND:Z

    .line 170
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "ps_gamepad_vendor_ids"

    const-string v8, "1356"

    invoke-static {v0, v7, v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseStringFlag(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haima/hmcp/Constants;->CONFIG_GAMEPAD_PS_VENDOR_IDS:Ljava/lang/String;

    .line 171
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_game_support_gamepad_hot_swap"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP:Z

    .line 172
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "virtual_keyboard_overlap_switch"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_VIRTUAL_KEYBOARD_OVERLAP_SWITCH:Z

    new-array v0, v4, [I

    .line 173
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "virtual_keyboard_scale_min_size"

    const/16 v9, 0x14

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    const/4 v7, 0x0

    aget v0, v0, v7

    .line 174
    sput v0, Lcom/haima/hmcp/Constants;->CONFIG_VIRTUAL_KEYBOARD_SCALE_MIN_SIZE:I

    .line 175
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_upload_path_contains_name"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_UPLOAD_PATH_CONTAINS_NAME:Z

    .line 176
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_local_ime_x86"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_LOCAL_IME_X86:Z

    .line 177
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_adapt_fold_screen"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_ADAPT_FOLD_SCREEN:Z

    new-array v0, v4, [I

    .line 178
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "is_cloud_computer_keyboard_edit_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v9

    if-ne v0, v4, :cond_1f

    const/4 v0, 0x1

    goto :goto_17

    :cond_1f
    const/4 v0, 0x0

    .line 179
    :goto_17
    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE:Z

    new-array v0, v4, [I

    .line 180
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "keyboard_edit_is_show_animation"

    invoke-static {v7, v8, v9, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V

    aget v0, v0, v9

    if-ne v0, v4, :cond_20

    const/4 v0, 0x1

    goto :goto_18

    :cond_20
    const/4 v0, 0x0

    .line 181
    :goto_18
    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 182
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "fixed_gamepad_vendor_id"

    invoke-static {v0, v7, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseStringFlag(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haima/hmcp/Constants;->CONFIG_FIXED_GAMEPAD_VENDOR_ID:Ljava/lang/String;

    .line 183
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "is_single_gamepad_mode"

    invoke-static {v0, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_SINGLE_GAMEPAD_MODE:Z

    .line 184
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseRtcConfig(Ljava/util/HashMap;)V

    .line 185
    sget-wide v7, Lcom/haima/hmcp/dns/DnsManager;->DEFAULT_DNS_GET_TIME_OUT:J

    .line 186
    sget-wide v9, Lcom/haima/hmcp/dns/DnsManager;->DEFAULT_DNS_CHECK_INTERVAL:J

    .line 187
    sget-wide v16, Lcom/haima/hmcp/dns/DnsManager;->DEFAULT_DNS_RESET_IPV6_FLAG_TIME:J

    .line 188
    sget-wide v18, Lcom/haima/hmcp/dns/DnsManager;->DEFAULT_DNS_GRAY_ENABLE_PERCENT:J

    .line 189
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_get_timeout"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 190
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_get_timeout"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 192
    :try_start_12
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v7
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_12

    move-wide/from16 v23, v7

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 193
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    move-wide/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dns_get_timeout error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_21
    move-wide/from16 v20, v7

    :goto_19
    move-wide/from16 v23, v20

    .line 194
    :goto_1a
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_check_interval"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 195
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_check_interval"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 197
    :try_start_13
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v9
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 198
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dns_check_interval error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_1b
    move-wide/from16 v25, v9

    .line 199
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_reset_ipv6_flag_time"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 200
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_reset_ipv6_flag_time"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 202
    :try_start_14
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v16
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    .line 203
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dns_reset_ipv6_flag_time error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_1c
    move-wide/from16 v27, v16

    .line 204
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "dns_gray_enable_percent"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "dns_gray_enable_percent error:"

    if-eqz v0, :cond_24

    .line 205
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "dns_gray_enable_percent"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 207
    :try_start_15
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v18
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 208
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_1d
    move-wide/from16 v29, v18

    .line 209
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "dns_ipv4_priority"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 210
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "dns_ipv4_priority"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move/from16 v31, v0

    goto :goto_1e

    :cond_25
    const/16 v31, 0x0

    .line 212
    :goto_1e
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "enable_dns_ip_type_from_saas"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 213
    :try_start_16
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "enable_dns_ip_type_from_saas"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    move/from16 v34, v0

    goto :goto_1f

    .line 214
    :catch_16
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v7, "ENABLE_DNS_IP_TYPE_FROM_SAAS parse exception"

    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const/16 v34, 0x0

    .line 215
    :goto_1f
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "openResolveIp"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 216
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "openResolveIp"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move/from16 v32, v0

    goto :goto_20

    :cond_27
    const/16 v32, 0x0

    .line 218
    :goto_20
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "openAsyncParser"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 219
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "openAsyncParser"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move/from16 v33, v0

    goto :goto_21

    :cond_28
    const/16 v33, 0x1

    .line 221
    :goto_21
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v34}, Lcom/haima/hmcp/dns/DnsManager;->config(JJJJZZZZ)V

    .line 222
    new-instance v7, Lcom/haima/hmcp/utils/ping/PingPara;

    invoke-direct {v7}, Lcom/haima/hmcp/utils/ping/PingPara;-><init>()V

    .line 223
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_gray_enable_percent"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 224
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_gray_enable_percent"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 226
    :try_start_17
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 227
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ping_gray_enable_percent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_22

    :catch_17
    move-exception v0

    .line 228
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_29
    :goto_22
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_interval"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 230
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_interval"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 232
    :try_start_18
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/haima/hmcp/utils/ping/PingPara;->pingInterval:J

    .line 233
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ping_interval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    .line 234
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2a
    :goto_23
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_count"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 236
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v8, "ping_count"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 238
    :try_start_19
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/haima/hmcp/utils/ping/PingPara;->pingCount:J

    .line 239
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ping_count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_24

    :catch_19
    move-exception v0

    .line 240
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2b
    :goto_24
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "ping_host"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 242
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "ping_host"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 245
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ping_host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2c
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/haima/hmcp/utils/ping/PingManager;->setPingPara(Lcom/haima/hmcp/utils/ping/PingPara;)V

    .line 247
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "view_init_once_gray_enable_percent"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 248
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "view_init_once_gray_enable_percent"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 250
    :try_start_1a
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    sput-wide v7, Lcom/haima/hmcp/Constants;->VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT:J
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    const-wide/16 v7, 0x0

    .line 251
    sput-wide v7, Lcom/haima/hmcp/Constants;->VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT:J

    .line 252
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v8, Lcom/haima/hmcp/Constants;->VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_2d
    const-wide/16 v7, 0x0

    .line 253
    sput-wide v7, Lcom/haima/hmcp/Constants;->VIEW_INIT_ONCE_GRAY_ENABLE_PERCENT:J

    .line 254
    :cond_2e
    :goto_25
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "conn_check_gray_enable_percent"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 255
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "conn_check_gray_enable_percent"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 257
    :try_start_1b
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    .line 258
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conn_check_gray_enable_percent error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 v0, 0x0

    .line 259
    :goto_26
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->config(I)V

    .line 260
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "is_compatible_ipv6"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 261
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "is_compatible_ipv6"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "true"

    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_COMPATIBLE_IPV6:Z

    goto :goto_27

    :cond_30
    const/4 v4, 0x0

    .line 263
    sput-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_IS_COMPATIBLE_IPV6:Z

    .line 264
    :goto_27
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "check_QR_code_data"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 265
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "check_QR_code_data"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/haima/hmcp/Constants;->GET_QR_CODE_DATA:Z

    goto :goto_28

    :cond_31
    const/4 v4, 0x1

    .line 266
    sput-boolean v4, Lcom/haima/hmcp/Constants;->GET_QR_CODE_DATA:Z

    .line 267
    :goto_28
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "check_error_switch"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 268
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "check_error_switch"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/haima/hmcp/countly/CountlyUtil;->isCheckErrorCode:Z

    goto :goto_29

    :cond_32
    const/4 v4, 0x0

    .line 269
    sput-boolean v4, Lcom/haima/hmcp/countly/CountlyUtil;->isCheckErrorCode:Z

    .line 270
    :goto_29
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "keymap_stick_radius_x"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 271
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "keymap_stick_radius_x"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_33

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_33

    .line 272
    sput v0, Lcom/haima/hmcp/Constants;->KEYBOARD_RX:F

    .line 273
    :cond_33
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "keymap_stick_radius_y"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 274
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "keymap_stick_radius_y"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_34

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_34

    .line 275
    sput v0, Lcom/haima/hmcp/Constants;->KEYBOARD_RY:F

    .line 276
    :cond_34
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "streamer_url_timeout"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 277
    :try_start_1c
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x5

    .line 278
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v7, 0x12c

    .line 279
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 280
    sput v0, Lcom/haima/hmcp/Constants;->VIDEO_URL_TIMER_INTVAL:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception v0

    .line 281
    sget-object v7, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamer_url_timeouterror:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_35
    :goto_2a
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "trackball_time"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 283
    :try_start_1d
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x14

    .line 284
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v4, 0x1f4

    .line 285
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    sput v0, Lcom/haima/hmcp/Constants;->TRACK_BALL_TASK_TIMER:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_2b

    :catch_1d
    move-exception v0

    .line 287
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trackball_timeerror:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_36
    :goto_2b
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "auto_screen_brightness"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 289
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "auto_screen_brightness"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 290
    sput v0, Lcom/haima/hmcp/Constants;->SCREEN_BRIGHTNESS:F

    .line 291
    :cond_37
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->parseRenderType(Ljava/util/HashMap;)V

    .line 292
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "transfer"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 293
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "transfer"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->isTransfer:Z

    .line 294
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transfer isTransfer =  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->isTransfer:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "check_videoview_type"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 297
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "check_videoview_type"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_39

    .line 298
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 299
    array-length v3, v4

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v3, :cond_39

    aget-object v8, v4, v7

    .line 300
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v9, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 302
    :cond_39
    iget-object v3, v2, Lcom/haima/hmcp/beans/ConfigureResult;->minimumBitRate:Ljava/lang/String;

    sput-object v3, Lcom/haima/hmcp/Constants;->MINIMUM_BITRATE:Ljava/lang/String;

    .line 303
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleConfigureMetaInfo--minimumBitRate = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/haima/hmcp/beans/ConfigureResult;->minimumBitRate:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object v3

    iget-object v4, v2, Lcom/haima/hmcp/beans/ConfigureResult;->recommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

    invoke-virtual {v3, v4}, Lcom/haima/hmcp/HmcpManager;->setRecommandInfo(Lcom/haima/hmcp/beans/RecommendInfo;)V

    .line 305
    new-instance v3, Lcom/haima/hmcp/beans/CloudFileConfig;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/CloudFileConfig;-><init>()V

    .line 306
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_cache_size"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 307
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_cache_size"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 309
    :try_start_1e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/haima/hmcp/beans/CloudFileConfig;->setFileCacheSize(I)V
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_2d

    :catch_1e
    nop

    .line 310
    :cond_3a
    :goto_2d
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_segment_count"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 311
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_segment_count"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 313
    :try_start_1f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/haima/hmcp/beans/CloudFileConfig;->setFileSegmentCount(I)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_2e

    :catch_1f
    nop

    .line 314
    :cond_3b
    :goto_2e
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_segment_coefficient"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 315
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "file_segment_coefficient"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 317
    :try_start_20
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/haima/hmcp/beans/CloudFileConfig;->setFileSegmentCoefficient(I)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_2f

    :catch_20
    nop

    .line 318
    :cond_3c
    :goto_2f
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "stoken_valid_time"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 319
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "stoken_valid_time"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 320
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 321
    :try_start_21
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Lcom/haima/hmcp/beans/CloudFileConfig;->setStokenValidTime(J)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_30

    :catch_21
    nop

    .line 322
    :cond_3d
    :goto_30
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "cloud_rom_ack_timeout"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 323
    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v7, "cloud_rom_ack_timeout"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 325
    :try_start_22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/haima/hmcp/beans/CloudFileConfig;->setAckTimeout(J)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_31

    :catch_22
    nop

    .line 326
    :cond_3e
    :goto_31
    invoke-static {}, Lcom/haima/hmcp/cloud/CloudFileManager;->getInstance()Lcom/haima/hmcp/cloud/CloudFileManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/haima/hmcp/cloud/CloudFileManager;->setConfig(Lcom/haima/hmcp/beans/CloudFileConfig;)V

    .line 327
    invoke-static {}, Lcom/haima/hmcp/business/ConfigureManager;->getInstance()Lcom/haima/hmcp/business/ConfigureManager;

    move-result-object v3

    iget-object v4, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/haima/hmcp/business/ConfigureManager;->parseConfig(Ljava/util/HashMap;)V

    .line 328
    iget-object v3, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "acc_proxy_connect_enable"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 329
    iget-object v3, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "acc_proxy_connect_enable"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_ACC_CONNECT_ENABLE:Z

    goto :goto_32

    :cond_3f
    const/4 v3, 0x0

    .line 330
    sput-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_ACC_CONNECT_ENABLE:Z

    .line 331
    :goto_32
    iget-object v3, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "input_trans_device_enable_v1"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 332
    iget-object v3, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "input_trans_device_enable_v1"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/haima/hmcp/Constants;->CONFIG_INPUT_TRANS_DEVICE:Ljava/lang/String;

    goto :goto_33

    :cond_40
    const-string v3, "enable:0"

    .line 333
    sput-object v3, Lcom/haima/hmcp/Constants;->CONFIG_INPUT_TRANS_DEVICE:Ljava/lang/String;

    :goto_33
    if-eqz p2, :cond_43

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v3, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v3

    const-string v4, "config_info_key"

    invoke-virtual {v3, v4, v2}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_41

    .line 336
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 337
    new-instance v2, Lcom/haima/hmcp/utils/FileDownloadUtil;

    iget-object v3, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/haima/hmcp/utils/FileDownloadUtil;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 338
    iput-boolean v3, v2, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 339
    iget-object v4, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/haima/hmcp/beans/IntroVideoInfo;

    invoke-virtual {v6}, Lcom/haima/hmcp/beans/IntroVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/haima/hmcp/beans/IntroVideoInfo;

    invoke-virtual {v8}, Lcom/haima/hmcp/beans/IntroVideoInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/haima/hmcp/beans/IntroVideoInfo;

    invoke-virtual {v5}, Lcom/haima/hmcp/beans/IntroVideoInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v5}, Lcom/haima/hmcp/utils/FileDownloadUtil;->advertDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/haima/hmcp/HmcpManager;->setAdvertFileDownload(Lcom/haima/hmcp/utils/FileDownloadUtil;)V

    goto :goto_34

    :cond_41
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 341
    iget-object v2, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v2

    const-string v4, "advert_name"

    invoke-virtual {v2, v4, v6}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_34
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 343
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/haima/hmcp/HmcpManager;->setSurfaceViewList(Ljava/util/List;)V

    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_43
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 344
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object v5

    const v6, -0xff0100

    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    move-object v8, v14

    move-object v9, v11

    const/4 v2, 0x0

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/haima/hmcp/HmcpManager;->onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    .line 345
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    if-eqz v0, :cond_51

    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    if-eqz v0, :cond_51

    .line 346
    new-instance v4, Lcom/haima/hmcp/beans/WebSocketConfig;

    invoke-direct {v4}, Lcom/haima/hmcp/beans/WebSocketConfig;-><init>()V

    .line 347
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "ping_interval_time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    :try_start_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v10, 0x0

    goto :goto_35

    :cond_44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_35
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setPing2Interval(I)V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_23

    .line 349
    :catch_23
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "ping_delay_time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    :try_start_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v10, 0x0

    goto :goto_36

    :cond_45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_36
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setInstancePingPongCost(I)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_24

    .line 351
    :catch_24
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "trace_delay_time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    :try_start_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v10, 0x0

    goto :goto_37

    :cond_46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_37
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setTrace(I)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_25

    .line 353
    :catch_25
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "web_socket_ping_interval"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    :try_start_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v10, 0x0

    goto :goto_38

    :cond_47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_38
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setAccessPingInterval(I)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_26

    .line 355
    :catch_26
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "web_socket_ping_time_out_count_max"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    :try_start_27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v10, 0x0

    goto :goto_39

    :cond_48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_39
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setAccessPingTimeoutCountMax(I)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_27

    .line 357
    :catch_27
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "input_ping_interval"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    :try_start_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v10, 0x0

    goto :goto_3a

    :cond_49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_3a
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setInputPingInterval(I)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_3b

    :catch_28
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    :goto_3b
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "input_ping_timeout_count_max"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    :try_start_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v10, 0x0

    goto :goto_3c

    :cond_4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_3c
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setInputPingTimeoutCountMax(I)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_3d

    :catch_29
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    :goto_3d
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "web_socket_payload_max_size"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    :try_start_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v10, 0x0

    goto :goto_3e

    :cond_4b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 365
    :goto_3e
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setFramePayloadMaxSize(I)V

    .line 366
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setMessagePayloadMaxSize(I)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_3f

    :catch_2a
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_3f
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "saas_link_time_out"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    :try_start_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v10, 0x0

    goto :goto_40

    :cond_4c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 371
    :goto_40
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setSaasLinkTimeOutSec(I)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_41

    :catch_2b
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_41
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "instance_time_out"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    :try_start_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v10, 0x0

    goto :goto_42

    :cond_4d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 376
    :goto_42
    invoke-virtual {v4, v10}, Lcom/haima/hmcp/beans/WebSocketConfig;->setWsLinkTimeOutSec(I)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_43

    :catch_2c
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_43
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "saas_link_max_time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 380
    :try_start_2d
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "saas_link_max_time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->SAAS_WS_MAX_TIMES:I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_44

    :catch_2d
    move-exception v0

    .line 381
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saas_link_max_timeerror:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_4e
    :goto_44
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "websocket_retry_max_times"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 383
    :try_start_2e
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v5, "websocket_retry_max_times"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/haima/hmcp/Constants;->WS_RETRY_MAX_TIMES:I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_45

    :catch_2e
    move-exception v0

    .line 384
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "websocket_retry_max_timeserror:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_4f
    :goto_45
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    invoke-interface {v0, v4}, Lcom/haima/hmcp/business/IWebSocket;->setConfig(Lcom/haima/hmcp/beans/WebSocketConfig;)V

    .line 386
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "ping2_interval_times"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    iget-object v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    const-string v4, "report_delay_interval_times"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    :try_start_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I

    goto :goto_46

    :cond_50
    const/4 v0, -0x1

    .line 390
    iput v0, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 391
    :catch_2f
    :cond_51
    :goto_46
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 392
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 393
    iget-object v5, v5, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    iget-object v6, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v10, 0x1

    goto :goto_47

    :cond_53
    const/4 v10, 0x0

    .line 394
    :goto_47
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-nez v10, :cond_55

    .line 395
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 396
    iget-object v4, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    iget-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    const/4 v4, 0x1

    goto :goto_48

    :cond_55
    move v4, v10

    :goto_48
    if-nez v4, :cond_56

    const-string v2, "-1"

    .line 397
    iput-object v2, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 398
    :cond_56
    iget-object v2, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    if-eqz v2, :cond_58

    if-nez v0, :cond_57

    .line 399
    iget-object v0, v1, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    if-eqz v0, :cond_57

    .line 400
    sget v2, Lcom/haima/hmcp/R$string;->Error_000004:I

    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "100000004"

    invoke-interface {v0, v3, v2}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPlayerError(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_57
    iget-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    const v6, -0xff0100

    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    move-object v8, v14

    move-object v9, v11

    move-object v10, v15

    invoke-interface/range {v5 .. v10}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    .line 402
    :cond_58
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v2, "handleConfigureMetaInfo--finsh"

    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initX86Data(Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getRoomId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getSignalUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getTurnUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getIpV6TurnUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getTurnUserName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getTurnPassword()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getInstanceAccessUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget-object v6, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v8, "initX86Data roomId="

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v8, " signalUrl="

    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v8, " turnUrl="

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v8, " ipV6TurnUrl="

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v8, " turnUserName="

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v8, " turnPassword="

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v8, " instanceAccessUrl="

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->roomId:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->signalUrl:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v2, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnUrl:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->ipV6TurnUrl:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v4, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnUserName:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v5, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnPassword:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p2, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->instanceAccessUrl:Ljava/lang/String;

    .line 117
    .line 118
    :cond_1
    :goto_0
    return-void
.end method

.method private isHasInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_3

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_2
    return v0
.end method

.method private isRequestWithCid()Z
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "cid_cache_expire_time"

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-virtual {v2, v3, v4, v5}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v4, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "cid_cache_interval"

    .line 26
    .line 27
    sget-wide v6, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 28
    .line 29
    invoke-virtual {v4, v5, v6, v7}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sget-wide v6, Lcom/haima/hmcp/Constants;->NEVER_CID_CACHE_INTERVAL:J

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    cmp-long v9, v4, v6

    .line 37
    .line 38
    if-nez v9, :cond_0

    .line 39
    .line 40
    return v8

    .line 41
    :cond_0
    cmp-long v4, v0, v2

    .line 42
    .line 43
    if-gez v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v8, 0x0

    .line 47
    :goto_0
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v6, "currentTime: "

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/CountDownUtil;->toDateStr(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", cidExpireTime: "

    .line 67
    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/CountDownUtil;->toDateStr(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    if-nez v8, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "HMCP_CID_VALUE"

    .line 94
    .line 95
    const-string v2, ""

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return v8
.end method

.method private needReinitRender(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "needReinitRender : fromCountylyId "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " set render to "

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/HmcpManager;->setVideoViewType(I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x5

    .line 39
    const-string p2, ""

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private notifyGetConfigureErrorListener(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "notifyGetConfigureErrorListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "config_info_key"

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "notifyGetConfigureErrorListener ---"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v0, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/16 v1, 0x6c

    .line 64
    .line 65
    invoke-direct {p0, p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->handleConfigureMetaInfo(Lcom/haima/hmcp/beans/ConfigureResult;ZI)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method private notifyPlayerListener(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "-"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 39
    .line 40
    const-string v1, "prompt_hmcp_error"

    .line 41
    .line 42
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "notifyRetryPromptListener got mSaasListener == null; errorCode = "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "; errorMsg = "

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "; isStopPlay = "

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method private static parseBooleanFlag(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "true"

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private static parseFloatFlag(Ljava/util/Map;Ljava/lang/String;F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "F[F)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "null"

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    aput p0, p3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    aput p2, p3, v1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    aput p2, p3, v1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    aput p2, p3, v1

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private static parseIntegerFlag(Ljava/util/Map;Ljava/lang/String;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I[I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "null"

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    aput p0, p3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    aput p2, p3, v1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    aput p2, p3, v1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    aput p2, p3, v1

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private parseRenderType(Ljava/util/HashMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/haima/hmcp/HmcpManager;->getVideoViewType()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const-string v4, "13022"

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-static {v4, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "parseRenderType: map is null return render = "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v7, ","

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v10, "modelAndApiLevel = "

    .line 86
    .line 87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v8, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v9, "surfaceWhiteList"

    .line 101
    .line 102
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    const-string v11, "13020"

    .line 107
    .line 108
    const-string v12, "]"

    .line 109
    .line 110
    const-string v13, "["

    .line 111
    .line 112
    const-string v14, ""

    .line 113
    .line 114
    const/4 v15, 0x1

    .line 115
    if-eqz v10, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    check-cast v9, Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-nez v10, :cond_3

    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-direct {v0, v9, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->isHasInArray([Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_3

    .line 152
    .line 153
    if-eq v2, v15, :cond_2

    .line 154
    .line 155
    invoke-direct {v0, v15, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-static {v11}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v1, "parseRenderType: render from saas surfaceWhiteList"

    .line 162
    .line 163
    invoke-static {v8, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_3
    const-string v9, "textureWhiteList"

    .line 168
    .line 169
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    const/4 v15, 0x2

    .line 174
    if-eqz v10, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    check-cast v9, Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-nez v10, :cond_5

    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-direct {v0, v9, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->isHasInArray([Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_5

    .line 205
    .line 206
    const-string v1, "13019"

    .line 207
    .line 208
    if-eq v2, v15, :cond_4

    .line 209
    .line 210
    invoke-direct {v0, v15, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_4
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "parseRenderType: render from saas textureWhiteList"

    .line 217
    .line 218
    invoke-static {v8, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_5
    const-string v6, "textureWhiteListByModelAndVersionDownMatching"

    .line 223
    .line 224
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_9

    .line 229
    .line 230
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    check-cast v6, Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-nez v8, :cond_9

    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_9

    .line 270
    .line 271
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    array-length v8, v6

    .line 276
    const/4 v10, 0x0

    .line 277
    :goto_0
    if-ge v10, v8, :cond_7

    .line 278
    .line 279
    aget-object v9, v6, v10

    .line 280
    .line 281
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v16

    .line 285
    if-nez v16, :cond_6

    .line 286
    .line 287
    new-instance v15, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-eqz v15, :cond_6

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 310
    .line 311
    const/4 v15, 0x2

    .line 312
    goto :goto_0

    .line 313
    :cond_7
    move-object v9, v14

    .line 314
    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    array-length v8, v6

    .line 319
    const/4 v10, 0x1

    .line 320
    if-le v8, v10, :cond_9

    .line 321
    .line 322
    aget-object v6, v6, v10

    .line 323
    .line 324
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-ge v6, v10, :cond_9

    .line 333
    .line 334
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 335
    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v4, "parseRenderType textureWhiteListByModelAndVersionDownMatch match is"

    .line 342
    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v3, "13023"

    .line 357
    .line 358
    const/4 v4, 0x2

    .line 359
    if-eq v2, v4, :cond_8

    .line 360
    .line 361
    invoke-direct {v0, v4, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_8
    invoke-static {v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const-string v2, "parseRenderType: render from saas textureWhiteListByModelAndVersionDownMatch"

    .line 368
    .line 369
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :cond_9
    const-string v6, "textureWhiteListByVagueModelAndVersionDownMatching"

    .line 374
    .line 375
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-eqz v8, :cond_11

    .line 380
    .line 381
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Ljava/lang/String;

    .line 386
    .line 387
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-nez v8, :cond_11

    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    array-length v8, v6

    .line 406
    const/4 v9, 0x0

    .line 407
    :goto_2
    if-ge v9, v8, :cond_f

    .line 408
    .line 409
    aget-object v10, v6, v9

    .line 410
    .line 411
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    if-eqz v15, :cond_a

    .line 416
    .line 417
    move-object/from16 v19, v4

    .line 418
    .line 419
    move-object/from16 v17, v6

    .line 420
    .line 421
    move/from16 v18, v8

    .line 422
    .line 423
    goto :goto_5

    .line 424
    :cond_a
    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v15

    .line 428
    move-object/from16 v17, v6

    .line 429
    .line 430
    array-length v6, v15

    .line 431
    move/from16 v18, v8

    .line 432
    .line 433
    const/4 v8, 0x1

    .line 434
    if-ge v6, v8, :cond_b

    .line 435
    .line 436
    move-object/from16 v19, v4

    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_b
    const/4 v6, 0x0

    .line 440
    aget-object v8, v15, v6

    .line 441
    .line 442
    const-string v6, " "

    .line 443
    .line 444
    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    const/4 v8, 0x1

    .line 449
    aget-object v15, v15, v8

    .line 450
    .line 451
    array-length v8, v6

    .line 452
    move-object/from16 v19, v4

    .line 453
    .line 454
    const/4 v4, 0x0

    .line 455
    :goto_3
    if-ge v4, v8, :cond_e

    .line 456
    .line 457
    move/from16 v20, v8

    .line 458
    .line 459
    aget-object v8, v6, v4

    .line 460
    .line 461
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    if-eqz v8, :cond_d

    .line 466
    .line 467
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v4, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    const/4 v5, 0x1

    .line 476
    if-ge v4, v5, :cond_c

    .line 477
    .line 478
    const/4 v4, 0x1

    .line 479
    goto :goto_4

    .line 480
    :cond_c
    const/4 v4, 0x0

    .line 481
    :goto_4
    sget-object v5, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 482
    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v8, "parseRenderType textureWhiteListByVagueModelAndVersionDownMatch match "

    .line 489
    .line 490
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    const/4 v5, 0x1

    .line 504
    goto :goto_6

    .line 505
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 506
    .line 507
    move/from16 v8, v20

    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 511
    .line 512
    move-object/from16 v6, v17

    .line 513
    .line 514
    move/from16 v8, v18

    .line 515
    .line 516
    move-object/from16 v4, v19

    .line 517
    .line 518
    goto :goto_2

    .line 519
    :cond_f
    move-object/from16 v19, v4

    .line 520
    .line 521
    const/4 v4, 0x0

    .line 522
    const/4 v5, 0x0

    .line 523
    :goto_6
    sget-object v6, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 524
    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    const-string v9, "parseRenderType: render from saas textureWhiteListByVagueModelAndVersionDownMatch, isLocalModelContainSaasModel = "

    .line 531
    .line 532
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v9, " isVersionDownMatch = "

    .line 539
    .line 540
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v8

    .line 550
    invoke-static {v6, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    if-eqz v5, :cond_12

    .line 554
    .line 555
    if-eqz v4, :cond_12

    .line 556
    .line 557
    const-string v1, "13024"

    .line 558
    .line 559
    const/4 v3, 0x2

    .line 560
    if-eq v2, v3, :cond_10

    .line 561
    .line 562
    invoke-direct {v0, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :cond_10
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const-string v1, "parseRenderType: render from saas textureWhiteListByVagueModelAndVersionDownMatch"

    .line 569
    .line 570
    invoke-static {v6, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :cond_11
    move-object/from16 v19, v4

    .line 575
    .line 576
    :cond_12
    const-string v4, "surfaceWhiteListByVersion"

    .line 577
    .line 578
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    if-eqz v5, :cond_16

    .line 583
    .line 584
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    check-cast v4, Ljava/lang/String;

    .line 589
    .line 590
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    if-nez v5, :cond_16

    .line 595
    .line 596
    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    array-length v6, v5

    .line 609
    const/4 v7, 0x0

    .line 610
    :goto_7
    if-ge v7, v6, :cond_14

    .line 611
    .line 612
    aget-object v8, v5, v7

    .line 613
    .line 614
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-nez v8, :cond_13

    .line 623
    .line 624
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 625
    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string v6, "parseRenderType strSurfaceWhiteListByVersion = "

    .line 632
    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const/4 v3, 0x1

    .line 647
    goto :goto_8

    .line 648
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_14
    const/4 v3, 0x0

    .line 652
    :goto_8
    if-eqz v3, :cond_16

    .line 653
    .line 654
    const-string v1, "13025"

    .line 655
    .line 656
    const/4 v3, 0x1

    .line 657
    if-eq v2, v3, :cond_15

    .line 658
    .line 659
    invoke-direct {v0, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 660
    .line 661
    .line 662
    :cond_15
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 666
    .line 667
    const-string v2, "parseRenderType: render from saas surfaceWhiteListByVersion"

    .line 668
    .line 669
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :cond_16
    const-string v3, "defaultRenderType"

    .line 674
    .line 675
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-eqz v4, :cond_1a

    .line 680
    .line 681
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    if-eqz v4, :cond_1a

    .line 686
    .line 687
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    check-cast v1, Ljava/lang/String;

    .line 692
    .line 693
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-nez v3, :cond_1a

    .line 698
    .line 699
    const/4 v3, 0x2

    .line 700
    if-ne v2, v3, :cond_17

    .line 701
    .line 702
    const/4 v9, 0x1

    .line 703
    goto :goto_9

    .line 704
    :cond_17
    const/4 v9, 0x0

    .line 705
    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-nez v2, :cond_19

    .line 714
    .line 715
    if-eqz v9, :cond_18

    .line 716
    .line 717
    const/4 v2, 0x1

    .line 718
    invoke-direct {v0, v2, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 719
    .line 720
    .line 721
    goto :goto_a

    .line 722
    :cond_18
    invoke-direct {v0, v3, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->needReinitRender(ILjava/lang/String;)V

    .line 723
    .line 724
    .line 725
    :cond_19
    :goto_a
    const-string v2, "13021"

    .line 726
    .line 727
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    sget-object v2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 731
    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v4, "parseRenderType: render from saas defaultRenderType,render = "

    .line 738
    .line 739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :cond_1a
    move-object/from16 v1, v19

    .line 754
    .line 755
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 756
    .line 757
    .line 758
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 759
    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .line 764
    .line 765
    const-string v4, "parseRenderType: render from sdk defaultRenderType, render = "

    .line 766
    .line 767
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    return-void
.end method

.method private static parseStringFlag(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    move-object p2, p0

    .line 25
    check-cast p2, Ljava/lang/String;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-object p2
.end method

.method private processSaasLanguageConfig(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "SaasLanguageConfig is "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " , actionId = "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ge v0, v1, :cond_3

    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/haima/hmcp/beans/Language;->isSupportConfig(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "LanguageConfig "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " is support by index is "

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    rem-int/lit8 v0, v0, 0x2

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    const/16 p1, 0x14

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const/16 p1, 0x1e

    .line 103
    .line 104
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "languageConfigFromSaas by actionId is "

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

    .line 122
    .line 123
    invoke-virtual {v0, v1, p2, p1}, Lcom/haima/hmcp/language/AbsLanguageManager;->updateLanguage(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    :goto_2
    return-void

    .line 131
    :cond_4
    :goto_3
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string p2, "SaasLanguageConfig is null or is empty,return"

    .line 134
    .line 135
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private quitVolleyManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "====quitVolleyManager=="

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/haima/hmcp/business/IHmcpHttp;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private resolveDistanceInfo(Lcom/haima/hmcp/beans/DistanceLimit;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/DistanceLimit;->distanceLimitExceeded:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v1, p1, Lcom/haima/hmcp/beans/DistanceLimit;->minDistance:J

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveDistance(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private retryByErrorCode(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget v3, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->actionId:I

    .line 34
    .line 35
    const/16 v4, 0xde

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v3, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->errorCode:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget v3, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 48
    .line 49
    iget v4, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->retryMaxTimes:I

    .line 50
    .line 51
    if-ge v3, v4, :cond_1

    .line 52
    .line 53
    new-instance p1, Lcom/haima/hmcp/business/HmcpRequestManager$49;

    .line 54
    .line 55
    invoke-direct {p1, p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$49;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Ljava/util/Timer;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 70
    .line 71
    iget v1, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->retryDelayTime:I

    .line 72
    .line 73
    mul-int/lit16 v1, v1, 0x3e8

    .line 74
    .line 75
    int-to-long v1, v1

    .line 76
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    return p1

    .line 81
    :cond_3
    :goto_0
    return v1
.end method

.method private setAuthUrl(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&a="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&b="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&d="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    sget-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mUID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&u="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/haima/hmcp/countly/CountlyUtil;->mUID:Ljava/lang/String;

    invoke-static {p3}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&p="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&g="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&c="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p1, 0xc9

    if-ne p2, p1, :cond_5

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&o="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->opType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "&f="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->confirm:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-eqz p1, :cond_6

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->saasAuthUrl:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/haima/hmcp/business/IHmcpHttp;->setURL(Ljava/lang/String;)V

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->saasAuthUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setStartNetData(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public cancelRetryTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "=====cancelRetryTimer called===="

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRetryTimer:Ljava/util/Timer;

    .line 20
    .line 21
    return-void
.end method

.method public checkPlayingCidStatus(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    .line 15
    .line 16
    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 17
    .line 18
    iget p1, p1, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    .line 19
    .line 20
    iput p1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 21
    .line 22
    new-instance v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p1, "Formal"

    .line 28
    .line 29
    iput-object p1, v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;->envType:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    const/16 v2, 0xe4

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move-wide v5, v8

    .line 42
    move-object v7, p2

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "12196"

    .line 48
    .line 49
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "timeframe--checkPlayingCidStatus--request-->"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$12;

    .line 85
    .line 86
    invoke-direct {v0, p0, v8, v9, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$12;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    .line 87
    .line 88
    .line 89
    const-string p3, "12280"

    .line 90
    .line 91
    const-class v1, Lcom/haima/hmcp/beans/CheckCloudServiceResult;

    .line 92
    .line 93
    invoke-virtual {p2, p3, p1, v1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public checkPlayingGameRequest(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    .line 15
    .line 16
    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 17
    .line 18
    iget p1, p1, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    .line 19
    .line 20
    iput p1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 21
    .line 22
    new-instance v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p1, "Formal"

    .line 28
    .line 29
    iput-object p1, v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;->envType:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestCheckPlayingGame;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    const/16 v2, 0xd9

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move-wide v5, v8

    .line 42
    move-object v7, p2

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "12093"

    .line 48
    .line 49
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "timeframe--checkPlayingGameRequest--request-->"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$11;

    .line 85
    .line 86
    invoke-direct {v0, p0, v8, v9, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$11;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    .line 87
    .line 88
    .line 89
    const-string p3, "12170"

    .line 90
    .line 91
    const-class v1, Lcom/haima/hmcp/beans/CheckCloudServiceResult;

    .line 92
    .line 93
    invoke-virtual {p2, p3, p1, v1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public clearCloudId()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "HMCP_CID_VALUE"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "===clearCloudId==="

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public clearNetText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v0, v0, Lcom/haima/hmcp/HmcpManager;->isJson:Z

    .line 13
    .line 14
    const-string v1, "-"

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v1, p2

    .line 53
    :goto_0
    const-string v2, "errorCode"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v1, "errorMessage"

    .line 59
    .line 60
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string p1, "errorCodeWithoutCid"

    .line 64
    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "concatErrorCode\uff1a"

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "["

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, "]"

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1
.end method

.method public connect2Access(IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "connect2Access is called but mWebSocketManager is null"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAccessConnecting:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p2, "connect2Access-----is connecting"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 34
    .line 35
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "connect2Access-----not allow"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAccessConnecting:Z

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "userId="

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "&cid="

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "&did="

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "&appId="

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v2, "&sign="

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    sget v1, Lcom/haima/hmcp/Constants;->OPEN_MULTI_CONNECT:I

    .line 168
    .line 169
    if-lez v1, :cond_3

    .line 170
    .line 171
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mLinkSt:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_3

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v2, "&ts="

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mLinkSt:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_3
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getAccessUrl()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const-string v2, ""

    .line 214
    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_5

    .line 222
    .line 223
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_4
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getAccessUrl()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 235
    .line 236
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 237
    .line 238
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessReconnectURL:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 241
    .line 242
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, "/websocket?"

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v0, "&cli=s_master-7.28.1-a83e5ae0"

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, Lcom/haima/hmcp/beans/ReportSaas;

    .line 278
    .line 279
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {v1, v3, v2}, Lcom/haima/hmcp/beans/ReportSaas;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v2, "12088"

    .line 302
    .line 303
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v1, "access"

    .line 311
    .line 312
    invoke-virtual {p0, v1, v0, v6, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setStartNetData(Ljava/lang/String;Ljava/lang/String;J)V

    .line 313
    .line 314
    .line 315
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v3, "timeframe--connect2Access-----connect2Access----->start = "

    .line 323
    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAccessWebSocketConnected:Z

    .line 328
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 340
    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v3, "start connect2Access, accessUrl="

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v3, ",\u5f53\u524d\u8fde\u63a5\u72b6\u6001:"

    .line 355
    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAccessWebSocketConnected:Z

    .line 360
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 372
    .line 373
    new-instance v2, Lcom/haima/hmcp/business/HmcpRequestManager$17;

    .line 374
    .line 375
    move-object v3, v2

    .line 376
    move-object v4, p0

    .line 377
    move-object v5, v0

    .line 378
    move v8, p1

    .line 379
    move v9, p2

    .line 380
    invoke-direct/range {v3 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager$17;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;JIZ)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v1, v0, v2}, Lcom/haima/hmcp/business/IWebSocket;->connect2Access(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.method public dis2Access()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAccessConnecting:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/haima/hmcp/business/IWebSocket;->disconnect2Access()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$18;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 9

    .line 2
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 3
    iget-object v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 4
    iget-object v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 5
    iget v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 6
    iget p2, p2, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    iput p2, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 7
    new-instance v3, Lcom/haima/hmcp/beans/RequestSaveGame;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/RequestSaveGame;-><init>()V

    .line 8
    iput-object p4, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->appChannel:Ljava/lang/String;

    const-string p2, "Formal"

    .line 9
    iput-object p2, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->envType:Ljava/lang/String;

    .line 10
    iput-object p1, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->pkgName:Ljava/lang/String;

    .line 11
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 13
    sget-object p4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeframe--gameArchived--request-->"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x71

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v5, p1

    move-object v7, p3

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p4, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object p4

    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$24;

    invoke-direct {v0, p0, p1, p2, p5}, Lcom/haima/hmcp/business/HmcpRequestManager$24;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    const-string p1, "11130"

    const-class p2, Lcom/haima/hmcp/beans/RequestSaveGameResult;

    invoke-virtual {p4, p1, p3, p2, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAccessURList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURList:Ljava/util/List;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public declared-synchronized getApplyInstanceParams(Landroid/os/Bundle;)Lcom/haima/hmcp/beans/RawPostJson;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "---getApplyInstanceParams->"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "key_preference_did"

    .line 24
    .line 25
    const-string v3, "0"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    new-instance v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-boolean v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->ahead:Z

    .line 40
    .line 41
    const-string v3, "extraId"

    .line 42
    .line 43
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraId:Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "appName"

    .line 50
    .line 51
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appName:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "gameId"

    .line 58
    .line 59
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    const-string v3, "archiveFromBid"

    .line 66
    .line 67
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromBid:Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "archiveFromUserId"

    .line 74
    .line 75
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromUserId:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "appChannel"

    .line 82
    .line 83
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appChannel:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v3, Lcom/haima/hmcp/beans/UserInfo2;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "userid"

    .line 95
    .line 96
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iput-object v4, v3, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 101
    .line 102
    const-string v4, "userToken"

    .line 103
    .line 104
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iput-object v4, v3, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 109
    .line 110
    const-string v4, "userLevel"

    .line 111
    .line 112
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iput v4, v3, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 117
    .line 118
    const-string v4, "userType"

    .line 119
    .line 120
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iput v4, v3, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 125
    .line 126
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 127
    .line 128
    const-string v3, "configInfo"

    .line 129
    .line 130
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->configInfo:Ljava/lang/String;

    .line 135
    .line 136
    const-string v3, "cToken"

    .line 137
    .line 138
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cToken:Ljava/lang/String;

    .line 143
    .line 144
    const-string v3, "playTime"

    .line 145
    .line 146
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getLongFromBundle(Landroid/os/Bundle;Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    iput-wide v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->playingTime:J

    .line 151
    .line 152
    const-string v3, "priority"

    .line 153
    .line 154
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getLongFromBundle(Landroid/os/Bundle;Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    iput-wide v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->priority:J

    .line 159
    .line 160
    const-string v3, "resolutionId"

    .line 161
    .line 162
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->resolution:Ljava/lang/String;

    .line 171
    .line 172
    const-string v3, "payStr"

    .line 173
    .line 174
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->payStr:Ljava/lang/String;

    .line 179
    .line 180
    const-string v3, "internetSpeed"

    .line 181
    .line 182
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->bitRate:I

    .line 187
    .line 188
    sget v3, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 189
    .line 190
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientType:I

    .line 191
    .line 192
    sget-object v3, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 193
    .line 194
    const-string v4, "orientation"

    .line 195
    .line 196
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    instance-of v5, v4, Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 201
    .line 202
    if-eqz v5, :cond_1

    .line 203
    .line 204
    check-cast v4, Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_1
    move-object v4, v3

    .line 208
    :goto_0
    const/4 v5, 0x1

    .line 209
    if-ne v4, v3, :cond_2

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    goto :goto_1

    .line 213
    :cond_2
    const/4 v3, 0x1

    .line 214
    :goto_1
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->orientation:I

    .line 215
    .line 216
    const-string v3, "Formal"

    .line 217
    .line 218
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->envType:Ljava/lang/String;

    .line 219
    .line 220
    const-string v3, "archived"

    .line 221
    .line 222
    invoke-static {p1, v3, v5}, Lcom/haima/hmcp/utils/Utils;->getBooleanFromBundle(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    iput-boolean v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->isArchive:Z

    .line 227
    .line 228
    const-string v3, "protoData"

    .line 229
    .line 230
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->protoData:Ljava/lang/String;

    .line 235
    .line 236
    const-string v3, "noInputLimitTime"

    .line 237
    .line 238
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    int-to-long v3, v3

    .line 243
    iput-wide v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->noInputTimeout:J

    .line 244
    .line 245
    const-string v3, "clientISP"

    .line 246
    .line 247
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientISP:Ljava/lang/String;

    .line 252
    .line 253
    const-string v3, "clientProvince"

    .line 254
    .line 255
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientProvince:Ljava/lang/String;

    .line 260
    .line 261
    const-string v3, "clientCity"

    .line 262
    .line 263
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientCity:Ljava/lang/String;

    .line 268
    .line 269
    iput-boolean v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->syncRefresh:Z

    .line 270
    .line 271
    const-string v3, ""

    .line 272
    .line 273
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->routingIp:Ljava/lang/String;

    .line 274
    .line 275
    const-string v3, "viewResolutionWidth"

    .line 276
    .line 277
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    const-string v4, "viewResolutionHeight"

    .line 282
    .line 283
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-direct {p0, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getViewResolutionStr(II)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->viewResolution:Ljava/lang/String;

    .line 292
    .line 293
    new-instance v3, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v4, "streamType"

    .line 299
    .line 300
    sget-object v6, Lcom/haima/hmcp/enums/StreamType;->WEBRTC:Lcom/haima/hmcp/enums/StreamType;

    .line 301
    .line 302
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    invoke-static {p1, v4, v6}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;I)I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    sget-object v6, Lcom/haima/hmcp/enums/StreamType;->RTMP:Lcom/haima/hmcp/enums/StreamType;

    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-ne v4, v6, :cond_3

    .line 317
    .line 318
    const-string v4, "RTMP"

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_3
    const-string v4, "WEBRTC"

    .line 322
    .line 323
    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->streamingTypes:Ljava/util/List;

    .line 327
    .line 328
    iput-boolean v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->support2k:Z

    .line 329
    .line 330
    const-string v3, "anomalousLeft"

    .line 331
    .line 332
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getFloatFromBundle(Landroid/os/Bundle;Ljava/lang/String;)F

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousLeft:F

    .line 337
    .line 338
    const-string v3, "anomalousRight"

    .line 339
    .line 340
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getFloatFromBundle(Landroid/os/Bundle;Ljava/lang/String;)F

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousRight:F

    .line 345
    .line 346
    sget v3, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 347
    .line 348
    const/4 v4, 0x2

    .line 349
    if-ne v3, v4, :cond_4

    .line 350
    .line 351
    const-string v3, "imeType"

    .line 352
    .line 353
    sget v4, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 354
    .line 355
    invoke-static {p1, v3, v4}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->imeType:I

    .line 360
    .line 361
    :cond_4
    const-string v3, "clientImeType"

    .line 362
    .line 363
    const/4 v4, -0x1

    .line 364
    invoke-static {p1, v3, v4}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;I)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientImeType:I

    .line 369
    .line 370
    const-string v3, "intentExtraData"

    .line 371
    .line 372
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    const/4 v4, 0x0

    .line 377
    if-eqz v3, :cond_5

    .line 378
    .line 379
    const-string v3, "intentExtraData"

    .line 380
    .line 381
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    instance-of v6, v3, Lcom/haima/hmcp/beans/IntentExtraData;

    .line 386
    .line 387
    if-eqz v6, :cond_5

    .line 388
    .line 389
    check-cast v3, Lcom/haima/hmcp/beans/IntentExtraData;

    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_5
    move-object v3, v4

    .line 393
    :goto_3
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 394
    .line 395
    if-eqz v3, :cond_6

    .line 396
    .line 397
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/IntentExtraData;->getAppLink()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_7

    .line 406
    .line 407
    :cond_6
    const-string v3, "componentType"

    .line 408
    .line 409
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    iput v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentType:I

    .line 414
    .line 415
    const-string v3, "action"

    .line 416
    .line 417
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->action:Ljava/lang/String;

    .line 422
    .line 423
    const-string v3, "componentName"

    .line 424
    .line 425
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    iput-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentName:Ljava/lang/String;

    .line 430
    .line 431
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v6, "post ExtraData = "

    .line 437
    .line 438
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 442
    .line 443
    invoke-static {v6}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v0, "demoTestInterfaceId"

    .line 458
    .line 459
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-lez v0, :cond_8

    .line 464
    .line 465
    iput-boolean v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTest:Z

    .line 466
    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInterfaceId:Ljava/lang/Integer;

    .line 472
    .line 473
    const-string v0, "demoTesInstanceId"

    .line 474
    .line 475
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/Utils;->getIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-lez v0, :cond_8

    .line 480
    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInstanceId:Ljava/lang/Integer;

    .line 486
    .line 487
    :cond_8
    sget-boolean v0, Lcom/haima/hmcp/Constants;->ENABLE_FREE_FLOW_TAG:Z

    .line 488
    .line 489
    iput-boolean v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->freeFlowTag:Z

    .line 490
    .line 491
    invoke-direct {p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkAbility:[J

    .line 496
    .line 497
    const-string v0, "h264_sei_data_enable"

    .line 498
    .line 499
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/Utils;->getBooleanFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    iput-boolean v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->h264SeiDataReportEnable:Z

    .line 504
    .line 505
    const-string v0, "high_bit_rate"

    .line 506
    .line 507
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/Utils;->getBooleanFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->enlargeBitRate:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .line 517
    :try_start_1
    const-string v0, "userDeviceInfo"

    .line 518
    .line 519
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .line 529
    :catch_0
    :try_start_2
    iget-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 530
    .line 531
    if-nez v0, :cond_9

    .line 532
    .line 533
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 534
    .line 535
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 536
    .line 537
    .line 538
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 539
    .line 540
    :cond_9
    const-string v0, "transmissionDataToSaas"

    .line 541
    .line 542
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_a

    .line 547
    .line 548
    const-string v0, "transmissionDataToSaas"

    .line 549
    .line 550
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    instance-of v2, v0, Lcom/haima/hmcp/beans/SerializableMap;

    .line 555
    .line 556
    if-eqz v2, :cond_a

    .line 557
    .line 558
    move-object v4, v0

    .line 559
    check-cast v4, Lcom/haima/hmcp/beans/SerializableMap;

    .line 560
    .line 561
    :cond_a
    if-eqz v4, :cond_b

    .line 562
    .line 563
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/SerializableMap;->getMapJson()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-nez v2, :cond_b

    .line 572
    .line 573
    sget-object v2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 574
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v5, "transmissionDataToSaas is "

    .line 581
    .line 582
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/SerializableMap;->getMap()Ljava/util/Map;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    iput-object v0, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->richData:Ljava/util/Map;

    .line 600
    .line 601
    :cond_b
    const-string v0, "finishByServer"

    .line 602
    .line 603
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_c

    .line 608
    .line 609
    const-string v0, "finishByServer"

    .line 610
    .line 611
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 612
    .line 613
    .line 614
    move-result p1

    .line 615
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    iput-object p1, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->finishByServer:Ljava/lang/Boolean;

    .line 620
    .line 621
    :cond_c
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 622
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .line 627
    .line 628
    const-string v2, "getApplyInstanceParams--data-->"

    .line 629
    .line 630
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object p1, v1, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gameId:Ljava/lang/String;

    .line 644
    .line 645
    const/16 v0, 0xd3

    .line 646
    .line 647
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getRawPostJson(ILcom/haima/hmcp/beans/IParameter;Ljava/lang/String;)Lcom/haima/hmcp/beans/RawPostJson;

    .line 648
    .line 649
    .line 650
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    monitor-exit p0

    .line 652
    return-object p1

    .line 653
    :catchall_0
    move-exception p1

    .line 654
    monitor-exit p0

    .line 655
    throw p1
.end method

.method public getCloudId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudService(IILjava/lang/String;Z)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v6, p1

    move/from16 v15, p2

    .line 5
    sget-object v8, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==getCloudService () confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " opType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudService;

    invoke-direct {v0, v6, v15}, Lcom/haima/hmcp/beans/ReportGetCloudService;-><init>(II)V

    const-string v1, "12083"

    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "12232"

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    const-string v9, "100201003"

    const-string v10, "cloudId is empty"

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    move-object v8, v0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 12
    iput v2, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    const-string v0, "getCloudService-----Network unavailable"

    .line 13
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    const-string v9, "100201003"

    const-string v10, "Network unavailable"

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    move-object v8, v0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "getCloudService-----Network available"

    .line 16
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput v15, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->opType:I

    .line 18
    iput v6, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->confirm:I

    .line 19
    new-instance v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/GetCloudServiceParameters;-><init>()V

    .line 20
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->cloudId:Ljava/lang/String;

    .line 21
    iget v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppId:I

    iput v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appId:I

    .line 22
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appName:Ljava/lang/String;

    .line 23
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->appChannel:Ljava/lang/String;

    .line 24
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->signature:Ljava/lang/String;

    .line 25
    iget-wide v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    iput-wide v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->playingTime:J

    .line 26
    iget v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mPriority:I

    iput v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->priority:I

    .line 27
    iput v6, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->confirm:I

    .line 28
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->resolution:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->knockKnock:Ljava/lang/String;

    .line 30
    iput v15, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->opType:I

    .line 31
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mPayStr:Ljava/lang/String;

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->payStr:Ljava/lang/String;

    .line 32
    iget v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    iput v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->bitRate:I

    .line 33
    sget v1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    iput v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientType:I

    .line 34
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    sget-object v4, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    const/4 v9, 0x1

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    iput v2, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->orientation:I

    const-string v1, "Formal"

    .line 35
    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->envType:Ljava/lang/String;

    .line 36
    iget-boolean v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchive:Z

    iput-boolean v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->isArchive:Z

    .line 37
    iput-boolean v9, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->syncRefresh:Z

    .line 38
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientISP:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientProvince:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->clientCity:Ljava/lang/String;

    .line 41
    iget v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    iget v2, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    invoke-direct {v7, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getViewResolutionStr(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->viewResolution:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 42
    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->routingIp:Ljava/lang/String;

    .line 43
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->enlargeBitRate:Ljava/lang/Boolean;

    .line 44
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 45
    iput-object v1, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->devicePixelRatio:Ljava/lang/Integer;

    .line 46
    :cond_3
    iget v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    if-lez v1, :cond_4

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/haima/hmcp/beans/GetCloudServiceParameters;->viewFrameRate:Ljava/lang/String;

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeframe--getCloudService--request-->"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/16 v1, 0xc9

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-wide v4, v11

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v16

    .line 51
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->applyCloudInstance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->resetCloudPlayInfo()V

    .line 55
    :cond_5
    new-instance v0, Lcom/haima/hmcp/business/RequestDiscardPolicy;

    invoke-direct {v0}, Lcom/haima/hmcp/business/RequestDiscardPolicy;-><init>()V

    if-ne v15, v9, :cond_6

    const-string v1, "12011"

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    if-ne v15, v1, :cond_7

    .line 56
    new-instance v0, Lcom/haima/hmcp/business/RequestWaitPolicy;

    invoke-direct {v0}, Lcom/haima/hmcp/business/RequestWaitPolicy;-><init>()V

    const-string v1, "12012"

    goto :goto_1

    :cond_7
    const-string v1, "12010"

    :goto_1
    move-object v8, v0

    move-object v14, v1

    .line 57
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v13

    const-class v17, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    new-instance v18, Lcom/haima/hmcp/business/HmcpRequestManager$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide v2, v11

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager$21;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JIIZ)V

    move-object v15, v8

    invoke-virtual/range {v13 .. v18}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getCloudService(IIZ)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IILjava/lang/String;Z)V

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$20;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;IIZ)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IILjava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public getCloudServiceRequestV2()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$43;

    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/HmcpRequestManager$43;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCloudServiceRequestV2(Ljava/lang/String;)V
    .locals 14

    .line 4
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudService2;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/haima/hmcp/beans/ReportGetCloudService2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "12120"

    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v1, "DownFirstFrame--getCloudServiceRequestV2---12120--->"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v1

    const-string v3, "key_preference_did"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMessageServerInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCloudServiceRequestV2----request---->mCloudId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "12122"

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    if-nez v1, :cond_2

    goto/16 :goto_6

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-nez v1, :cond_3

    const-string p1, "getCloudServiceRequestV2-----mVolleyManager==null"

    .line 13
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCloudServiceRequestV2() mVolleyManager == null; isStopPlay = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 15
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    const-string v5, "100221003"

    const-string v6, "getCloudServiceRequestV2() mVolleyManager == null"

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v11, ""

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->isRequestWithCid()Z

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v4, v4, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    .line 23
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    if-eqz v3, :cond_4

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v6, v6, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v5, v5, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/haima/hmcp/utils/DataUtils;->getCidPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "HMCP_CID_BATTLE_TYPE"

    const/4 v6, 0x0

    if-nez v3, :cond_5

    .line 28
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 29
    :cond_5
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 30
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tv_battle->current player: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    iget v7, v7, Lcom/haima/hmcp/beans/BattleMode;->player:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cache player: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;

    invoke-direct {v9}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;-><init>()V

    .line 32
    iget-boolean v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAhead:Z

    iput-boolean v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->ahead:Z

    const/4 v7, 0x2

    const/4 v13, 0x1

    if-nez v5, :cond_9

    .line 33
    sget-object v5, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 34
    sget-object v3, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 35
    sput-object v2, Lcom/haima/hmcp/countly/CountlyUtil;->mLastCloudID:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 36
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v5, v2

    :goto_1
    iput-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    .line 37
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    iget v5, v5, Lcom/haima/hmcp/beans/BattleMode;->player:I

    if-ne v5, v13, :cond_8

    if-ne v3, v7, :cond_8

    .line 38
    iput-object v2, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    const-string v3, "isRequestWithCid --- false, cid: "

    .line 39
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRequestWithCid --- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    :goto_2
    iput-boolean v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAhead:Z

    .line 42
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraId:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraId:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appName:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mGid:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gameId:Ljava/lang/String;

    .line 45
    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    iput v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->streamingMode:I

    .line 46
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromBid:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromBid:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromUserId:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->archiveFromUserId:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->appChannel:Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 50
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mConfigInfo:Ljava/lang/String;

    iput-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->configInfo:Ljava/lang/String;

    .line 51
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    iput-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cToken:Ljava/lang/String;

    const-string v5, "Formal"

    .line 52
    iput-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->envType:Ljava/lang/String;

    .line 53
    iget-wide v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    iput-wide v10, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->playingTime:J

    .line 54
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPriority:I

    int-to-long v10, v8

    iput-wide v10, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->priority:J

    .line 55
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    iput-object v8, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->resolution:Ljava/lang/String;

    const-string v8, "timeframe--getCloudServiceRequestV2--request-->"

    if-eqz v3, :cond_a

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userInfo"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    invoke-virtual {v10}, Lcom/haima/hmcp/beans/UserInfo2;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_a
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPayStr:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->payStr:Ljava/lang/String;

    .line 59
    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    iput v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->bitRate:I

    .line 60
    sget v3, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    iput v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientType:I

    .line 61
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    sget-object v4, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    if-ne v3, v4, :cond_b

    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    const/4 v3, 0x1

    :goto_3
    iput v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->orientation:I

    .line 62
    iput-object v5, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->envType:Ljava/lang/String;

    .line 63
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchive:Z

    iput-boolean v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->isArchive:Z

    .line 64
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->protoData:Ljava/lang/String;

    .line 65
    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mNoInputLimitTime:I

    int-to-long v3, v3

    iput-wide v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->noInputTimeout:J

    .line 66
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientISP:Ljava/lang/String;

    .line 67
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientProvince:Ljava/lang/String;

    .line 68
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    iput-object v3, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->clientCity:Ljava/lang/String;

    .line 69
    iput-boolean v13, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->syncRefresh:Z

    .line 70
    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->routingIp:Ljava/lang/String;

    .line 71
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    invoke-direct {p0, p1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getViewResolutionStr(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->viewResolution:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->streamingTypes:Ljava/util/List;

    .line 75
    iput-boolean v13, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->support2k:Z

    .line 76
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousLeft:F

    iput p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousLeft:F

    .line 77
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousRight:F

    iput p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->anomalousRight:F

    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mKeepAliveTimeSeconds:Ljava/lang/Integer;

    if-eqz p1, :cond_c

    .line 79
    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->keepAliveTimeSeconds:Ljava/lang/Integer;

    .line 80
    :cond_c
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    if-eqz p1, :cond_d

    .line 81
    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->devicePixelRatio:Ljava/lang/Integer;

    .line 82
    :cond_d
    sget p1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    if-ne p1, v7, :cond_e

    .line 83
    sget p1, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    iput p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->imeType:I

    .line 84
    :cond_e
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->extraData:Lcom/haima/hmcp/beans/IntentExtraData;

    if-eqz p1, :cond_f

    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/IntentExtraData;->getAppLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 86
    :cond_f
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentType:I

    iput p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentType:I

    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAction:Ljava/lang/String;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->action:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentName:Ljava/lang/String;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->componentName:Ljava/lang/String;

    .line 89
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post ExtraData = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_INTERFACE_ID:I

    if-lez p1, :cond_11

    .line 91
    iput-boolean v13, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTest:Z

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInterfaceId:Ljava/lang/Integer;

    .line 93
    sget p1, Lcom/haima/hmcp/Constants;->DEMO_TEST_INSTANCE_ID:I

    if-lez p1, :cond_11

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->demoTestInstanceId:Ljava/lang/Integer;

    .line 95
    :cond_11
    sget-boolean p1, Lcom/haima/hmcp/Constants;->ENABLE_FREE_FLOW_TAG:Z

    iput-boolean p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->freeFlowTag:Z

    if-eqz v1, :cond_12

    .line 96
    iget-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->cloudId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 v6, 0x1

    .line 97
    :cond_12
    invoke-direct {p0, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkAbility:[J

    .line 98
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSeiEnable:Z

    iput-boolean p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->h264SeiDataReportEnable:Z

    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->enlargeBitRate:Ljava/lang/Boolean;

    .line 100
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->disableAutoStream:Ljava/lang/Boolean;

    .line 101
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->cTokenTimeStamp:Ljava/lang/Long;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->timestamp:Ljava/lang/Long;

    .line 102
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->keepLoginStatus:Ljava/lang/Boolean;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->keepLoginStatus:Ljava/lang/Boolean;

    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOpenMultiArchive:Ljava/lang/Boolean;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->openMultiArchive:Ljava/lang/Boolean;

    .line 104
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveMultiArchive:Ljava/lang/Boolean;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveMultiArchive:Ljava/lang/Boolean;

    .line 105
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveBidMultiArchive:Ljava/lang/String;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveBidMultiArchive:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveUidMultiArchive:Ljava/lang/String;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->saveArchiveUidMultiArchive:Ljava/lang/String;

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserDeviceInfo:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 108
    :goto_4
    iget-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    if-nez p1, :cond_13

    .line 109
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->sdkUserDeviceInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 110
    :cond_13
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;

    if-eqz p1, :cond_14

    .line 111
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/SerializableMap;->getMapJson()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 113
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transmissionDataToSaas is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;

    invoke-virtual {p1}, Lcom/haima/hmcp/beans/SerializableMap;->getMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->richData:Ljava/util/Map;

    .line 115
    :cond_14
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    if-lez p1, :cond_15

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->viewFrameRate:Ljava/lang/String;

    .line 117
    :cond_15
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    iget v0, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    iput v0, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->battleOnlineType:I

    .line 118
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    if-eqz p1, :cond_16

    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    if-eqz p1, :cond_16

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gamePad:Ljava/lang/Integer;

    goto :goto_5

    :cond_16
    const/4 p1, 0x0

    .line 120
    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->gamePad:Ljava/lang/Integer;

    .line 121
    :goto_5
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFinishByServer:Ljava/lang/Boolean;

    iput-object p1, v9, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->finishByServer:Ljava/lang/Boolean;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xd3

    const/4 v10, 0x0

    move-object v7, p0

    move-wide v11, v0

    .line 124
    invoke-direct/range {v7 .. v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    invoke-static {v3, v4}, Lcom/haima/hmcp/business/SendSceneState;->applyCloudInstance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperationStream=timeframe--getCloudServiceRequestV2--request-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-boolean v13, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 128
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    if-eqz p1, :cond_17

    .line 129
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->resetCloudPlayInfo()V

    .line 130
    :cond_17
    invoke-static {}, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->reset()V

    .line 131
    const-class p1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v4

    new-instance v5, Lcom/haima/hmcp/business/HmcpRequestManager$45;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager$45;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/business/IRetryPolicy;)V

    const-string v0, "12110"

    invoke-virtual {v4, v0, v2, p1, v5}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void

    .line 133
    :cond_18
    :goto_6
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "100099100"

    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCloudServiceRequestV2----request----> mCToken = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":mUserInfo == null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    const-string v5, "100221003"

    const-string v6, "mCToken =empty or mUserInfo=null"

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v11, ""

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCloudServiceRequestV3(Ljava/lang/String;Z)V
    .locals 13

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/haima/hmcp/beans/ReportGetCloudService3;

    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/haima/hmcp/beans/ReportGetCloudService3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "13212"

    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v1, "DownFirstFrame--getCloudServiceRequestV3---13212--->"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v1

    const-string v2, "key_preference_did"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMessageServerInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudServiceRequestV3----request---->mCloudId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "13214"

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-nez v1, :cond_3

    const-string p1, "getCloudServiceRequestV3-----mVolleyManager==null"

    .line 14
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCloudServiceRequestV3() mVolleyManager == null; isStopPlay = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 16
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 18
    new-instance p1, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;

    const-string v4, "100221003"

    const-string v5, "getCloudServiceRequestV3() mVolleyManager == null"

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v12, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->isRequestWithCid()Z

    move-result v1

    .line 21
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    .line 23
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    if-eqz v2, :cond_4

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v3, v3, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v3, v3, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/utils/DataUtils;->getCidPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getDeviceIdParameters()Lcom/haima/hmcp/beans/DeviceIdParameters;

    move-result-object v2

    .line 28
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceParametersV2(Ljava/lang/String;Z)Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;

    move-result-object p1

    .line 29
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getRequestConfigureData()Lcom/haima/hmcp/beans/RequestConfigure;

    move-result-object v1

    .line 30
    new-instance v5, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;

    invoke-direct {v5}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;-><init>()V

    .line 31
    iput-object v2, v5, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;->registerRequest:Lcom/haima/hmcp/beans/DeviceIdParameters;

    .line 32
    iput-object v1, v5, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;->configureRequest:Lcom/haima/hmcp/beans/RequestConfigure;

    .line 33
    iput-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;->getCloudServiceRequestV2:Lcom/haima/hmcp/beans/GetCloudServiceParametersV2;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "108"

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "211"

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iput-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;->actIds:Ljava/util/List;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeframe--getCloudServiceRequestV3--request-->"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GetCloudServiceParametersV3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xde

    const/4 v6, 0x0

    move-object v3, p0

    move-wide v7, v1

    .line 40
    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p1

    .line 41
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    invoke-static {v3, v4}, Lcom/haima/hmcp/business/SendSceneState;->applyCloudInstance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperationStream=timeframe--getCloudServiceRequestV3--request-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->resetCloudPlayInfo()V

    :cond_5
    if-nez p2, :cond_6

    .line 46
    invoke-static {}, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->reset()V

    .line 47
    :cond_6
    const-class v0, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    move-result-object v10

    .line 48
    sget-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    sput-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v0

    new-instance v3, Lcom/haima/hmcp/business/HmcpRequestManager$46;

    move-object v6, v3

    move-object v7, p0

    move-wide v8, v1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/haima/hmcp/business/HmcpRequestManager$46;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/business/IRetryPolicy;Z)V

    const-string p2, "12220"

    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult3;

    invoke-virtual {v0, p2, p1, v1, v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void

    .line 50
    :cond_7
    :goto_0
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "100099100"

    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyRetryPromptListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCloudServiceRequestV3----request----> mCToken = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":mUserInfo == null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;

    const-string v4, "100221003"

    const-string v5, "mCToken =empty or mUserInfo=null"

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    const-string v12, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCloudServiceRequestV3(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$44;

    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$44;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Z)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV3(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public getConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getConfigure"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v6, v1, p1}, Lcom/haima/hmcp/beans/ReportGetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "12084"

    .line 34
    .line 35
    invoke-static {v6}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "DownFirstFrame--getConfigure---12084--->"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v9, Lcom/haima/hmcp/beans/RequestConfigure;

    .line 50
    .line 51
    invoke-direct {v9}, Lcom/haima/hmcp/beans/RequestConfigure;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->accessKeyId:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->appChannel:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "Formal"

    .line 65
    .line 66
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->envType:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->sdkAbility:[J

    .line 74
    .line 75
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 76
    .line 77
    if-lez v1, :cond_0

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ""

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->viewFrameRate:Ljava/lang/String;

    .line 99
    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->streamingTypes:Ljava/util/List;

    .line 117
    .line 118
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v2, "timeframe--getConfigure---request--->"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    const/16 v8, 0x6c

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    move-object v7, p0

    .line 146
    move-wide v11, v4

    .line 147
    invoke-direct/range {v7 .. v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    .line 174
    .line 175
    sput-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v9, Lcom/haima/hmcp/business/HmcpRequestManager$13;

    .line 184
    .line 185
    move-object v2, v9

    .line 186
    move-object v3, p0

    .line 187
    move-object v7, p1

    .line 188
    move-object v8, p2

    .line 189
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager$13;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/beans/ReportGetConfig;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V

    .line 190
    .line 191
    .line 192
    const-string p1, "11080"

    .line 193
    .line 194
    const-class p2, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 195
    .line 196
    invoke-virtual {v0, p1, v1, p2, v9}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public getDeviceId(Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCallBack:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 4
    .line 5
    .line 6
    const-string p1, "12063"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const-string v1, "100000001"

    .line 15
    .line 16
    const-string v2, "12066"

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    .line 40
    .line 41
    sput-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 52
    .line 53
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyUtil;->openCache()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/haima/hmcp/beans/DeviceIdParameters;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/haima/hmcp/beans/DeviceIdParameters;-><init>()V

    .line 59
    .line 60
    .line 61
    sget p1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 62
    .line 63
    iput p1, v2, Lcom/haima/hmcp/beans/DeviceIdParameters;->type:I

    .line 64
    .line 65
    const-string p1, "Formal"

    .line 66
    .line 67
    iput-object p1, v2, Lcom/haima/hmcp/beans/DeviceIdParameters;->envType:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v1, 0x68

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    move-object v0, p0

    .line 73
    move-wide v4, v6

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "getDeviceId--request-->"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$4;

    .line 111
    .line 112
    invoke-direct {v1, p0, v6, v7}, Lcom/haima/hmcp/business/HmcpRequestManager$4;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;J)V

    .line 113
    .line 114
    .line 115
    const-string v2, "11040"

    .line 116
    .line 117
    const-class v3, Lcom/haima/hmcp/beans/DeviceIdResult;

    .line 118
    .line 119
    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    :goto_0
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 124
    .line 125
    const-string v5, "100104003"

    .line 126
    .line 127
    const-string v6, "mChannelId is null or empty"

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    const-string v8, ""

    .line 131
    .line 132
    const/4 v9, 0x0

    .line 133
    sget-object v10, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 134
    .line 135
    sget-object v11, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 136
    .line 137
    move-object v4, p1

    .line 138
    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget p1, Lcom/haima/hmcp/R$string;->Error_000001:I

    .line 149
    .line 150
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, v1, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    :goto_1
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 159
    .line 160
    const-string v4, "100104003"

    .line 161
    .line 162
    const-string v5, "mChannelId is null or empty"

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    const-string v7, ""

    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    sget-object v9, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 169
    .line 170
    sget-object v10, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 171
    .line 172
    move-object v3, p1

    .line 173
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget p1, Lcom/haima/hmcp/R$string;->Error_000001:I

    .line 184
    .line 185
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, v1, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public getDeviceInfo()Lcom/haima/hmcp/beans/DeviceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDnsRequestIp(Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "13330"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/dns/entity/DnsRequestIpParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/dns/entity/DnsRequestIpParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {v3, v0}, Lcom/haima/hmcp/dns/entity/DnsRequestIpParameters;->setType(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/dns/entity/DnsRequestIpParameters;->setHost(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v7

    .line 22
    const/16 v2, 0x133

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move-wide v5, v7

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "timeframe--getDnsRequestIp---request--->"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$32;

    .line 64
    .line 65
    invoke-direct {v1, p0, v7, v8, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$32;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;)V

    .line 66
    .line 67
    .line 68
    const-string p2, ""

    .line 69
    .line 70
    const-class v2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult;

    .line 71
    .line 72
    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public getExtraConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getExtraConfigure"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v6, v1, p1}, Lcom/haima/hmcp/beans/ReportGetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "12134"

    .line 34
    .line 35
    invoke-static {v6}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "DownFirstFrame--getExtraConfigure---14094--->"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v9, Lcom/haima/hmcp/beans/RequestConfigure;

    .line 50
    .line 51
    invoke-direct {v9}, Lcom/haima/hmcp/beans/RequestConfigure;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->accessKeyId:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->appChannel:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "Formal"

    .line 65
    .line 66
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->envType:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->sdkAbility:[J

    .line 74
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_0

    .line 80
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iput-object v1, v9, Lcom/haima/hmcp/beans/RequestConfigure;->streamingTypes:Ljava/util/List;

    .line 92
    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "timeframe--getExtraConfigure---request--->"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    const/16 v8, 0x73

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    move-object v7, p0

    .line 121
    move-wide v11, v4

    .line 122
    invoke-direct/range {v7 .. v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    .line 149
    .line 150
    sput-object v0, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v9, Lcom/haima/hmcp/business/HmcpRequestManager$14;

    .line 159
    .line 160
    move-object v2, v9

    .line 161
    move-object v3, p0

    .line 162
    move-object v7, p1

    .line 163
    move-object v8, p2

    .line 164
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager$14;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/beans/ReportGetConfig;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V

    .line 165
    .line 166
    .line 167
    const-string p1, "11150"

    .line 168
    .line 169
    const-class p2, Lcom/haima/hmcp/beans/ExtraConfigureResult;

    .line 170
    .line 171
    invoke-virtual {v0, p1, v1, p2, v9}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 9

    .line 2
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 3
    iget-object v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 4
    iget-object v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 5
    iget v1, p2, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 6
    iget p2, p2, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    iput p2, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 7
    new-instance v3, Lcom/haima/hmcp/beans/RequestSaveGame;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/RequestSaveGame;-><init>()V

    .line 8
    iput-object p4, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->appChannel:Ljava/lang/String;

    const-string p2, "Formal"

    .line 9
    iput-object p2, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->envType:Ljava/lang/String;

    .line 10
    iput-object p1, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->pkgName:Ljava/lang/String;

    .line 11
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestSaveGame;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 13
    sget-object p4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeframe--getSaveGameStatus--request-->"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x70

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v5, p1

    move-object v7, p3

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p4, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object p4

    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$26;

    invoke-direct {v0, p0, p1, p2, p5}, Lcom/haima/hmcp/business/HmcpRequestManager$26;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    const-string p1, "11120"

    const-class p2, Lcom/haima/hmcp/beans/RequestSaveGameResult;

    invoke-virtual {p4, p1, p3, p2, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method protected getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 14
    .line 15
    return-object v0
.end method

.method public getJoinBattle(ZLcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 9

    const-string v0, "12809"

    const-string v1, "tv_battle->"

    if-nez p3, :cond_0

    .line 1
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "OnJoinBattleListener is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 3
    iget-object v7, p2, Lcom/haima/hmcp/beans/InternalJoinBattle;->joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v3, v7, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle.packageName is null or empty"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget v3, v7, Lcom/haima/hmcp/beans/JoinBattle;->streamingType:I

    if-ltz v3, :cond_5

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, v7, Lcom/haima/hmcp/beans/JoinBattle;->appChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    const-string v0, "WEBRTC"

    goto :goto_0

    :cond_4
    const-string v0, "RTMP"

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 11
    iget-object v0, v7, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$51;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager$51;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/InternalJoinBattle;ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V

    return-void

    .line 12
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "JoinBattle.streamingType is not validate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/haima/hmcp/beans/JoinBattle;->streamingType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void

    .line 16
    :cond_6
    :goto_2
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JoinBattle is null"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    return-void
.end method

.method public getMetaMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetText()Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getProtoDataGameInfo()Lcom/haima/hmcp/beans/ProtoDataGameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->protoDataGameInfo:Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "timeframe--getPublicIPV4--request-->"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/beans/ReportIPV4;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v2, v1}, Lcom/haima/hmcp/beans/ReportIPV4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "12130"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v2, v3, v4}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/haima/hmcp/business/HmRetryPolicy;

    .line 37
    .line 38
    const/16 v5, 0x7d0

    .line 39
    .line 40
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-direct {v3, v5, v4, v6}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(IIF)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 46
    .line 47
    invoke-direct {v4}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy(Lcom/haima/hmcp/business/IRetryPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v3, Lcom/haima/hmcp/business/HmcpRequestManager$31;

    .line 63
    .line 64
    invoke-direct {v3, p0, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$31;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ReportIPV4;Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v1, v3}, Lcom/haima/hmcp/business/IHttp;->get(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public getReCloudServiceRequestV2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==getReCloudServiceRequestV2"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->dis2Access()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV2()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getReportFrameDelayInterval()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/haima/hmcp/Constants;->isDebugFrameDelay:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0xf

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->reportFrameDelayInterval:I

    .line 18
    .line 19
    return v0
.end method

.method public getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 9

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "getResolutionInfos listener can\'t be null,return "

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez p4, :cond_1

    .line 12
    .line 13
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_errorMsg_null:I

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p4, "getResolutionInfos: "

    .line 27
    .line 28
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p5, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Lcom/haima/hmcp/beans/RequestConfigure;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/haima/hmcp/beans/RequestConfigure;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, v2, Lcom/haima/hmcp/beans/RequestConfigure;->accessKeyId:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iput-object p3, v2, Lcom/haima/hmcp/beans/RequestConfigure;->accessKeyId:Ljava/lang/String;

    .line 64
    .line 65
    :goto_0
    iput-object p1, v2, Lcom/haima/hmcp/beans/RequestConfigure;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    iput-object p2, v2, Lcom/haima/hmcp/beans/RequestConfigure;->appChannel:Ljava/lang/String;

    .line 68
    .line 69
    const-string p1, "Formal"

    .line 70
    .line 71
    iput-object p1, v2, Lcom/haima/hmcp/beans/RequestConfigure;->envType:Ljava/lang/String;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iput-object p1, v2, Lcom/haima/hmcp/beans/RequestConfigure;->streamingTypes:Ljava/util/List;

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    const/16 v1, 0x6c

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    move-object v0, p0

    .line 95
    move-wide v4, p1

    .line 96
    move-object v6, p3

    .line 97
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "timeframe--getResolutionInfos---request--->"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$28;

    .line 134
    .line 135
    move-object v3, v1

    .line 136
    move-object v4, p0

    .line 137
    move-wide v5, p1

    .line 138
    move-object v7, p4

    .line 139
    move-object v8, p5

    .line 140
    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager$28;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V

    .line 141
    .line 142
    .line 143
    const-string p1, "11080"

    .line 144
    .line 145
    const-class p2, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 146
    .line 147
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public getSpecialInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 12

    move-object v7, p0

    .line 1
    new-instance v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/RequestSpecialInfo;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->type:I

    move-object v1, p2

    .line 3
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientISP:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientProvince:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 5
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientCity:Ljava/lang/String;

    move-object/from16 v1, p5

    .line 6
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->routingIp:Ljava/lang/String;

    .line 7
    sget v1, Lcom/haima/hmcp/Constants;->DEMO_TEST_INTERFACE_ID:I

    if-lez v1, :cond_0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->demoTestInterfaceId:Ljava/lang/Integer;

    .line 9
    iput-boolean v0, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->demoTest:Z

    .line 10
    sget v0, Lcom/haima/hmcp/Constants;->DEMO_TEST_INSTANCE_ID:I

    if-lez v0, :cond_0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->demoTestInstanceId:Ljava/lang/Integer;

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v1, 0x6e

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, v8

    move-object/from16 v6, p6

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v6

    .line 14
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeframe--getSpecialInfo---request--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "13701"

    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 16
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v10

    new-instance v11, Lcom/haima/hmcp/business/HmcpRequestManager$15;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v8

    move-object/from16 v4, p7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager$15;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;I)V

    const-string v0, "11100"

    const-class v1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;

    invoke-virtual {v10, v0, v6, v1, v11}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getSpecialInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 7

    .line 17
    new-instance v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/RequestSpecialInfo;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->type:I

    .line 19
    iput-object p1, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientISP:Ljava/lang/String;

    .line 20
    iput-object p2, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientProvince:Ljava/lang/String;

    .line 21
    iput-object p3, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->clientCity:Ljava/lang/String;

    .line 22
    iput-object p4, v2, Lcom/haima/hmcp/beans/RequestSpecialInfo;->routingIp:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v1, 0x6e

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p5

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p3

    .line 25
    sget-object p4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeframe--getSpecialInfo---request--->"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p4, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object p4

    new-instance p5, Lcom/haima/hmcp/business/HmcpRequestManager$16;

    invoke-direct {p5, p0, p1, p2, p6}, Lcom/haima/hmcp/business/HmcpRequestManager$16;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    const-string p1, "11100"

    const-class p2, Lcom/haima/hmcp/beans/ResponseSpecialInfo;

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getStartStreamingRequest(Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$7;

    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$7;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getStartStreamingRequest(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V

    :goto_0
    return-void
.end method

.method public getStartStreamingRequest(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V
    .locals 9

    .line 4
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStartStreamingRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-nez v0, :cond_0

    const-string p2, "getStartStreamingRequest-----mVolleyManager==null"

    .line 6
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getStartStreamingRequest() mVolleyManager == null; isStopPlay = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 8
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "14703"

    const-string v1, "==getStartStreamingRequest begin=="

    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v4, Lcom/haima/hmcp/beans/GetStartStreamingParameters;

    invoke-direct {v4}, Lcom/haima/hmcp/beans/GetStartStreamingParameters;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object v0, v4, Lcom/haima/hmcp/beans/GetStartStreamingParameters;->cid:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeframe--getStartStreamingRequest--request-->"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/haima/hmcp/beans/GetStartStreamingParameters;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xec

    const/4 v5, 0x0

    move-object v2, p0

    move-wide v6, v0

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    sput-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object p1

    new-instance v3, Lcom/haima/hmcp/business/HmcpRequestManager$8;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$8;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnStartStreamingListener;)V

    const-string p2, "12360"

    const-class v0, Lcom/haima/hmcp/beans/GetStartStreamingResult;

    invoke-virtual {p1, p2, v2, v0, v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getStreamingType(Lcom/haima/hmcp/beans/GameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v6, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    const-string v0, "12805"

    .line 7
    .line 8
    const-string v1, "tv_battle->"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v6, :cond_2

    .line 12
    .line 13
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "GameStreamingType is null"

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eqz v8, :cond_1

    .line 39
    .line 40
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 45
    .line 46
    .line 47
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 48
    .line 49
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_0
    invoke-interface {v8, v2, v1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :cond_2
    iget v3, v6, Lcom/haima/hmcp/beans/GameStreamingType;->streamingType:I

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    if-eq v3, v4, :cond_5

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "GameStreamingType.streamingType is not validate: "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v4, v6, Lcom/haima/hmcp/beans/GameStreamingType;->streamingType:I

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v4, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 113
    .line 114
    .line 115
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 116
    .line 117
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :cond_3
    invoke-interface {v8, v2, v3}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void

    .line 125
    :cond_5
    iget-object v3, v6, Lcom/haima/hmcp/beans/GameStreamingType;->userInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 126
    .line 127
    if-nez v3, :cond_8

    .line 128
    .line 129
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, "GameStreamingType.userInfo is null"

    .line 140
    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    if-eqz v8, :cond_7

    .line 155
    .line 156
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 161
    .line 162
    .line 163
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 164
    .line 165
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :cond_6
    invoke-interface {v8, v2, v1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    return-void

    .line 173
    :cond_8
    iget-object v3, v6, Lcom/haima/hmcp/beans/GameStreamingType;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_b

    .line 180
    .line 181
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, "GameStreamingType.packageName is null or empty"

    .line 192
    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    if-eqz v8, :cond_a

    .line 207
    .line 208
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 213
    .line 214
    .line 215
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 216
    .line 217
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :cond_9
    invoke-interface {v8, v2, v1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    return-void

    .line 225
    :cond_b
    iget-object v3, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_e

    .line 232
    .line 233
    sget-object v3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 234
    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, "GameStreamingType, mAccessKeyId is null or empty"

    .line 244
    .line 245
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    if-eqz v8, :cond_d

    .line 259
    .line 260
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    if-eqz v0, :cond_c

    .line 263
    .line 264
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 265
    .line 266
    .line 267
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 268
    .line 269
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :cond_c
    invoke-interface {v8, v2, v1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_d
    return-void

    .line 277
    :cond_e
    sget-object v9, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 278
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v1, "tv_battle->getStreamingType: "

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v9, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v10, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingType;

    .line 300
    .line 301
    invoke-direct {v10, v6}, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingType;-><init>(Lcom/haima/hmcp/beans/GameStreamingType;)V

    .line 302
    .line 303
    .line 304
    const-string v0, "12803"

    .line 305
    .line 306
    invoke-static {v10}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    iget v1, v6, Lcom/haima/hmcp/beans/GameStreamingType;->streamingType:I

    .line 319
    .line 320
    if-ne v1, v4, :cond_f

    .line 321
    .line 322
    const-string v1, "WEBRTC"

    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_f
    const-string v1, "RTMP"

    .line 326
    .line 327
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    new-instance v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;

    .line 331
    .line 332
    invoke-direct {v3}, Lcom/haima/hmcp/beans/RequestGameStreamingType;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->streamingTypes:Ljava/util/List;

    .line 336
    .line 337
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    .line 338
    .line 339
    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 340
    .line 341
    .line 342
    iget-object v1, v6, Lcom/haima/hmcp/beans/GameStreamingType;->userInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 343
    .line 344
    iget-object v4, v1, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 345
    .line 346
    iput-object v4, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v4, v1, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 349
    .line 350
    iput-object v4, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 351
    .line 352
    iget v4, v1, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    .line 353
    .line 354
    iput v4, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 355
    .line 356
    iget v1, v1, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    .line 357
    .line 358
    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 359
    .line 360
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 361
    .line 362
    iget-object v0, v6, Lcom/haima/hmcp/beans/GameStreamingType;->packageName:Ljava/lang/String;

    .line 363
    .line 364
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->packageName:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v0, v6, Lcom/haima/hmcp/beans/GameStreamingType;->appChannel:Ljava/lang/String;

    .line 367
    .line 368
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->appChannel:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 371
    .line 372
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->accessKeyId:Ljava/lang/String;

    .line 373
    .line 374
    const-string v0, "Formal"

    .line 375
    .line 376
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->envType:Ljava/lang/String;

    .line 377
    .line 378
    invoke-direct {p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iput-object v0, v3, Lcom/haima/hmcp/beans/RequestGameStreamingType;->sdkAbility:[J

    .line 383
    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 385
    .line 386
    .line 387
    move-result-wide v11

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v1, "tv_battle->timeframe--getStreamingType---request encrypt before--->"

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v9, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const/16 v1, 0x6d

    .line 409
    .line 410
    const/4 v4, 0x1

    .line 411
    move-object v0, p0

    .line 412
    move-object v2, v3

    .line 413
    move v3, v4

    .line 414
    move-wide v4, v11

    .line 415
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v1, "tv_battle->timeframe--getStreamingType---request encrypt after--->"

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-static {v13}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v9, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    new-instance v14, Lcom/haima/hmcp/business/HmcpRequestManager$48;

    .line 450
    .line 451
    move-object v0, v14

    .line 452
    move-object v1, p0

    .line 453
    move-wide v2, v11

    .line 454
    move-object v4, v10

    .line 455
    move-object/from16 v5, p2

    .line 456
    .line 457
    move-object/from16 v6, p1

    .line 458
    .line 459
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager$48;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/beans/report/ReportGetGameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;Lcom/haima/hmcp/beans/GameStreamingType;)V

    .line 460
    .line 461
    .line 462
    const-string v0, "11090"

    .line 463
    .line 464
    const-class v1, Lcom/haima/hmcp/beans/GameStreamingTypeResult;

    .line 465
    .line 466
    invoke-virtual {v9, v0, v13, v1, v14}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 467
    .line 468
    .line 469
    return-void
.end method

.method public getSwitchStreamTypeRequest(Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager$5;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSwitchStreamTypeRequest(Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V

    :goto_0
    return-void
.end method

.method public getSwitchStreamTypeRequest(Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
    .locals 15

    move-object v8, p0

    move/from16 v6, p3

    .line 4
    iget-object v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    const-string v1, "getSwitchStreamTypeRequest-----mVolleyManager==null"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSwitchStreamTypeRequest() mVolleyManager == null; isStopPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 7
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, v6, :cond_0

    const/4 v0, 0x0

    .line 9
    sget-object v1, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->UNKNOWN:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-static {v7, v6, v0, v9, v1}, Lcom/haima/hmcp/utils/Utils;->switchStreamTypeResultCallback(Lcom/haima/hmcp/enums/StreamType;IZLcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/enums/SwitchStreamTypeError;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 10
    new-instance v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;-><init>()V

    .line 11
    iget-object v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->cloudId:Ljava/lang/String;

    move-object/from16 v0, p1

    .line 12
    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->routingIp:Ljava/lang/String;

    .line 13
    iget-object v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->streamType:Ljava/lang/String;

    .line 15
    iget-object v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->enlargeBitRate:Ljava/lang/Boolean;

    .line 16
    iget v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    if-lez v0, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->viewFrameRate:Ljava/lang/String;

    .line 18
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 19
    sget-object v12, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeframe--getSwitchStreamTypeRequest--request-->"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/GetSwitchStreamTypeParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe2

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, v10

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v14

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, v8, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v12

    new-instance v13, Lcom/haima/hmcp/business/HmcpRequestManager$6;

    move-object v0, v13

    move-object v1, p0

    move-wide v2, v10

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager$6;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JILcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V

    const-string v0, "12260"

    const-class v1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;

    invoke-virtual {v12, v0, v14, v1, v13}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public getTransferOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isTransfer:Z

    .line 2
    .line 3
    return v0
.end method

.method public getViewResolutionHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewResolutionWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public initConfigInfo()V
    .locals 10

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "---initConfigInfo====:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/HmcpRequestManager$1;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

    .line 14
    .line 15
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/16 v2, 0x80

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 60
    .line 61
    const-string v1, "HMCP_ACCESS_KEY_ID"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "HMCP_CHANNEL_ID"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 83
    .line 84
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 87
    .line 88
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 89
    .line 90
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, "12066"

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->initData()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    new-instance v0, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 117
    .line 118
    const-string v3, "100104003"

    .line 119
    .line 120
    const-string v4, "mAccessKeyId is null or empty"

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    const-string v6, ""

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    sget-object v8, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 127
    .line 128
    sget-object v9, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 129
    .line 130
    move-object v2, v0

    .line 131
    invoke-direct/range {v2 .. v9}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, " Must specify Access Key ID"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_3
    new-instance v0, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 171
    .line 172
    const-string v3, "100104003"

    .line 173
    .line 174
    const-string v4, "mChannelId is null or empty"

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    const-string v6, ""

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    sget-object v8, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v9, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 183
    .line 184
    move-object v2, v0

    .line 185
    invoke-direct/range {v2 .. v9}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, " Must specify Channel ID"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method protected initData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConfigUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/haima/hmcp/beans/DeviceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 16
    .line 17
    new-instance v0, Lcom/haima/hmcp/beans/ClientInfo;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/haima/hmcp/beans/ClientInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/haima/hmcp/beans/ClientInfo;->accessKeyId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/haima/hmcp/beans/ClientInfo;->clientPkgName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 37
    .line 38
    invoke-static {}, Lcom/haima/hmcp/utils/ConfigUtil;->getVersion()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/haima/hmcp/beans/ClientInfo;->sdkVersion:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/haima/hmcp/beans/ClientInfo;->channelId:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "key_preference_did"

    .line 57
    .line 58
    const-string v2, "0"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/util/Date;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mLinkSt:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    const-string v0, "https://saas-rel.haimawan.com/s/rest/api"

    .line 96
    .line 97
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->saasAuthUrl:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->saasAuthUrl:Ljava/lang/String;

    .line 109
    .line 110
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    const-string v1, "https://countly.haimawan.com"

    .line 113
    .line 114
    const-string v2, "9c0edb3f80d8d9adc71bb544b6dc87743340e829"

    .line 115
    .line 116
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, ""

    .line 120
    .line 121
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mServerTimestamp:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 124
    .line 125
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mDeviceID:Ljava/lang/String;

    .line 126
    .line 127
    return-void
.end method

.method public isAllowConnect2Access(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 2
    .line 3
    return-void
.end method

.method public isCloudIdChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCloudIdChange:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDisableAutoStream()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGetCloudServiceRequestV2Requesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInTvRtcBlackList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsInTvRtcBlackList:Z

    .line 2
    .line 3
    return v0
.end method

.method protected notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCallBack:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p3, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "mCallBack == null"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "  "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-nez p3, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCallBack:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->success()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCallBack:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p3, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method protected notifySaasListenerResponse(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onResponse(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "notifySaasListenerResponse got mSaasListener == null; type = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "; errorInfo = "

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "; isStopPlay = "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public preCheck(I)Lcom/haima/hmcp/beans/RequestPreCheck;
    .locals 4

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/RequestPreCheck;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/RequestPreCheck;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc9

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0xca

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0xd6

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x138

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSecretKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v0, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "mSecretKey is empty:"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, "; mCloudId is empty:"

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v0, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 68
    .line 69
    :cond_2
    :goto_0
    return-object v0
.end method

.method public queryX86ControlInfo(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "queryX86ControlInfo() cid="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/haima/hmcp/beans/ControlQueryParam;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/haima/hmcp/beans/ControlQueryParam;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {v4, v0, v1}, Lcom/haima/hmcp/beans/ControlQueryParam;->setCid(J)V

    .line 33
    .line 34
    .line 35
    const-string p1, "Formal"

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Lcom/haima/hmcp/beans/ControlQueryParam;->setEnvType(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x131

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    move-object v2, p0

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$37;

    .line 59
    .line 60
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$37;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnContronListener;)V

    .line 61
    .line 62
    .line 63
    const-string p2, ""

    .line 64
    .line 65
    const-class v2, Lcom/haima/hmcp/beans/ControlQueryResult;

    .line 66
    .line 67
    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public relaunchGame(Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==relaunchGame"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x138

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->preCheck(I)Lcom/haima/hmcp/beans/RequestPreCheck;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, v1, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, v1, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v3, Lcom/haima/hmcp/beans/RelaunchGameParameters;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/haima/hmcp/beans/RelaunchGameParameters;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, v3, Lcom/haima/hmcp/beans/RelaunchGameParameters;->cloudId:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "Formal"

    .line 41
    .line 42
    iput-object v1, v3, Lcom/haima/hmcp/beans/RelaunchGameParameters;->envType:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "13328"

    .line 45
    .line 46
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    const/16 v2, 0x138

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    move-object v1, p0

    .line 68
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "timeframe--relaunchGame--request-->"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Lcom/haima/hmcp/business/HmcpRequestManager$23;

    .line 103
    .line 104
    invoke-direct {v2, p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$23;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "13120"

    .line 108
    .line 109
    const-class v3, Lcom/haima/hmcp/beans/RelaunchGameResult;

    .line 110
    .line 111
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public remoteCapture(Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/ReportRemoteCapture;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/ReportRemoteCapture;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lcom/haima/hmcp/beans/RemoteCaptureParameters;->opType:I

    .line 7
    .line 8
    iput v1, v0, Lcom/haima/hmcp/beans/ReportRemoteCapture;->opType:I

    .line 9
    .line 10
    iget-object v1, p1, Lcom/haima/hmcp/beans/RemoteCaptureParameters;->interval:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/ReportRemoteCapture;->interval:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "12260"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    const/16 v3, 0x132

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v2, p0

    .line 31
    move-object v4, p1

    .line 32
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/haima/hmcp/business/HmcpRequestManager$34;

    .line 43
    .line 44
    invoke-direct {v2, p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$34;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V

    .line 45
    .line 46
    .line 47
    const-string p1, ""

    .line 48
    .line 49
    const-class p2, Lcom/haima/hmcp/beans/BaseResultImp;

    .line 50
    .line 51
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object v6, p1

    const-string v0, "13310"

    .line 4
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 6
    new-instance v2, Lcom/haima/hmcp/beans/ControlParameters;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/ControlParameters;-><init>()V

    .line 7
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/FollowCidCacheUtil;->getAndClearOtherFollowCid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlParameters followCid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->followCid:Ljava/lang/String;

    .line 11
    :cond_0
    iput-object v6, v2, Lcom/haima/hmcp/beans/ControlParameters;->masterId:Ljava/lang/String;

    move-object v0, p2

    .line 12
    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->pin:Ljava/lang/String;

    .line 13
    sget v0, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    sget v0, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE_NATIVE:I

    iput v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->imeType:I

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getStreamType()Lcom/haima/hmcp/enums/StreamType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->streamingTypes:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->clientISP:Ljava/lang/String;

    .line 19
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->ext:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->clientProvince:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->clientCity:Ljava/lang/String;

    move-object/from16 v0, p4

    .line 22
    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->routingIp:Ljava/lang/String;

    .line 23
    iget-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->enlargeBitRate:Ljava/lang/Boolean;

    .line 24
    iget v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    iput v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->streamingMode:I

    .line 25
    iget v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    if-lez v0, :cond_2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/haima/hmcp/beans/ControlParameters;->viewFrameRate:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p3

    .line 27
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->setAccessKeyId(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestControl--request-->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 29
    iput-object v0, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v1, 0xdd

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, v8

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object v10

    .line 32
    invoke-static {}, Lcom/haima/hmcp/beans/LanguageReport;->getInstance()Lcom/haima/hmcp/beans/LanguageReport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/LanguageReport;->updateIsPlayBy211(Z)Lcom/haima/hmcp/beans/LanguageReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/beans/LanguageReport;->report()V

    .line 33
    iget-object v0, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object v11

    new-instance v12, Lcom/haima/hmcp/business/HmcpRequestManager$40;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager$40;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Lcom/haima/hmcp/listeners/OnContronListener;J)V

    const-string v0, "12210"

    const-class v1, Lcom/haima/hmcp/beans/ContronResult;

    invoke-virtual {v11, v0, v10, v1, v12}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V
    .locals 10

    move-object v8, p0

    move-object v0, p5

    .line 1
    iput-object v0, v8, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    .line 2
    new-instance v9, Lcom/haima/hmcp/business/HmcpRequestManager$39;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager$39;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestData(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string v0, "transmissionDataToSaas"

    .line 2
    .line 3
    const-string v1, "orientation"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 12
    .line 13
    const-string v1, "playTime"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    .line 20
    .line 21
    const-string v1, "priority"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPriority:I

    .line 28
    .line 29
    const-string v1, "appId"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppId:I

    .line 36
    .line 37
    const-string v1, "appName"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "appChannel"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppChannel:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "archiveFromBid"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromBid:Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "archiveFromUserId"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveFromUserId:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "cToken"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 76
    .line 77
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "requestData, mCToken = "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v2, "extraId"

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraId:Ljava/lang/String;

    .line 108
    .line 109
    const-string v2, "payStr"

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPayStr:Ljava/lang/String;

    .line 116
    .line 117
    const-string v2, "bitRate"

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iput v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    .line 124
    .line 125
    const-string v2, "resolutionId"

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 136
    .line 137
    const-string v2, "archived"

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iput-boolean v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchive:Z

    .line 144
    .line 145
    const-string v2, "protoData"

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "noInputLimitTime"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iput v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mNoInputLimitTime:I

    .line 160
    .line 161
    const-string v2, "viewResolutionWidth"

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    .line 168
    .line 169
    const-string v2, "viewResolutionHeight"

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iput v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    .line 176
    .line 177
    const-string v2, "viewFrameRate"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v4, "requestData, VIEW_FRAME_RATE = "

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    if-lez v2, :cond_0

    .line 204
    .line 205
    iput v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 206
    .line 207
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v4, "requestData, viewFrameRate = "

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v2, " and mViewFrameRate = "

    .line 221
    .line 222
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 226
    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v1, "allowCompatibleIpv6"

    .line 238
    .line 239
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    .line 244
    .line 245
    const-string v1, "componentType"

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentType:I

    .line 252
    .line 253
    const-string v1, "action"

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAction:Ljava/lang/String;

    .line 260
    .line 261
    const-string v1, "componentName"

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mComponentName:Ljava/lang/String;

    .line 268
    .line 269
    const-string v1, "userDeviceInfo"

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserDeviceInfo:Ljava/lang/String;

    .line 276
    .line 277
    const-string v1, "h264_sei_data_enable"

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSeiEnable:Z

    .line 285
    .line 286
    const-string v1, "is_change_stream_type"

    .line 287
    .line 288
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isChangeStreamType:Z

    .line 293
    .line 294
    const-string v1, "language_config"

    .line 295
    .line 296
    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->languageFromApp:Ljava/lang/String;

    .line 302
    .line 303
    const-string v1, "disableAutoStream"

    .line 304
    .line 305
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    .line 310
    .line 311
    const-string v1, "gid"

    .line 312
    .line 313
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mGid:Ljava/lang/String;

    .line 318
    .line 319
    const-string v1, "streamingMode"

    .line 320
    .line 321
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    iput v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    .line 326
    .line 327
    const-string v1, "keep_login_status"

    .line 328
    .line 329
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_1

    .line 334
    .line 335
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->keepLoginStatus:Ljava/lang/Boolean;

    .line 344
    .line 345
    goto :goto_0

    .line 346
    :cond_1
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->keepLoginStatus:Ljava/lang/Boolean;

    .line 347
    .line 348
    :goto_0
    const-string v1, "openMultiArchive"

    .line 349
    .line 350
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-eqz v4, :cond_2

    .line 355
    .line 356
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOpenMultiArchive:Ljava/lang/Boolean;

    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_2
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mOpenMultiArchive:Ljava/lang/Boolean;

    .line 368
    .line 369
    :goto_1
    const-string v1, "saveArchiveMultiArchive"

    .line 370
    .line 371
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_3

    .line 376
    .line 377
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveMultiArchive:Ljava/lang/Boolean;

    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_3
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveMultiArchive:Ljava/lang/Boolean;

    .line 389
    .line 390
    :goto_2
    const-string v1, "saveArchiveBidMultiArchive"

    .line 391
    .line 392
    invoke-static {p1, v1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveBidMultiArchive:Ljava/lang/String;

    .line 397
    .line 398
    const-string v1, "saveArchiveUidMultiArchive"

    .line 399
    .line 400
    invoke-static {p1, v1, v3}, Lcom/haima/hmcp/utils/Utils;->getStringFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaveArchiveUidMultiArchive:Ljava/lang/String;

    .line 405
    .line 406
    :try_start_0
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;

    .line 407
    .line 408
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_4

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Lcom/haima/hmcp/beans/SerializableMap;

    .line 419
    .line 420
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mTransmissionDataToSaas:Lcom/haima/hmcp/beans/SerializableMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .line 422
    goto :goto_3

    .line 423
    :catch_0
    move-exception v0

    .line 424
    sget-object v1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 425
    .line 426
    const-string v4, "get transmissionDataToSaas from bundle has Exception"

    .line 427
    .line 428
    invoke-static {v1, v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 429
    .line 430
    .line 431
    :cond_4
    :goto_3
    const-string v0, "isCustomPlayer"

    .line 432
    .line 433
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isCustomPlayer:Z

    .line 438
    .line 439
    const-string v0, "streamType"

    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->streamType:Ljava/lang/String;

    .line 446
    .line 447
    const-string v0, "keepAliveTimeSeconds"

    .line 448
    .line 449
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    const/4 v4, -0x1

    .line 454
    if-eqz v1, :cond_5

    .line 455
    .line 456
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mKeepAliveTimeSeconds:Ljava/lang/Integer;

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_5
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mKeepAliveTimeSeconds:Ljava/lang/Integer;

    .line 468
    .line 469
    :goto_4
    const-string v0, "devicePixelRatio"

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_6

    .line 476
    .line 477
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_6
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 489
    .line 490
    :goto_5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCTokenTimeStamp(Landroid/os/Bundle;)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->cTokenTimeStamp:Ljava/lang/Long;

    .line 495
    .line 496
    const-string v0, "cutOutHeightPercent"

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->setCutOutHeightPercent([F)V

    .line 503
    .line 504
    .line 505
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 506
    .line 507
    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 508
    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_7

    .line 514
    .line 515
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 516
    .line 517
    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_9

    .line 524
    .line 525
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 526
    .line 527
    if-eqz v0, :cond_8

    .line 528
    .line 529
    sget v1, Lcom/haima/hmcp/R$string;->Error_000002:I

    .line 530
    .line 531
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    const-string v4, "100000002"

    .line 536
    .line 537
    invoke-interface {v0, v4, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPlayerError(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_8
    new-instance v0, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 541
    .line 542
    const-string v6, "100000002"

    .line 543
    .line 544
    const-string v7, "userInfo2.userId or userToken is empty"

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    const-string v9, ""

    .line 548
    .line 549
    const/4 v10, 0x0

    .line 550
    move-object v5, v0

    .line 551
    invoke-direct/range {v5 .. v10}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 552
    .line 553
    .line 554
    const-string v1, "12233"

    .line 555
    .line 556
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :cond_9
    const-string v0, "battle"

    .line 564
    .line 565
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_b

    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    instance-of v1, v0, Lcom/haima/hmcp/beans/Battle;

    .line 576
    .line 577
    if-eqz v1, :cond_c

    .line 578
    .line 579
    check-cast v0, Lcom/haima/hmcp/beans/Battle;

    .line 580
    .line 581
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 582
    .line 583
    iput-object v0, v1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 584
    .line 585
    iget v0, v0, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 586
    .line 587
    const/4 v4, 0x1

    .line 588
    if-ne v0, v4, :cond_a

    .line 589
    .line 590
    goto :goto_6

    .line 591
    :cond_a
    const/4 v4, 0x0

    .line 592
    :goto_6
    iput v4, v1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_b
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/BattleMode;->reset()V

    .line 598
    .line 599
    .line 600
    :cond_c
    :goto_7
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isChangeStreamType:Z

    .line 601
    .line 602
    if-eqz v0, :cond_d

    .line 603
    .line 604
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 605
    .line 606
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$2;

    .line 607
    .line 608
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/HmcpRequestManager$2;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V

    .line 612
    .line 613
    .line 614
    return-void

    .line 615
    :cond_d
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAppName:Ljava/lang/String;

    .line 616
    .line 617
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$3;

    .line 618
    .line 619
    invoke-direct {v1, p0}, Lcom/haima/hmcp/business/HmcpRequestManager$3;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getExtraConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V

    .line 623
    .line 624
    .line 625
    const-string v0, "finishByServer"

    .line 626
    .line 627
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-eqz v1, :cond_e

    .line 632
    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 634
    .line 635
    .line 636
    move-result p1

    .line 637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFinishByServer:Ljava/lang/Boolean;

    .line 642
    .line 643
    goto :goto_8

    .line 644
    :cond_e
    iput-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFinishByServer:Ljava/lang/Boolean;

    .line 645
    .line 646
    :goto_8
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV3(Z)V

    .line 647
    .line 648
    .line 649
    return-void
.end method

.method public requestPinCode(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 7

    .line 1
    const-string v0, "13307"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/PinCodeParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/PinCodeParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v3, Lcom/haima/hmcp/beans/PinCodeParameters;->cid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    const/16 v2, 0xdc

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$36;

    .line 32
    .line 33
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$36;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnContronListener;)V

    .line 34
    .line 35
    .line 36
    const-string p2, "12200"

    .line 37
    .line 38
    const-class v2, Lcom/haima/hmcp/beans/LivingResult;

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public requestStartForceKeepAlive(Ljava/lang/String;JLcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V
    .locals 7

    .line 1
    const-string v0, "13318"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v3, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;->cid:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p2, v3, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;->hangupTimeSeconds:J

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "timeframe--requestStartForceKeepAlive--request-->"

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x134

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    move-object v1, p0

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-static {p1, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p3, Lcom/haima/hmcp/business/HmcpRequestManager$41;

    .line 78
    .line 79
    invoke-direct {p3, p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager$41;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V

    .line 80
    .line 81
    .line 82
    const-string p4, "13080"

    .line 83
    .line 84
    const-class v0, Lcom/haima/hmcp/beans/LivingResult;

    .line 85
    .line 86
    invoke-virtual {p1, p4, p2, v0, p3}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public requestStartLiving(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
    .locals 7

    .line 1
    const-string v0, "13301"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/LivingParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/LivingParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, v3, Lcom/haima/hmcp/beans/LivingParameters;->livingId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, v3, Lcom/haima/hmcp/beans/LivingParameters;->cid:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, v3, Lcom/haima/hmcp/beans/LivingParameters;->pushStreamUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    const/16 v2, 0xdb

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance p3, Lcom/haima/hmcp/business/HmcpRequestManager$33;

    .line 36
    .line 37
    invoke-direct {p3, p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager$33;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnLivingListener;)V

    .line 38
    .line 39
    .line 40
    const-string p4, "12190"

    .line 41
    .line 42
    const-class v0, Lcom/haima/hmcp/beans/LivingResult;

    .line 43
    .line 44
    invoke-virtual {p2, p4, p1, v0, p3}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public requestStartRecordStream(Ljava/lang/String;Lcom/haima/hmcp/listeners/StartRecordStreamListener;)V
    .locals 7

    .line 1
    const-string v0, "13335"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/StartRecordStreamParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/StartRecordStreamParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, v3, Lcom/haima/hmcp/beans/StartRecordStreamParameters;->cid:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    const/16 v2, 0x140

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$29;

    .line 36
    .line 37
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$29;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/StartRecordStreamListener;)V

    .line 38
    .line 39
    .line 40
    const-string p2, "13200"

    .line 41
    .line 42
    const-class v2, Lcom/haima/hmcp/beans/BaseResultImp;

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public requestStopForceKeepAlive(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V
    .locals 8

    .line 1
    const-string v0, "13325"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v3, Lcom/haima/hmcp/beans/ForceKeepAliveParameters;->cid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v7, "timeframe--requestStopForceKeepAlive--request-->"

    .line 25
    .line 26
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x135

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    move-object v1, p0

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$42;

    .line 76
    .line 77
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$42;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V

    .line 78
    .line 79
    .line 80
    const-string p2, "13090"

    .line 81
    .line 82
    const-class v2, Lcom/haima/hmcp/beans/LivingResult;

    .line 83
    .line 84
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public requestStopLiving(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
    .locals 7

    .line 1
    const-string v0, "13304"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/LivingParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/LivingParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v3, Lcom/haima/hmcp/beans/LivingParameters;->cid:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, v3, Lcom/haima/hmcp/beans/LivingParameters;->livingId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    const/16 v2, 0xdf

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v1, p0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$35;

    .line 34
    .line 35
    invoke-direct {v0, p0, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$35;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnLivingListener;)V

    .line 36
    .line 37
    .line 38
    const-string p3, "12230"

    .line 39
    .line 40
    const-class v1, Lcom/haima/hmcp/beans/LivingResult;

    .line 41
    .line 42
    invoke-virtual {p2, p3, p1, v1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public requestX86ControlDistribute(Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ControlInfo;",
            ">;",
            "Lcom/haima/hmcp/listeners/OnContronListener;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "requestX86ControlDistribute error  controls is empty"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "12255"

    .line 11
    .line 12
    const-string p2, "control info is null"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p3, p1, v0, p2}, Lcom/haima/hmcp/listeners/OnContronListener;->controlDistribute(ZLjava/util/List;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v3, Lcom/haima/hmcp/beans/ControlDistributeParam;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/haima/hmcp/beans/ControlDistributeParam;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-virtual {v3, v0, v1}, Lcom/haima/hmcp/beans/ControlDistributeParam;->setCid(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p2}, Lcom/haima/hmcp/beans/ControlDistributeParam;->setControlInfos(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "Formal"

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/beans/ControlDistributeParam;->setEnvType(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x130

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    move-object v1, p0

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$38;

    .line 64
    .line 65
    invoke-direct {v0, p0, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$38;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnContronListener;)V

    .line 66
    .line 67
    .line 68
    const-string p3, ""

    .line 69
    .line 70
    const-class v1, Lcom/haima/hmcp/beans/ControlDistributeResult;

    .line 71
    .line 72
    invoke-virtual {p2, p3, p1, v1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public resetHttpStatus()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->setIsStop(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mClientInfo:Lcom/haima/hmcp/beans/ClientInfo;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/haima/hmcp/beans/ClientInfo;->accessKeyId:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "setAccessKeyId:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " Failed"

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public setAccessReconnectURL(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessReconnectURL:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setCloudPlayInfo(Lcom/haima/hmcp/beans/CloudPlayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setConfigInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mConfigInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCutOutHeightPercent([F)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget v0, p1, v0

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousLeft:F

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAnomalousRight:F

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setDeviceInfo(Lcom/haima/hmcp/beans/DeviceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceInfo:Lcom/haima/hmcp/beans/DeviceInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setDevicePixelRatio(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDevicePixelRation:Ljava/lang/Integer;

    .line 12
    .line 13
    :goto_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "setDevicePixelRatio :"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setDisableAutoStream(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDisableAutoStream:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExtraData(Lcom/haima/hmcp/beans/IntentExtraData;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "IntentExtraData extraData = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mExtraData:Lcom/haima/hmcp/beans/IntentExtraData;

    .line 24
    .line 25
    return-void
.end method

.method public setHighBitrateEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setHmcpSaasRequestListener(Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAhead(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAhead:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move-object/from16 v0, p8

    .line 10
    .line 11
    new-instance v2, Lcom/haima/hmcp/beans/RequestReleaseCid;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/haima/hmcp/beans/RequestReleaseCid;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v9, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->cid:Ljava/lang/String;

    .line 17
    .line 18
    move-object/from16 v1, p3

    .line 19
    .line 20
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->cToken:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v7, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->pkgName:Ljava/lang/String;

    .line 23
    .line 24
    move-object/from16 v1, p5

    .line 25
    .line 26
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 27
    .line 28
    iput-object v10, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->appChannel:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "Formal"

    .line 31
    .line 32
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->envType:Ljava/lang/String;

    .line 33
    .line 34
    move-object/from16 v1, p7

    .line 35
    .line 36
    iput-object v1, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->timestamp:Ljava/lang/Long;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iput-object v0, v2, Lcom/haima/hmcp/beans/RequestReleaseCid;->playingTime:Ljava/lang/Long;

    .line 41
    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sget-object v11, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v12, "timeframe--setReleaseCid--request-->"

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v11, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0xda

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    move-object/from16 v0, p0

    .line 72
    .line 73
    move-object/from16 v6, p6

    .line 74
    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJLjava/lang/String;)Lcom/haima/hmcp/beans/PostJson;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {v13}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v11, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v11, Lcom/haima/hmcp/beans/ReportStopCloudService;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, ""

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v11, v0, v7, v10}, Lcom/haima/hmcp/beans/ReportStopCloudService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v0, "12201"

    .line 124
    .line 125
    invoke-static {v11}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-class v12, Lcom/haima/hmcp/beans/RequestReleaseCidResult;

    .line 133
    .line 134
    invoke-direct {v8, v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCuRetryPolicy(Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v0, v8, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    new-instance v15, Lcom/haima/hmcp/business/HmcpRequestManager$25;

    .line 145
    .line 146
    move-object v0, v15

    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    move-object/from16 v3, p2

    .line 150
    .line 151
    move-object/from16 v4, p1

    .line 152
    .line 153
    move-object/from16 v5, p4

    .line 154
    .line 155
    move-object/from16 v6, p9

    .line 156
    .line 157
    move-object v7, v11

    .line 158
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager$25;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/business/IRetryPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;Lcom/haima/hmcp/beans/ReportStopCloudService;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "12180"

    .line 162
    .line 163
    invoke-virtual {v14, v0, v13, v12, v15}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public setResolutionID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getNetTestData(Ljava/lang/String;J)Lcom/haima/hmcp/beans/NetTestData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p1, Lcom/haima/hmcp/beans/NetTestData;->responseTime:J

    .line 12
    .line 13
    iput-object p2, p1, Lcom/haima/hmcp/beans/NetTestData;->result:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p1, Lcom/haima/hmcp/beans/NetTestData;->msg:Ljava/lang/String;

    .line 16
    .line 17
    sub-long/2addr v0, p4

    .line 18
    iput-wide v0, p1, Lcom/haima/hmcp/beans/NetTestData;->time:J

    .line 19
    .line 20
    const-string p3, "fail"

    .line 21
    .line 22
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestUtil:Lcom/haima/hmcp/utils/NetTestUtil;

    .line 29
    .line 30
    iget-object p3, p1, Lcom/haima/hmcp/beans/NetTestData;->url:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p4, Lcom/haima/hmcp/business/HmcpRequestManager$50;

    .line 33
    .line 34
    invoke-direct {p4, p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$50;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/NetTestData;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3, p4}, Lcom/haima/hmcp/utils/NetTestUtil;->isNetWorkAvailableOfDNS(Ljava/lang/String;Ljava/lang/Comparable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 41
    .line 42
    monitor-enter p2

    .line 43
    :try_start_0
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget p4, p1, Lcom/haima/hmcp/beans/NetTestData;->index:I

    .line 46
    .line 47
    invoke-virtual {p3, p4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    monitor-exit p2

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public setStartNetData(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget v1, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "."

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/haima/hmcp/countly/CountlyUtil;->mSEQ:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, ""

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, p1, p3, p4}, Lcom/haima/hmcp/business/HmcpRequestManager;->getNetTestData(Ljava/lang/String;J)Lcom/haima/hmcp/beans/NetTestData;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lcom/haima/hmcp/beans/NetTestData;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/haima/hmcp/beans/NetTestData;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_1
    iput-object p1, v1, Lcom/haima/hmcp/beans/NetTestData;->action:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, v1, Lcom/haima/hmcp/beans/NetTestData;->cid:Ljava/lang/String;

    .line 60
    .line 61
    sget-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mUID:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, v1, Lcom/haima/hmcp/beans/NetTestData;->uid:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p2, v1, Lcom/haima/hmcp/beans/NetTestData;->url:Ljava/lang/String;

    .line 66
    .line 67
    iput-wide p3, v1, Lcom/haima/hmcp/beans/NetTestData;->startTime:J

    .line 68
    .line 69
    iput-object v0, v1, Lcom/haima/hmcp/beans/NetTestData;->transId:Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p1, v1, Lcom/haima/hmcp/beans/NetTestData;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, ""

    .line 76
    .line 77
    iput-object p1, v1, Lcom/haima/hmcp/beans/NetTestData;->result:Ljava/lang/String;

    .line 78
    .line 79
    const-wide/16 p1, 0x0

    .line 80
    .line 81
    iput-wide p1, v1, Lcom/haima/hmcp/beans/NetTestData;->responseTime:J

    .line 82
    .line 83
    iput-wide p1, v1, Lcom/haima/hmcp/beans/NetTestData;->time:J

    .line 84
    .line 85
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 86
    .line 87
    monitor-enter p1

    .line 88
    :try_start_0
    iget p2, v1, Lcom/haima/hmcp/beans/NetTestData;->index:I

    .line 89
    .line 90
    if-gez p2, :cond_2

    .line 91
    .line 92
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->netTestList:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :goto_1
    monitor-exit p1

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p2
.end method

.method public setStreamingModeRequest(ILcom/haima/hmcp/listeners/OnSetStreamingModeListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mIsAllowCompatibleIPV6:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$9;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;ILcom/haima/hmcp/listeners/OnSetStreamingModeListener;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->setStreamingModeRequest(Ljava/lang/String;ILcom/haima/hmcp/listeners/OnSetStreamingModeListener;)V

    :goto_0
    return-void
.end method

.method public setStreamingModeRequest(Ljava/lang/String;ILcom/haima/hmcp/listeners/OnSetStreamingModeListener;)V
    .locals 9

    .line 4
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamingModeRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    if-nez v0, :cond_0

    const-string p2, "setStreamingModeRequest-----mVolleyManager==null"

    .line 6
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setStreamingModeRequest() mVolleyManager == null; isStopPlay = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 8
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iput p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    const-string p2, "12727"

    const-string v0, "==setStreamingModeRequest begin=="

    .line 11
    invoke-static {p2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lcom/haima/hmcp/beans/SetStreamingModeParameters;

    invoke-direct {v3}, Lcom/haima/hmcp/beans/SetStreamingModeParameters;-><init>()V

    .line 13
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    iput-object p2, v3, Lcom/haima/hmcp/beans/SetStreamingModeParameters;->cid:Ljava/lang/String;

    .line 14
    iget p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mStreamingMode:I

    iput p2, v3, Lcom/haima/hmcp/beans/SetStreamingModeParameters;->streamingMode:I

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeframe--setStreamingModeRequest--request-->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/haima/hmcp/beans/SetStreamingModeParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xed

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v5, v7

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    move-result-object p2

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG_INITSDK:Ljava/lang/String;

    sput-object p1, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    move-result-object p1

    new-instance v0, Lcom/haima/hmcp/business/HmcpRequestManager$10;

    invoke-direct {v0, p0, v7, v8, p3}, Lcom/haima/hmcp/business/HmcpRequestManager$10;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSetStreamingModeListener;)V

    const-string p3, "12370"

    const-class v1, Lcom/haima/hmcp/beans/SetStreamingModeResult;

    invoke-virtual {p1, p3, p2, v1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    return-void
.end method

.method public setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 2
    .line 3
    new-instance v0, Lcom/haima/hmcp/beans/UserInfo2;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 17
    .line 18
    iget v1, p1, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    .line 19
    .line 20
    iput v1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    .line 21
    .line 22
    iget p1, p1, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    .line 23
    .line 24
    iput p1, v0, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 25
    .line 26
    return-void
.end method

.method public setViewResolutionHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setViewResolutionWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewResolutionWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setmPlayTime(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mPlayTime:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public speedTest(Ljava/lang/String;ILcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)Lcom/haima/hmcp/utils/FileDownloadUtil;
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "speed test->start to speed test"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->url:Ljava/lang/String;

    .line 14
    .line 15
    if-lez p2, :cond_0

    .line 16
    .line 17
    :try_start_0
    iput p2, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->playTime:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    const-string p2, "bw_check_duration"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 33
    .line 34
    const-string v1, "bw_check_skipNumber"

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 43
    .line 44
    const-string v2, "bw_check_peakRateCoefficient"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mMetaMap:Ljava/util/HashMap;

    .line 53
    .line 54
    const-string v3, "bw_check_standardDeviationCoefficient"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    float-to-int p1, p1

    .line 73
    iput p1, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->playTime:I

    .line 74
    .line 75
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    float-to-int p1, p1

    .line 86
    iput p1, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->skipNumber:I

    .line 87
    .line 88
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->peakRateCoefficient:F

    .line 99
    .line 100
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->standardDeviationCoefficient:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    const-string p1, "speedTest::NumberFormatException"

    .line 114
    .line 115
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest()V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    :try_start_1
    const-string p2, "status"

    .line 131
    .line 132
    const-string v1, "stop"

    .line 133
    .line 134
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    const-string p2, "stopByApp"

    .line 138
    .line 139
    const-string v1, "0"

    .line 140
    .line 141
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    const-string p2, "msg"

    .line 145
    .line 146
    const-string v1, "stop last speed task"

    .line 147
    .line 148
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_1
    move-exception p2

    .line 153
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_1
    const-string p2, "13704"

    .line 157
    .line 158
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 166
    .line 167
    const-string p2, "speed test->stop the last speed test task"

    .line 168
    .line 169
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    new-instance p1, Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 173
    .line 174
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-direct {p1, p2}, Lcom/haima/hmcp/utils/FileDownloadUtil;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->setURLInfo(Lcom/haima/hmcp/utils/SpeedGather$URLInfo;)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {p1, p2, p3}, Lcom/haima/hmcp/utils/FileDownloadUtil;->speedTest(Landroid/content/Context;Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)V

    .line 185
    .line 186
    .line 187
    return-object p1
.end method

.method public stopCloudService()V
    .locals 12

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==stopCloudService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "12091"

    .line 9
    .line 10
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mHttpManager:Lcom/haima/hmcp/business/IHmcpHttp;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, v1}, Lcom/haima/hmcp/business/IHmcpHttp;->setIsStop(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const-string v1, "timeframe--stopCloudService--request-->mCloudId isEmpty"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "mCloudId is null"

    .line 41
    .line 42
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v4, Lcom/haima/hmcp/beans/StopServiceParameters;

    .line 47
    .line 48
    invoke-direct {v4}, Lcom/haima/hmcp/beans/StopServiceParameters;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v2, v4, Lcom/haima/hmcp/beans/StopServiceParameters;->cloudId:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "Formal"

    .line 56
    .line 57
    iput-object v2, v4, Lcom/haima/hmcp/beans/StopServiceParameters;->envType:Ljava/lang/String;

    .line 58
    .line 59
    sget v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveMinSeconds:I

    .line 60
    .line 61
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, v4, Lcom/haima/hmcp/beans/StopServiceParameters;->archiveMinSeconds:I

    .line 66
    .line 67
    sput v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mArchiveMinSeconds:I

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    const/16 v2, 0xca

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->preCheck(I)Lcom/haima/hmcp/beans/RequestPreCheck;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-boolean v3, v2, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    .line 80
    .line 81
    const-string v10, "timeframe--stopCloudService--request-->"

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    const/16 v3, 0xca

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    move-object v2, p0

    .line 90
    move-wide v6, v8

    .line 91
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "202 request not allow, cause: "

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v2, v2, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object v2, v11

    .line 159
    :goto_0
    iput-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting:Z

    .line 160
    .line 161
    iput-object v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, ""

    .line 164
    .line 165
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v3, "HMCP_CID_VALUE"

    .line 174
    .line 175
    invoke-virtual {v1, v3, v0}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    if-nez v2, :cond_3

    .line 179
    .line 180
    invoke-direct {p0}, Lcom/haima/hmcp/business/HmcpRequestManager;->quitVolleyManager()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$22;

    .line 191
    .line 192
    invoke-direct {v1, p0, v8, v9}, Lcom/haima/hmcp/business/HmcpRequestManager$22;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;J)V

    .line 193
    .line 194
    .line 195
    const-string v3, "12020"

    .line 196
    .line 197
    const-class v4, Lcom/haima/hmcp/beans/StopServiceResult;

    .line 198
    .line 199
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public stopRecordStream(Ljava/lang/String;Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
    .locals 7

    .line 1
    const-string v0, "13337"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/StopRecordStreamParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/StopRecordStreamParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, v3, Lcom/haima/hmcp/beans/StopRecordStreamParameters;->cid:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    const/16 v2, 0x141

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/haima/hmcp/business/HmcpRequestManager$30;

    .line 36
    .line 37
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager$30;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V

    .line 38
    .line 39
    .line 40
    const-string p2, "13210"

    .line 41
    .line 42
    const-class v2, Lcom/haima/hmcp/beans/StopRecordStreamResult;

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public stopSpeedTesting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "speed test->stop speed test called"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public switchResolution(Ljava/lang/String;II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "switchResolution===resolutionID == >"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ": mBitRate = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " viewFrameRate="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mResolutionID:Ljava/lang/String;

    .line 40
    .line 41
    iput p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mBitRate:I

    .line 42
    .line 43
    if-lez p3, :cond_0

    .line 44
    .line 45
    iput p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mViewFrameRate:I

    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x2

    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p0, p2, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IIZ)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public updateCTokenData(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager;->cTokenTimeStamp:Ljava/lang/Long;

    .line 4
    .line 5
    return-void
.end method

.method public updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const/16 v0, 0xd6

    .line 8
    .line 9
    invoke-virtual {v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->preCheck(I)Lcom/haima/hmcp/beans/RequestPreCheck;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v7, v1}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/beans/RequestPreCheck;->msg:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v9, Lcom/haima/hmcp/beans/UserInfo2;

    .line 31
    .line 32
    invoke-direct {v9}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "userid"

    .line 36
    .line 37
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, v9, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mUserInfo2:Lcom/haima/hmcp/beans/UserInfo2;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, v9, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 50
    .line 51
    :cond_2
    const-string v0, "cToken"

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "protoData"

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    new-instance v11, Lcom/haima/hmcp/beans/RequestUpdataUID;

    .line 64
    .line 65
    invoke-direct {v11}, Lcom/haima/hmcp/beans/RequestUpdataUID;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    const-string v1, "playTime"

    .line 73
    .line 74
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->playingTime:J

    .line 79
    .line 80
    iput-object v9, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->userInfo:Lcom/haima/hmcp/beans/UserInfo2;

    .line 81
    .line 82
    iget-object v1, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    iget-object v1, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->cloudId:Ljava/lang/String;

    .line 93
    .line 94
    :cond_3
    const-string v1, "message"

    .line 95
    .line 96
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->tip:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v8, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->protoData:Ljava/lang/String;

    .line 103
    .line 104
    sget v1, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 105
    .line 106
    iput v1, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->sdkType:I

    .line 107
    .line 108
    iput-object v0, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->cToken:Ljava/lang/String;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-direct {v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSdkAbility(Z)[J

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->sdkAbility:[J

    .line 116
    .line 117
    invoke-direct/range {p0 .. p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCTokenTimeStamp(Landroid/os/Bundle;)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    iput-object v14, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->timestamp:Ljava/lang/Long;

    .line 122
    .line 123
    const-string v0, "finishByServer"

    .line 124
    .line 125
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, v11, Lcom/haima/hmcp/beans/RequestUpdataUID;->finishByServer:Ljava/lang/Boolean;

    .line 140
    .line 141
    :cond_4
    sget-object v15, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v4, "timeframe--updateGameUID--request-->"

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v15, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/16 v1, 0xd6

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    move-object/from16 v0, p0

    .line 167
    .line 168
    move-object v2, v11

    .line 169
    move-object v6, v4

    .line 170
    move-wide v4, v12

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-static {v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v15, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v10, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v10, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    new-instance v6, Lcom/haima/hmcp/business/HmcpRequestManager$27;

    .line 204
    .line 205
    move-object v0, v6

    .line 206
    move-object/from16 v1, p0

    .line 207
    .line 208
    move-wide v2, v12

    .line 209
    move-object/from16 v4, p2

    .line 210
    .line 211
    move-object v12, v5

    .line 212
    move-object v5, v8

    .line 213
    move-object v13, v6

    .line 214
    move-object/from16 v6, p1

    .line 215
    .line 216
    move-object v7, v14

    .line 217
    move-object v8, v11

    .line 218
    invoke-direct/range {v0 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager$27;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnUpdataGameUIDListener;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Long;Lcom/haima/hmcp/beans/RequestUpdataUID;Lcom/haima/hmcp/beans/UserInfo2;)V

    .line 219
    .line 220
    .line 221
    const-string v0, "12140"

    .line 222
    .line 223
    const-class v1, Lcom/haima/hmcp/beans/RequestUpdataUIDResult;

    .line 224
    .line 225
    invoke-virtual {v15, v0, v12, v1, v13}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public updateInstanceTimeRequest(Ljava/lang/String;IILcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;)V
    .locals 7

    .line 1
    const-string v0, "12256"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/haima/hmcp/beans/UpdateInstanceTimeParameters;

    .line 7
    .line 8
    invoke-direct {v3}, Lcom/haima/hmcp/beans/UpdateInstanceTimeParameters;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v3, Lcom/haima/hmcp/beans/UpdateInstanceTimeParameters;->cid:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, v3, Lcom/haima/hmcp/beans/UpdateInstanceTimeParameters;->keepAliveTimeSeconds:I

    .line 14
    .line 15
    iput p3, v3, Lcom/haima/hmcp/beans/UpdateInstanceTimeParameters;->noInputTimeSeconds:I

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    sget-object p1, Lcom/haima/hmcp/business/HmcpRequestManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "timeframe--updateInstanceTimeRequest--request-->"

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0xeb

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v1, p0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPostJson(ILcom/haima/hmcp/beans/IParameter;ZJ)Lcom/haima/hmcp/beans/PostJson;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-static {p1, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getHttpManager(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p3, Lcom/haima/hmcp/business/HmcpRequestManager$47;

    .line 80
    .line 81
    invoke-direct {p3, p0, p4}, Lcom/haima/hmcp/business/HmcpRequestManager$47;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;)V

    .line 82
    .line 83
    .line 84
    const-string p4, "12350"

    .line 85
    .line 86
    const-class v0, Lcom/haima/hmcp/beans/BaseResultImp;

    .line 87
    .line 88
    invoke-virtual {p1, p4, p2, v0, p3}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
