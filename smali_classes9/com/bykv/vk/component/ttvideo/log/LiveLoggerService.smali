.class public Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;
    }
.end annotation


# static fields
.field private static final INTERVAL:J = 0xea60L

.field public static final LIVE_SDK_VERSION:Ljava/lang/String; = "1.4.6.31-lite"

.field private static final LOG_REPORT_VERSION:Ljava/lang/String; = "5"

.field public static final MONITOR_LOG_TYPE:Ljava/lang/String; = "live_client_monitor_log"

.field private static final MSG_DNS:I = 0x68

.field private static final MSG_LOG_SCHEDULE:I = 0x65

.field private static final MSG_NTP_TIME_SYNC:I = 0x67

.field private static final MSG_SESSION_SERIES_SCHEDULE:I = 0x66

.field private static final PRODUCT_LINE:Ljava/lang/String; = "live"

.field public static final RTC_MONITOR_LOG_TYPE:Ljava/lang/String; = "live_webrtc_monitor_log"

.field private static final SESSION_TIME_SERIES_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "com.bykv.vk.component.ttvideo.log.LiveLoggerService"


# instance fields
.field private final TYPE_DATA_LOST:I

.field private final TYPE_DATA_REPEAT:I

.field private final TYPE_SEI_INDEX_ROLLBACK:I

.field private final TYPE_SEI_LOST:I

.field private final TYPE_SEI_NOT_AVAIL:I

.field private final VIDEO_DTS_QUEUE_MAX_SIZE:I

.field public mABRListMatch:I

.field public mAbrStrategy:Ljava/lang/String;

.field public mAbrSwitchCost:J

.field public mAbrSwitchCount:I

.field public mAbrSwitchCountInfo:Ljava/lang/String;

.field public mAbrSwitchInfo:Ljava/lang/String;

.field private mAudioBufferTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioDecodeStallTotalCount:J

.field private mAudioDecodeStallTotalTime:J

.field private mAudioDemuxStallTotalCount:J

.field private mAudioDemuxStallTotalTime:J

.field private mAudioRenderStallTotalCount:J

.field private mAudioRenderStallTotalTime:J

.field public mAudioTimescaleEnable:I

.field public mAutoUsingResolution:Ljava/lang/String;

.field public mBitRateAbnormalType:I

.field public mCatchSpeed:F

.field public mCdnAbrSwitchCode:I

.field private mCdnIp:Ljava/lang/String;

.field private mCdnPlayURL:Ljava/lang/String;

.field public mCheckBufferingEndAdvanceEnable:I

.field public mCheckBufferingEndIgnoreVideo:I

.field private mChipBoard:Ljava/lang/String;

.field private mChipHardware:Ljava/lang/String;

.field public mCodecName:Ljava/lang/String;

.field public mCodecNotSame:I

.field public mCodecType:Ljava/lang/String;

.field private mCommonFlag:Ljava/lang/String;

.field public mContainerFps:F

.field private mContext:Landroid/content/Context;

.field public mCurAudioBufferTime:J

.field public mCurDownloadSpeed:J

.field private mCurNetExtraInfo:Ljava/lang/String;

.field private mCurNetType:I

.field public mCurVideoBufferTime:J

.field private mCurrentPlayURL:Ljava/lang/String;

.field public mDefaultCodecID:I

.field public mDefaultResBitrate:I

.field public mDisableVideoRender:I

.field public mDnsIp:Ljava/lang/String;

.field private mDownloadSpeedTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableCheckSei:Z

.field private mEnableCheckSilenceInterval:Z

.field public mEnableFastOpenStream:I

.field public mEnableHttpDns:Z

.field public mEnableHurry:Z

.field public mEnableLiveAbrCheckEnhance:I

.field public mEnableLiveIOPlay:I

.field public mEnableLowLatencyFLV:I

.field public mEnableMdlProto:I

.field public mEnableMiniSdp:I

.field public mEnableNTP:I

.field public mEnableNTPTask:I

.field public mEnableOpenMDL:I

.field public mEnableP2P:I

.field public mEnableReportSessionStop:I

.field public mEnableResolutionAutoDegrade:Z

.field public mEnableRtcPlay:I

.field public mEnableSeiCheck:Z

.field private mEnableSharp:Z

.field public mEnableSplitStream:I

.field public mEnableTcpFastOpen:I

.field public mEnableUploadSessionSeries:Z

.field public mEnterAction:Ljava/lang/String;

.field public mEnterMethod:Ljava/lang/String;

.field private mErrorCode:I

.field private mErrorRecoverCount:J

.field private mErrorRecoverTime:J

.field private mErrorStartTime:J

.field private mErrorTimeSeries:Lorg/json/JSONObject;

.field private mEvaluatorSymbol:Ljava/lang/String;

.field private mExpectedSeiCount:I

.field private mExpectedUniqueSeiCount:I

.field public mFCDNTranscodeMethod:I

.field public mFallbackType:I

.field public mFastOpenDuration:I

.field public mFirstAudioPacketDTS:J

.field private mFirstFramePrepareTime:J

.field private mFirstFrameRetryCount:I

.field private mFirstFrameTimestamp:J

.field public mFirstFrameView:J

.field private mFirstStallEndTime:J

.field private mFirstStallStartTime:J

.field private mHandler:Landroid/os/Handler;

.field public mHardDecodeEnable:Z

.field public mHasAbrInfo:Z

.field private mHasFirstFrame:Z

.field private mHasNTP:Z

.field private mHasUsedSharpen:Z

.field public mHaveResetPlayer:Z

.field public mHeight:I

.field private mHitNodeOptimizer:Z

.field private mHostAddr:Ljava/net/InetAddress;

.field public mHostNTPUrl:Ljava/lang/String;

.field public mHurryTime:I

.field private final mInterval:J

.field private mIpIsFromPlayerCore:Z

.field public mIsCdnAbrSwitch:Z

.field private mIsHitCache:Z

.field private mIsInErrorRecovering:Z

.field public mIsInMainLooper:I

.field private mIsPreview:Z

.field private mIsRemoteSorted:Z

.field private mIsStalling:Z

.field private mLastCheckDTS:J

.field public mLastDownloadSizeDelta:J

.field private mLastIndex:I

.field public mLastPrepareTime:J

.field public mLastResolution:Ljava/lang/String;

.field private mLastSeiIndex:I

.field private mLastSentFrames:I

.field public mLastTotalDownloadSize:J

.field private mLinkInfo:Ljava/lang/String;

.field private mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

.field public mLiveIOErrorMsg:Ljava/lang/String;

.field public mLiveIOP2P:I

.field public mLiveIOPlay:I

.field public mLiveIOVersion:Ljava/lang/String;

.field private mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

.field private mLogIndex:J

.field public mLogTotalCount:J

.field private mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

.field public mMDLVersion:Ljava/lang/String;

.field public mMaxCacheSeconds:I

.field public mMediaCodecAsyncInit:I

.field public mMuteAudio:I

.field private mNTPClient:Lcom/byazt/f/c;

.field private final mNTPInterval:J

.field private mNTPRunning:Z

.field private mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

.field public mNetworkTimeoutMs:I

.field public mNoSyncCount:I

.field public mNoSyncInfoLen:I

.field public mNoSyncInfoStr:Ljava/lang/String;

.field public mNoSyncPlayingCount:I

.field public mNoSyncPlayingInfoLen:I

.field public mNoSyncPlayingInfoStr:Ljava/lang/String;

.field public mNoSyncPlayingPtsDuration:J

.field public mNoSyncPlayingTimeDuration:J

.field public mNoSyncPtsDuration:J

.field public mNoSyncStartPts:J

.field public mNoSyncStartTime:J

.field public mNoSyncTimeDuration:J

.field private mOpenNodeOptimizer:Z

.field public mOptimizeBackupIps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginUrl:Ljava/lang/String;

.field public mP2PLoaderType:I

.field private mPlayerVersion:Ljava/lang/String;

.field public mPlayerVolumeSetting:F

.field private mPlayingAudioRenderStallCount:I

.field private mPlayingAudioRenderStallTime:I

.field private mPlayingStallCount:I

.field private mPlayingStallStartTime:J

.field private mPlayingStallTime:I

.field private mPlayingVideoRenderStallCount:I

.field private mPlayingVideoRenderStallTime:I

.field private mPreconnect:I

.field public mPreviousAudioPacketDTS:J

.field private mProjectKey:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mPushClientDefaultBitrate:I

.field private mPushClientHardwareEncode:I

.field private mPushClientHitNodeOptimize:I

.field private mPushClientMaxBitrate:I

.field private mPushClientMinBitrate:I

.field private mPushClientModel:Ljava/lang/String;

.field private mPushClientOSVersion:Ljava/lang/String;

.field private mPushClientPlatform:Ljava/lang/String;

.field private mPushClientPushProtocal:Ljava/lang/String;

.field private mPushClientQId:Ljava/lang/String;

.field private mPushClientSDKVersion:Ljava/lang/String;

.field private mPushClientStartTime:Ljava/lang/String;

.field private mQuicFlag:I

.field public mQuicMtu:I

.field public mQuicPadHello:I

.field public mQuicScfgConfig:I

.field public mQuicTimerVersion:I

.field private mReceivedSeiCount:I

.field private mReceivedUniqueSeiCount:I

.field private mRenderFailType:I

.field private mRenderFpsTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mRenderStartNotifyTimeStamp:J

.field public mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestUrl:Ljava/lang/String;

.field public mResBitrate:J

.field public mResolution:Ljava/lang/String;

.field private mRetryCount:I

.field private mRetryTotalCount:I

.field public mRtcDnsTimeStamp:J

.field public mRtcPlayFallBack:I

.field public mRtcPlayStopStatInfo:Ljava/lang/String;

.field private mRtcPlayingLogInterval:J

.field public mRtcSessionId:Ljava/lang/String;

.field public mRtcTcpConnectTimeStamp:J

.field public mRtcTcpFirstPackageTimeStamp:J

.field public mRtcTlsHandshakedTimeStamp:J

.field public mRtcUseSdkDns:I

.field public mRuleIds:Ljava/lang/String;

.field public mSRSuccess:Z

.field private mSdkParams:Ljava/lang/String;

.field private mSeiBitrateTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSeiFpsTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSeiHasBitrateAndFps:Z

.field private mSessionAudioRenderStallTotalCount:J

.field private mSessionAudioRenderStallTotalTime:J

.field public mSessionAudioRenderStartTime:J

.field private mSessionErrorCode:I

.field private mSessionErrorMsg:Ljava/lang/String;

.field private mSessionFirstStallEndTime:J

.field private mSessionFirstStallStartTime:J

.field public mSessionHasFirstFrame:Z

.field public mSessionId:Ljava/lang/String;

.field public mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

.field private mSessionNum:I

.field private mSessionRenderFailType:I

.field private mSessionStallTotalCount:J

.field private mSessionStallTotalTime:J

.field public mSessionStartTime:J

.field private mSessionVideoRenderStallTotalCount:J

.field private mSessionVideoRenderStallTotalTime:J

.field public mSessionVideoRenderStartTime:J

.field public mSetSurfaceCost:J

.field public mSetSurfaceTime:J

.field public mSettingsInfo:Ljava/lang/String;

.field public mSilenceDetectedCount:I

.field public mSlowPlayTime:I

.field public mSlowSpeed:F

.field public mSpeedSwitchCount:I

.field public mSpeedSwitchInfo:Ljava/lang/String;

.field public mStallCountThresOfResolutionDegrade:I

.field private mStallReason:J

.field public mStallRetryTimeInterval:J

.field private mStallStartTime:J

.field private mStallTimeSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStallTotalCount:J

.field private mStallTotalTime:J

.field public mStartDirectAfterPrepared:I

.field public mStartPlayBufferThres:J

.field private mStarted:Z

.field public mStreamData:Ljava/lang/String;

.field private mStreamFormat:Ljava/lang/String;

.field private mSuggestFormat:Ljava/lang/String;

.field private mSuggestProtocol:Ljava/lang/String;

.field public mTTNetNQEInfo:Ljava/lang/String;

.field public mTextureRenderError:I

.field public mTextureRenderFirstFrameTime:J

.field public mTimeDiff:J

.field public mTslTimeShift:I

.field public mUrlAbility:Ljava/lang/String;

.field public mUseExpectBitrate:I

.field public mUseLiveThreadPool:I

.field public mUseTextureRender:Z

.field public mUsedP2P:I

.field private mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDecodeStallTotalCount:J

.field private mVideoDecodeStallTotalTime:J

.field private mVideoDemuxStallTotalCount:J

.field private mVideoDemuxStallTotalTime:J

.field private mVideoRenderStallTotalCount:J

.field private mVideoRenderStallTotalTime:J

.field public mVolumeSetting:F

.field public mWidth:I

.field private playerFromStartToRtsFrame:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/VideoLiveManager;Lcom/bykv/vk/component/ttvideo/ILiveListener;JJLandroid/content/Context;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 7
    .line 8
    const-string v2, "none"

    .line 9
    .line 10
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnterMethod:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnterAction:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCommonFlag:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProjectKey:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurrentPlayURL:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIpIsFromPlayerCore:Z

    .line 25
    .line 26
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVersion:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsPreview:Z

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogIndex:J

    .line 33
    .line 34
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientSDKVersion:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPlatform:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientOSVersion:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientModel:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientStartTime:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v5, -0x1

    .line 47
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHardwareEncode:I

    .line 48
    .line 49
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMinBitrate:I

    .line 50
    .line 51
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMaxBitrate:I

    .line 52
    .line 53
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientDefaultBitrate:I

    .line 54
    .line 55
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHitNodeOptimize:I

    .line 56
    .line 57
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPushProtocal:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientQId:Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, ""

    .line 62
    .line 63
    iput-object v6, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLinkInfo:Ljava/lang/String;

    .line 64
    .line 65
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOpenNodeOptimizer:Z

    .line 66
    .line 67
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEvaluatorSymbol:Ljava/lang/String;

    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHitNodeOptimizer:Z

    .line 70
    .line 71
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsRemoteSorted:Z

    .line 72
    .line 73
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsHitCache:Z

    .line 74
    .line 75
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecType:Ljava/lang/String;

    .line 76
    .line 77
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHardDecodeEnable:Z

    .line 78
    .line 79
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecName:Ljava/lang/String;

    .line 80
    .line 81
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableHurry:Z

    .line 82
    .line 83
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHurryTime:I

    .line 84
    .line 85
    const/high16 v7, -0x40800000    # -1.0f

    .line 86
    .line 87
    iput v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCatchSpeed:F

    .line 88
    .line 89
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowPlayTime:I

    .line 90
    .line 91
    iput v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowSpeed:F

    .line 92
    .line 93
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchCount:I

    .line 94
    .line 95
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchInfo:Ljava/lang/String;

    .line 96
    .line 97
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartPlayBufferThres:J

    .line 98
    .line 99
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFastOpenDuration:I

    .line 100
    .line 101
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndIgnoreVideo:I

    .line 102
    .line 103
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartDirectAfterPrepared:I

    .line 104
    .line 105
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndAdvanceEnable:I

    .line 106
    .line 107
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioTimescaleEnable:I

    .line 108
    .line 109
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRuleIds:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionId:Ljava/lang/String;

    .line 112
    .line 113
    const-string v8, "flv"

    .line 114
    .line 115
    iput-object v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 116
    .line 117
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 118
    .line 119
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 120
    .line 121
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 122
    .line 123
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 124
    .line 125
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 126
    .line 127
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 128
    .line 129
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 130
    .line 131
    const-wide/16 v8, -0x1

    .line 132
    .line 133
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallReason:J

    .line 134
    .line 135
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 136
    .line 137
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 138
    .line 139
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 140
    .line 141
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 142
    .line 143
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 144
    .line 145
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 146
    .line 147
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 148
    .line 149
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 150
    .line 151
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 152
    .line 153
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 154
    .line 155
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 156
    .line 157
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 158
    .line 159
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 160
    .line 161
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallStartTime:J

    .line 162
    .line 163
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallEndTime:J

    .line 164
    .line 165
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 166
    .line 167
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 168
    .line 169
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSilenceInterval:Z

    .line 170
    .line 171
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSilenceDetectedCount:I

    .line 172
    .line 173
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSharp:Z

    .line 174
    .line 175
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSei:Z

    .line 176
    .line 177
    const-wide/16 v10, 0x2710

    .line 178
    .line 179
    iput-wide v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallRetryTimeInterval:J

    .line 180
    .line 181
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInErrorRecovering:Z

    .line 182
    .line 183
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 184
    .line 185
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 186
    .line 187
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 188
    .line 189
    const/4 v10, 0x0

    .line 190
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPClient:Lcom/byazt/f/c;

    .line 191
    .line 192
    const-wide/32 v11, 0x493e0

    .line 193
    .line 194
    .line 195
    iput-wide v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPInterval:J

    .line 196
    .line 197
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurNetType:I

    .line 198
    .line 199
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurNetExtraInfo:Ljava/lang/String;

    .line 200
    .line 201
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 202
    .line 203
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTP:I

    .line 204
    .line 205
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTPTask:I

    .line 206
    .line 207
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 208
    .line 209
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableOpenMDL:I

    .line 210
    .line 211
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableP2P:I

    .line 212
    .line 213
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUsedP2P:I

    .line 214
    .line 215
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveIOPlay:I

    .line 216
    .line 217
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mP2PLoaderType:I

    .line 218
    .line 219
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMDLVersion:Ljava/lang/String;

    .line 220
    .line 221
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableMdlProto:I

    .line 222
    .line 223
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 224
    .line 225
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 226
    .line 227
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreconnect:I

    .line 228
    .line 229
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 230
    .line 231
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 232
    .line 233
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioBufferTimeSeries:Ljava/util/ArrayList;

    .line 234
    .line 235
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 236
    .line 237
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 238
    .line 239
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 240
    .line 241
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 242
    .line 243
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiHasBitrateAndFps:Z

    .line 244
    .line 245
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableHttpDns:Z

    .line 246
    .line 247
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMediaCodecAsyncInit:I

    .line 248
    .line 249
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultCodecID:I

    .line 250
    .line 251
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUrlAbility:Ljava/lang/String;

    .line 252
    .line 253
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableUploadSessionSeries:Z

    .line 254
    .line 255
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMaxCacheSeconds:I

    .line 256
    .line 257
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSplitStream:I

    .line 258
    .line 259
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTslTimeShift:I

    .line 260
    .line 261
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSeiCheck:Z

    .line 262
    .line 263
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableFastOpenStream:I

    .line 264
    .line 265
    const/4 v11, 0x1

    .line 266
    iput v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInMainLooper:I

    .line 267
    .line 268
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceCost:J

    .line 269
    .line 270
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceTime:J

    .line 271
    .line 272
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamData:Ljava/lang/String;

    .line 273
    .line 274
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderError:I

    .line 275
    .line 276
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSRSuccess:Z

    .line 277
    .line 278
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseTextureRender:Z

    .line 279
    .line 280
    iput v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mContainerFps:F

    .line 281
    .line 282
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderStartNotifyTimeStamp:J

    .line 283
    .line 284
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 285
    .line 286
    const-string v12, "tcp"

    .line 287
    .line 288
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 289
    .line 290
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 291
    .line 292
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicFlag:I

    .line 293
    .line 294
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOriginUrl:Ljava/lang/String;

    .line 295
    .line 296
    sget-object v12, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 297
    .line 298
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mChipBoard:Ljava/lang/String;

    .line 299
    .line 300
    sget-object v12, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 301
    .line 302
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mChipHardware:Ljava/lang/String;

    .line 303
    .line 304
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSettingsInfo:Ljava/lang/String;

    .line 305
    .line 306
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTTNetNQEInfo:Ljava/lang/String;

    .line 307
    .line 308
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableResolutionAutoDegrade:Z

    .line 309
    .line 310
    const-string v12, "rad"

    .line 311
    .line 312
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrStrategy:Ljava/lang/String;

    .line 313
    .line 314
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasAbrInfo:Z

    .line 315
    .line 316
    const-string v12, "origin"

    .line 317
    .line 318
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResolution:Ljava/lang/String;

    .line 319
    .line 320
    iput-object v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAutoUsingResolution:Ljava/lang/String;

    .line 321
    .line 322
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastResolution:Ljava/lang/String;

    .line 323
    .line 324
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResBitrate:J

    .line 325
    .line 326
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultResBitrate:I

    .line 327
    .line 328
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCount:I

    .line 329
    .line 330
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCountInfo:Ljava/lang/String;

    .line 331
    .line 332
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurDownloadSpeed:J

    .line 333
    .line 334
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurAudioBufferTime:J

    .line 335
    .line 336
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurVideoBufferTime:J

    .line 337
    .line 338
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCost:J

    .line 339
    .line 340
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchInfo:Ljava/lang/String;

    .line 341
    .line 342
    const/4 v12, 0x4

    .line 343
    iput v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallCountThresOfResolutionDegrade:I

    .line 344
    .line 345
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHaveResetPlayer:Z

    .line 346
    .line 347
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastDownloadSizeDelta:J

    .line 348
    .line 349
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastTotalDownloadSize:J

    .line 350
    .line 351
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstAudioPacketDTS:J

    .line 352
    .line 353
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreviousAudioPacketDTS:J

    .line 354
    .line 355
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameRetryCount:I

    .line 356
    .line 357
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFramePrepareTime:J

    .line 358
    .line 359
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastPrepareTime:J

    .line 360
    .line 361
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNetworkTimeoutMs:I

    .line 362
    .line 363
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicScfgConfig:I

    .line 364
    .line 365
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicMtu:I

    .line 366
    .line 367
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicPadHello:I

    .line 368
    .line 369
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicTimerVersion:I

    .line 370
    .line 371
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableTcpFastOpen:I

    .line 372
    .line 373
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLowLatencyFLV:I

    .line 374
    .line 375
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOptimizeBackupIps:Ljava/util/List;

    .line 376
    .line 377
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TYPE_DATA_LOST:I

    .line 378
    .line 379
    iput v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TYPE_DATA_REPEAT:I

    .line 380
    .line 381
    const/4 v13, 0x2

    .line 382
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TYPE_SEI_NOT_AVAIL:I

    .line 383
    .line 384
    const/4 v13, 0x3

    .line 385
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TYPE_SEI_LOST:I

    .line 386
    .line 387
    iput v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TYPE_SEI_INDEX_ROLLBACK:I

    .line 388
    .line 389
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 390
    .line 391
    const/16 v12, 0x258

    .line 392
    .line 393
    iput v12, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->VIDEO_DTS_QUEUE_MAX_SIZE:I

    .line 394
    .line 395
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 396
    .line 397
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSentFrames:I

    .line 398
    .line 399
    iput-wide v8, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 400
    .line 401
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSeiIndex:I

    .line 402
    .line 403
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 404
    .line 405
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedSeiCount:I

    .line 406
    .line 407
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 408
    .line 409
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 410
    .line 411
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveAbrCheckEnhance:I

    .line 412
    .line 413
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableRtcPlay:I

    .line 414
    .line 415
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableMiniSdp:I

    .line 416
    .line 417
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayFallBack:I

    .line 418
    .line 419
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDnsIp:Ljava/lang/String;

    .line 420
    .line 421
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcUseSdkDns:I

    .line 422
    .line 423
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcDnsTimeStamp:J

    .line 424
    .line 425
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    .line 426
    .line 427
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    .line 428
    .line 429
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    .line 430
    .line 431
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFallbackType:I

    .line 432
    .line 433
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcSessionId:Ljava/lang/String;

    .line 434
    .line 435
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayStopStatInfo:Ljava/lang/String;

    .line 436
    .line 437
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mBitRateAbnormalType:I

    .line 438
    .line 439
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecNotSame:I

    .line 440
    .line 441
    iput v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mABRListMatch:I

    .line 442
    .line 443
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsCdnAbrSwitch:Z

    .line 444
    .line 445
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnAbrSwitchCode:I

    .line 446
    .line 447
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestUrl:Ljava/lang/String;

    .line 448
    .line 449
    iput-object v10, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestHeaders:Ljava/util/Map;

    .line 450
    .line 451
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDisableVideoRender:I

    .line 452
    .line 453
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMuteAudio:I

    .line 454
    .line 455
    iput v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVolumeSetting:F

    .line 456
    .line 457
    iput v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVolumeSetting:F

    .line 458
    .line 459
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseExpectBitrate:I

    .line 460
    .line 461
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFCDNTranscodeMethod:I

    .line 462
    .line 463
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderFirstFrameTime:J

    .line 464
    .line 465
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 466
    .line 467
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionHasFirstFrame:Z

    .line 468
    .line 469
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStartTime:J

    .line 470
    .line 471
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 472
    .line 473
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStartTime:J

    .line 474
    .line 475
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 476
    .line 477
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 478
    .line 479
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 480
    .line 481
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalCount:J

    .line 482
    .line 483
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalTime:J

    .line 484
    .line 485
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalCount:J

    .line 486
    .line 487
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalTime:J

    .line 488
    .line 489
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallStartTime:J

    .line 490
    .line 491
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallEndTime:J

    .line 492
    .line 493
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 494
    .line 495
    iput v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorCode:I

    .line 496
    .line 497
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorMsg:Ljava/lang/String;

    .line 498
    .line 499
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalCount:J

    .line 500
    .line 501
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalTime:J

    .line 502
    .line 503
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalCount:J

    .line 504
    .line 505
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalTime:J

    .line 506
    .line 507
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalCount:J

    .line 508
    .line 509
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalTime:J

    .line 510
    .line 511
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalCount:J

    .line 512
    .line 513
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalTime:J

    .line 514
    .line 515
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOPlay:I

    .line 516
    .line 517
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOP2P:I

    .line 518
    .line 519
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOErrorMsg:Ljava/lang/String;

    .line 520
    .line 521
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameView:J

    .line 522
    .line 523
    iput-object v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOVersion:Ljava/lang/String;

    .line 524
    .line 525
    iput-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasUsedSharpen:Z

    .line 526
    .line 527
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncStartTime:J

    .line 528
    .line 529
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncStartPts:J

    .line 530
    .line 531
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncCount:I

    .line 532
    .line 533
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingCount:I

    .line 534
    .line 535
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncTimeDuration:J

    .line 536
    .line 537
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingTimeDuration:J

    .line 538
    .line 539
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPtsDuration:J

    .line 540
    .line 541
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingPtsDuration:J

    .line 542
    .line 543
    const/16 v2, 0x1000

    .line 544
    .line 545
    iput v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncInfoLen:I

    .line 546
    .line 547
    const/16 v2, 0x200

    .line 548
    .line 549
    iput v2, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingInfoLen:I

    .line 550
    .line 551
    iput-object v6, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncInfoStr:Ljava/lang/String;

    .line 552
    .line 553
    iput-object v6, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingInfoStr:Ljava/lang/String;

    .line 554
    .line 555
    const-wide/16 v5, 0x1388

    .line 556
    .line 557
    iput-wide v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayingLogInterval:J

    .line 558
    .line 559
    iput v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseLiveThreadPool:I

    .line 560
    .line 561
    move-object/from16 v1, p7

    .line 562
    .line 563
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    new-instance v1, Landroid/os/Handler;

    .line 566
    .line 567
    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 568
    .line 569
    .line 570
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 571
    .line 572
    cmp-long v1, p3, v3

    .line 573
    .line 574
    if-gtz v1, :cond_0

    .line 575
    .line 576
    const-wide/32 v1, 0xea60

    .line 577
    .line 578
    .line 579
    goto :goto_0

    .line 580
    :cond_0
    move-wide/from16 v1, p3

    .line 581
    .line 582
    :goto_0
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mInterval:J

    .line 583
    .line 584
    move-object/from16 v1, p2

    .line 585
    .line 586
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 587
    .line 588
    move-object v1, p1

    .line 589
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 590
    .line 591
    new-instance v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 592
    .line 593
    invoke-direct {v1}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;-><init>()V

    .line 594
    .line 595
    .line 596
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 597
    .line 598
    move-wide/from16 v1, p5

    .line 599
    .line 600
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallRetryTimeInterval:J

    .line 601
    .line 602
    sget-object v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 603
    .line 604
    const-string v2, "enable report sessionstop: "

    .line 605
    .line 606
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-static {v1, v2}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    move/from16 v1, p8

    .line 618
    .line 619
    if-ne v1, v11, :cond_1

    .line 620
    .line 621
    new-instance v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 622
    .line 623
    invoke-direct {v1}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;-><init>()V

    .line 624
    .line 625
    .line 626
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 627
    .line 628
    :cond_1
    return-void
