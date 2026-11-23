.class public Lcom/haima/hmcp/HmcpManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;,
        Lcom/haima/hmcp/HmcpManager$DownloadImageTask;
    }
.end annotation


# static fields
.field public static ACCESS_KEY_ID:Ljava/lang/String; = "HMCP_ACCESS_KEY_ID"

.field private static ACCESS_URL:Ljava/lang/String; = ""

.field public static BUNDLE_ACCESS_URL:Ljava/lang/String; = "ACCESS_URL"

.field public static BUNDLE_CERTIFICATE:Ljava/lang/String; = "BUNDLE_CERTIFICATE"

.field public static BUNDLE_COUNTLY_KEY:Ljava/lang/String; = "COUNTLY_KEY"

.field public static BUNDLE_COUNTLY_URL:Ljava/lang/String; = "COUNTLY_URL"

.field public static BUNDLE_HMCP_SAAS_AUTH_URL:Ljava/lang/String; = "HMCP_SAAS_AUTH_URL"

.field private static CERTIFICATE:Ljava/security/cert/Certificate; = null

.field public static CHANNEL_ID:Ljava/lang/String; = "HMCP_CHANNEL_ID"

.field private static COUNTLY_KEY:Ljava/lang/String; = ""

.field private static COUNTLY_URL:Ljava/lang/String; = ""

.field public static final DATA_REPORT_DISABLE:I = 0x0

.field public static final DATA_REPORT_ENABLE:I = 0x1

.field public static final DATA_REPORT_UNKNOWN:I = -0x1

.field public static GAME_BID:Ljava/lang/String; = "GAME_BID"

.field private static HMCP_SAAS_AUTH_URL:Ljava/lang/String; = ""

.field public static INIT_SUCCESS:Z = false

.field public static IsSpeedTesting:Z = false

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field public static count:I

.field private static mHmcpManager:Lcom/haima/hmcp/HmcpManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile isDataReportEnabled:Z

.field private isInitializing:Z

.field public isJson:Z

.field private volatile isReadDataReportFromSp:Z

.field private mAdvertFileDownload:Lcom/haima/hmcp/utils/FileDownloadUtil;

.field private mAppContext:Landroid/content/Context;

.field private mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

.field private mGameArchitectureType:Lcom/haima/hmcp/beans/GameArchitectureType;

.field private mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

.field private mIntroImageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/IntroImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

.field private final mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformFormInited:Z

.field private mRecommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

.field private mResolutionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTips:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoView:Lcom/haima/hmcp/widgets/HmcpVideoView;

.field private netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

.field private ping:Lcom/netcheck/LDNetDiagnoService/a;

.field private renderType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private streamType:Ljava/lang/String;

