.class public Lcom/haima/hmcp/business/RecordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/RecordHelper$RecordState;,
        Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;,
        Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;
    }
.end annotation


# static fields
.field public static final FILTER:Ljava/lang/String; = "Audio-Record: "

.field public static final TAG:Ljava/lang/String; = "RecordHelper"

.field private static volatile sInstance:Lcom/haima/hmcp/business/RecordHelper;


# instance fields
.field private mAudioRecordSourceCallback:Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;

.field private mAudioRecordThread:Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;

.field private mCurrentConfig:Lcom/haima/hmcp/beans/SdkRecordParameter;

.field private mEnable:Z

.field private mSource:Lcom/haima/hmcp/enums/Source;

.field private volatile mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

.field private final mainHandler:Landroid/os/Handler;

.field private recordDataListener:Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/business/RecordHelper$RecordState;->IDLE:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mainHandler:Landroid/os/Handler;

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/enums/Source;->SDK:Lcom/haima/hmcp/enums/Source;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mEnable:Z

    .line 25
    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/beans/SdkRecordParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/RecordHelper;->mCurrentConfig:Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/business/RecordHelper$RecordState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/business/RecordHelper;Lcom/haima/hmcp/business/RecordHelper$RecordState;)Lcom/haima/hmcp/business/RecordHelper$RecordState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/RecordHelper;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/RecordHelper;->notifyData([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/RecordHelper;)Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/RecordHelper;->recordDataListener:Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getsInstance()Lcom/haima/hmcp/business/RecordHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/RecordHelper;->sInstance:Lcom/haima/hmcp/business/RecordHelper;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/business/RecordHelper;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/business/RecordHelper;->sInstance:Lcom/haima/hmcp/business/RecordHelper;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/business/RecordHelper;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/business/RecordHelper;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/business/RecordHelper;->sInstance:Lcom/haima/hmcp/business/RecordHelper;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/business/RecordHelper;->sInstance:Lcom/haima/hmcp/business/RecordHelper;

    .line 25
    .line 26
    return-object v0
.end method

.method private internalStart(Lcom/haima/hmcp/beans/SdkRecordParameter;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mEnable:Z

    .line 2
    .line 3
    const-string v1, "RecordHelper"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Audio-Record: ROM AudioFlinger is not prepared!"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const-string p1, "Audio-Record: AudioConfig is null!"

    .line 16
    .line 17
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 22
    .line 23
    sget-object v2, Lcom/haima/hmcp/business/RecordHelper$RecordState;->IDLE:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 28
    .line 29
    sget-object v2, Lcom/haima/hmcp/business/RecordHelper$RecordState;->STOP:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "Audio-Record: \u72b6\u6001\u5f02\u5e38, \u5f53\u524d\u72b6\u6001\uff1a"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    const-string v0, "Audio-Record: ----------------\u5f00\u59cb\u5f55\u5236------------------------"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 66
    .line 67
    sget-object v2, Lcom/haima/hmcp/enums/Source;->APP:Lcom/haima/hmcp/enums/Source;

    .line 68
    .line 69
    if-ne v0, v2, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mAudioRecordSourceCallback:Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v0, Lcom/haima/hmcp/beans/RecordParameter;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/haima/hmcp/beans/RecordParameter;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/RecordParameter;->getSampleRate()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/RecordParameter;->setSampleRate(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/RecordParameter;->getChannel()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/RecordParameter;->setChannel(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mAudioRecordSourceCallback:Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;->onAudioRecordStart(Lcom/haima/hmcp/beans/RecordParameter;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lcom/haima/hmcp/business/RecordHelper$RecordState;->RECORDING:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v0, "Audio-Record: "

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, "start audio record failed cause AudioRecordSourceCallback is null"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mCurrentConfig:Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 131
    .line 132
    new-instance p1, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;-><init>(Lcom/haima/hmcp/business/RecordHelper;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mAudioRecordThread:Lcom/haima/hmcp/business/RecordHelper$AudioRecordThread;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method

.method private notifyData([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->recordDataListener:Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/haima/hmcp/business/RecordHelper$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/RecordHelper$1;-><init>(Lcom/haima/hmcp/business/RecordHelper;[B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getSource()Lcom/haima/hmcp/enums/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()Lcom/haima/hmcp/business/RecordHelper$RecordState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPermissionAllowed(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/enums/Source;->APP:Lcom/haima/hmcp/enums/Source;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Audio-Record: ====isPermissionAllowed====="

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "RecordHelper"

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v2
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->recordDataListener:Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;

    .line 3
    .line 4
    sput-object v0, Lcom/haima/hmcp/business/RecordHelper;->sInstance:Lcom/haima/hmcp/business/RecordHelper;

    .line 5
    .line 6
    return-void
.end method

.method public setAudioRecordCallback(Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mAudioRecordSourceCallback:Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Audio-Record: set enable: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "RecordHelper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mEnable:Z

    .line 24
    .line 25
    return-void
.end method

.method public setRecordDataListener(Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->recordDataListener:Lcom/haima/hmcp/business/RecordHelper$RecordDataListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(Lcom/haima/hmcp/enums/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 2
    .line 3
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/SdkRecordParameter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/SdkRecordParameter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    const-string v3, "RecordHelper"

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    const-string p1, "Audio-Record: parms is Less than 4!"

    .line 16
    .line 17
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/RecordParameter;->setSampleRate(I)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/RecordParameter;->setChannel(I)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "Audio-Record: Record source\uff1a"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "Audio-Record: RecordConfig\uff1a"

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/SdkRecordParameter;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/RecordHelper;->internalStart(Lcom/haima/hmcp/beans/SdkRecordParameter;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public stop(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/business/RecordHelper$RecordState;->IDLE:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 4
    .line 5
    const-string v2, "RecordHelper"

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "Audio-Record: stop \u72b6\u6001\u5f02\u5e38\u5f53\u524d\u72b6\u6001\uff1a"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v0, "Audio-Record: ----------------\u505c\u6b62\u5f55\u5236------------------------"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/haima/hmcp/business/RecordHelper$RecordState;->STOP:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/haima/hmcp/business/RecordHelper;->mState:Lcom/haima/hmcp/business/RecordHelper$RecordState;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mSource:Lcom/haima/hmcp/enums/Source;

    .line 48
    .line 49
    sget-object v0, Lcom/haima/hmcp/enums/Source;->APP:Lcom/haima/hmcp/enums/Source;

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/haima/hmcp/business/RecordHelper;->mAudioRecordSourceCallback:Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;->onAudioRecordStop()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "Audio-Record: "

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, "callback app stop record failed, cause AudioRecordSourceCallback is null"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    return-void
.end method