.end method

.method private _createSessionTimeSeries()Lorg/json/JSONObject;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->updateSessionSeries()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "start_time"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 12
    .line 13
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "duration"

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 26
    .line 27
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 28
    .line 29
    sub-long/2addr v2, v4

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "render_fps_series"

    .line 35
    .line 36
    new-instance v2, Lorg/json/JSONArray;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "download_bitrate_series"

    .line 48
    .line 49
    new-instance v2, Lorg/json/JSONArray;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "play_buffer_series"

    .line 61
    .line 62
    new-instance v2, Lorg/json/JSONArray;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioBufferTimeSeries:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "push_bitrate_series"

    .line 74
    .line 75
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 76
    .line 77
    if-nez v2, :cond_0

    .line 78
    .line 79
    new-instance v2, Lorg/json/JSONArray;

    .line 80
    .line 81
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "push_fps_series"

    .line 97
    .line 98
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    new-instance v2, Lorg/json/JSONArray;

    .line 103
    .line 104
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "stall_series"

    .line 120
    .line 121
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 122
    .line 123
    if-nez v2, :cond_2

    .line 124
    .line 125
    new-instance v2, Lorg/json/JSONArray;

    .line 126
    .line 127
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "error_series"

    .line 143
    .line 144
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 145
    .line 146
    if-nez v2, :cond_3

    .line 147
    .line 148
    new-instance v2, Lorg/json/JSONObject;

    .line 149
    .line 150
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    return-object v0
.end method