.field public surfaceTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HmcpManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isInitializing:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/haima/hmcp/HmcpManager;->renderType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isReadDataReportFromSp:Z

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 29
    .line 30
    sget-object v1, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mGameArchitectureType:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->mPlatformFormInited:Z

    .line 35
    .line 36
    new-instance v0, Lcom/haima/hmcp/HmcpManager$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/haima/hmcp/HmcpManager$1;-><init>(Lcom/haima/hmcp/HmcpManager;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/HmcpManager;->lambda$streamingTypeQuery$0(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/haima/hmcp/HmcpManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/HmcpManager;->isInitializing:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/haima/hmcp/HmcpManager;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/HmcpManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/HmcpManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/haima/hmcp/HmcpManager;->testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/HmcpManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/HmcpManager;->idcQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "addEvent eventId:"

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
    const-string v2, ",data:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private checkInitParams(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)Z
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "12066"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "context cannot be null!"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, v0}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 21
    .line 22
    const-string v4, "100104003"

    .line 23
    .line 24
    const-string v5, "context is null"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v7, ""

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    sget-object v9, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v10, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "Network unavailable!"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    const-string p1, "Network unavailable"

    .line 62
    .line 63
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 67
    .line 68
    const-string v4, "100104003"

    .line 69
    .line 70
    const-string v5, "Network unavailable"

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const-string v7, ""

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    sget-object v9, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v10, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 79
    .line 80
    move-object v3, p1

    .line 81
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :cond_3
    sget-object v3, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    sget-object v3, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    sget-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 110
    .line 111
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 112
    .line 113
    :goto_0
    move-object v10, v0

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/16 v4, 0x80

    .line 124
    .line 125
    :try_start_0
    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 130
    .line 131
    sget-object v3, Lcom/haima/hmcp/HmcpManager;->ACCESS_KEY_ID:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    sget-object v4, Lcom/haima/hmcp/HmcpManager;->CHANNEL_ID:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception p1

    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-exception p1

    .line 147
    move-object v3, v0

    .line 148
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :goto_3
    move-object p1, v3

    .line 152
    goto :goto_0

    .line 153
    :goto_4
    if-eqz p1, :cond_a

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_6
    if-eqz v10, :cond_8

    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_7

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    const/4 p1, 0x1

    .line 172
    return p1

    .line 173
    :cond_8
    :goto_5
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 174
    .line 175
    const-string v4, "100104003"

    .line 176
    .line 177
    const-string v5, "Must specify Channel Key ID"

    .line 178
    .line 179
    const/4 v6, 0x0

    .line 180
    const-string v7, ""

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    const-string v9, ""

    .line 184
    .line 185
    const-string v10, ""

    .line 186
    .line 187
    move-object v3, p1

    .line 188
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iput-boolean v2, p0, Lcom/haima/hmcp/HmcpManager;->isInitializing:Z

    .line 199
    .line 200
    sput-boolean v2, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 201
    .line 202
    const-string p1, "mChannelId cannot be null!"

    .line 203
    .line 204
    if-eqz p2, :cond_9

    .line 205
    .line 206
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    iget-object p2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :cond_a
    :goto_6
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 216
    .line 217
    const-string v4, "100104003"

    .line 218
    .line 219
    const-string v5, "Must specify Access Key ID"

    .line 220
    .line 221
    const/4 v6, 0x0

    .line 222
    const-string v7, ""

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    const-string v9, ""

    .line 226
    .line 227
    move-object v3, p1

    .line 228
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iput-boolean v2, p0, Lcom/haima/hmcp/HmcpManager;->isInitializing:Z

    .line 239
    .line 240
    sput-boolean v2, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 241
    .line 242
    const-string p1, "mAccessKeyId cannot be null!"

    .line 243
    .line 244
    if-eqz p2, :cond_b

    .line 245
    .line 246
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_b
    iget-object p2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return v2
.end method

.method private getDataReportDisableMsg()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->hmcp_fail_msg_with_disable_data_report:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getInstance()Lcom/haima/hmcp/HmcpManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/HmcpManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/HmcpManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 13
    .line 14
    return-object v0
.end method

.method private getLocalStr(ILjava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, " getLocalStr SDK_INT = "

    .line 2
    .line 3
    const-string v1, "languageConfigLevel = "

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " locale == null,return Locale.getDefault() , result = "

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, " , result = "

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object p2
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "/proc/"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "/cmdline"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/io/BufferedReader;

    .line 34
    .line 35
    new-instance v3, Ljava/io/FileReader;

    .line 36
    .line 37
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v0

    .line 60
    :catch_1
    move-exception v1

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    move-object v2, v0

    .line 64
    move-object v0, v1

    .line 65
    goto :goto_3

    .line 66
    :catch_2
    move-exception v1

    .line 67
    move-object v2, v0

    .line 68
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_3
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_2
    return-object v0

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    :goto_3
    if-eqz v2, :cond_1

    .line 84
    .line 85
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :catch_4
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_4
    throw v0
.end method

.method private idcQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/HmcpManager;->idcQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    return-void
.end method

.method private idcQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 8

    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v7, Lcom/haima/hmcp/HmcpManager$6;

    invoke-direct {v7, p0, p6}, Lcom/haima/hmcp/HmcpManager$6;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSpecialInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    :cond_0
    return-void
.end method

.method private initInternal(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;Z)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmNetWorkManager;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "12058"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "callBack is null"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/business/ResourceManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/HmcpManager;->getDataReportStatus(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x1

    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_init_fail_by_no_data_report:I

    .line 36
    .line 37
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p2, "context is null"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 69
    .line 70
    invoke-direct {p0, p2, v0}, Lcom/haima/hmcp/HmcpManager;->checkInitParams(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mCallbackListener:Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->mPlatformFormInited:Z

    .line 81
    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/haima/hmcp/HmcpManager;->mPlatformFormInited:Z

    .line 85
    .line 86
    if-eqz p3, :cond_5

    .line 87
    .line 88
    const/16 p3, 0x8

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const/4 p3, 0x2

    .line 92
    :goto_0
    sput p3, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 93
    .line 94
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iput-object p3, p0, Lcom/haima/hmcp/HmcpManager;->mAppContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->setDiskPolicy(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->getProcessName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    sput-object p3, Lcom/haima/hmcp/countly/CountlyUtil;->processName:Ljava/lang/String;

    .line 108
    .line 109
    iput-boolean v2, p0, Lcom/haima/hmcp/HmcpManager;->isInitializing:Z

    .line 110
    .line 111
    invoke-static {p2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    const-string v0, "config_info_key"

    .line 116
    .line 117
    invoke-virtual {p3, v0, v1}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x0

    .line 126
    if-nez v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v6, "old configInfo :"

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 v6, 0x78

    .line 143
    .line 144
    if-le v3, v6, :cond_7

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    move v6, v3

    .line 148
    :goto_1
    invoke-virtual {p3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p3, " ,len:"

    .line 156
    .line 157
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-static {p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-virtual {p3, v0, v1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    sget-object p3, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    if-eqz p3, :cond_9

    .line 184
    .line 185
    invoke-static {p1}, Lcom/haima/hmcp/utils/FileUtil;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    sput-object p3, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 213
    .line 214
    :cond_9
    invoke-virtual {p0}, Lcom/haima/hmcp/HmcpManager;->stopAdvertDownload()V

    .line 215
    .line 216
    .line 217
    sget-object p3, Lcom/haima/hmcp/Constants;->DATA_PATH:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-eqz p3, :cond_a

    .line 224
    .line 225
    const-string p3, "libs"

    .line 226
    .line 227
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    sput-object p3, Lcom/haima/hmcp/Constants;->DATA_PATH:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p3

    .line 269
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    invoke-static {p3}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p3

    .line 281
    sput-object p3, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    .line 282
    .line 283
    :cond_b
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequest;->getInstance(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpRequest;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->initConfigInfo()V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 293
    .line 294
    new-instance p3, Lcom/haima/hmcp/HmcpManager$2;

    .line 295
    .line 296
    invoke-direct {p3, p0}, Lcom/haima/hmcp/HmcpManager$2;-><init>(Lcom/haima/hmcp/HmcpManager;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getDeviceId(Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V

    .line 300
    .line 301
    .line 302
    invoke-static {p2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const-string p3, "launchTimes"

    .line 307
    .line 308
    invoke-virtual {p1, p3, v4}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;I)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    invoke-static {p2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    add-int/2addr p1, v2

    .line 317
    invoke-virtual {p2, p3, p1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private initRequestManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mAppContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "==initRequestManager======== "

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/haima/hmcp/business/HmcpRequest;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mAppContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/haima/hmcp/business/HmcpRequest;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static isSpeedTesting()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/HmcpManager;->IsSpeedTesting:Z

    .line 2
    .line 3
    return v0
.end method

.method private static synthetic lambda$streamingTypeQuery$0(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setTransId(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setClientTransId transId:"

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sput-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mTransid:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 10

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 8
    iget-object v1, v0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    const/4 v1, 0x1

    .line 10
    sput-boolean v1, Lcom/haima/hmcp/HmcpManager;->IsSpeedTesting:Z

    .line 11
    iget-object v2, v0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v9, Lcom/haima/hmcp/HmcpManager$5;

    move-object/from16 v1, p7

    invoke-direct {v9, p0, v1}, Lcom/haima/hmcp/HmcpManager$5;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSpecialInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnUpdateDataReportStatusListener(Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "addOnUpdateDataReportStatusListener "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public checkPlayingCidStatus(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 12
    .line 13
    new-instance v1, Lcom/haima/hmcp/HmcpManager$13;

    .line 14
    .line 15
    invoke-direct {v1, p0, p3}, Lcom/haima/hmcp/HmcpManager$13;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->checkPlayingCidStatus(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public checkPlayingGame(Lcom/haima/hmcp/beans/UserInfo;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/haima/hmcp/HmcpManager;->checkPlayingGame(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    return-void
.end method

.method public checkPlayingGame(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v1, Lcom/haima/hmcp/HmcpManager$12;

    invoke-direct {v1, p0, p3}, Lcom/haima/hmcp/HmcpManager$12;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->checkPlayingGameRequest(Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGameIsAliveListener;)V

    :cond_0
    return-void
.end method

.method public clearCertificate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->CERTIFICATE:Ljava/security/cert/Certificate;

    .line 3
    .line 4
    return-void
.end method

.method public doNetPing(Ljava/lang/String;IILcom/haima/hmcp/listeners/OnNetPingListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->ping:Lcom/netcheck/LDNetDiagnoService/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/netcheck/LDNetDiagnoService/a;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/a;

    .line 13
    .line 14
    new-instance v1, Lcom/haima/hmcp/HmcpManager$16;

    .line 15
    .line 16
    invoke-direct {v1, p0, p4}, Lcom/haima/hmcp/HmcpManager$16;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnNetPingListener;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p2, p3, p1}, Lcom/netcheck/LDNetDiagnoService/a;-><init>(Lcom/netcheck/LDNetDiagnoService/a$a;IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->ping:Lcom/netcheck/LDNetDiagnoService/a;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public doTraceRoute(Landroid/content/Context;Ljava/lang/String;ILcom/haima/hmcp/listeners/OnTraceRouteListener;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v2, "//"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    const-string v2, ":"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v2, "/"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_3
    :goto_0
    move-object v11, v1

    .line 69
    new-instance v1, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 70
    .line 71
    const-string v7, "hmsdk"

    .line 72
    .line 73
    const-string v8, "1.0"

    .line 74
    .line 75
    const-string v9, "haima"

    .line 76
    .line 77
    const-string v10, "deviceID(option)"

    .line 78
    .line 79
    const-string v12, "carriname"

    .line 80
    .line 81
    const-string v13, "ISOCountyCode"

    .line 82
    .line 83
    const-string v14, "MobilCountryCode"

    .line 84
    .line 85
    const-string v15, "MobileNetCode"

    .line 86
    .line 87
    new-instance v2, Lcom/haima/hmcp/HmcpManager$15;

    .line 88
    .line 89
    move-object/from16 v3, p4

    .line 90
    .line 91
    invoke-direct {v2, v0, v3, v11}, Lcom/haima/hmcp/HmcpManager$15;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnTraceRouteListener;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v5, v1

    .line 95
    move-object/from16 v6, p1

    .line 96
    .line 97
    move-object/from16 v16, v2

    .line 98
    .line 99
    invoke-direct/range {v5 .. v16}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->setIfUseJNICTrace(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 109
    .line 110
    move/from16 v2, p3

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->setTraceTimes(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 116
    .line 117
    new-array v2, v4, [Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->execute([Ljava/lang/Object;)Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/haima/hmcp/HmcpManager;->gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 3
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->getDataReportDisableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string p2, "gameArchived DataReport is disable and listener is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v1, Lcom/haima/hmcp/HmcpManager$9;

    invoke-direct {v1, p0, p4}, Lcom/haima/hmcp/HmcpManager$9;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    :cond_2
    return-void
.end method

.method public gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 10
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->getDataReportDisableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string p2, "gameArchived DataReport is disable and listener is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v6, Lcom/haima/hmcp/HmcpManager$10;

    invoke-direct {v6, p0, p5}, Lcom/haima/hmcp/HmcpManager$10;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    :cond_2
    return-void
.end method

.method public getAccessUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->ACCESS_URL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApplyInstanceParams(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "mHmcpRequestManager is null"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getApplyInstanceParams(Landroid/os/Bundle;)Lcom/haima/hmcp/beans/RawPostJson;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->CERTIFICATE:Ljava/security/cert/Certificate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCountlyKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->COUNTLY_KEY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountlyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->COUNTLY_URL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCutOutsHeightPercent(Landroid/app/Activity;)[F
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/ConfigUtil;->getCutOutsHeightPercent(Landroid/app/Activity;)[F

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDataReportStatus(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "isDataReportEnabled context == null ,return false"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isReadDataReportFromSp:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/DataUtils;->readDataReportIsEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput-boolean p1, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/haima/hmcp/HmcpManager;->isReadDataReportFromSp:Z

    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "isDataReportEnabled isDataReportEnabled = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    .line 58
    .line 59
    return p1
.end method

.method public getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mGameArchitectureType:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/haima/hmcp/HmcpManager;->getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 3
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->getDataReportDisableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string p2, "gameArchived DataReport is disable and listener is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v1, Lcom/haima/hmcp/HmcpManager$7;

    invoke-direct {v1, p0, p4}, Lcom/haima/hmcp/HmcpManager$7;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    :cond_2
    return-void
.end method

.method public getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 10
    iget-boolean v0, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->getDataReportDisableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string p2, "gameArchived DataReport is disable and listener is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v6, Lcom/haima/hmcp/HmcpManager$8;

    invoke-direct {v6, p0, p5}, Lcom/haima/hmcp/HmcpManager$8;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    :cond_2
    return-void
.end method

.method public getHmcpSaasAuthUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->HMCP_SAAS_AUTH_URL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntroImageInfos(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/IntroImageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, -0xff0100

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mIntroImageInfos:Ljava/util/List;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method public getNetText(Lcom/haima/hmcp/widgets/HmcpVideoView;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getNetText()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getNetText()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v1

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-nez p1, :cond_3

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/haima/hmcp/beans/NetTestData;

    .line 66
    .line 67
    const-string v3, "Manager"

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/NetTestData;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_5
    return-object v1
.end method

.method public getRecommendInfo()Lcom/haima/hmcp/beans/RecommendInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mRecommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolutionDatas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "getResolutionDatas-->streamType is null"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mResolutionMap:Ljava/util/Map;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "getResolutionDatas-->"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " Resolution Info List is null"

    .line 46
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
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-object v0
.end method

.method public getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 1

    const-string v0, ""

    .line 11
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/haima/hmcp/HmcpManager;->getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V

    return-void
.end method

.method public getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 7

    if-nez p5, :cond_0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string p2, "getResolutionInfos listener can\'t be null,return "

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 3
    sget-boolean v0, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v6, Lcom/haima/hmcp/HmcpManager$14;

    invoke-direct {v6, p0, p5}, Lcom/haima/hmcp/HmcpManager$14;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    sget p1, Lcom/haima/hmcp/R$string;->Error_000003:I

    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "Initialization incomplete"

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getResolutionInfos: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p5, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 6

    .line 10
    sget-object v4, Lcom/haima/hmcp/enums/StreamType;->RTMP:Lcom/haima/hmcp/enums/StreamType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/HmcpManager;->getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V

    return-void
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "master-7.28.1-a83e5ae0"

    return-object v0
.end method

.method public getStreamType()Lcom/haima/hmcp/enums/StreamType;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/StreamType;->WEBRTC:Lcom/haima/hmcp/enums/StreamType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/haima/hmcp/enums/StreamType;->RTMP:Lcom/haima/hmcp/enums/StreamType;

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public getSystemLocalStr(I)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/a;->a()Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Landroidx/core/os/c;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/HmcpManager;->getLocalStr(ILjava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "languageConfigLevel = "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " getSystemLocal SDK_INT = "

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " , result = "

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method

.method public getTips(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, -0xff0100

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mTips:Ljava/util/HashMap;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method public getTipsInfos(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, -0xff0100

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mTipsInfos:Ljava/util/List;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method public getVideoViewType()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->renderType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getVideoViewType(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->renderType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1
.end method

.method public handleMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public idcQuery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 7

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/HmcpManager;->idcQuery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    return-void
.end method

.method public idcQuery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V
    .locals 8

    const-string v0, ""

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_COMPATIBLE_IPV6:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v7, Lcom/haima/hmcp/HmcpManager$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/HmcpManager$4;-><init>(Lcom/haima/hmcp/HmcpManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    invoke-virtual {p1, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_1
    const-string v4, ""

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/HmcpManager;->idcQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnIdcQueryCallBackListener;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    const-string v1, "init(Context context, final OnInitCallBackListener callBack)"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/HmcpManager;->initInternal(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;Z)V

    return-void
.end method

.method public init(Landroid/os/Bundle;Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/HmcpManager;->init(Landroid/os/Bundle;Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;ZZ)V

    return-void
.end method

.method public init(Landroid/os/Bundle;Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;ZZ)V
    .locals 2

    .line 2
    iput-boolean p4, p0, Lcom/haima/hmcp/HmcpManager;->isJson:Z

    if-eqz p1, :cond_1

    .line 3
    sget-object p4, Lcom/haima/hmcp/HmcpManager;->CHANNEL_ID:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/haima/hmcp/countly/CountlyUtil;->mChannelId:Ljava/lang/String;

    .line 4
    sget-object p4, Lcom/haima/hmcp/HmcpManager;->ACCESS_KEY_ID:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 5
    sput-object p4, Lcom/haima/hmcp/countly/CountlyUtil;->mRegisterAccessKey:Ljava/lang/String;

    const-string p4, "language_config"

    .line 6
    invoke-virtual {p1, p4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-boolean p4, Lcom/haima/hmcp/language/AbsLanguageManager;->IS_AUTO_BY_SYSTEM:Z

    if-eqz p4, :cond_0

    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/HmcpManager;->getSystemLocalStr(I)Ljava/lang/String;

    move-result-object p4

    move-object p1, p4

    const/16 p4, 0xa

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mLanguageManager:Lcom/haima/hmcp/language/AbsLanguageManager;

    const-string v1, "SDK init"

    invoke-virtual {v0, p1, v1, p4}, Lcom/haima/hmcp/language/AbsLanguageManager;->updateLanguage(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 10
    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/haima/hmcp/HmcpManager;->initInternal(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;Z)V

    return-void
.end method

.method public isRtcStream()Z
    .locals 2

    .line 1
    const-string v0, "WEBRTC"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public synthetic onGSMUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/business/b;->a(Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;Lcom/haima/hmcp/beans/GSMUsbNatData;)V

    return-void
.end method

.method public onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onReceiveDistance(J)V
    .locals 0

    return-void
.end method

.method public onReceiveExtraConfigs(Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/IntroImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, -0xff0100

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager;->mTips:Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/haima/hmcp/HmcpManager;->mTipsInfos:Ljava/util/List;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/haima/hmcp/HmcpManager;->mResolutionMap:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/haima/hmcp/HmcpManager;->mIntroImageInfos:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public onResponse(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 0

    return-void
.end method

.method public releaseRequestManager()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequest;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->clearNetText()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public removeOnUpdateDataReportStatusListener(Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "removeOnUpdateDataReportStatusListener "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setAdvertFileDownload(Lcom/haima/hmcp/utils/FileDownloadUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mAdvertFileDownload:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    return-void
.end method

.method public setGameArchitectureType(Lcom/haima/hmcp/beans/GameArchitectureType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mGameArchitectureType:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 2
    .line 3
    return-void
.end method

.method public setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V
    .locals 0

    return-void
.end method

.method public setRecommandInfo(Lcom/haima/hmcp/beans/RecommendInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mRecommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/beans/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/haima/hmcp/HmcpManager$DownloadImageTask;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mRecommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Lcom/haima/hmcp/HmcpManager$DownloadImageTask;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/beans/RecommendInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mRecommendInfo:Lcom/haima/hmcp/beans/RecommendInfo;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/haima/hmcp/beans/RecommendInfo;->iconUrl:Ljava/lang/String;

    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "setRecommandInfo "

    .line 33
    .line 34
    const-string v0, "mRecommendInfo is null"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 10

    const-string v6, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 9
    invoke-virtual/range {v0 .. v9}, Lcom/haima/hmcp/HmcpManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 10

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 8
    invoke-virtual/range {v0 .. v9}, Lcom/haima/hmcp/HmcpManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 10
    invoke-virtual/range {v0 .. v9}, Lcom/haima/hmcp/HmcpManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 12

    move-object v0, p0

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/HmcpManager;->initRequestManager()V

    .line 12
    iget-object v1, v0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 14
    iget-object v2, v0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v11, Lcom/haima/hmcp/HmcpManager$11;

    move-object/from16 v1, p9

    invoke-direct {v11, p0, v1}, Lcom/haima/hmcp/HmcpManager$11;-><init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    :cond_0
    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p5

    .line 2
    new-instance v5, Lcom/haima/hmcp/beans/UserInfo2;

    invoke-direct {v5}, Lcom/haima/hmcp/beans/UserInfo2;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v5, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    iput-object v1, v5, Lcom/haima/hmcp/beans/UserInfo2;->userToken:Ljava/lang/String;

    .line 5
    iget v1, v0, Lcom/haima/hmcp/beans/UserInfo;->userType:I

    iput v1, v5, Lcom/haima/hmcp/beans/UserInfo2;->userType:I

    .line 6
    iget v0, v0, Lcom/haima/hmcp/beans/UserInfo;->userLevel:I

    iput v0, v5, Lcom/haima/hmcp/beans/UserInfo2;->userLevel:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 7
    invoke-virtual/range {v0 .. v9}, Lcom/haima/hmcp/HmcpManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V

    return-void
.end method

.method public setResolutionDatas(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, -0xff0100

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager;->mResolutionList:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public setServiceUrl(Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->BUNDLE_HMCP_SAAS_AUTH_URL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/haima/hmcp/HmcpManager;->HMCP_SAAS_AUTH_URL:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    sput-boolean v2, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 25
    .line 26
    :cond_0
    sget-boolean v2, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->HMCP_SAAS_AUTH_URL:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->BUNDLE_ACCESS_URL:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->ACCESS_URL:Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->BUNDLE_COUNTLY_URL:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->COUNTLY_URL:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->BUNDLE_COUNTLY_KEY:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/haima/hmcp/HmcpManager;->COUNTLY_KEY:Ljava/lang/String;

    .line 55
    .line 56
    sget-object v0, Lcom/haima/hmcp/HmcpManager;->BUNDLE_CERTIFICATE:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of v0, p1, Ljava/security/cert/Certificate;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    check-cast p1, Ljava/security/cert/Certificate;

    .line 67
    .line 68
    sput-object p1, Lcom/haima/hmcp/HmcpManager;->CERTIFICATE:Ljava/security/cert/Certificate;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "initSSLSocketFactory HmcpManager Certificate success"

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    sget-boolean p1, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 78
    .line 79
    xor-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    return p1
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager;->streamType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceViewList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setSurfaceViewList is  Deprecated ,remove this method by next version,please use setVideoViewType(int type)"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/HmcpManager;->setVideoViewType(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/HmcpManager;->setVideoViewType(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public setVideoViewType(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setVideoViewType renderType = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-le p1, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->renderType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopAdvertDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mAdvertFileDownload:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mAdvertFileDownload:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public stopNetPing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->ping:Lcom/netcheck/LDNetDiagnoService/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->ping:Lcom/netcheck/LDNetDiagnoService/a;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public stopSpeedTesting()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "status"

    .line 7
    .line 8
    const-string v2, "stop"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "stopByApp"

    .line 14
    .line 15
    const-string v2, "1"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    const-string v1, "13704"

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->stopSpeedTesting()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public stopTraceRoute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;->stopNetDialogsis()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/HmcpManager;->netDiagnoService:Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoService;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public streamingTypeQuery(Lcom/haima/hmcp/beans/GameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V
    .locals 4

    .line 1
    const-string v0, "tv_battle->streaming type query fail: "

    .line 2
    .line 3
    const-string v1, "12805"

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p1, "OnGameStreamingTypeListener is null"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    sget-boolean v3, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/haima/hmcp/b;

    .line 43
    .line 44
    invoke-direct {v0, p2}, Lcom/haima/hmcp/b;-><init>(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getStreamingType(Lcom/haima/hmcp/beans/GameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 52
    .line 53
    const-string p1, "HmcpRequestManager is null"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-string p1, "init is not success"

    .line 57
    .line 58
    :goto_1
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    const-string v0, "Not init"

    .line 83
    .line 84
    invoke-interface {p2, p1, v0}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 8

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    return-void
.end method

.method public testSpeed(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 8

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->testSpeed(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    return-void
.end method

.method public testSpeed(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 11

    move-object v8, p0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_COMPATIBLE_IPV6:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, v8, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->resetHttpStatus()V

    .line 5
    iget-object v9, v8, Lcom/haima/hmcp/HmcpManager;->mHmcpRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    new-instance v10, Lcom/haima/hmcp/HmcpManager$3;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager$3;-><init>(Lcom/haima/hmcp/HmcpManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    invoke-virtual {v9, v10}, Lcom/haima/hmcp/business/HmcpRequestManager;->getPublicIPV4(Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;)V

    goto :goto_0

    :cond_1
    const-string v5, ""

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    :goto_0
    return-void
.end method

.method public updateDataReportStatus(Landroid/content/Context;Z)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "updateDataReportIsEnable context == null ,return false"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "updateDataReportIsEnable isEnable = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p2}, Lcom/haima/hmcp/utils/DataUtils;->updateDataReportEnable(Z)Z

    .line 39
    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/haima/hmcp/HmcpManager;->isDataReportEnabled:Z

    .line 42
    .line 43
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->setDiskPolicy(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->updateDataReportEnable(Z)V

    .line 47
    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    sput-boolean p1, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager;->mOnUpdateDataReportStatusListenerList:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;

    .line 71
    .line 72
    invoke-interface {v0, p2}, Lcom/haima/hmcp/HmcpManager$OnUpdateDataReportStatusListener;->updateDataReportEnable(Z)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return p2
.end method

.method public waitStreamUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