.method static synthetic access$100(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurNetType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isNetWorkChanged()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHostAddr:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHostAddr:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->ntp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method private checkSeiIndex(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedSeiCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedSeiCount:I

    .line 6
    .line 7
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 11
    .line 12
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSeiIndex:I

    .line 13
    .line 14
    if-ltz v0, :cond_1

    .line 15
    .line 16
    if-gt p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-direct {p0, v2, p1, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStreamAbnormalSEI(III)V

    .line 20
    .line 21
    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 28
    .line 29
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 36
    .line 37
    add-int/2addr v2, v1

    .line 38
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 39
    .line 40
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 41
    .line 42
    add-int/2addr v2, v1

    .line 43
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 44
    .line 45
    sub-int v2, p1, v0

    .line 46
    .line 47
    if-le v2, v1, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-direct {p0, v2, p1, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStreamAbnormalSEI(III)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 54
    .line 55
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSeiIndex:I

    .line 56
    .line 57
    sub-int v3, p1, v2

    .line 58
    .line 59
    sub-int/2addr v3, v1

    .line 60
    add-int/2addr v0, v3

    .line 61
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 62
    .line 63
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 64
    .line 65
    sub-int v2, p1, v2

    .line 66
    .line 67
    sub-int/2addr v2, v1

    .line 68
    add-int/2addr v0, v2

    .line 69
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 70
    .line 71
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSeiIndex:I

    .line 72
    .line 73
    return-void
.end method

.method private checkVideoFrame(IIJ)V
    .locals 9

    .line 1
    if-ltz p1, :cond_c

    .line 2
    .line 3
    if-lez p2, :cond_c

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v3, v4, :cond_2

    .line 22
    .line 23
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 24
    .line 25
    iput p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSentFrames:I

    .line 26
    .line 27
    iput-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    if-ne p1, v3, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_4

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-wide/16 v2, -0x1

    .line 53
    .line 54
    :goto_0
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x1

    .line 56
    cmp-long v6, v2, v0

    .line 57
    .line 58
    if-lez v6, :cond_9

    .line 59
    .line 60
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 61
    .line 62
    cmp-long v6, v2, v0

    .line 63
    .line 64
    if-gtz v6, :cond_9

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-lez v2, :cond_7

    .line 75
    .line 76
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    iget-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 89
    .line 90
    cmp-long v8, v2, v6

    .line 91
    .line 92
    if-nez v8, :cond_5

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    :cond_5
    if-eqz v0, :cond_6

    .line 96
    .line 97
    cmp-long v8, v2, v6

    .line 98
    .line 99
    if-lez v8, :cond_6

    .line 100
    .line 101
    cmp-long v6, v2, p3

    .line 102
    .line 103
    if-gtz v6, :cond_6

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    if-eqz v6, :cond_7

    .line 108
    .line 109
    :cond_6
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 122
    .line 123
    sub-int v0, p1, v0

    .line 124
    .line 125
    if-ne v0, v5, :cond_9

    .line 126
    .line 127
    if-lez v1, :cond_9

    .line 128
    .line 129
    if-eq v1, p2, :cond_9

    .line 130
    .line 131
    if-ge v1, p2, :cond_8

    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_8
    const/4 v0, 0x1

    .line 136
    :goto_2
    invoke-direct {p0, v0, p2, v1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStreamAbnormalFrame(III)V

    .line 137
    .line 138
    .line 139
    :cond_9
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 140
    .line 141
    sub-int v1, p1, v0

    .line 142
    .line 143
    if-eq v1, v5, :cond_b

    .line 144
    .line 145
    if-le p1, v0, :cond_a

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_a
    const/4 v4, 0x1

    .line 149
    :goto_3
    invoke-direct {p0, v4, p1, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStreamAbnormalSEI(III)V

    .line 150
    .line 151
    .line 152
    :cond_b
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 153
    .line 154
    iput p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSentFrames:I

    .line 155
    .line 156
    iput-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 157
    .line 158
    :cond_c
    :goto_4
    return-void
.end method

.method private createFirstFrameLog(Lcom/bykv/vk/component/ttvideo/log/LogBundle;JZJ)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "event_key"

    const-string v2, "first_frame"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "last_retry_end"

    .line 3
    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "hit_cache"

    .line 4
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    const-string v1, "start"

    .line 5
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "sdk_dns_analysis_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    .line 6
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "prepare_block_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    .line 7
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tfoFallBackTime:J

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-gtz v3, :cond_0

    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    :cond_0
    const-string v1, "tfo_fall_back_time"

    .line 8
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "pre_connect"

    iget p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreconnect:I

    .line 9
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "http_req_finish_time"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpReqFinishTimestamp:J

    .line 10
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "http_res_finish_time"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpResFinishTimestamp:J

    .line 11
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_video_package_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoPacketTimestamp:J

    .line 12
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_audio_package_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioPacketTimestamp:J

    .line 13
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_video_frame_decode_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDecodeTimestamp:J

    .line 14
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_audio_frame_decode_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDecodeTimestamp:J

    .line 15
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_frame_from_player_core"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimeForPlayerCore:J

    .line 16
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_frame_render_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 17
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_param_send_outlet_time"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoParamSendOutletTime:J

    .line 18
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "first_video_frame_send_outlet_time"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->firstVideoFrameSendOutletTime:J

    .line 19
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "set_surface_time"

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceTime:J

    .line 20
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "set_surface_cost"

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceCost:J

    .line 21
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_render_type"

    iget p4, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->renderType:I

    .line 22
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_device_open_start"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenTime:J

    .line 23
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_device_open_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenedTime:J

    .line 24
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "audio_device_open_start"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenTime:J

    .line 25
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "audio_device_open_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenedTime:J

    .line 26
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_device_wait_start"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitStartTime:J

    .line 27
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_device_wait_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitEndTime:J

    .line 28
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "find_stream_info_start"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFindTime:J

    .line 29
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "find_stream_info_end"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFoundTime:J

    .line 30
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_first_pkt_pos"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPos:J

    .line 31
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "video_first_pkt_pts"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPts:J

    .line 32
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "audio_first_pkt_pos"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPos:J

    .line 33
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "audio_first_pkt_pts"

    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPts:J

    .line 34
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    const-string v1, "video_buffer_time"

    .line 35
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    const-string v1, "audio_buffer_time"

    .line 36
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeed:J

    const-string v1, "download_speed"

    .line 37
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "stall_time"

    .line 38
    invoke-virtual {p2, p3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    const-string p5, "first_sei_delay"

    .line 39
    invoke-virtual {p2, p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-object p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->headerXServerIP:Ljava/lang/String;

    const-string p4, "response_header_X-Server-IP"

    .line 40
    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    iget-object p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->headerVia:Ljava/lang/String;

    const-string p4, "response_header_Via"

    .line 41
    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "prepare_end"

    iget-wide p4, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    .line 42
    invoke-virtual {p2, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "drop_audio_pts_diff"

    iget-wide p4, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioPts:J

    .line 43
    invoke-virtual {p2, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "drop_audio_cost"

    iget-wide p4, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioCostTime:J

    .line 44
    invoke-virtual {p2, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "enable_tcp_fast_open"

    iget p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableTcpFastOpen:I

    .line 45
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "tfo_success"

    iget p4, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tfoSuccess:I

    .line 46
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "abr_check_enhance"

    iget p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveAbrCheckEnhance:I

    .line 47
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOptimizeBackupIps:Ljava/util/List;

    if-nez p3, :cond_1

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/json/JSONArray;

    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOptimizeBackupIps:Ljava/util/List;

    invoke-direct {p3, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_0
    const-string p4, "optimize_backup_ips"

    .line 48
    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "suggest_format"

    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 49
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "suggest_protocol"

    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 50
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    iget p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mContainerFps:F

    float-to-double p3, p3

    const-string p5, "container_fps"

    .line 51
    invoke-virtual {p2, p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isRtcPlayAvailable()Z

    move-result p2

    const-string p3, "tcp_first_package_end"

    const-string p4, "tcp_connect_end"

    const-string p5, "player_dns_analysis_end"

    if-eqz p2, :cond_2

    .line 53
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcDnsTimeStamp:J

    invoke-virtual {v0, p5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_use_sdk_dns"

    .line 54
    iget p5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcUseSdkDns:I

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    iget-wide p5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    invoke-virtual {v0, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_tls_handshake_end"

    .line 56
    iget-wide p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    invoke-virtual {v0, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    iget-wide p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    invoke-virtual {v0, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_inited_end"

    .line 58
    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcInitedTime:J

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_offer_send_end"

    .line 59
    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcOfferSendTime:J

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_answer_recv_end"

    .line 60
    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcAnswerRecvTime:J

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "rtc_start_end"

    .line 61
    iget-wide p3, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcStartTime:J

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 62
    :cond_2
    iget-wide v1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    invoke-virtual {v0, p5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    const-string p5, "kcp"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide p5, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    goto :goto_1

    :cond_3
    iget-wide p5, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    :goto_1
    invoke-virtual {v0, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    iget-wide p1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpFirstPacketTimestamp:J

    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    :goto_2
    iget p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioTimescaleEnable:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    const-string p2, "audio_timescale_enable"

    .line 66
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private createPlayingLog(Lcom/bykv/vk/component/ttvideo/log/LogBundle;JJJJZ)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    iget-wide v3, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playTime:J

    .line 12
    .line 13
    sub-long v3, v3, p6

    .line 14
    .line 15
    iget-wide v5, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->currentPosition:J

    .line 16
    .line 17
    sub-long v5, v5, p8

    .line 18
    .line 19
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playedSize:J

    .line 20
    .line 21
    sub-long v7, v7, p4

    .line 22
    .line 23
    const-wide/16 v9, 0x0

    .line 24
    .line 25
    cmp-long v11, v5, v9

    .line 26
    .line 27
    if-lez v11, :cond_0

    .line 28
    .line 29
    cmp-long v11, v7, v9

    .line 30
    .line 31
    if-lez v11, :cond_0

    .line 32
    .line 33
    const-wide/16 v11, 0x8

    .line 34
    .line 35
    mul-long v7, v7, v11

    .line 36
    .line 37
    div-long/2addr v7, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-wide v7, v9

    .line 40
    :goto_0
    iget-wide v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogIndex:J

    .line 41
    .line 42
    const-wide/16 v11, 0x1

    .line 43
    .line 44
    add-long/2addr v5, v11

    .line 45
    iput-wide v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogIndex:J

    .line 46
    .line 47
    iget v5, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 48
    .line 49
    iget v6, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 50
    .line 51
    iget-boolean v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 52
    .line 53
    if-eqz v11, :cond_1

    .line 54
    .line 55
    iget-wide v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 56
    .line 57
    cmp-long v13, v11, v9

    .line 58
    .line 59
    if-eqz v13, :cond_1

    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    int-to-long v11, v6

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v13

    .line 68
    iget-wide v9, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 69
    .line 70
    sub-long/2addr v13, v9

    .line 71
    add-long/2addr v11, v13

    .line 72
    long-to-int v6, v11

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    iput-wide v9, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 78
    .line 79
    :cond_1
    iget-wide v9, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    .line 80
    .line 81
    iget-wide v11, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastTotalDownloadSize:J

    .line 82
    .line 83
    add-long/2addr v11, v9

    .line 84
    iget-boolean v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHaveResetPlayer:Z

    .line 85
    .line 86
    if-nez v13, :cond_2

    .line 87
    .line 88
    sub-long v9, v9, p2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-wide v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastDownloadSizeDelta:J

    .line 92
    .line 93
    add-long/2addr v9, v13

    .line 94
    const-wide/16 v13, 0x0

    .line 95
    .line 96
    iput-wide v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastDownloadSizeDelta:J

    .line 97
    .line 98
    :goto_1
    const/4 v13, 0x0

    .line 99
    iput-boolean v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHaveResetPlayer:Z

    .line 100
    .line 101
    const-string v14, "event_key"

    .line 102
    .line 103
    const-string v15, "playing"

    .line 104
    .line 105
    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    const-string v15, "download_size_delta"

    .line 110
    .line 111
    invoke-virtual {v14, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const-string v10, "download_size"

    .line 116
    .line 117
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const-string v10, "video_play_size"

    .line 122
    .line 123
    iget-wide v11, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playedSize:J

    .line 124
    .line 125
    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->fps:F

    .line 130
    .line 131
    float-to-double v10, v1

    .line 132
    const-string v1, "render_fps"

    .line 133
    .line 134
    invoke-virtual {v9, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v9, "video_rate"

    .line 139
    .line 140
    invoke-virtual {v1, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v7, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 145
    .line 146
    iget-wide v7, v7, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeed:J

    .line 147
    .line 148
    const-string v9, "download_speed"

    .line 149
    .line 150
    invoke-virtual {v1, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v7, "play_time"

    .line 155
    .line 156
    invoke-virtual {v1, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v3, "retry_count"

    .line 161
    .line 162
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 163
    .line 164
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v3, "stall_count"

    .line 169
    .line 170
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v3, "stall_time"

    .line 175
    .line 176
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v3, "audio_render_stall_count"

    .line 181
    .line 182
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 183
    .line 184
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v3, "audio_render_stall_time"

    .line 189
    .line 190
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 191
    .line 192
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v3, "video_render_stall_count"

    .line 197
    .line 198
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 199
    .line 200
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v3, "video_render_stall_time"

    .line 205
    .line 206
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 207
    .line 208
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-string v3, "silence_detected_count"

    .line 213
    .line 214
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSilenceDetectedCount:I

    .line 215
    .line 216
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v3, "is_last"

    .line 221
    .line 222
    move/from16 v4, p10

    .line 223
    .line 224
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const-string v3, "index"

    .line 229
    .line 230
    iget-wide v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogIndex:J

    .line 231
    .line 232
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const-string v3, "speed_switch_count"

    .line 237
    .line 238
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchCount:I

    .line 239
    .line 240
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    const-string v3, "speed_switch_info"

    .line 245
    .line 246
    iget-object v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchInfo:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-object v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 253
    .line 254
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    .line 255
    .line 256
    const-string v5, "video_buffer_time"

    .line 257
    .line 258
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget-object v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 263
    .line 264
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    .line 265
    .line 266
    const-string v5, "audio_buffer_time"

    .line 267
    .line 268
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iget-boolean v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSeiCheck:Z

    .line 273
    .line 274
    const-string v4, "enable_sei_check"

    .line 275
    .line 276
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget-boolean v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasNTP:Z

    .line 281
    .line 282
    const-string v4, "ntp_sync"

    .line 283
    .line 284
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 289
    .line 290
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcStatInfo:Ljava/lang/String;

    .line 291
    .line 292
    const-string v4, "rtc_stat_info"

    .line 293
    .line 294
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v3, "suggest_format"

    .line 299
    .line 300
    iget-object v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v3, "suggest_protocol"

    .line 307
    .line 308
    iget-object v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    iget v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingCount:I

    .line 314
    .line 315
    if-lez v1, :cond_3

    .line 316
    .line 317
    const-string v3, "av_out_sync_count"

    .line 318
    .line 319
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const-string v3, "av_out_sync_duration"

    .line 324
    .line 325
    iget-wide v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingTimeDuration:J

    .line 326
    .line 327
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const-string v3, "av_out_sync_info"

    .line 332
    .line 333
    iget-object v4, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingInfoStr:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    .line 337
    .line 338
    :cond_3
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingCount:I

    .line 339
    .line 340
    const-wide/16 v3, 0x0

    .line 341
    .line 342
    iput-wide v3, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingTimeDuration:J

    .line 343
    .line 344
    const-string v1, ""

    .line 345
    .line 346
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingInfoStr:Ljava/lang/String;

    .line 347
    .line 348
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 349
    .line 350
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 351
    .line 352
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 353
    .line 354
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 355
    .line 356
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 357
    .line 358
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 359
    .line 360
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 361
    .line 362
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchCount:I

    .line 363
    .line 364
    const-string v1, "none"

    .line 365
    .line 366
    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchInfo:Ljava/lang/String;

    .line 367
    .line 368
    iget-boolean v1, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSilenceInterval:Z

    .line 369
    .line 370
    if-eqz v1, :cond_4

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_4
    const/4 v13, -0x1

    .line 374
    :goto_2
    iput v13, v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSilenceDetectedCount:I

    .line 375
    .line 376
    return-object v2

    .line 377
    :cond_5
    const/4 v1, 0x0

    .line 378
    return-object v1
.end method

.method private isNetWorkChanged()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/network/NetUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    :goto_0
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurNetType:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurNetType:I

    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method private ntp()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPClient:Lcom/byazt/f/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/byazt/q/c;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHostAddr:Ljava/net/InetAddress;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPClient:Lcom/byazt/f/c;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lcom/byazt/f/c;->c(Ljava/net/InetAddress;)Lcom/byazt/f/uj;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/f/uj;->tt()Lcom/byazt/f/ve;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/byazt/f/ve;->t()Lcom/byazt/f/n;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/byazt/f/n;->tt()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v1}, Lcom/byazt/f/uj;->tt()Lcom/byazt/f/ve;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/byazt/f/ve;->u()Lcom/byazt/f/n;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/byazt/f/n;->tt()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    invoke-virtual {v1}, Lcom/byazt/f/uj;->tt()Lcom/byazt/f/ve;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/byazt/f/ve;->sl()Lcom/byazt/f/n;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/byazt/f/n;->tt()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    sub-long/2addr v4, v2

    .line 69
    sub-long/2addr v0, v6

    .line 70
    add-long/2addr v4, v0

    .line 71
    const-wide/16 v0, 0x2

    .line 72
    .line 73
    div-long/2addr v4, v0

    .line 74
    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 75
    .line 76
    return-void

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private onLink(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableOpenMDL:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;->getDataLoader()Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x1f4d

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1f4e

    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionId:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lcom/bykv/vk/component/ttvideo/medialoader/MediaLoaderWrapper;->setInt64ValueByStrKey(ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    :try_start_0
    const-string v1, "event_key"

    .line 30
    .line 31
    const-string v2, "link"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "info"

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string p1, "start"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string p1, "end"

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 50
    .line 51
    const-string v1, "live_client_monitor_log"

    .line 52
    .line 53
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 57
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    cmp-long p1, v0, v2

    .line 61
    .line 62
    if-lez p1, :cond_3

    .line 63
    .line 64
    const-wide/16 v2, 0x1

    .line 65
    .line 66
    add-long/2addr v0, v2

    .line 67
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method

.method private onStreamAbnormalFrame(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    const-string v1, "event_key"

    .line 13
    .line 14
    const-string v2, "stream_abnormal"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "stream_type"

    .line 21
    .line 22
    const-string v3, "video"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "type"

    .line 29
    .line 30
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "sent_frames"

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "received_frames"

    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 46
    .line 47
    const-string p2, "live_client_monitor_log"

    .line 48
    .line 49
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 53
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    cmp-long p3, p1, v0

    .line 57
    .line 58
    if-lez p3, :cond_1

    .line 59
    .line 60
    const-wide/16 v0, 0x1

    .line 61
    .line 62
    add-long/2addr p1, v0

    .line 63
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private onStreamAbnormalSEI(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    const-string v1, "event_key"

    .line 13
    .line 14
    const-string v2, "stream_abnormal"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "stream_type"

    .line 21
    .line 22
    const-string v3, "video"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "type"

    .line 29
    .line 30
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "cur_index"

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "last_index"

    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 46
    .line 47
    const-string p2, "live_client_monitor_log"

    .line 48
    .line 49
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 53
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    cmp-long p3, p1, v0

    .line 57
    .line 58
    if-lez p3, :cond_1

    .line 59
    .line 60
    const-wide/16 v0, 0x1

    .line 61
    .line 62
    add-long/2addr p1, v0

    .line 63
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private report(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_0
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    .line 15
    .line 16
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playedSize:J

    .line 17
    .line 18
    iget-wide v8, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playTime:J

    .line 19
    .line 20
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->currentPosition:J

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    move v12, p1

    .line 30
    invoke-direct/range {v2 .. v12}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createPlayingLog(Lcom/bykv/vk/component/ttvideo/log/LogBundle;JJJJZ)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 35
    .line 36
    const-string v1, "live_client_monitor_log"

    .line 37
    .line 38
    invoke-interface {v0, p1, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmp-long p1, v0, v2

    .line 46
    .line 47
    if-lez p1, :cond_1

    .line 48
    .line 49
    const-wide/16 v2, 0x1

    .line 50
    .line 51
    add-long/2addr v0, v2

    .line 52
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mInterval:J

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isRtcPlayAvailable()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayingLogInterval:J

    .line 68
    .line 69
    :cond_2
    iget-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    const/16 v2, 0x65

    .line 76
    .line 77
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method private reportQuicOpenResult(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "quic"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "quicu"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 22
    .line 23
    iget v0, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicOpenResult:I

    .line 24
    .line 25
    const-string v1, "quic_open_result"

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "quic_open_result = "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 40
    .line 41
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicOpenResult:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private reportUpdateSessionSeries()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->updateSessionSeries()V

    .line 2
    .line 3
    .line 4
    const-string v0, "zdh"

    .line 5
    .line 6
    const-string v1, "update session series"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/16 v1, 0x66

    .line 18
    .line 19
    const-wide/16 v2, 0x1388

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private resetSessionInfo()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionHasFirstFrame:Z

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallStartTime:J

    .line 16
    .line 17
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallEndTime:J

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStartTime:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStartTime:J

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalCount:J

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalTime:J

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalCount:J

    .line 34
    .line 35
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalTime:J

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 39
    .line 40
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorCode:I

    .line 41
    .line 42
    const-string v1, "none"

    .line 43
    .line 44
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorMsg:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->reset()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method private updateRequestTimeFieldInRtcPlay(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "event_message"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "eventMessage:"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_8

    .line 33
    .line 34
    const-string v2, "phase_timestamp"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    const-string v3, "dns resolved"

    .line 45
    .line 46
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const-string v0, "request_ip"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDnsIp:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcUseSdkDns:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcUseSdkDns:I

    .line 80
    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcDnsTimeStamp:J

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "mRtcDnsTimeStamp:"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcDnsTimeStamp:J

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_3
    const-string v3, "tcp connected"

    .line 112
    .line 113
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_7

    .line 118
    .line 119
    const-string v3, "send request"

    .line 120
    .line 121
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-string v3, "tls handshaked"

    .line 129
    .line 130
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, "mRtcTlsHandshakedTimeStamp:"

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    .line 154
    .line 155
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_5
    const-string v3, "response received"

    .line 167
    .line 168
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-nez v3, :cond_6

    .line 173
    .line 174
    const-string v3, "remote answer got"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    .line 191
    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v0, "mRtcTcpFirstPackageTimeStamp:"

    .line 195
    .line 196
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    .line 200
    .line 201
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    :goto_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    .line 221
    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "mRtcTcpConnectTimeStamp:"

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    .line 230
    .line 231
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {v1, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_2
    return-void
.end method

.method private updateSessionSeries()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x3

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioBufferTimeSeries:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 46
    .line 47
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->fps:F

    .line 48
    .line 49
    float-to-long v1, v1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioBufferTimeSeries:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 60
    .line 61
    iget-wide v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    .line 62
    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 73
    .line 74
    iget-wide v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeed:J

    .line 75
    .line 76
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiHasBitrateAndFps:Z

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 104
    .line 105
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 108
    .line 109
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiFps:I

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 121
    .line 122
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiBitrate:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public calculateRenderFailType()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioRenderTimestamp:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-lez v5, :cond_0

    .line 10
    .line 11
    iget-wide v5, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 12
    .line 13
    cmp-long v7, v5, v3

    .line 14
    .line 15
    if-lez v7, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-lez v5, :cond_1

    .line 24
    .line 25
    iget-wide v5, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 26
    .line 27
    cmp-long v7, v5, v3

    .line 28
    .line 29
    if-gtz v7, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-gtz v5, :cond_2

    .line 38
    .line 39
    iget-wide v0, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 40
    .line 41
    cmp-long v2, v0, v3

    .line 42
    .line 43
    if-lez v2, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/4 v0, 0x3

    .line 50
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 51
    .line 52
    return-void
.end method

.method public calculateSessionRenderFailType()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 10
    .line 11
    cmp-long v6, v4, v2

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-lez v4, :cond_1

    .line 22
    .line 23
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 24
    .line 25
    cmp-long v6, v4, v2

    .line 26
    .line 27
    if-gtz v6, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    cmp-long v4, v0, v2

    .line 34
    .line 35
    if-gtz v4, :cond_2

    .line 36
    .line 37
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 38
    .line 39
    cmp-long v4, v0, v2

    .line 40
    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 49
    .line 50
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;->access$000(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->resetStreamCheckParams()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onStop(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reset()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public createCommonLog()Lorg/json/JSONObject;
    .locals 10

    .line 1
    const-string v0, "is_too_large_av_diff"

    .line 2
    .line 3
    const-string v1, "0.00"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getVideoCodecType()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "report_version"

    .line 16
    .line 17
    const-string v4, "5"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "live_sdk_version"

    .line 24
    .line 25
    const-string v4, "1.4.6.31-lite"

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "product_line"

    .line 32
    .line 33
    const-string v4, "live"

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "client_timestamp"

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "player_sdk_version"

    .line 50
    .line 51
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    const-string v5, "-1"

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    move-object v4, v5

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "project_key"

    .line 63
    .line 64
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProjectKey:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    move-object v4, v5

    .line 69
    :cond_1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "live_stream_enter_method"

    .line 74
    .line 75
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnterMethod:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    const-string v6, "none"

    .line 78
    .line 79
    if-nez v4, :cond_2

    .line 80
    .line 81
    move-object v4, v6

    .line 82
    :cond_2
    :try_start_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "live_stream_enter_action"

    .line 87
    .line 88
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnterAction:Ljava/lang/String;

    .line 89
    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    move-object v4, v6

    .line 93
    :cond_3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "cdn_play_url"

    .line 98
    .line 99
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move-object v5, v4

    .line 105
    :goto_0
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "cdn_ip"

    .line 110
    .line 111
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 112
    .line 113
    if-nez v4, :cond_5

    .line 114
    .line 115
    move-object v4, v6

    .line 116
    :cond_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v3, "request_url"

    .line 121
    .line 122
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestUrl:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const-string v3, "ip_from_player_core"

    .line 129
    .line 130
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIpIsFromPlayerCore:Z

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v7, 0x1

    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_6
    const/4 v4, 0x0

    .line 139
    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-string v3, "is_preview"

    .line 144
    .line 145
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsPreview:Z

    .line 146
    .line 147
    if-eqz v4, :cond_7

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const/4 v4, 0x0

    .line 152
    :goto_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "push_client_sdk_version"

    .line 157
    .line 158
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientSDKVersion:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v3, "push_client_platform"

    .line 165
    .line 166
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPlatform:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "push_client_os_version"

    .line 173
    .line 174
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientOSVersion:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v3, "push_client_model"

    .line 181
    .line 182
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientModel:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const-string v3, "push_client_start_time"

    .line 189
    .line 190
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientStartTime:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const-string v3, "push_client_is_hardware_encode"

    .line 197
    .line 198
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHardwareEncode:I

    .line 199
    .line 200
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    const-string v3, "push_client_min_bitrate"

    .line 205
    .line 206
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMinBitrate:I

    .line 207
    .line 208
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const-string v3, "push_client_max_bitrate"

    .line 213
    .line 214
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMaxBitrate:I

    .line 215
    .line 216
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const-string v3, "push_client_default_bitrate"

    .line 221
    .line 222
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientDefaultBitrate:I

    .line 223
    .line 224
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v3, "push_client_push_protocol"

    .line 229
    .line 230
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPushProtocal:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const-string v3, "push_client_qid"

    .line 237
    .line 238
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientQId:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v3, "push_client_hit_node_optimize"

    .line 245
    .line 246
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHitNodeOptimize:I

    .line 247
    .line 248
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const-string v3, "open_dns_optimizer"

    .line 253
    .line 254
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOpenNodeOptimizer:Z

    .line 255
    .line 256
    if-eqz v4, :cond_8

    .line 257
    .line 258
    const/4 v4, 0x1

    .line 259
    goto :goto_3

    .line 260
    :cond_8
    const/4 v4, 0x0

    .line 261
    :goto_3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v3, "hit_node_optimize"

    .line 266
    .line 267
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHitNodeOptimizer:Z

    .line 268
    .line 269
    if-eqz v4, :cond_9

    .line 270
    .line 271
    const/4 v4, 0x1

    .line 272
    goto :goto_4

    .line 273
    :cond_9
    const/4 v4, 0x0

    .line 274
    :goto_4
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    const-string v3, "evaluator_symbol"

    .line 279
    .line 280
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEvaluatorSymbol:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    const-string v3, "remote_sorted"

    .line 287
    .line 288
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsRemoteSorted:Z

    .line 289
    .line 290
    if-eqz v4, :cond_a

    .line 291
    .line 292
    const/4 v4, 0x1

    .line 293
    goto :goto_5

    .line 294
    :cond_a
    const/4 v4, 0x0

    .line 295
    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v3, "common_tag"

    .line 300
    .line 301
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCommonFlag:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    const-string v3, "codec_type"

    .line 308
    .line 309
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecType:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    const-string v3, "codec_name"

    .line 316
    .line 317
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecName:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const-string v3, "hardware_decode"

    .line 324
    .line 325
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHardDecodeEnable:Z

    .line 326
    .line 327
    if-eqz v4, :cond_b

    .line 328
    .line 329
    const/4 v4, 0x1

    .line 330
    goto :goto_6

    .line 331
    :cond_b
    const/4 v4, 0x0

    .line 332
    :goto_6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    const-string v3, "sharp"

    .line 337
    .line 338
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSharp:Z

    .line 339
    .line 340
    if-eqz v4, :cond_c

    .line 341
    .line 342
    const/4 v4, 0x1

    .line 343
    goto :goto_7

    .line 344
    :cond_c
    const/4 v4, 0x0

    .line 345
    :goto_7
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    const-string v3, "enable_hurry"

    .line 350
    .line 351
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableHurry:Z

    .line 352
    .line 353
    if-eqz v4, :cond_d

    .line 354
    .line 355
    const/4 v4, 0x1

    .line 356
    goto :goto_8

    .line 357
    :cond_d
    const/4 v4, 0x0

    .line 358
    :goto_8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    const-string v3, "hurry_time"

    .line 363
    .line 364
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHurryTime:I

    .line 365
    .line 366
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    const-string v3, "catch_speed"

    .line 371
    .line 372
    new-instance v4, Ljava/text/DecimalFormat;

    .line 373
    .line 374
    invoke-direct {v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCatchSpeed:F

    .line 378
    .line 379
    float-to-double v8, v8

    .line 380
    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    const-string v3, "slow_play_time"

    .line 389
    .line 390
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowPlayTime:I

    .line 391
    .line 392
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    const-string v3, "slow_speed"

    .line 397
    .line 398
    new-instance v4, Ljava/text/DecimalFormat;

    .line 399
    .line 400
    invoke-direct {v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowSpeed:F

    .line 404
    .line 405
    float-to-double v8, v1

    .line 406
    invoke-virtual {v4, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    const-string v2, "first_screen"

    .line 415
    .line 416
    iget-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 417
    .line 418
    if-eqz v3, :cond_e

    .line 419
    .line 420
    const/4 v3, 0x1

    .line 421
    goto :goto_9

    .line 422
    :cond_e
    const/4 v3, 0x0

    .line 423
    :goto_9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    const-string v2, "enable_httpDns"

    .line 428
    .line 429
    iget-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableHttpDns:Z

    .line 430
    .line 431
    if-eqz v3, :cond_f

    .line 432
    .line 433
    const/4 v3, 0x1

    .line 434
    goto :goto_a

    .line 435
    :cond_f
    const/4 v3, 0x0

    .line 436
    :goto_a
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    const-string v2, "enable_ntp"

    .line 441
    .line 442
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTP:I

    .line 443
    .line 444
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    const-string v2, "enable_media_codec_async"

    .line 449
    .line 450
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMediaCodecAsyncInit:I

    .line 451
    .line 452
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    const-string v2, "default_codec_id"

    .line 457
    .line 458
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultCodecID:I

    .line 459
    .line 460
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    const-string v2, "url_ability"

    .line 465
    .line 466
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUrlAbility:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const-string v2, "max_cache_seconds"

    .line 473
    .line 474
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMaxCacheSeconds:I

    .line 475
    .line 476
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    const-string v2, "enable_fast_open"

    .line 481
    .line 482
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableFastOpenStream:I

    .line 483
    .line 484
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    const-string v2, "enable_mdl"

    .line 489
    .line 490
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableOpenMDL:I

    .line 491
    .line 492
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    const-string v2, "enable_p2p"

    .line 497
    .line 498
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableP2P:I

    .line 499
    .line 500
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    const-string v2, "p2p_loader_type"

    .line 505
    .line 506
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mP2PLoaderType:I

    .line 507
    .line 508
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    const-string v2, "used_p2p"

    .line 513
    .line 514
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUsedP2P:I

    .line 515
    .line 516
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    const-string v2, "mdl_version"

    .line 521
    .line 522
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMDLVersion:Ljava/lang/String;

    .line 523
    .line 524
    if-nez v3, :cond_10

    .line 525
    .line 526
    move-object v3, v6

    .line 527
    :cond_10
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    const-string v2, "enable_mdl_proto"

    .line 532
    .line 533
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableMdlProto:I

    .line 534
    .line 535
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    const-string v2, "enable_low_latency_flv"

    .line 540
    .line 541
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLowLatencyFLV:I

    .line 542
    .line 543
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    const-string v2, "dns_ip"

    .line 548
    .line 549
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 550
    .line 551
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dnsIP:Ljava/lang/String;

    .line 552
    .line 553
    if-nez v3, :cond_11

    .line 554
    .line 555
    move-object v3, v6

    .line 556
    :cond_11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    const-string v2, "in_main_looper"

    .line 561
    .line 562
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInMainLooper:I

    .line 563
    .line 564
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    const-string v2, "start_play_buffer_threshold"

    .line 569
    .line 570
    iget-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartPlayBufferThres:J

    .line 571
    .line 572
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    const-string v2, "fast_open_gop_cache"

    .line 577
    .line 578
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFastOpenDuration:I

    .line 579
    .line 580
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const-string v2, "buffering_end_ignore_video"

    .line 585
    .line 586
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndIgnoreVideo:I

    .line 587
    .line 588
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    const-string v2, "start_direct_after_prepared"

    .line 593
    .line 594
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartDirectAfterPrepared:I

    .line 595
    .line 596
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    const-string v2, "check_buffering_end_advance"

    .line 601
    .line 602
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndAdvanceEnable:I

    .line 603
    .line 604
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    const-string v2, "channel_id"

    .line 609
    .line 610
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 611
    .line 612
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->channelId:Ljava/lang/String;

    .line 613
    .line 614
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    const-string v2, "sei_delay"

    .line 619
    .line 620
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 621
    .line 622
    if-eqz v3, :cond_12

    .line 623
    .line 624
    :goto_b
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    .line 625
    .line 626
    goto :goto_c

    .line 627
    :cond_12
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 628
    .line 629
    goto :goto_b

    .line 630
    :goto_c
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    const-string v2, "sei_source"

    .line 635
    .line 636
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 637
    .line 638
    if-eqz v3, :cond_13

    .line 639
    .line 640
    :goto_d
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_13
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 644
    .line 645
    goto :goto_d

    .line 646
    :goto_e
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    const-string v2, "chip_board"

    .line 651
    .line 652
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mChipBoard:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    const-string v2, "chip_hardware"

    .line 659
    .line 660
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mChipHardware:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    const-string v2, "width"

    .line 667
    .line 668
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 669
    .line 670
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    const-string v2, "height"

    .line 675
    .line 676
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 677
    .line 678
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    const-string v2, "settings_info"

    .line 683
    .line 684
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSettingsInfo:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    const-string v2, "ttnet_nqe_info"

    .line 691
    .line 692
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTTNetNQEInfo:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    const-string v2, "play_format"

    .line 699
    .line 700
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    const-string v2, "play_protocol"

    .line 707
    .line 708
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 709
    .line 710
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    const-string v2, "url_set_method"

    .line 715
    .line 716
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 717
    .line 718
    invoke-virtual {v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getUrlSettingMethod()I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    const-string v2, "enable_resolution_auto_degrade"

    .line 727
    .line 728
    iget-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableResolutionAutoDegrade:Z

    .line 729
    .line 730
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    const-string v2, "has_abr_info"

    .line 735
    .line 736
    iget-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasAbrInfo:Z

    .line 737
    .line 738
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    const-string v2, "quic_load_succ"

    .line 743
    .line 744
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicFlag:I

    .line 745
    .line 746
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    const-string v2, "link_info"

    .line 751
    .line 752
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLinkInfo:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    const-string v2, "used_texturerender"

    .line 759
    .line 760
    iget-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseTextureRender:Z

    .line 761
    .line 762
    if-eqz v3, :cond_14

    .line 763
    .line 764
    const/4 v3, 0x1

    .line 765
    goto :goto_f

    .line 766
    :cond_14
    const/4 v3, 0x0

    .line 767
    :goto_f
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    const-string v2, "settings_res"

    .line 772
    .line 773
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResolution:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 780
    .line 781
    iget v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    .line 782
    .line 783
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    const-string v2, "stall_retry_time_interval"

    .line 788
    .line 789
    iget-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallRetryTimeInterval:J

    .line 790
    .line 791
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 796
    .line 797
    iget v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    .line 798
    .line 799
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    const-string v1, "enable_rtc_play"

    .line 804
    .line 805
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableRtcPlay:I

    .line 806
    .line 807
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    const-string v1, "enable_mini_sdp"

    .line 812
    .line 813
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableMiniSdp:I

    .line 814
    .line 815
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    const-string v1, "rtc_play_fallback"

    .line 820
    .line 821
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayFallBack:I

    .line 822
    .line 823
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    const-string v1, "fallback_type"

    .line 828
    .line 829
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFallbackType:I

    .line 830
    .line 831
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    const-string v1, "mute_audio"

    .line 836
    .line 837
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMuteAudio:I

    .line 838
    .line 839
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    const-string v1, "volume_setting"

    .line 844
    .line 845
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVolumeSetting:F

    .line 846
    .line 847
    float-to-double v2, v2

    .line 848
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    const-string v1, "player_volume_setting"

    .line 853
    .line 854
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVolumeSetting:F

    .line 855
    .line 856
    float-to-double v2, v2

    .line 857
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    const-string v1, "enable_liveio_play"

    .line 862
    .line 863
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveIOPlay:I

    .line 864
    .line 865
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    const-string v1, "liveio_play"

    .line 870
    .line 871
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOPlay:I

    .line 872
    .line 873
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    const-string v1, "liveio_p2p"

    .line 878
    .line 879
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOP2P:I

    .line 880
    .line 881
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveIOPlay:I

    .line 886
    .line 887
    if-ne v1, v7, :cond_15

    .line 888
    .line 889
    const-string v1, "liveio_error_msg"

    .line 890
    .line 891
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOErrorMsg:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    .line 895
    .line 896
    const-string v1, "liveio_version"

    .line 897
    .line 898
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOVersion:Ljava/lang/String;

    .line 899
    .line 900
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    .line 902
    .line 903
    :cond_15
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isRtcPlayAvailable()Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-eqz v1, :cond_16

    .line 908
    .line 909
    const-string v1, "rtc_get_width"

    .line 910
    .line 911
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 912
    .line 913
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getVideoWidth()I

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 918
    .line 919
    .line 920
    const-string v1, "rtc_get_height"

    .line 921
    .line 922
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 923
    .line 924
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getVideoHeight()I

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    .line 930
    .line 931
    :cond_16
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcSessionId:Ljava/lang/String;

    .line 932
    .line 933
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 937
    const-string v2, "live_stream_session_id"

    .line 938
    .line 939
    if-nez v1, :cond_17

    .line 940
    .line 941
    :try_start_3
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcSessionId:Ljava/lang/String;

    .line 942
    .line 943
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 944
    .line 945
    .line 946
    goto :goto_10

    .line 947
    :cond_17
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionId:Ljava/lang/String;

    .line 948
    .line 949
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 950
    .line 951
    .line 952
    :goto_10
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResolution:Ljava/lang/String;

    .line 953
    .line 954
    const-string v2, "auto"

    .line 955
    .line 956
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    if-eqz v1, :cond_18

    .line 961
    .line 962
    const-string v1, "auto_res"

    .line 963
    .line 964
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAutoUsingResolution:Ljava/lang/String;

    .line 965
    .line 966
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 967
    .line 968
    .line 969
    :cond_18
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 970
    .line 971
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getEnableTexturerender()I

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    if-ne v1, v7, :cond_19

    .line 976
    .line 977
    const-string v1, "texturerender_error"

    .line 978
    .line 979
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderError:I

    .line 980
    .line 981
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 982
    .line 983
    .line 984
    :cond_19
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 985
    .line 986
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getEnableSR()I

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    if-ne v1, v7, :cond_1b

    .line 991
    .line 992
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 993
    .line 994
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getEnableTexturerender()I

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    if-ne v1, v7, :cond_1b

    .line 999
    .line 1000
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 1001
    .line 1002
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->isUsedSR()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1006
    const-string v2, "sr_height"

    .line 1007
    .line 1008
    const-string v3, "sr_width"

    .line 1009
    .line 1010
    if-eqz v1, :cond_1a

    .line 1011
    .line 1012
    :try_start_4
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 1013
    .line 1014
    mul-int/lit8 v1, v1, 0x2

    .line 1015
    .line 1016
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 1021
    .line 1022
    mul-int/lit8 v3, v3, 0x2

    .line 1023
    .line 1024
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1025
    .line 1026
    .line 1027
    iput-boolean v7, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSRSuccess:Z

    .line 1028
    .line 1029
    goto :goto_11

    .line 1030
    :cond_1a
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 1031
    .line 1032
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 1037
    .line 1038
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1039
    .line 1040
    .line 1041
    :cond_1b
    :goto_11
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 1042
    .line 1043
    iget v2, v1, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->mEnableSharpen:I

    .line 1044
    .line 1045
    if-ne v2, v7, :cond_1d

    .line 1046
    .line 1047
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getEnableTexturerender()I

    .line 1048
    .line 1049
    .line 1050
    move-result v1

    .line 1051
    if-ne v1, v7, :cond_1d

    .line 1052
    .line 1053
    const-string v1, "used_sharpen"

    .line 1054
    .line 1055
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 1056
    .line 1057
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->isUsedSharpen()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v2

    .line 1061
    if-eqz v2, :cond_1c

    .line 1062
    .line 1063
    const/4 v5, 0x1

    .line 1064
    :cond_1c
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1065
    .line 1066
    .line 1067
    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasUsedSharpen:Z

    .line 1068
    .line 1069
    if-nez v1, :cond_1d

    .line 1070
    .line 1071
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 1072
    .line 1073
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->isUsedSharpen()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v1

    .line 1077
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasUsedSharpen:Z

    .line 1078
    .line 1079
    :cond_1d
    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableResolutionAutoDegrade:Z

    .line 1080
    .line 1081
    if-nez v1, :cond_1e

    .line 1082
    .line 1083
    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasAbrInfo:Z

    .line 1084
    .line 1085
    if-eqz v1, :cond_1f

    .line 1086
    .line 1087
    :cond_1e
    if-eqz v0, :cond_1f

    .line 1088
    .line 1089
    const-string v1, "abr_strategy"

    .line 1090
    .line 1091
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrStrategy:Ljava/lang/String;

    .line 1092
    .line 1093
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    const-string v2, "defualt_res_bitrate"

    .line 1098
    .line 1099
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultResBitrate:I

    .line 1100
    .line 1101
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    const-string v2, "stall_count_rad"

    .line 1106
    .line 1107
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallCountThresOfResolutionDegrade:I

    .line 1108
    .line 1109
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1110
    .line 1111
    .line 1112
    :cond_1f
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 1113
    .line 1114
    const-string v2, "quic"

    .line 1115
    .line 1116
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    if-nez v1, :cond_20

    .line 1121
    .line 1122
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 1123
    .line 1124
    const-string v2, "quicu"

    .line 1125
    .line 1126
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v1

    .line 1130
    if-eqz v1, :cond_21

    .line 1131
    .line 1132
    :cond_20
    const-string v1, "quic_config_cached"

    .line 1133
    .line 1134
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1135
    .line 1136
    iget v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicConfigCached:I

    .line 1137
    .line 1138
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    const-string v2, "quic_CHLO_count"

    .line 1143
    .line 1144
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1145
    .line 1146
    iget v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicCHLOCount:I

    .line 1147
    .line 1148
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1149
    .line 1150
    .line 1151
    :cond_21
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 1152
    .line 1153
    iget v1, v1, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->mEnableRadioLiveDisableRender:I

    .line 1154
    .line 1155
    if-ne v1, v7, :cond_22

    .line 1156
    .line 1157
    const-string v1, "disable_video_render"

    .line 1158
    .line 1159
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDisableVideoRender:I

    .line 1160
    .line 1161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1162
    .line 1163
    .line 1164
    :cond_22
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTslTimeShift:I

    .line 1165
    .line 1166
    if-lez v1, :cond_23

    .line 1167
    .line 1168
    const-string v2, "tsl_timeshift"

    .line 1169
    .line 1170
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1171
    .line 1172
    .line 1173
    :cond_23
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestHeaders:Ljava/util/Map;

    .line 1174
    .line 1175
    if-eqz v1, :cond_25

    .line 1176
    .line 1177
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v1

    .line 1181
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v1

    .line 1185
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    if-eqz v2, :cond_25

    .line 1190
    .line 1191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    check-cast v2, Ljava/util/Map$Entry;

    .line 1196
    .line 1197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    check-cast v3, Ljava/lang/String;

    .line 1202
    .line 1203
    const-string v4, "Host"

    .line 1204
    .line 1205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v3

    .line 1209
    if-eqz v3, :cond_24

    .line 1210
    .line 1211
    const-string v1, "headers_host"

    .line 1212
    .line 1213
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    check-cast v2, Ljava/lang/String;

    .line 1218
    .line 1219
    const-string v3, " "

    .line 1220
    .line 1221
    const-string v4, ""

    .line 1222
    .line 1223
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    .line 1229
    .line 1230
    :cond_25
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFCDNTranscodeMethod:I

    .line 1231
    .line 1232
    const/4 v2, -0x1

    .line 1233
    if-eq v1, v2, :cond_26

    .line 1234
    .line 1235
    const-string v2, "fcdn_res_type"

    .line 1236
    .line 1237
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1238
    .line 1239
    .line 1240
    :cond_26
    return-object v0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 1243
    .line 1244
    .line 1245
    const/4 v0, 0x0

    .line 1246
    return-object v0
.end method

.method public enableCheckSei()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSei:Z

    .line 3
    .line 4
    return-void
.end method

.method public enableHardDecode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHardDecodeEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public enableSharp()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableSharp:Z

    .line 3
    .line 4
    return-void
.end method

.method public feedVideoDTS(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    const/16 v1, 0x258

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public getABRStreamInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public getAVPHStreamInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public getInt64Value(IJ)J
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 9
    .line 10
    iget-wide p1, p1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    .line 11
    .line 12
    return-wide p1

    .line 13
    :cond_1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMaxBitrate:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getIntOption(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1

    .line 27
    :cond_2
    int-to-long p1, v0

    .line 28
    return-wide p1
.end method

.method public getLiveInfoItems()Lorg/json/JSONObject;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    add-long/2addr v3, v5

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-long v2, v2

    .line 60
    div-long/2addr v0, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "cdn_play_url"

    .line 71
    .line 72
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    const-string v3, "-1"

    .line 77
    .line 78
    :cond_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "cdn_ip"

    .line 83
    .line 84
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    const-string v3, "none"

    .line 89
    .line 90
    :cond_3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "pull_stream_bitrate"

    .line 95
    .line 96
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    return-object v0
.end method

.method public getPlayingDownloadSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getRetryTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getStallTotalCount()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 2
    .line 3
    long-to-int v1, v0

    .line 4
    return v1
.end method

.method public getStaticLog()Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "playing_time:"

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 24
    .line 25
    sub-long/2addr v4, v6

    .line 26
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "live_sdk_version:"

    .line 31
    .line 32
    const-string v4, "1.4.6.31-lite"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "player_sdk_version:"

    .line 39
    .line 40
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    const-string v5, "-1"

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    move-object v4, v5

    .line 47
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v3, "cdn_ip:"

    .line 52
    .line 53
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object v5, v4

    .line 59
    :goto_0
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "push_client_sdk_version:"

    .line 64
    .line 65
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientSDKVersion:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v3, "push_client_platform:"

    .line 72
    .line 73
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPlatform:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "push_client_model:"

    .line 80
    .line 81
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientModel:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v3, "push_client_os_version:"

    .line 88
    .line 89
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientOSVersion:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v3, "push_client_is_hardware_encode:"

    .line 96
    .line 97
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHardwareEncode:I

    .line 98
    .line 99
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "push_client_push_protocol:"

    .line 104
    .line 105
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPushProtocal:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, "push_client_qid:"

    .line 112
    .line 113
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientQId:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v3, "push_client_bitrate:"

    .line 120
    .line 121
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 122
    .line 123
    iget v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiBitrate:I

    .line 124
    .line 125
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v3, "push_client_fps:"

    .line 130
    .line 131
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 132
    .line 133
    iget v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiFps:I

    .line 134
    .line 135
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v3, "Hit_Node_Optimizer:"

    .line 140
    .line 141
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHitNodeOptimizer:Z

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const/4 v4, 0x0

    .line 149
    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v3, "Evaluator_Symbol:"

    .line 154
    .line 155
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEvaluatorSymbol:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v3, "Is_Remote_Sorted:"

    .line 162
    .line 163
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsRemoteSorted:Z

    .line 164
    .line 165
    if-eqz v4, :cond_3

    .line 166
    .line 167
    const/4 v5, 0x1

    .line 168
    :cond_3
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v3, "Stall_Total_Count:"

    .line 173
    .line 174
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 175
    .line 176
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v3, "Stall_Total_Time:"

    .line 181
    .line 182
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 183
    .line 184
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v3, "Stall_Reason:"

    .line 189
    .line 190
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallReason:J

    .line 191
    .line 192
    const-wide/16 v6, -0x1

    .line 193
    .line 194
    cmp-long v8, v4, v6

    .line 195
    .line 196
    if-nez v8, :cond_4

    .line 197
    .line 198
    const-string v4, "no stall"

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    const-wide/16 v6, 0x0

    .line 202
    .line 203
    cmp-long v8, v4, v6

    .line 204
    .line 205
    if-nez v8, :cond_5

    .line 206
    .line 207
    const-string v4, "network stall"

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    const-string v4, "decode stall"

    .line 211
    .line 212
    :goto_2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v3, "audio_Render_Stall_Total_Count\uff1a"

    .line 217
    .line 218
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 219
    .line 220
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v3, "audio_Render_Stall_Total_Time\uff1a"

    .line 225
    .line 226
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 227
    .line 228
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v3, "video_Render_Stall_Total_Count\uff1a"

    .line 233
    .line 234
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 235
    .line 236
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v3, "video_Render_Stall_Total_Time\uff1a"

    .line 241
    .line 242
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 243
    .line 244
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const-string v3, "first_frame_time:"

    .line 249
    .line 250
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 251
    .line 252
    iget-wide v5, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 253
    .line 254
    iget-wide v7, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 255
    .line 256
    sub-long/2addr v5, v7

    .line 257
    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v3, "video_Buffer_Time:"

    .line 262
    .line 263
    iget-wide v4, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    .line 264
    .line 265
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const-string v3, "audio_Buffer_Time:"

    .line 270
    .line 271
    iget-wide v4, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    .line 272
    .line 273
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const-string v3, "delay:"

    .line 278
    .line 279
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 280
    .line 281
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    .line 282
    .line 283
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    const-string v3, "render_fps:"

    .line 288
    .line 289
    iget v4, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->fps:F

    .line 290
    .line 291
    float-to-double v4, v4

    .line 292
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const-string v3, "sei_source:"

    .line 297
    .line 298
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 299
    .line 300
    iget-object v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v3, "download_Speed:"

    .line 307
    .line 308
    iget-wide v4, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeed:J

    .line 309
    .line 310
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v3, "Error_Code:"

    .line 315
    .line 316
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 317
    .line 318
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const-string v3, "HardDecode:"

    .line 323
    .line 324
    iget-boolean v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHardDecodeEnable:Z

    .line 325
    .line 326
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-string v3, "Codec_Type:"

    .line 331
    .line 332
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecType:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v3, "Codec_Name:"

    .line 339
    .line 340
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecName:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const-string v3, "MDL_Vendor:"

    .line 347
    .line 348
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUsedP2P:I

    .line 349
    .line 350
    if-ne v4, v2, :cond_6

    .line 351
    .line 352
    const-string v2, "PCDN"

    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_6
    iget v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableOpenMDL:I

    .line 356
    .line 357
    if-ne v4, v2, :cond_7

    .line 358
    .line 359
    const-string v2, "Http-CDN"

    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_7
    const-string v2, "none"

    .line 363
    .line 364
    :goto_3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v2, "audio_Buffer_Time_On_First_Frame:"

    .line 369
    .line 370
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 371
    .line 372
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnFirstFrame:J

    .line 373
    .line 374
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    const-string v2, "waiting_Time_After_First_Frame:"

    .line 379
    .line 380
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 381
    .line 382
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 383
    .line 384
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    const-string v2, "dns_ip:"

    .line 389
    .line 390
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 391
    .line 392
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dnsIP:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v2, "url:"

    .line 399
    .line 400
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const-string v2, "width:"

    .line 407
    .line 408
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 409
    .line 410
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    const-string v2, "height:"

    .line 415
    .line 416
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 417
    .line 418
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    const-string v2, "resolution:"

    .line 423
    .line 424
    iget-object v0, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->resolution:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const-string v1, "play_format:"

    .line 431
    .line 432
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const-string v1, "play_protocol:"

    .line 439
    .line 440
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    const-string v1, "settings_res:"

    .line 447
    .line 448
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResolution:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const-string v1, "enable_resolution_auto_degrade:"

    .line 455
    .line 456
    iget-boolean v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableResolutionAutoDegrade:Z

    .line 457
    .line 458
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 459
    .line 460
    .line 461
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 465
    .line 466
    .line 467
    const/4 v0, 0x0

    .line 468
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->report(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x66

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportUpdateSessionSeries()V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public isInErrorRecovering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInErrorRecovering:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsPreview:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRtcPlayAvailable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableRtcPlay:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayFallBack:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isStalling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAbrSwitch(JLjava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "event_key"

    .line 15
    .line 16
    const-string v2, "abr_switch"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "auto_switch"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p4, 0x0

    .line 30
    :goto_0
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    const-string v1, "target_resoultion"

    .line 35
    .line 36
    invoke-virtual {p4, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string p4, "predict_bitrate"

    .line 41
    .line 42
    invoke-virtual {p3, p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "abr_switch_info"

    .line 47
    .line 48
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchInfo:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "cur_download_speed"

    .line 55
    .line 56
    iget-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurDownloadSpeed:J

    .line 57
    .line 58
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "cur_audio_buffer_time"

    .line 63
    .line 64
    iget-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurAudioBufferTime:J

    .line 65
    .line 66
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "cur_video_buffer_time"

    .line 71
    .line 72
    iget-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurVideoBufferTime:J

    .line 73
    .line 74
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "stall_count"

    .line 79
    .line 80
    iget-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 81
    .line 82
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "switch_cost"

    .line 87
    .line 88
    iget-wide p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCost:J

    .line 89
    .line 90
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "use_expect_bitrate"

    .line 95
    .line 96
    iget p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseExpectBitrate:I

    .line 97
    .line 98
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    iput v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseExpectBitrate:I

    .line 102
    .line 103
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 104
    .line 105
    const-string p2, "live_client_monitor_log"

    .line 106
    .line 107
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 111
    .line 112
    const-wide/16 p3, 0x0

    .line 113
    .line 114
    cmp-long v0, p1, p3

    .line 115
    .line 116
    if-lez v0, :cond_2

    .line 117
    .line 118
    const-wide/16 p3, 0x1

    .line 119
    .line 120
    add-long/2addr p1, p3

    .line 121
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    :cond_2
    return-void

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    return-void
.end method

.method public onAudioDTSRollback(JJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string v1, "event_key"

    .line 8
    .line 9
    const-string v2, "timestamp_rollback"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "packet_type"

    .line 16
    .line 17
    const-string v3, "audio"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "timestamp_type"

    .line 24
    .line 25
    const-string v3, "dts"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "latest_ts"

    .line 32
    .line 33
    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string p4, "previous_ts"

    .line 38
    .line 39
    invoke-virtual {p3, p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 43
    .line 44
    const-string p2, "live_client_monitor_log"

    .line 45
    .line 46
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 50
    .line 51
    const-wide/16 p3, 0x0

    .line 52
    .line 53
    cmp-long v0, p1, p3

    .line 54
    .line 55
    if-lez v0, :cond_0

    .line 56
    .line 57
    const-wide/16 p3, 0x1

    .line 58
    .line 59
    add-long/2addr p1, p3

    .line 60
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onAudioRenderStart(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioRenderTimestamp:J

    .line 4
    .line 5
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStartTime:J

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onCallNotInMainThread(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    const-string v1, "event_key"

    .line 17
    .line 18
    const-string v2, "call_not_in_main_thread"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "api_name"

    .line 25
    .line 26
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 30
    .line 31
    const-string v1, "live_client_monitor_log"

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 37
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    cmp-long p1, v0, v2

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    const-wide/16 v2, 0x1

    .line 45
    .line 46
    add-long/2addr v0, v2

    .line 47
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public onCallPrepare()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onDecoderStall(JIZ)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_5

    .line 13
    .line 14
    int-to-long v0, p3

    .line 15
    cmp-long p3, p1, v0

    .line 16
    .line 17
    if-gtz p3, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalCount:J

    .line 25
    .line 26
    add-long/2addr v2, v0

    .line 27
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalCount:J

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalTime:J

    .line 30
    .line 31
    add-long/2addr v2, p1

    .line 32
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalTime:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalCount:J

    .line 36
    .line 37
    add-long/2addr v2, v0

    .line 38
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalCount:J

    .line 39
    .line 40
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalTime:J

    .line 41
    .line 42
    add-long/2addr v2, p1

    .line 43
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalTime:J

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    if-eqz p3, :cond_4

    .line 50
    .line 51
    :try_start_0
    const-string v2, "event_key"

    .line 52
    .line 53
    const-string v3, "decode_stall"

    .line 54
    .line 55
    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "type"

    .line 60
    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    const-string p4, "video"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string p4, "audio"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    const-string v2, "decode_stall_time"

    .line 73
    .line 74
    invoke-virtual {p4, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 78
    .line 79
    const-string p2, "live_client_monitor_log"

    .line 80
    .line 81
    invoke-interface {p1, p3, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 85
    .line 86
    const-wide/16 p3, 0x0

    .line 87
    .line 88
    cmp-long v2, p1, p3

    .line 89
    .line 90
    if-lez v2, :cond_3

    .line 91
    .line 92
    add-long/2addr p1, v0

    .line 93
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void

    .line 101
    :cond_5
    :goto_2
    sget-object p3, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    const-string p4, "abnormal decode stall time"

    .line 104
    .line 105
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p3, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onDemuxerStall(JIZ)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_5

    .line 13
    .line 14
    int-to-long v0, p3

    .line 15
    cmp-long p3, p1, v0

    .line 16
    .line 17
    if-gtz p3, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalCount:J

    .line 25
    .line 26
    add-long/2addr v2, v0

    .line 27
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalCount:J

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalTime:J

    .line 30
    .line 31
    add-long/2addr v2, p1

    .line 32
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalTime:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalCount:J

    .line 36
    .line 37
    add-long/2addr v2, v0

    .line 38
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalCount:J

    .line 39
    .line 40
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalTime:J

    .line 41
    .line 42
    add-long/2addr v2, p1

    .line 43
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalTime:J

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    if-eqz p3, :cond_4

    .line 50
    .line 51
    :try_start_0
    const-string v2, "event_key"

    .line 52
    .line 53
    const-string v3, "demux_stall"

    .line 54
    .line 55
    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "type"

    .line 60
    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    const-string p4, "video"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string p4, "audio"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    const-string v2, "demux_stall_time"

    .line 73
    .line 74
    invoke-virtual {p4, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 78
    .line 79
    const-string p2, "live_client_monitor_log"

    .line 80
    .line 81
    invoke-interface {p1, p3, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 85
    .line 86
    const-wide/16 p3, 0x0

    .line 87
    .line 88
    cmp-long v2, p1, p3

    .line 89
    .line 90
    if-lez v2, :cond_3

    .line 91
    .line 92
    add-long/2addr p1, v0

    .line 93
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void

    .line 101
    :cond_5
    :goto_2
    sget-object p3, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    const-string p4, "abnormal demux stall time"

    .line 104
    .line 105
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p3, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 19
    .line 20
    iget-wide v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 21
    .line 22
    sub-long/2addr v1, v3

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :try_start_1
    const-string v1, "event_key"

    .line 53
    .line 54
    const-string v2, "play_error"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "code"

    .line 61
    .line 62
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "info"

    .line 67
    .line 68
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 75
    .line 76
    const-string v1, "live_client_monitor_log"

    .line 77
    .line 78
    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    cmp-long p2, v0, v2

    .line 86
    .line 87
    if-lez p2, :cond_1

    .line 88
    .line 89
    const-wide/16 v2, 0x1

    .line 90
    .line 91
    add-long/2addr v0, v2

    .line 92
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 93
    .line 94
    :cond_1
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    return-void

    .line 97
    :catch_1
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public onErrorRecovered()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInErrorRecovering:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    sget-object v2, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "recover from error time "

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 35
    .line 36
    const-wide/16 v2, 0x1

    .line 37
    .line 38
    add-long/2addr v0, v2

    .line 39
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 40
    .line 41
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 48
    .line 49
    sub-long/2addr v2, v4

    .line 50
    add-long/2addr v0, v2

    .line 51
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public onFirstFrame(JJ)V
    .locals 11

    .line 1
    const-string v0, "cmaf"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 5
    .line 6
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 7
    .line 8
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameRetryCount:I

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastPrepareTime:J

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFramePrepareTime:J

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 25
    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playTime:J

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 49
    .line 50
    iget-boolean v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsHitCache:Z

    .line 51
    .line 52
    move-object v4, p0

    .line 53
    move-wide v6, p1

    .line 54
    move-wide v9, p3

    .line 55
    invoke-direct/range {v4 .. v10}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createFirstFrameLog(Lcom/bykv/vk/component/ttvideo/log/LogBundle;JZJ)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-wide p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 60
    .line 61
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 62
    .line 63
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 64
    .line 65
    sub-long/2addr p2, v1

    .line 66
    iput-wide p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameView:J

    .line 67
    .line 68
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 79
    .line 80
    const-string p3, "avph"

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    :cond_1
    const-string p2, "video_dns_analysis_end"

    .line 89
    .line 90
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 91
    .line 92
    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDNSTimestamp:J

    .line 93
    .line 94
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const-string p3, "audio_dns_analysis_end"

    .line 99
    .line 100
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 101
    .line 102
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDNSTimestamp:J

    .line 103
    .line 104
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const-string p3, "video_tcp_connect_time"

    .line 109
    .line 110
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 111
    .line 112
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpConnectTimestamp:J

    .line 113
    .line 114
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string p3, "audio_tcp_connect_time"

    .line 119
    .line 120
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 121
    .line 122
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpConnectTimestamp:J

    .line 123
    .line 124
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const-string p3, "video_tcp_first_packet_time"

    .line 129
    .line 130
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 131
    .line 132
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpFirstPacketTimestamp:J

    .line 133
    .line 134
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string p3, "audio_tcp_first_packet_time"

    .line 139
    .line 140
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 141
    .line 142
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpFirstPacketTimestamp:J

    .line 143
    .line 144
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-string p3, "video_http_req_finish_time"

    .line 149
    .line 150
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 151
    .line 152
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpReqFinishTimestamp:J

    .line 153
    .line 154
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    const-string p3, "audio_http_req_finish_time"

    .line 159
    .line 160
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 161
    .line 162
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpReqFinishTimestamp:J

    .line 163
    .line 164
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string p3, "video_http_res_finish_time"

    .line 169
    .line 170
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 171
    .line 172
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpResFinishTimestamp:J

    .line 173
    .line 174
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const-string p3, "audio_http_res_finish_time"

    .line 179
    .line 180
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 181
    .line 182
    iget-wide v1, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpResFinishTimestamp:J

    .line 183
    .line 184
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_2

    .line 194
    .line 195
    const-string p2, "cmaf_mpd_dns_analysis_end"

    .line 196
    .line 197
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 198
    .line 199
    iget-wide p3, p3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdDNSTimestamp:J

    .line 200
    .line 201
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    const-string p3, "cmaf_mpd_tcp_connect_time"

    .line 206
    .line 207
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 208
    .line 209
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdTcpConntectTimestamp:J

    .line 210
    .line 211
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    const-string p3, "cmaf_mpd_tcp_first_package_end"

    .line 216
    .line 217
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 218
    .line 219
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpTcpFirstPacketTimestamp:J

    .line 220
    .line 221
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    const-string p3, "cmaf_mpd_http_req_finish_time"

    .line 226
    .line 227
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 228
    .line 229
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpReqFinishTimestamp:J

    .line 230
    .line 231
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-string p3, "cmaf_mpd_http_res_finish_time"

    .line 236
    .line 237
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 238
    .line 239
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpResFinishTimestamp:J

    .line 240
    .line 241
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    const-string p3, "cmaf_audio_firstseg_connect_time"

    .line 246
    .line 247
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 248
    .line 249
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafAudioFirstSegConntectTimestamp:J

    .line 250
    .line 251
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    const-string p3, "cmaf_video_firstseg_connect_time"

    .line 256
    .line 257
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 258
    .line 259
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafVideoFirstSegConntectTimestamp:J

    .line 260
    .line 261
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    const-string p3, "cmaf_mpd_connect_time"

    .line 266
    .line 267
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 268
    .line 269
    iget-wide v0, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdConntectTimestamp:J

    .line 270
    .line 271
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    :cond_2
    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 275
    .line 276
    .line 277
    :cond_3
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 278
    .line 279
    const-string p3, "live_client_monitor_log"

    .line 280
    .line 281
    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 285
    .line 286
    const-wide/16 p3, 0x0

    .line 287
    .line 288
    cmp-long v0, p1, p3

    .line 289
    .line 290
    if-lez v0, :cond_4

    .line 291
    .line 292
    const-wide/16 p3, 0x1

    .line 293
    .line 294
    add-long/2addr p1, p3

    .line 295
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 296
    .line 297
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string p2, "1.0:"

    .line 300
    .line 301
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-wide p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 305
    .line 306
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchInfo:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .line 315
    return-void

    .line 316
    :catch_0
    move-exception p1

    .line 317
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    :cond_5
    :goto_0
    return-void
.end method

.method public onFirstFrameFail(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :try_start_0
    const-string v1, "event_key"

    .line 27
    .line 28
    const-string v2, "first_frame_failed"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "start_time"

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "reason"

    .line 45
    .line 46
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 53
    .line 54
    const-string v1, "live_client_monitor_log"

    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    cmp-long p1, v0, v2

    .line 64
    .line 65
    if-lez p1, :cond_1

    .line 66
    .line 67
    const-wide/16 v2, 0x1

    .line 68
    .line 69
    add-long/2addr v0, v2

    .line 70
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public onIllegalAPICall(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    const-string v1, "event_key"

    .line 23
    .line 24
    const-string v2, "illegal_call"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "api_name"

    .line 31
    .line 32
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 39
    .line 40
    const-string v1, "live_client_monitor_log"

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 46
    .line 47
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    cmp-long p1, v0, v2

    .line 50
    .line 51
    if-lez p1, :cond_1

    .line 52
    .line 53
    const-wide/16 v2, 0x1

    .line 54
    .line 55
    add-long/2addr v0, v2

    .line 56
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderError(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string v1, "event_key"

    .line 8
    .line 9
    const-string v2, "p2p_error"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "error_msg"

    .line 16
    .line 17
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v1, "code"

    .line 22
    .line 23
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 27
    .line 28
    const-string p2, "live_client_monitor_log"

    .line 29
    .line 30
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    cmp-long v2, p1, v0

    .line 38
    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    const-wide/16 v0, 0x1

    .line 42
    .line 43
    add-long/2addr p1, v0

    .line 44
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onLoaderSwitch(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    const-string v1, "cdn_to_p2p"

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUsedP2P:I

    .line 17
    .line 18
    :cond_0
    const-string v1, "event_key"

    .line 19
    .line 20
    const-string v2, "p2p_switch"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "switch_info"

    .line 27
    .line 28
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v1, "p2p_vendor"

    .line 33
    .line 34
    const-string v2, "none"

    .line 35
    .line 36
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v1, "reason"

    .line 41
    .line 42
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 46
    .line 47
    const-string p2, "live_client_monitor_log"

    .line 48
    .line 49
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 53
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    cmp-long v2, p1, v0

    .line 57
    .line 58
    if-lez v2, :cond_1

    .line 59
    .line 60
    const-wide/16 v0, 0x1

    .line 61
    .line 62
    add-long/2addr p1, v0

    .line 63
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStartTime:J

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 20
    .line 21
    iput-object p2, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dnsIP:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurrentPlayURL:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_0
    const-string p2, "event_key"

    .line 38
    .line 39
    const-string v0, "start_play"

    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, "rule_ids"

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRuleIds:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v0, "set_surface_cost"

    .line 54
    .line 55
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceCost:J

    .line 56
    .line 57
    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v0, "start_play_time"

    .line 62
    .line 63
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 64
    .line 65
    iget-wide v1, v1, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 66
    .line 67
    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "stream_data"

    .line 72
    .line 73
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamData:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v0, "suggest_format"

    .line 80
    .line 81
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string v0, "play_format"

    .line 88
    .line 89
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "suggest_protocol"

    .line 96
    .line 97
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string v0, "origin_url"

    .line 104
    .line 105
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOriginUrl:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v0, "log_total_count_when_playing"

    .line 112
    .line 113
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 114
    .line 115
    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 119
    .line 120
    const-string v0, "live_client_monitor_log"

    .line 121
    .line 122
    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 126
    .line 127
    const-wide/16 v0, 0x1

    .line 128
    .line 129
    add-long/2addr p1, v0

    .line 130
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    return-void

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public onPrepare(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 19
    .line 20
    const-string v2, "none"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorCode:I

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getPlayerErrorInfo()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v1, v2

    .line 37
    :goto_0
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorMsg:Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    if-eqz v0, :cond_a

    .line 40
    .line 41
    :try_start_0
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstAudioPacketDTS:J

    .line 42
    .line 43
    const-wide/16 v6, 0x0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    cmp-long v8, v4, v6

    .line 47
    .line 48
    if-lez v8, :cond_3

    .line 49
    .line 50
    iget-wide v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreviousAudioPacketDTS:J

    .line 51
    .line 52
    cmp-long v10, v8, v6

    .line 53
    .line 54
    if-lez v10, :cond_3

    .line 55
    .line 56
    cmp-long v10, v4, v8

    .line 57
    .line 58
    if-gez v10, :cond_3

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v4, 0x0

    .line 63
    :goto_1
    const-string v5, "event_key"

    .line 64
    .line 65
    const-string v8, "prepare_result"

    .line 66
    .line 67
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v8, "error_msg"

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object v9, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 76
    .line 77
    invoke-virtual {v9}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getPlayerErrorInfo()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move-object v9, v2

    .line 83
    :goto_2
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v8, "result"

    .line 88
    .line 89
    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v5, "sdk_params"

    .line 94
    .line 95
    iget-object v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move-object v2, v8

    .line 101
    :goto_3
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v2, "first_audio_packet_dts_rollback"

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    const/4 v4, 0x0

    .line 112
    :goto_4
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v2, "first_audio_packet_dts"

    .line 117
    .line 118
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstAudioPacketDTS:J

    .line 119
    .line 120
    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v2, "previous_audio_packet_dts"

    .line 125
    .line 126
    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreviousAudioPacketDTS:J

    .line 127
    .line 128
    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v2, "stream_type"

    .line 133
    .line 134
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 135
    .line 136
    iget v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mStreamType:I

    .line 137
    .line 138
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v2, "suggest_format"

    .line 143
    .line 144
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v2, "suggest_protocol"

    .line 151
    .line 152
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v2, "nnsr_enabled"

    .line 159
    .line 160
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getSRState()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_8

    .line 167
    .line 168
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 169
    .line 170
    invoke-virtual {v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getSharpenState()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    const/4 v3, 0x0

    .line 178
    :cond_8
    :goto_5
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 182
    .line 183
    const-string v1, "live_client_monitor_log"

    .line 184
    .line 185
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 189
    .line 190
    cmp-long p1, v0, v6

    .line 191
    .line 192
    if-lez p1, :cond_9

    .line 193
    .line 194
    const-wide/16 v2, 0x1

    .line 195
    .line 196
    add-long/2addr v0, v2

    .line 197
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    :cond_9
    return-void

    .line 200
    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    :cond_a
    return-void
.end method

.method public onPrepareEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    .line 23
    .line 24
    return-void
.end method

.method public onPtsBack(JZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string v1, "event_key"

    .line 8
    .line 9
    const-string v2, "pts_back"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "type"

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const-string p3, "video"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p3, "audio"

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const-string v1, "pts_back_diff"

    .line 29
    .line 30
    invoke-virtual {p3, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 34
    .line 35
    const-string p2, "live_client_monitor_log"

    .line 36
    .line 37
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onRecvRtcEventNotify(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "recv event notify: "

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1, v1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->updateRequestTimeFieldInRtcPlay(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    sget-object v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "recv event notify error occurs error:"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public onRecvedRtcTraceInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string v1, "product_line"

    .line 18
    .line 19
    const-string v2, "rts"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "rtc_trace_info"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "rts_play_stop"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "event_message"

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayStopStatInfo:Ljava/lang/String;

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 57
    .line 58
    const-string v1, "live_webrtc_monitor_log"

    .line 59
    .line 60
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public onRecvedSPSPPS(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "event_key"

    .line 15
    .line 16
    const-string v2, "recved_spspps"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "spspps"

    .line 23
    .line 24
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 28
    .line 29
    const-string v1, "live_client_monitor_log"

    .line 30
    .line 31
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long p1, v0, v2

    .line 39
    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    const-wide/16 v2, 0x1

    .line 43
    .line 44
    add-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public onRenderStall(JIZZ)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_6

    .line 13
    .line 14
    int-to-long v0, p3

    .line 15
    cmp-long p3, p1, v0

    .line 16
    .line 17
    if-gtz p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const/4 p3, 0x1

    .line 22
    const-wide/16 v0, 0x1

    .line 23
    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    sget-object v2, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "video render stall time "

    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 42
    .line 43
    add-int/2addr v2, p3

    .line 44
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 47
    .line 48
    add-long/2addr v2, v0

    .line 49
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 50
    .line 51
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 52
    .line 53
    int-to-long v2, v2

    .line 54
    add-long/2addr v2, p1

    .line 55
    long-to-int v3, v2

    .line 56
    iput v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 59
    .line 60
    add-long/2addr v2, p1

    .line 61
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 62
    .line 63
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 64
    .line 65
    if-ne v2, p3, :cond_2

    .line 66
    .line 67
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalCount:J

    .line 68
    .line 69
    add-long/2addr v2, v0

    .line 70
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalCount:J

    .line 71
    .line 72
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalTime:J

    .line 73
    .line 74
    add-long/2addr v2, p1

    .line 75
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalTime:J

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v2, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v3, "audio render stall time "

    .line 81
    .line 82
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 94
    .line 95
    add-int/2addr v2, p3

    .line 96
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 97
    .line 98
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 99
    .line 100
    add-long/2addr v2, v0

    .line 101
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 102
    .line 103
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 104
    .line 105
    int-to-long v2, v2

    .line 106
    add-long/2addr v2, p1

    .line 107
    long-to-int v3, v2

    .line 108
    iput v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 109
    .line 110
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 111
    .line 112
    add-long/2addr v2, p1

    .line 113
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 114
    .line 115
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 116
    .line 117
    if-ne v2, p3, :cond_2

    .line 118
    .line 119
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalCount:J

    .line 120
    .line 121
    add-long/2addr v2, v0

    .line 122
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalCount:J

    .line 123
    .line 124
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalTime:J

    .line 125
    .line 126
    add-long/2addr v2, p1

    .line 127
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalTime:J

    .line 128
    .line 129
    :cond_2
    :goto_0
    if-eqz p5, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    iget-object p5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 138
    .line 139
    const/4 v3, 0x4

    .line 140
    invoke-virtual {p5, v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 141
    .line 142
    .line 143
    if-eqz p3, :cond_5

    .line 144
    .line 145
    :try_start_0
    const-string p5, "event_key"

    .line 146
    .line 147
    const-string v2, "render_stall"

    .line 148
    .line 149
    invoke-virtual {p3, p5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object p5

    .line 153
    const-string v2, "type"

    .line 154
    .line 155
    if-eqz p4, :cond_3

    .line 156
    .line 157
    const-string p4, "video"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    const-string p4, "audio"

    .line 161
    .line 162
    :goto_1
    invoke-virtual {p5, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    const-string p5, "render_stall_time"

    .line 167
    .line 168
    invoke-virtual {p4, p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string p2, "video_buffer_time"

    .line 173
    .line 174
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 175
    .line 176
    iget-wide p4, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    .line 177
    .line 178
    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string p2, "audio_buffer_time"

    .line 183
    .line 184
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 185
    .line 186
    iget-wide p4, p4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    .line 187
    .line 188
    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 192
    .line 193
    const-string p2, "live_client_monitor_log"

    .line 194
    .line 195
    invoke-interface {p1, p3, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 199
    .line 200
    const-wide/16 p3, 0x0

    .line 201
    .line 202
    cmp-long p5, p1, p3

    .line 203
    .line 204
    if-lez p5, :cond_4

    .line 205
    .line 206
    add-long/2addr p1, v0

    .line 207
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    :cond_4
    return-void

    .line 210
    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    :cond_5
    return-void

    .line 215
    :cond_6
    :goto_2
    sget-object p3, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 216
    .line 217
    const-string p4, "abnormal render stall time"

    .line 218
    .line 219
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p3, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public onRetry(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 6
    .line 7
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->calculateRenderFailType()V

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :try_start_0
    const-string v1, "event_key"

    .line 31
    .line 32
    const-string v2, "retry"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "reason"

    .line 39
    .line 40
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "code"

    .line 47
    .line 48
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "render_fail_type"

    .line 53
    .line 54
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 63
    .line 64
    const-string v1, "live_client_monitor_log"

    .line 65
    .line 66
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 70
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .line 73
    cmp-long p1, v0, v2

    .line 74
    .line 75
    if-lez p1, :cond_0

    .line 76
    .line 77
    const-wide/16 v2, 0x1

    .line 78
    .line 79
    add-long/2addr v0, v2

    .line 80
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public onRtcDecoderStall(JZ)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    sget-object p3, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "abnormal rtc decode stall time"

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p3, p1}, Lcom/bykv/vk/component/ttvideo/log/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    :try_start_0
    const-string v1, "event_key"

    .line 37
    .line 38
    const-string v2, "rtc_decode_stall"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "type"

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    const-string p3, "video"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p3, "audio"

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const-string v1, "decode_stall_time"

    .line 58
    .line 59
    invoke-virtual {p3, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 63
    .line 64
    const-string p2, "live_client_monitor_log"

    .line 65
    .line 66
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 70
    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .line 73
    cmp-long p3, p1, v0

    .line 74
    .line 75
    if-lez p3, :cond_2

    .line 76
    .line 77
    const-wide/16 v0, 0x1

    .line 78
    .line 79
    add-long/2addr p1, v0

    .line 80
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    :cond_2
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public onSDKDNSComplete(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    .line 18
    .line 19
    :cond_0
    iput-boolean p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHitNodeOptimizer:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsHitCache:Z

    .line 22
    .line 23
    return-void
.end method

.method public onSDKDNSError(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    :try_start_0
    const-string v1, "event_key"

    .line 8
    .line 9
    const-string v2, "prepare_result"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "error_msg"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/log/LiveError;->getInfoJSON()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "result"

    .line 26
    .line 27
    iget p1, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "sdk_params"

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    const-string v2, "none"

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "stream_type"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 48
    .line 49
    iget v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mStreamType:I

    .line 50
    .line 51
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "suggest_format"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "suggest_protocol"

    .line 64
    .line 65
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "nnsr_enabled"

    .line 72
    .line 73
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getSRState()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getSharpenState()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 93
    :goto_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 97
    .line 98
    const-string v1, "live_client_monitor_log"

    .line 99
    .line 100
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 104
    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .line 107
    cmp-long p1, v0, v2

    .line 108
    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    const-wide/16 v2, 0x1

    .line 112
    .line 113
    add-long/2addr v0, v2

    .line 114
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    :cond_3
    return-void

    .line 117
    :catch_0
    move-exception p1

    .line 118
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method

.method public onSessionStop()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    iget-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_a

    .line 12
    .line 13
    :cond_0
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getSessionlogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionHasFirstFrame:Z

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 33
    .line 34
    sub-long/2addr v5, v7

    .line 35
    move-wide v7, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStartTime:J

    .line 42
    .line 43
    sub-long/2addr v5, v7

    .line 44
    move-wide v7, v5

    .line 45
    move-wide v5, v3

    .line 46
    :goto_0
    iget v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    add-int/2addr v2, v9

    .line 50
    iput v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 51
    .line 52
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallStartTime:J

    .line 53
    .line 54
    cmp-long v2, v10, v3

    .line 55
    .line 56
    if-lez v2, :cond_2

    .line 57
    .line 58
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 59
    .line 60
    sub-long v12, v10, v12

    .line 61
    .line 62
    iget-wide v14, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallEndTime:J

    .line 63
    .line 64
    sub-long/2addr v14, v10

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-wide v12, v3

    .line 67
    move-wide v14, v12

    .line 68
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isStalling()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-wide/16 v10, 0x1

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget-wide v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 77
    .line 78
    add-long/2addr v3, v10

    .line 79
    iput-wide v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 80
    .line 81
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v18

    .line 87
    iget-wide v9, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 88
    .line 89
    sub-long v18, v18, v9

    .line 90
    .line 91
    add-long v2, v2, v18

    .line 92
    .line 93
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 94
    .line 95
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->calculateSessionRenderFailType()V

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 99
    .line 100
    iget-wide v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    .line 101
    .line 102
    if-eqz v0, :cond_c

    .line 103
    .line 104
    :try_start_0
    const-string v9, "event_key"

    .line 105
    .line 106
    const-string v10, "session_stop"

    .line 107
    .line 108
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const-string v10, "index"

    .line 113
    .line 114
    iget v11, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 115
    .line 116
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    const-string v10, "stop_time"

    .line 121
    .line 122
    move-wide/from16 v18, v5

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    invoke-virtual {v9, v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v5, "play_time"

    .line 133
    .line 134
    move-wide/from16 v9, v18

    .line 135
    .line 136
    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v5, "is_stream_received"

    .line 141
    .line 142
    iget-boolean v9, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionHasFirstFrame:Z

    .line 143
    .line 144
    if-eqz v9, :cond_4

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 v9, 0x0

    .line 149
    :goto_2
    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v5, "render_fail_type"

    .line 154
    .line 155
    iget v9, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionRenderFailType:I

    .line 156
    .line 157
    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const-string v5, "code"

    .line 162
    .line 163
    iget v9, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorCode:I

    .line 164
    .line 165
    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v5, "stall_count"

    .line 170
    .line 171
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 172
    .line 173
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v5, "stall_time"

    .line 178
    .line 179
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 180
    .line 181
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const-string v5, "audio_render_stall_count"

    .line 186
    .line 187
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalCount:J

    .line 188
    .line 189
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v5, "audio_render_stall_time"

    .line 194
    .line 195
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStallTotalTime:J

    .line 196
    .line 197
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const-string v5, "video_render_stall_count"

    .line 202
    .line 203
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalCount:J

    .line 204
    .line 205
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-string v5, "video_render_stall_time"

    .line 210
    .line 211
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStallTotalTime:J

    .line 212
    .line 213
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const-string v5, "start"

    .line 218
    .line 219
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStartTime:J

    .line 220
    .line 221
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const-string v5, "sdk_dns_analysis_end"

    .line 226
    .line 227
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 228
    .line 229
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    .line 230
    .line 231
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    const-string v5, "player_dns_analysis_end"

    .line 236
    .line 237
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 238
    .line 239
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    .line 240
    .line 241
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    const-string v5, "http_req_finish_time"

    .line 246
    .line 247
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 248
    .line 249
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpReqFinishTimestamp:J

    .line 250
    .line 251
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    const-string v5, "http_res_finish_time"

    .line 256
    .line 257
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 258
    .line 259
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpResFinishTimestamp:J

    .line 260
    .line 261
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    const-string v5, "tcp_first_package_end"

    .line 266
    .line 267
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 268
    .line 269
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpFirstPacketTimestamp:J

    .line 270
    .line 271
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    const-string v5, "first_video_package_end"

    .line 276
    .line 277
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 278
    .line 279
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoPacketTimestamp:J

    .line 280
    .line 281
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    const-string v5, "first_audio_package_end"

    .line 286
    .line 287
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 288
    .line 289
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioPacketTimestamp:J

    .line 290
    .line 291
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    const-string v5, "first_video_frame_decode_end"

    .line 296
    .line 297
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 298
    .line 299
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDecodeTimestamp:J

    .line 300
    .line 301
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const-string v5, "first_audio_frame_decode_end"

    .line 306
    .line 307
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 308
    .line 309
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDecodeTimestamp:J

    .line 310
    .line 311
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    const-string v5, "video_device_open_start"

    .line 316
    .line 317
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 318
    .line 319
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenTime:J

    .line 320
    .line 321
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    const-string v5, "video_device_open_end"

    .line 326
    .line 327
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 328
    .line 329
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenedTime:J

    .line 330
    .line 331
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    const-string v5, "audio_device_open_start"

    .line 336
    .line 337
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 338
    .line 339
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenTime:J

    .line 340
    .line 341
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    const-string v5, "audio_device_open_end"

    .line 346
    .line 347
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 348
    .line 349
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenedTime:J

    .line 350
    .line 351
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    const-string v5, "video_device_wait_start"

    .line 356
    .line 357
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 358
    .line 359
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitStartTime:J

    .line 360
    .line 361
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    const-string v5, "video_device_wait_end"

    .line 366
    .line 367
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 368
    .line 369
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitEndTime:J

    .line 370
    .line 371
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    const-string v5, "find_stream_info_start"

    .line 376
    .line 377
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 378
    .line 379
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFindTime:J

    .line 380
    .line 381
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    const-string v5, "find_stream_info_end"

    .line 386
    .line 387
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 388
    .line 389
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFoundTime:J

    .line 390
    .line 391
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    const-string v5, "video_param_send_outlet_time"

    .line 396
    .line 397
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 398
    .line 399
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoParamSendOutletTime:J

    .line 400
    .line 401
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    const-string v5, "first_video_frame_send_outlet_time"

    .line 406
    .line 407
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 408
    .line 409
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->firstVideoFrameSendOutletTime:J

    .line 410
    .line 411
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    const-string v5, "first_frame_render_end"

    .line 416
    .line 417
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionVideoRenderStartTime:J

    .line 418
    .line 419
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    const-string v5, "first_audio_frame_end"

    .line 424
    .line 425
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionAudioRenderStartTime:J

    .line 426
    .line 427
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    const-string v5, "prepare_end"

    .line 432
    .line 433
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 434
    .line 435
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    .line 436
    .line 437
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    const-string v5, "prepare_block_end"

    .line 442
    .line 443
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 444
    .line 445
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    .line 446
    .line 447
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    const-string v5, "video_first_pkt_pos"

    .line 452
    .line 453
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 454
    .line 455
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPos:J

    .line 456
    .line 457
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    const-string v5, "video_first_pkt_pts"

    .line 462
    .line 463
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 464
    .line 465
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPts:J

    .line 466
    .line 467
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    const-string v5, "audio_first_pkt_pos"

    .line 472
    .line 473
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 474
    .line 475
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPos:J

    .line 476
    .line 477
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    const-string v5, "audio_first_pkt_pts"

    .line 482
    .line 483
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 484
    .line 485
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPts:J

    .line 486
    .line 487
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    const-string v5, "video_render_type"

    .line 492
    .line 493
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 494
    .line 495
    iget v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->renderType:I

    .line 496
    .line 497
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    const-string v5, "download_speed"

    .line 502
    .line 503
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 504
    .line 505
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeedOnFirstFrame:J

    .line 506
    .line 507
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    const-string v5, "video_buffer_time"

    .line 512
    .line 513
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 514
    .line 515
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnFirstFrame:J

    .line 516
    .line 517
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    const-string v5, "audio_buffer_time"

    .line 522
    .line 523
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 524
    .line 525
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnFirstFrame:J

    .line 526
    .line 527
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    const-string v5, "wait_time"

    .line 532
    .line 533
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 534
    .line 535
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 536
    .line 537
    const-wide/16 v16, 0x0

    .line 538
    .line 539
    cmp-long v18, v10, v16

    .line 540
    .line 541
    if-lez v18, :cond_5

    .line 542
    .line 543
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 544
    .line 545
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 546
    .line 547
    goto :goto_3

    .line 548
    :cond_5
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 549
    .line 550
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 551
    .line 552
    neg-long v10, v10

    .line 553
    :goto_3
    invoke-virtual {v4, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    const-string v5, "is_waiting"

    .line 558
    .line 559
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 560
    .line 561
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 562
    .line 563
    const-wide/16 v16, 0x0

    .line 564
    .line 565
    cmp-long v18, v10, v16

    .line 566
    .line 567
    if-ltz v18, :cond_6

    .line 568
    .line 569
    const/4 v10, 0x0

    .line 570
    goto :goto_4

    .line 571
    :cond_6
    const/4 v10, 0x1

    .line 572
    :goto_4
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    const-string v5, "first_stall_time"

    .line 577
    .line 578
    invoke-virtual {v4, v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    const-string v5, "first_stall_duration"

    .line 583
    .line 584
    invoke-virtual {v4, v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    const-string v5, "play_time_on_no_frame"

    .line 589
    .line 590
    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    const-string v5, "sdk_params"

    .line 595
    .line 596
    iget-object v7, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 597
    .line 598
    if-nez v7, :cond_7

    .line 599
    .line 600
    const-string v7, "none"

    .line 601
    .line 602
    :cond_7
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    const-string v5, "total_download_size"

    .line 607
    .line 608
    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    const-string v3, "drop_audio_pts_diff"

    .line 613
    .line 614
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 615
    .line 616
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioPts:J

    .line 617
    .line 618
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    const-string v3, "drop_audio_cost"

    .line 623
    .line 624
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 625
    .line 626
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioCostTime:J

    .line 627
    .line 628
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    const-string v3, "sr_used"

    .line 633
    .line 634
    iget-boolean v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSRSuccess:Z

    .line 635
    .line 636
    if-eqz v4, :cond_8

    .line 637
    .line 638
    const/4 v4, 0x1

    .line 639
    goto :goto_5

    .line 640
    :cond_8
    const/4 v4, 0x0

    .line 641
    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    const-string v3, "sharpen_used"

    .line 646
    .line 647
    iget-boolean v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasUsedSharpen:Z

    .line 648
    .line 649
    if-eqz v4, :cond_9

    .line 650
    .line 651
    const/4 v9, 0x1

    .line 652
    goto :goto_6

    .line 653
    :cond_9
    const/4 v9, 0x0

    .line 654
    :goto_6
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    const-string v3, "network_timeout"

    .line 659
    .line 660
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNetworkTimeoutMs:I

    .line 661
    .line 662
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    const-string v3, "suggest_format"

    .line 667
    .line 668
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    const-string v3, "suggest_protocol"

    .line 675
    .line 676
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    const-string v3, "error_msg"

    .line 683
    .line 684
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorMsg:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    .line 688
    .line 689
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .line 691
    const-string v3, "tcp_connect_end"

    .line 692
    .line 693
    if-nez v2, :cond_a

    .line 694
    .line 695
    :try_start_1
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 696
    .line 697
    iget-wide v4, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    .line 698
    .line 699
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 700
    .line 701
    .line 702
    goto :goto_8

    .line 703
    :cond_a
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 704
    .line 705
    const-string v4, "kcp"

    .line 706
    .line 707
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    if-eqz v2, :cond_b

    .line 712
    .line 713
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 714
    .line 715
    iget-wide v4, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    .line 716
    .line 717
    goto :goto_7

    .line 718
    :cond_b
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 719
    .line 720
    iget-wide v4, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    .line 721
    .line 722
    :goto_7
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 723
    .line 724
    .line 725
    :goto_8
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 726
    .line 727
    const-wide/16 v4, 0x1

    .line 728
    .line 729
    add-long/2addr v2, v4

    .line 730
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 731
    .line 732
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 733
    .line 734
    const-string v3, "live_client_monitor_log"

    .line 735
    .line 736
    invoke-interface {v2, v0, v3}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    .line 738
    .line 739
    goto :goto_9

    .line 740
    :catch_0
    move-exception v0

    .line 741
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 742
    .line 743
    .line 744
    :cond_c
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->resetSessionInfo()V

    .line 745
    .line 746
    .line 747
    :cond_d
    :goto_a
    return-void
.end method

.method public onStallEnd(I)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 2
    .line 3
    const v1, -0x186af

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iput-boolean v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 40
    .line 41
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 42
    .line 43
    sub-long/2addr v2, v4

    .line 44
    neg-long v2, v2

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallEndTime:J

    .line 53
    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    cmp-long v5, v1, v3

    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallEndTime:J

    .line 65
    .line 66
    :cond_3
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-ne v1, v2, :cond_4

    .line 70
    .line 71
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallEndTime:J

    .line 72
    .line 73
    cmp-long v1, v5, v3

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    iput-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallEndTime:J

    .line 82
    .line 83
    :cond_4
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 86
    .line 87
    const/4 v6, 0x6

    .line 88
    invoke-virtual {v1, v5, v6}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 94
    .line 95
    cmp-long v1, v5, v3

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    :try_start_0
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 100
    .line 101
    cmp-long v1, v5, v3

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 106
    .line 107
    add-int/2addr v1, v2

    .line 108
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 109
    .line 110
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 111
    .line 112
    int-to-long v5, v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    iget-wide v9, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 118
    .line 119
    sub-long/2addr v7, v9

    .line 120
    add-long/2addr v5, v7

    .line 121
    long-to-int v1, v5

    .line 122
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 123
    .line 124
    :cond_5
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 125
    .line 126
    const-wide/16 v7, 0x1

    .line 127
    .line 128
    add-long/2addr v5, v7

    .line 129
    iput-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 130
    .line 131
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 132
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v9

    .line 137
    iget-wide v11, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 138
    .line 139
    sub-long/2addr v9, v11

    .line 140
    add-long/2addr v5, v9

    .line 141
    iput-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 142
    .line 143
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 144
    .line 145
    if-ne v1, v2, :cond_6

    .line 146
    .line 147
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 148
    .line 149
    add-long/2addr v1, v7

    .line 150
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalCount:J

    .line 151
    .line 152
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    iget-wide v9, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 159
    .line 160
    sub-long/2addr v5, v9

    .line 161
    add-long/2addr v1, v5

    .line 162
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionStallTotalTime:J

    .line 163
    .line 164
    :cond_6
    const-string v1, "event_key"

    .line 165
    .line 166
    const-string v2, "stall"

    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "stall_start"

    .line 173
    .line 174
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 175
    .line 176
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v2, "stall_end"

    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "video_buffer_time_stall_start"

    .line 191
    .line 192
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 193
    .line 194
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnStallStart:J

    .line 195
    .line 196
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v2, "audio_buffer_time_stall_start"

    .line 201
    .line 202
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 203
    .line 204
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnStallStart:J

    .line 205
    .line 206
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v2, "video_buffer_time_stall_end"

    .line 211
    .line 212
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 213
    .line 214
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnStallEnd:J

    .line 215
    .line 216
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v2, "audio_buffer_time_stall_end"

    .line 221
    .line 222
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 223
    .line 224
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnStallEnd:J

    .line 225
    .line 226
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const-string v2, "last_res"

    .line 231
    .line 232
    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastResolution:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, "reason"

    .line 239
    .line 240
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallReason:J

    .line 241
    .line 242
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string v2, "recover_reason"

    .line 247
    .line 248
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 252
    .line 253
    const-string v1, "live_client_monitor_log"

    .line 254
    .line 255
    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 259
    .line 260
    cmp-long p1, v0, v3

    .line 261
    .line 262
    if-lez p1, :cond_7

    .line 263
    .line 264
    add-long/2addr v0, v7

    .line 265
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    :cond_7
    return-void

    .line 268
    :catch_0
    move-exception p1

    .line 269
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    :cond_8
    return-void
.end method

.method public onStallStart(IZ)V
    .locals 8

    .line 1
    const v0, -0x186af

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {p2, v0, v1}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallStartTime:J

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p2, v2, v4

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallStartTime:J

    .line 32
    .line 33
    :cond_1
    iget p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne p2, v2, :cond_3

    .line 37
    .line 38
    iget-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallStartTime:J

    .line 39
    .line 40
    cmp-long p2, v6, v4

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionFirstStallStartTime:J

    .line 45
    .line 46
    :cond_2
    iget p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 47
    .line 48
    iput p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionErrorCode:I

    .line 49
    .line 50
    :cond_3
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 51
    .line 52
    int-to-long p1, p1

    .line 53
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallReason:J

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 67
    .line 68
    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 71
    .line 72
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 73
    .line 74
    iget-wide v2, p2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 75
    .line 76
    sub-long/2addr v0, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "cmaf"

    .line 4
    .line 5
    iget-boolean v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-direct {v1, v4}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->report(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 15
    .line 16
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    invoke-virtual {v3, v5, v6}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getLogInfo(Lcom/bykv/vk/component/ttvideo/log/LogBundle;I)V

    .line 20
    .line 21
    .line 22
    iget v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 23
    .line 24
    iput v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameRetryCount:I

    .line 25
    .line 26
    iget-wide v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastPrepareTime:J

    .line 27
    .line 28
    iput-wide v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFramePrepareTime:J

    .line 29
    .line 30
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onSessionStop()V

    .line 31
    .line 32
    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->resetSessionInfo()V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1f

    .line 41
    .line 42
    :try_start_0
    iget-boolean v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 43
    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 53
    .line 54
    sub-long/2addr v8, v10

    .line 55
    move-wide v10, v6

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 62
    .line 63
    iget-wide v8, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 64
    .line 65
    cmp-long v5, v8, v6

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 74
    .line 75
    iget-wide v10, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 76
    .line 77
    sub-long/2addr v8, v10

    .line 78
    move-wide v10, v8

    .line 79
    move-wide v8, v6

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-wide v8, v6

    .line 82
    move-wide v10, v8

    .line 83
    :goto_1
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallStartTime:J

    .line 84
    .line 85
    cmp-long v5, v12, v6

    .line 86
    .line 87
    if-lez v5, :cond_3

    .line 88
    .line 89
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 90
    .line 91
    iget-wide v14, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 92
    .line 93
    sub-long v14, v12, v14

    .line 94
    .line 95
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallEndTime:J

    .line 96
    .line 97
    sub-long/2addr v4, v12

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-wide v4, v6

    .line 100
    move-wide v14, v4

    .line 101
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isStalling()Z

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    const-wide/16 v16, 0x1

    .line 106
    .line 107
    if-eqz v12, :cond_4

    .line 108
    .line 109
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 110
    .line 111
    add-long v12, v12, v16

    .line 112
    .line 113
    iput-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 114
    .line 115
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v18

    .line 121
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 122
    .line 123
    sub-long v18, v18, v6

    .line 124
    .line 125
    add-long v12, v12, v18

    .line 126
    .line 127
    iput-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 128
    .line 129
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isInErrorRecovering()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_5

    .line 134
    .line 135
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 136
    .line 137
    const-wide/16 v12, 0x0

    .line 138
    .line 139
    cmp-long v18, v6, v12

    .line 140
    .line 141
    if-eqz v18, :cond_5

    .line 142
    .line 143
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 144
    .line 145
    add-long v6, v6, v16

    .line 146
    .line 147
    iput-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 148
    .line 149
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    move-wide/from16 v18, v10

    .line 156
    .line 157
    iget-wide v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 158
    .line 159
    sub-long/2addr v12, v10

    .line 160
    add-long/2addr v6, v12

    .line 161
    iput-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    move-wide/from16 v18, v10

    .line 165
    .line 166
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->calculateRenderFailType()V

    .line 167
    .line 168
    .line 169
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastTotalDownloadSize:J

    .line 170
    .line 171
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 172
    .line 173
    iget-wide v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    .line 174
    .line 175
    add-long/2addr v6, v10

    .line 176
    const-string v10, "event_key"

    .line 177
    .line 178
    const-string v11, "play_stop"

    .line 179
    .line 180
    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    const-string v11, "stop_time"

    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    const-string v11, "play_time"

    .line 195
    .line 196
    invoke-virtual {v10, v11, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    const-string v9, "is_stream_received"

    .line 201
    .line 202
    iget-boolean v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 203
    .line 204
    const/4 v11, 0x0

    .line 205
    if-eqz v10, :cond_6

    .line 206
    .line 207
    const/4 v10, 0x1

    .line 208
    goto :goto_4

    .line 209
    :cond_6
    const/4 v10, 0x0

    .line 210
    :goto_4
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    const-string v9, "render_fail_type"

    .line 215
    .line 216
    iget v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFailType:I

    .line 217
    .line 218
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const-string v9, "code"

    .line 223
    .line 224
    iget v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 225
    .line 226
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    const-string v9, "stall_count"

    .line 231
    .line 232
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 233
    .line 234
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    const-string v9, "stall_time"

    .line 239
    .line 240
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 241
    .line 242
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    const-string v9, "audio_render_stall_count"

    .line 247
    .line 248
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 249
    .line 250
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    const-string v9, "audio_render_stall_time"

    .line 255
    .line 256
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 257
    .line 258
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    const-string v9, "video_render_stall_count"

    .line 263
    .line 264
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 265
    .line 266
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    const-string v9, "video_render_stall_time"

    .line 271
    .line 272
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 273
    .line 274
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    const-string v9, "video_decode_stall_count"

    .line 279
    .line 280
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalCount:J

    .line 281
    .line 282
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    const-string v9, "video_decode_stall_time"

    .line 287
    .line 288
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalTime:J

    .line 289
    .line 290
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    const-string v9, "audio_decode_stall_count"

    .line 295
    .line 296
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalCount:J

    .line 297
    .line 298
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    const-string v9, "audio_decode_stall_time"

    .line 303
    .line 304
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalTime:J

    .line 305
    .line 306
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    const-string v9, "video_demux_stall_count"

    .line 311
    .line 312
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalCount:J

    .line 313
    .line 314
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    const-string v9, "video_demux_stall_time"

    .line 319
    .line 320
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalTime:J

    .line 321
    .line 322
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    const-string v9, "audio_demux_stall_count"

    .line 327
    .line 328
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalCount:J

    .line 329
    .line 330
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    const-string v9, "audio_demux_stall_time"

    .line 335
    .line 336
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalTime:J

    .line 337
    .line 338
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    const-string v9, "error_recover_count"

    .line 343
    .line 344
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 345
    .line 346
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    const-string v9, "error_recover_time"

    .line 351
    .line 352
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 353
    .line 354
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    const-string v9, "start"

    .line 359
    .line 360
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 361
    .line 362
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    .line 363
    .line 364
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    const-string v9, "sdk_dns_analysis_end"

    .line 369
    .line 370
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 371
    .line 372
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    .line 373
    .line 374
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    const-string v9, "http_req_finish_time"

    .line 379
    .line 380
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 381
    .line 382
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpReqFinishTimestamp:J

    .line 383
    .line 384
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    const-string v9, "http_res_finish_time"

    .line 389
    .line 390
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 391
    .line 392
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpResFinishTimestamp:J

    .line 393
    .line 394
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    const-string v9, "first_video_package_end"

    .line 399
    .line 400
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 401
    .line 402
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoPacketTimestamp:J

    .line 403
    .line 404
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    const-string v9, "first_audio_package_end"

    .line 409
    .line 410
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 411
    .line 412
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioPacketTimestamp:J

    .line 413
    .line 414
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    const-string v9, "first_video_frame_decode_end"

    .line 419
    .line 420
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 421
    .line 422
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDecodeTimestamp:J

    .line 423
    .line 424
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    const-string v9, "first_audio_frame_decode_end"

    .line 429
    .line 430
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 431
    .line 432
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDecodeTimestamp:J

    .line 433
    .line 434
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    const-string v9, "first_frame_render_end"

    .line 439
    .line 440
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 441
    .line 442
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    .line 443
    .line 444
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    const-string v9, "first_audio_frame_end"

    .line 449
    .line 450
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 451
    .line 452
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioRenderTimestamp:J

    .line 453
    .line 454
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    const-string v9, "video_device_open_start"

    .line 459
    .line 460
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 461
    .line 462
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenTime:J

    .line 463
    .line 464
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    const-string v9, "video_device_open_end"

    .line 469
    .line 470
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 471
    .line 472
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenedTime:J

    .line 473
    .line 474
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    const-string v9, "audio_device_open_start"

    .line 479
    .line 480
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 481
    .line 482
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenTime:J

    .line 483
    .line 484
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 485
    .line 486
    .line 487
    move-result-object v8

    .line 488
    const-string v9, "audio_device_open_end"

    .line 489
    .line 490
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 491
    .line 492
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenedTime:J

    .line 493
    .line 494
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    const-string v9, "video_device_wait_start"

    .line 499
    .line 500
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 501
    .line 502
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitStartTime:J

    .line 503
    .line 504
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    const-string v9, "video_device_wait_end"

    .line 509
    .line 510
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 511
    .line 512
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitEndTime:J

    .line 513
    .line 514
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    const-string v9, "find_stream_info_start"

    .line 519
    .line 520
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 521
    .line 522
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFindTime:J

    .line 523
    .line 524
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    const-string v9, "find_stream_info_end"

    .line 529
    .line 530
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 531
    .line 532
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFoundTime:J

    .line 533
    .line 534
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    const-string v9, "video_param_send_outlet_time"

    .line 539
    .line 540
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 541
    .line 542
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoParamSendOutletTime:J

    .line 543
    .line 544
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    const-string v9, "first_video_frame_send_outlet_time"

    .line 549
    .line 550
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 551
    .line 552
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->firstVideoFrameSendOutletTime:J

    .line 553
    .line 554
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    const-string v9, "video_first_pkt_pos"

    .line 559
    .line 560
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 561
    .line 562
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPos:J

    .line 563
    .line 564
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    const-string v9, "video_first_pkt_pts"

    .line 569
    .line 570
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 571
    .line 572
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPts:J

    .line 573
    .line 574
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    const-string v9, "audio_first_pkt_pos"

    .line 579
    .line 580
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 581
    .line 582
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPos:J

    .line 583
    .line 584
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 585
    .line 586
    .line 587
    move-result-object v8

    .line 588
    const-string v9, "audio_first_pkt_pts"

    .line 589
    .line 590
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 591
    .line 592
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPts:J

    .line 593
    .line 594
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 595
    .line 596
    .line 597
    move-result-object v8

    .line 598
    const-string v9, "set_surface_time"

    .line 599
    .line 600
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceTime:J

    .line 601
    .line 602
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    const-string v9, "set_surface_cost"

    .line 607
    .line 608
    iget-wide v12, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSetSurfaceCost:J

    .line 609
    .line 610
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    const-string v9, "video_render_type"

    .line 615
    .line 616
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 617
    .line 618
    iget v10, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->renderType:I

    .line 619
    .line 620
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    const-string v9, "prepare_block_end"

    .line 625
    .line 626
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 627
    .line 628
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    .line 629
    .line 630
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    const-string v9, "prepare_end"

    .line 635
    .line 636
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 637
    .line 638
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    .line 639
    .line 640
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 641
    .line 642
    .line 643
    move-result-object v8

    .line 644
    const-string v9, "retry_count"

    .line 645
    .line 646
    iget v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 647
    .line 648
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    .line 650
    .line 651
    move-result-object v8

    .line 652
    const-string v9, "download_speed"

    .line 653
    .line 654
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 655
    .line 656
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeedOnFirstFrame:J

    .line 657
    .line 658
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    const-string v9, "video_buffer_time"

    .line 663
    .line 664
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 665
    .line 666
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnFirstFrame:J

    .line 667
    .line 668
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    const-string v9, "audio_buffer_time"

    .line 673
    .line 674
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 675
    .line 676
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnFirstFrame:J

    .line 677
    .line 678
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    const-string v9, "wait_time"

    .line 683
    .line 684
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 685
    .line 686
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 687
    .line 688
    const-wide/16 v20, 0x0

    .line 689
    .line 690
    cmp-long v10, v12, v20

    .line 691
    .line 692
    if-lez v10, :cond_7

    .line 693
    .line 694
    goto :goto_5

    .line 695
    :cond_7
    neg-long v12, v12

    .line 696
    :goto_5
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    const-string v9, "is_waiting"

    .line 701
    .line 702
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 703
    .line 704
    iget-wide v12, v10, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 705
    .line 706
    const-wide/16 v20, 0x0

    .line 707
    .line 708
    cmp-long v10, v12, v20

    .line 709
    .line 710
    if-ltz v10, :cond_8

    .line 711
    .line 712
    const/4 v10, 0x0

    .line 713
    goto :goto_6

    .line 714
    :cond_8
    const/4 v10, 0x1

    .line 715
    :goto_6
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    const-string v9, "first_stall_time"

    .line 720
    .line 721
    invoke-virtual {v8, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 722
    .line 723
    .line 724
    move-result-object v8

    .line 725
    const-string v9, "first_stall_duration"

    .line 726
    .line 727
    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    const-string v5, "call_api_name"

    .line 732
    .line 733
    move-object/from16 v8, p1

    .line 734
    .line 735
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    const-string v5, "play_time_on_no_frame"

    .line 740
    .line 741
    move-wide/from16 v8, v18

    .line 742
    .line 743
    invoke-virtual {v4, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    const-string v5, "abr_switch_count"

    .line 748
    .line 749
    iget v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCount:I

    .line 750
    .line 751
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    const-string v5, "abr_switch_count_info"

    .line 756
    .line 757
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCountInfo:Ljava/lang/String;

    .line 758
    .line 759
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    const-string v5, "sdk_params"

    .line 764
    .line 765
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 766
    .line 767
    if-nez v8, :cond_9

    .line 768
    .line 769
    const-string v8, "none"

    .line 770
    .line 771
    :cond_9
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    const-string v5, "total_download_size"

    .line 776
    .line 777
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    const-string v5, "drop_audio_pts_diff"

    .line 782
    .line 783
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 784
    .line 785
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioPts:J

    .line 786
    .line 787
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    const-string v5, "drop_audio_cost"

    .line 792
    .line 793
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 794
    .line 795
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioCostTime:J

    .line 796
    .line 797
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    const-string v5, "first_frame_retry_count"

    .line 802
    .line 803
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameRetryCount:I

    .line 804
    .line 805
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    const-string v5, "first_frame_retry_duration"

    .line 810
    .line 811
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFramePrepareTime:J

    .line 812
    .line 813
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    const-string v5, "abr_check_enhance"

    .line 818
    .line 819
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveAbrCheckEnhance:I

    .line 820
    .line 821
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    const-string v5, "sr_used"

    .line 826
    .line 827
    iget-boolean v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSRSuccess:Z

    .line 828
    .line 829
    if-eqz v6, :cond_a

    .line 830
    .line 831
    const/4 v6, 0x1

    .line 832
    goto :goto_7

    .line 833
    :cond_a
    const/4 v6, 0x0

    .line 834
    :goto_7
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    const-string v5, "sharpen_used"

    .line 839
    .line 840
    iget-boolean v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasUsedSharpen:Z

    .line 841
    .line 842
    if-eqz v6, :cond_b

    .line 843
    .line 844
    const/4 v6, 0x1

    .line 845
    goto :goto_8

    .line 846
    :cond_b
    const/4 v6, 0x0

    .line 847
    :goto_8
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    const-string v5, "network_timeout"

    .line 852
    .line 853
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNetworkTimeoutMs:I

    .line 854
    .line 855
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    const-string v5, "suggest_format"

    .line 860
    .line 861
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    const-string v5, "suggest_protocol"

    .line 868
    .line 869
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 870
    .line 871
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    const-string v5, "session_num"

    .line 876
    .line 877
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 878
    .line 879
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    const-string v5, "use_live_threadpool"

    .line 884
    .line 885
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseLiveThreadPool:I

    .line 886
    .line 887
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 888
    .line 889
    .line 890
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 891
    .line 892
    iget-object v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mABRStreamInfo:Lorg/json/JSONArray;

    .line 893
    .line 894
    if-eqz v4, :cond_c

    .line 895
    .line 896
    const-string v5, "abr_stream_info"

    .line 897
    .line 898
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 899
    .line 900
    .line 901
    :cond_c
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioTimescaleEnable:I

    .line 902
    .line 903
    const/4 v5, -0x1

    .line 904
    if-eq v4, v5, :cond_d

    .line 905
    .line 906
    const-string v5, "audio_timescale_enable"

    .line 907
    .line 908
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 909
    .line 910
    .line 911
    :cond_d
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 912
    .line 913
    iget-object v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->avphStreamInfo:Lorg/json/JSONArray;

    .line 914
    .line 915
    if-eqz v4, :cond_e

    .line 916
    .line 917
    const-string v5, "avph_stream_info"

    .line 918
    .line 919
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    .line 921
    .line 922
    :cond_e
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 923
    .line 924
    invoke-virtual {v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getEnableTexturerender()I

    .line 925
    .line 926
    .line 927
    move-result v4

    .line 928
    const/4 v5, 0x1

    .line 929
    if-ne v4, v5, :cond_f

    .line 930
    .line 931
    const-string v4, "render_start_timestamp"

    .line 932
    .line 933
    iget-wide v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderStartNotifyTimeStamp:J

    .line 934
    .line 935
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 936
    .line 937
    .line 938
    const-string v4, "texturerender_renderstart_timestamp"

    .line 939
    .line 940
    iget-wide v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderFirstFrameTime:J

    .line 941
    .line 942
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 943
    .line 944
    .line 945
    :cond_f
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncCount:I

    .line 946
    .line 947
    if-lez v4, :cond_10

    .line 948
    .line 949
    const-string v5, "av_out_sync_count"

    .line 950
    .line 951
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 952
    .line 953
    .line 954
    move-result-object v4

    .line 955
    const-string v5, "av_out_sync_duration"

    .line 956
    .line 957
    iget-wide v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncTimeDuration:J

    .line 958
    .line 959
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    const-string v5, "av_out_sync_info"

    .line 964
    .line 965
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncInfoStr:Ljava/lang/String;

    .line 966
    .line 967
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    .line 969
    .line 970
    :cond_10
    invoke-direct {v1, v3}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->reportQuicOpenResult(Lorg/json/JSONObject;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->isRtcPlayAvailable()Z

    .line 974
    .line 975
    .line 976
    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    const-string v5, "player_dns_analysis_end"

    .line 978
    .line 979
    const-string v6, "tcp_first_package_end"

    .line 980
    .line 981
    const-string v7, "tcp_connect_end"

    .line 982
    .line 983
    if-eqz v4, :cond_11

    .line 984
    .line 985
    :try_start_1
    iget-wide v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcDnsTimeStamp:J

    .line 986
    .line 987
    invoke-virtual {v3, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 988
    .line 989
    .line 990
    const-string v4, "rtc_use_sdk_dns"

    .line 991
    .line 992
    iget v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcUseSdkDns:I

    .line 993
    .line 994
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 995
    .line 996
    .line 997
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    .line 998
    .line 999
    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1000
    .line 1001
    .line 1002
    const-string v4, "rtc_tls_handshake_end"

    .line 1003
    .line 1004
    iget-wide v7, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    .line 1005
    .line 1006
    invoke-virtual {v3, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1007
    .line 1008
    .line 1009
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    .line 1010
    .line 1011
    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1012
    .line 1013
    .line 1014
    const-string v4, "rtc_inited_end"

    .line 1015
    .line 1016
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1017
    .line 1018
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcInitedTime:J

    .line 1019
    .line 1020
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1021
    .line 1022
    .line 1023
    const-string v4, "rtc_offer_send_end"

    .line 1024
    .line 1025
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1026
    .line 1027
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcOfferSendTime:J

    .line 1028
    .line 1029
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1030
    .line 1031
    .line 1032
    const-string v4, "rtc_answer_recv_end"

    .line 1033
    .line 1034
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1035
    .line 1036
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcAnswerRecvTime:J

    .line 1037
    .line 1038
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1039
    .line 1040
    .line 1041
    const-string v4, "rtc_start_end"

    .line 1042
    .line 1043
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1044
    .line 1045
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcStartTime:J

    .line 1046
    .line 1047
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1048
    .line 1049
    .line 1050
    const-string v4, "rtc_playstop_info"

    .line 1051
    .line 1052
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayStopStatInfo:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1055
    .line 1056
    .line 1057
    goto :goto_a

    .line 1058
    :cond_11
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1059
    .line 1060
    iget-wide v8, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpFirstPacketTimestamp:J

    .line 1061
    .line 1062
    invoke-virtual {v3, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1063
    .line 1064
    .line 1065
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1066
    .line 1067
    iget-wide v8, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    .line 1068
    .line 1069
    invoke-virtual {v3, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1070
    .line 1071
    .line 1072
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 1073
    .line 1074
    if-nez v4, :cond_12

    .line 1075
    .line 1076
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1077
    .line 1078
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    .line 1079
    .line 1080
    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1081
    .line 1082
    .line 1083
    goto :goto_a

    .line 1084
    :cond_12
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 1085
    .line 1086
    const-string v5, "kcp"

    .line 1087
    .line 1088
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v4

    .line 1092
    if-eqz v4, :cond_13

    .line 1093
    .line 1094
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1095
    .line 1096
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    .line 1097
    .line 1098
    goto :goto_9

    .line 1099
    :cond_13
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1100
    .line 1101
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    .line 1102
    .line 1103
    :goto_9
    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1104
    .line 1105
    .line 1106
    :goto_a
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 1107
    .line 1108
    if-eqz v4, :cond_15

    .line 1109
    .line 1110
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v4

    .line 1114
    if-nez v4, :cond_14

    .line 1115
    .line 1116
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 1117
    .line 1118
    const-string v5, "avph"

    .line 1119
    .line 1120
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v4

    .line 1124
    if-eqz v4, :cond_15

    .line 1125
    .line 1126
    :cond_14
    const-string v4, "video_dns_analysis_end"

    .line 1127
    .line 1128
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1129
    .line 1130
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDNSTimestamp:J

    .line 1131
    .line 1132
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v4

    .line 1136
    const-string v5, "audio_dns_analysis_end"

    .line 1137
    .line 1138
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1139
    .line 1140
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDNSTimestamp:J

    .line 1141
    .line 1142
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v4

    .line 1146
    const-string v5, "video_tcp_connect_time"

    .line 1147
    .line 1148
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1149
    .line 1150
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpConnectTimestamp:J

    .line 1151
    .line 1152
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v4

    .line 1156
    const-string v5, "audio_tcp_connect_time"

    .line 1157
    .line 1158
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1159
    .line 1160
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpConnectTimestamp:J

    .line 1161
    .line 1162
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v4

    .line 1166
    const-string v5, "video_tcp_first_packet_time"

    .line 1167
    .line 1168
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1169
    .line 1170
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpFirstPacketTimestamp:J

    .line 1171
    .line 1172
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v4

    .line 1176
    const-string v5, "audio_tcp_first_packet_time"

    .line 1177
    .line 1178
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1179
    .line 1180
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpFirstPacketTimestamp:J

    .line 1181
    .line 1182
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    const-string v5, "video_http_req_finish_time"

    .line 1187
    .line 1188
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1189
    .line 1190
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpReqFinishTimestamp:J

    .line 1191
    .line 1192
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    const-string v5, "audio_http_req_finish_time"

    .line 1197
    .line 1198
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1199
    .line 1200
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpReqFinishTimestamp:J

    .line 1201
    .line 1202
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v4

    .line 1206
    const-string v5, "video_http_res_finish_time"

    .line 1207
    .line 1208
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1209
    .line 1210
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpResFinishTimestamp:J

    .line 1211
    .line 1212
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v4

    .line 1216
    const-string v5, "audio_http_res_finish_time"

    .line 1217
    .line 1218
    iget-object v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1219
    .line 1220
    iget-wide v6, v6, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpResFinishTimestamp:J

    .line 1221
    .line 1222
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1223
    .line 1224
    .line 1225
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 1226
    .line 1227
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    if-eqz v2, :cond_15

    .line 1232
    .line 1233
    const-string v2, "cmaf_mpd_dns_analysis_end"

    .line 1234
    .line 1235
    iget-object v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1236
    .line 1237
    iget-wide v4, v4, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdDNSTimestamp:J

    .line 1238
    .line 1239
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    const-string v4, "cmaf_mpd_tcp_connect_time"

    .line 1244
    .line 1245
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1246
    .line 1247
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdTcpConntectTimestamp:J

    .line 1248
    .line 1249
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    const-string v4, "cmaf_mpd_tcp_first_package_end"

    .line 1254
    .line 1255
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1256
    .line 1257
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpTcpFirstPacketTimestamp:J

    .line 1258
    .line 1259
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    const-string v4, "cmaf_mpd_http_req_finish_time"

    .line 1264
    .line 1265
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1266
    .line 1267
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpReqFinishTimestamp:J

    .line 1268
    .line 1269
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    const-string v4, "cmaf_mpd_http_res_finish_time"

    .line 1274
    .line 1275
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1276
    .line 1277
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpResFinishTimestamp:J

    .line 1278
    .line 1279
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v2

    .line 1283
    const-string v4, "cmaf_audio_firstseg_connect_time"

    .line 1284
    .line 1285
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1286
    .line 1287
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafAudioFirstSegConntectTimestamp:J

    .line 1288
    .line 1289
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    const-string v4, "cmaf_video_firstseg_connect_time"

    .line 1294
    .line 1295
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1296
    .line 1297
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafVideoFirstSegConntectTimestamp:J

    .line 1298
    .line 1299
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    const-string v4, "cmaf_mpd_connect_time"

    .line 1304
    .line 1305
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 1306
    .line 1307
    iget-wide v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdConntectTimestamp:J

    .line 1308
    .line 1309
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1310
    .line 1311
    .line 1312
    :cond_15
    iget-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableUploadSessionSeries:Z

    .line 1313
    .line 1314
    if-eqz v2, :cond_16

    .line 1315
    .line 1316
    const-string v2, "session_time_series"

    .line 1317
    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->_createSessionTimeSeries()Lorg/json/JSONObject;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v4

    .line 1322
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1323
    .line 1324
    .line 1325
    :cond_16
    iget-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSei:Z

    .line 1326
    .line 1327
    if-eqz v2, :cond_17

    .line 1328
    .line 1329
    const-string v2, "expected_sei_count"

    .line 1330
    .line 1331
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedSeiCount:I

    .line 1332
    .line 1333
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1334
    .line 1335
    .line 1336
    const-string v2, "received_sei_count"

    .line 1337
    .line 1338
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedSeiCount:I

    .line 1339
    .line 1340
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1341
    .line 1342
    .line 1343
    const-string v2, "expected_unique_sei_count"

    .line 1344
    .line 1345
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mExpectedUniqueSeiCount:I

    .line 1346
    .line 1347
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1348
    .line 1349
    .line 1350
    const-string v2, "received_unique_sei_count"

    .line 1351
    .line 1352
    iget v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mReceivedUniqueSeiCount:I

    .line 1353
    .line 1354
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1355
    .line 1356
    .line 1357
    :cond_17
    iget v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mBitRateAbnormalType:I

    .line 1358
    .line 1359
    if-eqz v2, :cond_18

    .line 1360
    .line 1361
    const-string v4, "bitrate_amnormal"

    .line 1362
    .line 1363
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1364
    .line 1365
    .line 1366
    :cond_18
    iget v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecNotSame:I

    .line 1367
    .line 1368
    if-eqz v2, :cond_19

    .line 1369
    .line 1370
    const-string v4, "abr_codec_not_same"

    .line 1371
    .line 1372
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1373
    .line 1374
    .line 1375
    :cond_19
    iget v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mABRListMatch:I

    .line 1376
    .line 1377
    if-nez v2, :cond_1a

    .line 1378
    .line 1379
    const-string v2, "abr_list_not_match"

    .line 1380
    .line 1381
    const/4 v4, 0x1

    .line 1382
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1383
    .line 1384
    .line 1385
    goto :goto_b

    .line 1386
    :cond_1a
    const/4 v4, 0x1

    .line 1387
    :goto_b
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 1388
    .line 1389
    const-string v5, "quic"

    .line 1390
    .line 1391
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1392
    .line 1393
    .line 1394
    move-result v2

    .line 1395
    if-nez v2, :cond_1b

    .line 1396
    .line 1397
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 1398
    .line 1399
    const-string v5, "quicu"

    .line 1400
    .line 1401
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v2

    .line 1405
    if-eqz v2, :cond_1c

    .line 1406
    .line 1407
    :cond_1b
    const-string v2, "scfg"

    .line 1408
    .line 1409
    iget v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicScfgConfig:I

    .line 1410
    .line 1411
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    const-string v5, "mtu"

    .line 1416
    .line 1417
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicMtu:I

    .line 1418
    .line 1419
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v2

    .line 1423
    const-string v5, "pad_hello"

    .line 1424
    .line 1425
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicPadHello:I

    .line 1426
    .line 1427
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    const-string v5, "timer_version"

    .line 1432
    .line 1433
    iget v6, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicTimerVersion:I

    .line 1434
    .line 1435
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1436
    .line 1437
    .line 1438
    :cond_1c
    iget-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsCdnAbrSwitch:Z

    .line 1439
    .line 1440
    if-eqz v2, :cond_1e

    .line 1441
    .line 1442
    const-string v5, "cdn_abr_switch_performed"

    .line 1443
    .line 1444
    if-eqz v2, :cond_1d

    .line 1445
    .line 1446
    goto :goto_c

    .line 1447
    :cond_1d
    const/4 v4, 0x0

    .line 1448
    :goto_c
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v2

    .line 1452
    const-string v4, "cdn_abr_switch_code"

    .line 1453
    .line 1454
    iget v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnAbrSwitchCode:I

    .line 1455
    .line 1456
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1457
    .line 1458
    .line 1459
    :cond_1e
    iget-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 1460
    .line 1461
    add-long v4, v4, v16

    .line 1462
    .line 1463
    iput-wide v4, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 1464
    .line 1465
    const-string v2, "log_total_count_when_playing"

    .line 1466
    .line 1467
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1468
    .line 1469
    .line 1470
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 1471
    .line 1472
    const-string v4, "live_client_monitor_log"

    .line 1473
    .line 1474
    invoke-interface {v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    const-wide/16 v2, 0x0

    .line 1478
    .line 1479
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1480
    .line 1481
    return-void

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    move-object v2, v0

    .line 1484
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 1485
    .line 1486
    .line 1487
    :cond_1f
    return-void
.end method

.method public onSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "event_key"

    .line 15
    .line 16
    const-string v2, "switch_url"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "last_cdn_play_url"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    const-string v3, "null"

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    move-object p1, v3

    .line 29
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "next_cdn_play_url"

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    move-object p2, v3

    .line 38
    :cond_2
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "res_bitrate"

    .line 43
    .line 44
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResBitrate:J

    .line 45
    .line 46
    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "last_res"

    .line 51
    .line 52
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastResolution:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "code"

    .line 59
    .line 60
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "reason"

    .line 65
    .line 66
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 70
    .line 71
    const-string p2, "live_client_monitor_log"

    .line 72
    .line 73
    invoke-interface {p1, v0, p2}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 77
    .line 78
    const-wide/16 p3, 0x0

    .line 79
    .line 80
    cmp-long v0, p1, p3

    .line 81
    .line 82
    if-lez v0, :cond_3

    .line 83
    .line 84
    const-wide/16 p3, 0x1

    .line 85
    .line 86
    add-long/2addr p1, p3

    .line 87
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    :cond_3
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_0
    return-void
.end method

.method public onSwitchURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurrentPlayURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onUpdateMetaData(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "h_id"

    .line 6
    .line 7
    const-string v3, "link_info"

    .line 8
    .line 9
    const-string v4, "qId"

    .line 10
    .line 11
    const-string v5, "push_protocol"

    .line 12
    .line 13
    const-string v6, "hit_node_optimize"

    .line 14
    .line 15
    const-string v7, "default_bitrate"

    .line 16
    .line 17
    const-string v8, "max_bitrate"

    .line 18
    .line 19
    const-string v9, "min_bitrate"

    .line 20
    .line 21
    const-string v10, "is_hardware_encode"

    .line 22
    .line 23
    const-string v11, "start_time"

    .line 24
    .line 25
    const-string v12, "model"

    .line 26
    .line 27
    const-string v13, "os_version"

    .line 28
    .line 29
    const-string v14, "platform"

    .line 30
    .line 31
    const-string v15, "sdk_version"

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    move-object/from16 v16, v2

    .line 37
    .line 38
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientSDKVersion:Ljava/lang/String;

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPlatform:Ljava/lang/String;

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientOSVersion:Ljava/lang/String;

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientModel:Ljava/lang/String;

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientStartTime:Ljava/lang/String;

    .line 102
    .line 103
    :cond_5
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHardwareEncode:I

    .line 114
    .line 115
    :cond_6
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMinBitrate:I

    .line 126
    .line 127
    :cond_7
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMaxBitrate:I

    .line 138
    .line 139
    :cond_8
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientDefaultBitrate:I

    .line 150
    .line 151
    :cond_9
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHitNodeOptimize:I

    .line 162
    .line 163
    :cond_a
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPushProtocal:Ljava/lang/String;

    .line 174
    .line 175
    :cond_b
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientQId:Ljava/lang/String;

    .line 186
    .line 187
    :cond_c
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_d

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLinkInfo:Ljava/lang/String;

    .line 198
    .line 199
    :cond_d
    move-object/from16 v0, v16

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_e

    .line 206
    .line 207
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iput v0, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFCDNTranscodeMethod:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    :cond_e
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public onUpdateSeiInfo(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "sei_index"

    .line 4
    .line 5
    const-string v2, "real_video_framerate"

    .line 6
    .line 7
    const-string v3, "channel_id"

    .line 8
    .line 9
    const-string v4, "real_bitrate"

    .line 10
    .line 11
    const-string v5, "vendor"

    .line 12
    .line 13
    const-string v6, "none"

    .line 14
    .line 15
    const-string v7, "source"

    .line 16
    .line 17
    const-string v8, "ts"

    .line 18
    .line 19
    const-string v9, "trans_info"

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    if-nez v10, :cond_16

    .line 26
    .line 27
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 28
    .line 29
    if-eqz v10, :cond_16

    .line 30
    .line 31
    iget-object v10, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 32
    .line 33
    if-nez v10, :cond_0

    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_0
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 38
    .line 39
    move-object/from16 v11, p1

    .line 40
    .line 41
    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    const/4 v13, 0x1

    .line 49
    if-eqz v11, :cond_7

    .line 50
    .line 51
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    iget v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTPTask:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    move-object v11, v2

    .line 58
    move-object/from16 v16, v3

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    const-string v12, "tt_ntp"

    .line 63
    .line 64
    if-ne v8, v13, :cond_2

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-ne v8, v13, :cond_2

    .line 77
    .line 78
    iget-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 79
    .line 80
    if-nez v8, :cond_1

    .line 81
    .line 82
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 83
    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    const/16 v13, 0x67

    .line 87
    .line 88
    invoke-virtual {v8, v13, v2, v3}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;->sendEmptyMessageDelayed(IJ)V

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    iput-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 93
    .line 94
    :cond_1
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    iput-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasNTP:Z

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 101
    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_4

    .line 109
    .line 110
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 111
    .line 112
    if-eqz v8, :cond_3

    .line 113
    .line 114
    invoke-static {v8}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;->access$000(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;)Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    const/4 v13, 0x0

    .line 119
    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    const/4 v8, 0x0

    .line 123
    iput-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const/4 v8, 0x0

    .line 127
    :goto_0
    iput-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasNTP:Z

    .line 128
    .line 129
    :goto_1
    iget v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTP:I

    .line 130
    .line 131
    const/4 v13, 0x1

    .line 132
    if-ne v8, v13, :cond_6

    .line 133
    .line 134
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_6

    .line 139
    .line 140
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-ne v8, v13, :cond_6

    .line 145
    .line 146
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveEngine:Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 147
    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->getNtpTimeDiff()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 155
    .line 156
    :cond_5
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 157
    .line 158
    const/4 v8, 0x1

    .line 159
    iput-boolean v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasNTP:Z

    .line 160
    .line 161
    :cond_6
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    sub-long/2addr v12, v14

    .line 168
    add-long/2addr v12, v2

    .line 169
    iput-wide v12, v8, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    .line 170
    .line 171
    iget-object v8, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 172
    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v12

    .line 179
    sub-long/2addr v12, v14

    .line 180
    add-long/2addr v12, v2

    .line 181
    iput-wide v12, v8, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    move-object v11, v2

    .line 185
    move-object/from16 v16, v3

    .line 186
    .line 187
    :cond_8
    :goto_2
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 188
    .line 189
    iget-object v2, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    const-string v8, "app_data"

    .line 196
    .line 197
    if-eqz v3, :cond_9

    .line 198
    .line 199
    :try_start_2
    iget-object v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 200
    .line 201
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iput-object v5, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_a

    .line 213
    .line 214
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    new-instance v7, Lorg/json/JSONObject;

    .line 219
    .line 220
    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_a

    .line 228
    .line 229
    iget-object v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 230
    .line 231
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    iput-object v5, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 236
    .line 237
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 238
    .line 239
    if-eqz v3, :cond_b

    .line 240
    .line 241
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 242
    .line 243
    iget-object v5, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v5, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 246
    .line 247
    :cond_b
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_d

    .line 252
    .line 253
    iget-object v3, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 254
    .line 255
    iget-object v3, v3, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_d

    .line 262
    .line 263
    const-string v3, "TTLiveSDK"

    .line 264
    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_c

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-direct {v1, v2}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onLink(Z)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_c
    const/4 v2, 0x0

    .line 277
    invoke-direct {v1, v2}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->onLink(Z)V

    .line 278
    .line 279
    .line 280
    :cond_d
    :goto_4
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_e

    .line 285
    .line 286
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    new-instance v3, Lorg/json/JSONObject;

    .line 291
    .line 292
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    move-object/from16 v2, v16

    .line 296
    .line 297
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_f

    .line 302
    .line 303
    iget-object v5, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 304
    .line 305
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iput-object v2, v5, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->channelId:Ljava/lang/String;

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_e
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 313
    .line 314
    iput-object v6, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->channelId:Ljava/lang/String;

    .line 315
    .line 316
    :cond_f
    :goto_5
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_10

    .line 321
    .line 322
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 323
    .line 324
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    iput v3, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiBitrate:I

    .line 329
    .line 330
    const/4 v2, 0x1

    .line 331
    iput-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiHasBitrateAndFps:Z

    .line 332
    .line 333
    :cond_10
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_11

    .line 338
    .line 339
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 340
    .line 341
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    iput v3, v2, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiFps:I

    .line 346
    .line 347
    const/4 v2, 0x1

    .line 348
    iput-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiHasBitrateAndFps:Z

    .line 349
    .line 350
    :cond_11
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    const-string v3, "tans_info"

    .line 355
    .line 356
    if-nez v2, :cond_12

    .line 357
    .line 358
    :try_start_3
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_14

    .line 363
    .line 364
    :cond_12
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_13

    .line 369
    .line 370
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    goto :goto_6

    .line 375
    :cond_13
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    :goto_6
    if-eqz v2, :cond_14

    .line 380
    .line 381
    const-string v3, "index"

    .line 382
    .line 383
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    const-string v4, "sent_frames"

    .line 388
    .line 389
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    const-string v5, "checked_dts"

    .line 394
    .line 395
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    int-to-long v5, v2

    .line 400
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->checkVideoFrame(IIJ)V

    .line 401
    .line 402
    .line 403
    :cond_14
    iget-boolean v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSei:Z

    .line 404
    .line 405
    if-eqz v2, :cond_15

    .line 406
    .line 407
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_15

    .line 412
    .line 413
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-direct {v1, v0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->checkSeiIndex(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 418
    .line 419
    .line 420
    :cond_15
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 423
    .line 424
    .line 425
    :cond_16
    :goto_7
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 4
    .line 5
    return-void
.end method

.method public onVideoStallCounter(JJJJJJJ)V
    .locals 8

    .line 1
    move-object v1, p0

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->createCommonLog()Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v2, "event_key"

    .line 9
    .line 10
    const-string v3, "stall_counter"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "type"

    .line 17
    .line 18
    const-string v4, "video"

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "render_stall_200_duration"

    .line 25
    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    div-long v6, p1, v4

    .line 29
    .line 30
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "render_stall_200_count"

    .line 35
    .line 36
    rem-long v6, p1, v4

    .line 37
    .line 38
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "render_stall_300_duration"

    .line 43
    .line 44
    div-long v6, p3, v4

    .line 45
    .line 46
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "render_stall_300_count"

    .line 51
    .line 52
    rem-long v6, p3, v4

    .line 53
    .line 54
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "render_stall_400_duration"

    .line 59
    .line 60
    div-long v6, p5, v4

    .line 61
    .line 62
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "render_stall_400_count"

    .line 67
    .line 68
    rem-long v6, p5, v4

    .line 69
    .line 70
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "render_stall_500_duration"

    .line 75
    .line 76
    div-long v6, p7, v4

    .line 77
    .line 78
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "render_stall_500_count"

    .line 83
    .line 84
    rem-long v6, p7, v4

    .line 85
    .line 86
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "demuxer_stall_500_duration"

    .line 91
    .line 92
    div-long v6, p9, v4

    .line 93
    .line 94
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "demuxer_stall_500_count"

    .line 99
    .line 100
    rem-long v6, p9, v4

    .line 101
    .line 102
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v3, "decode_pre_stall_500_duration"

    .line 107
    .line 108
    div-long v6, p11, v4

    .line 109
    .line 110
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "decode_pre_stall_500_count"

    .line 115
    .line 116
    rem-long v6, p11, v4

    .line 117
    .line 118
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "decode_post_stall_500_duration"

    .line 123
    .line 124
    div-long v6, p13, v4

    .line 125
    .line 126
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v3, "decode_post_stall_500_count"

    .line 131
    .line 132
    rem-long v4, p13, v4

    .line 133
    .line 134
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogUploader:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 138
    .line 139
    const-string v3, "live_client_monitor_log"

    .line 140
    .line 141
    invoke-interface {v2, v0, v3}, Lcom/bykv/vk/component/ttvideo/ILiveListener;->onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J

    .line 145
    .line 146
    const-wide/16 v4, 0x0

    .line 147
    .line 148
    cmp-long v0, v2, v4

    .line 149
    .line 150
    if-lez v0, :cond_0

    .line 151
    .line 152
    const-wide/16 v4, 0x1

    .line 153
    .line 154
    add-long/2addr v2, v4

    .line 155
    iput-wide v2, v1, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogTotalCount:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    :cond_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :cond_1
    return-void
.end method

.method public openNTP()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTPTask:I

    .line 3
    .line 4
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTP:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;-><init>(Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 16
    .line 17
    const/16 v1, 0x68

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;->sendEmptyMessageDelayed(IJ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public openNodeOptimizer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOpenNodeOptimizer:Z

    .line 2
    .line 3
    return-void
.end method

.method public reset()V
    .locals 9

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnPlayURL:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurrentPlayURL:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIpIsFromPlayerCore:Z

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogIndex:J

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientSDKVersion:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPlatform:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientOSVersion:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientModel:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientStartTime:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v4, -0x1

    .line 27
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHardwareEncode:I

    .line 28
    .line 29
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMinBitrate:I

    .line 30
    .line 31
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientMaxBitrate:I

    .line 32
    .line 33
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientDefaultBitrate:I

    .line 34
    .line 35
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientHitNodeOptimize:I

    .line 36
    .line 37
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientPushProtocal:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPushClientQId:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEvaluatorSymbol:Ljava/lang/String;

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHitNodeOptimizer:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsRemoteSorted:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsHitCache:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHaveResetPlayer:Z

    .line 50
    .line 51
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreconnect:I

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableHurry:Z

    .line 54
    .line 55
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHurryTime:I

    .line 56
    .line 57
    const/high16 v5, -0x40800000    # -1.0f

    .line 58
    .line 59
    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCatchSpeed:F

    .line 60
    .line 61
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowPlayTime:I

    .line 62
    .line 63
    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSlowSpeed:F

    .line 64
    .line 65
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchCount:I

    .line 66
    .line 67
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSpeedSwitchInfo:Ljava/lang/String;

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartPlayBufferThres:J

    .line 70
    .line 71
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFastOpenDuration:I

    .line 72
    .line 73
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndIgnoreVideo:I

    .line 74
    .line 75
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStartDirectAfterPrepared:I

    .line 76
    .line 77
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCheckBufferingEndAdvanceEnable:I

    .line 78
    .line 79
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultCodecID:I

    .line 80
    .line 81
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMediaCodecAsyncInit:I

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasFirstFrame:Z

    .line 84
    .line 85
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameTimestamp:J

    .line 86
    .line 87
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorCode:I

    .line 88
    .line 89
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallStartTime:J

    .line 90
    .line 91
    const-wide/16 v6, -0x1

    .line 92
    .line 93
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallReason:J

    .line 94
    .line 95
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalCount:J

    .line 96
    .line 97
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTotalTime:J

    .line 98
    .line 99
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalTime:J

    .line 100
    .line 101
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoRenderStallTotalCount:J

    .line 102
    .line 103
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalTime:J

    .line 104
    .line 105
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioRenderStallTotalCount:J

    .line 106
    .line 107
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverCount:J

    .line 108
    .line 109
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorRecoverTime:J

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInErrorRecovering:Z

    .line 112
    .line 113
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsStalling:Z

    .line 114
    .line 115
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallCount:I

    .line 116
    .line 117
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallTime:I

    .line 118
    .line 119
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallCount:I

    .line 120
    .line 121
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingAudioRenderStallTime:I

    .line 122
    .line 123
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallCount:I

    .line 124
    .line 125
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingVideoRenderStallTime:I

    .line 126
    .line 127
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayingStallStartTime:J

    .line 128
    .line 129
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallStartTime:J

    .line 130
    .line 131
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstStallEndTime:J

    .line 132
    .line 133
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryCount:I

    .line 134
    .line 135
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRetryTotalCount:I

    .line 136
    .line 137
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSilenceDetectedCount:I

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasNTP:Z

    .line 140
    .line 141
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTimeDiff:J

    .line 142
    .line 143
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTP:I

    .line 144
    .line 145
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTPTask:I

    .line 146
    .line 147
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mWidth:I

    .line 148
    .line 149
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHeight:I

    .line 150
    .line 151
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mMaxCacheSeconds:I

    .line 152
    .line 153
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSRSuccess:Z

    .line 154
    .line 155
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderError:I

    .line 156
    .line 157
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseTextureRender:Z

    .line 158
    .line 159
    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mContainerFps:F

    .line 160
    .line 161
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderStartNotifyTimeStamp:J

    .line 162
    .line 163
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTextureRenderFirstFrameTime:J

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRenderFpsTimeSeries:Ljava/util/ArrayList;

    .line 167
    .line 168
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDownloadSpeedTimeSeries:Ljava/util/ArrayList;

    .line 169
    .line 170
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioBufferTimeSeries:Ljava/util/ArrayList;

    .line 171
    .line 172
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiBitrateTimeSeries:Ljava/util/ArrayList;

    .line 173
    .line 174
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSeiFpsTimeSeries:Ljava/util/ArrayList;

    .line 175
    .line 176
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorTimeSeries:Lorg/json/JSONObject;

    .line 177
    .line 178
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallTimeSeries:Ljava/util/ArrayList;

    .line 179
    .line 180
    iget-object v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 181
    .line 182
    if-eqz v8, :cond_0

    .line 183
    .line 184
    invoke-virtual {v8}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->reset()V

    .line 185
    .line 186
    .line 187
    :cond_0
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecName:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecType:Ljava/lang/String;

    .line 190
    .line 191
    const/4 v8, 0x1

    .line 192
    iput v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInMainLooper:I

    .line 193
    .line 194
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRuleIds:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionId:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSettingsInfo:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mTTNetNQEInfo:Ljava/lang/String;

    .line 201
    .line 202
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableP2P:I

    .line 203
    .line 204
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableOpenMDL:I

    .line 205
    .line 206
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUsedP2P:I

    .line 207
    .line 208
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mP2PLoaderType:I

    .line 209
    .line 210
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastTotalDownloadSize:J

    .line 211
    .line 212
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastDownloadSizeDelta:J

    .line 213
    .line 214
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableResolutionAutoDegrade:Z

    .line 215
    .line 216
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHasAbrInfo:Z

    .line 217
    .line 218
    const-string v8, "rad"

    .line 219
    .line 220
    iput-object v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrStrategy:Ljava/lang/String;

    .line 221
    .line 222
    const-string v8, "origin"

    .line 223
    .line 224
    iput-object v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResolution:Ljava/lang/String;

    .line 225
    .line 226
    iput-object v8, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAutoUsingResolution:Ljava/lang/String;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastResolution:Ljava/lang/String;

    .line 229
    .line 230
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDefaultResBitrate:I

    .line 231
    .line 232
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mResBitrate:J

    .line 233
    .line 234
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCount:I

    .line 235
    .line 236
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCountInfo:Ljava/lang/String;

    .line 237
    .line 238
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchInfo:Ljava/lang/String;

    .line 239
    .line 240
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurDownloadSpeed:J

    .line 241
    .line 242
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurAudioBufferTime:J

    .line 243
    .line 244
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCurVideoBufferTime:J

    .line 245
    .line 246
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAbrSwitchCost:J

    .line 247
    .line 248
    const/4 v6, 0x4

    .line 249
    iput v6, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStallCountThresOfResolutionDegrade:I

    .line 250
    .line 251
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNetworkTimeoutMs:I

    .line 252
    .line 253
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicMtu:I

    .line 254
    .line 255
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicScfgConfig:I

    .line 256
    .line 257
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicPadHello:I

    .line 258
    .line 259
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicTimerVersion:I

    .line 260
    .line 261
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameRetryCount:I

    .line 262
    .line 263
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFramePrepareTime:J

    .line 264
    .line 265
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastPrepareTime:J

    .line 266
    .line 267
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableTcpFastOpen:I

    .line 268
    .line 269
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLowLatencyFLV:I

    .line 270
    .line 271
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOptimizeBackupIps:Ljava/util/List;

    .line 272
    .line 273
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveAbrCheckEnhance:I

    .line 274
    .line 275
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpConnectTimeStamp:J

    .line 276
    .line 277
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTcpFirstPackageTimeStamp:J

    .line 278
    .line 279
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcTlsHandshakedTimeStamp:J

    .line 280
    .line 281
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayFallBack:I

    .line 282
    .line 283
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFallbackType:I

    .line 284
    .line 285
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcSessionId:Ljava/lang/String;

    .line 286
    .line 287
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayStopStatInfo:Ljava/lang/String;

    .line 288
    .line 289
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mDisableVideoRender:I

    .line 290
    .line 291
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestUrl:Ljava/lang/String;

    .line 292
    .line 293
    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRequestHeaders:Ljava/util/Map;

    .line 294
    .line 295
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseExpectBitrate:I

    .line 296
    .line 297
    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFCDNTranscodeMethod:I

    .line 298
    .line 299
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableReportSessionStop:I

    .line 300
    .line 301
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionNum:I

    .line 302
    .line 303
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalCount:J

    .line 304
    .line 305
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDecodeStallTotalTime:J

    .line 306
    .line 307
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalCount:J

    .line 308
    .line 309
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDecodeStallTotalTime:J

    .line 310
    .line 311
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalCount:J

    .line 312
    .line 313
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDemuxStallTotalTime:J

    .line 314
    .line 315
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalCount:J

    .line 316
    .line 317
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mAudioDemuxStallTotalTime:J

    .line 318
    .line 319
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncCount:I

    .line 320
    .line 321
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingCount:I

    .line 322
    .line 323
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncTimeDuration:J

    .line 324
    .line 325
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingTimeDuration:J

    .line 326
    .line 327
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPtsDuration:J

    .line 328
    .line 329
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingPtsDuration:J

    .line 330
    .line 331
    const-string v4, ""

    .line 332
    .line 333
    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncPlayingInfoStr:Ljava/lang/String;

    .line 334
    .line 335
    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNoSyncInfoStr:Ljava/lang/String;

    .line 336
    .line 337
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableLiveIOPlay:I

    .line 338
    .line 339
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOPlay:I

    .line 340
    .line 341
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOP2P:I

    .line 342
    .line 343
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOErrorMsg:Ljava/lang/String;

    .line 344
    .line 345
    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mFirstFrameView:J

    .line 346
    .line 347
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLiveIOVersion:Ljava/lang/String;

    .line 348
    .line 349
    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mUseLiveThreadPool:I

    .line 350
    .line 351
    return-void
.end method

.method public resetLog()V
    .locals 0

    return-void
.end method

.method public resetStreamCheckParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mVideoDTSQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSentFrames:I

    .line 13
    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastCheckDTS:J

    .line 17
    .line 18
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastSeiIndex:I

    .line 19
    .line 20
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLastIndex:I

    .line 21
    .line 22
    return-void
.end method

.method public setCdnIp(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCdnIp:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIpIsFromPlayerCore:Z

    .line 4
    .line 5
    return-void
.end method

.method public setCheckSilenceInterval(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableCheckSilenceInterval:Z

    .line 8
    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    const/4 v0, -0x1

    .line 13
    :goto_1
    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSilenceDetectedCount:I

    .line 14
    .line 15
    return-void
.end method

.method public setCodecType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCodecType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCommonFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mCommonFlag:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setEvaluatorSymbol(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEvaluatorSymbol:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setFormatInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestFormat:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStreamFormat:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setInErrorRecovering()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsInErrorRecovering:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mErrorStartTime:J

    .line 9
    .line 10
    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mOriginUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPlayerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPreconnect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mPreconnect:I

    .line 2
    .line 3
    return-void
.end method

.method public setPreviewFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsPreview:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProjectKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProjectKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProtocolInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSuggestProtocol:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mProtocol:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setQuicLibLoader(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mQuicFlag:I

    .line 2
    .line 3
    return-void
.end method

.method public setRemoteSorted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mIsRemoteSorted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRtcPlayLogInterval(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mRtcPlayingLogInterval:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setSdkParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSdkParams:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWaitTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mSessionLogBundle:Lcom/bykv/vk/component/ttvideo/log/LogBundle;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-wide p1, v0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/16 v1, 0x65

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mInterval:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableUploadSessionSeries:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const/16 v1, 0x66

    .line 22
    .line 23
    const-wide/16 v2, 0x1388

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mEnableNTPTask:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPTask:Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x67

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService$MyNTPTask;->sendEmptyMessageDelayed(IJ)V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mNTPRunning:Z

    .line 49
    .line 50
    :cond_2
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/log/LiveLoggerService;->mStarted:Z

    .line 51
    .line 52
    return-void
.end method
