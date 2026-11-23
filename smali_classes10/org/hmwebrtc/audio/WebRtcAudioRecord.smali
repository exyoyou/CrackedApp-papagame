.class Lorg/hmwebrtc/audio/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_START:I = 0x0

.field private static final AUDIO_RECORD_STOP:I = 0x1

.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final CHECK_REC_STATUS_DELAY_MS:I = 0x64

.field public static final DEFAULT_AUDIO_FORMAT:I = 0x2

.field public static final DEFAULT_AUDIO_SOURCE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioRecordExternal"

.field private static final nextSchedulerId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final audioFormat:I

.field private final audioManager:Landroid/media/AudioManager;

.field private audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioSamplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioSource:I

.field private final audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private byteBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

.field private emptyBytes:[B

.field private final errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isAcousticEchoCancelerSupported:Z

.field private final isNoiseSuppressorSupported:Z

.field private mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

.field private volatile mPendingMicrophoneMute:Z

.field private microphoneMute:Z

.field private nativeAudioRecord:J

.field private preferredDevice:Landroid/media/AudioDeviceInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nextSchedulerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/AudioRecordFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lorg/hmwebrtc/audio/AudioRecordFactory;)V
    .locals 12

    .line 2
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->newDefaultScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v9

    .line 4
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v11, p3

    .line 5
    invoke-direct/range {v0 .. v11}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Landroid/media/AudioManager;IILorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;ZZLorg/hmwebrtc/audio/AudioRecordFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Landroid/media/AudioManager;IILorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;ZZLorg/hmwebrtc/audio/AudioRecordFactory;)V
    .locals 1
    .param p6    # Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    invoke-direct {v0}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p9, :cond_1

    .line 9
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HW AEC not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p10, :cond_3

    .line 11
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HW NS not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    iput-object p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 16
    iput p4, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSource:I

    .line 17
    iput p5, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioFormat:I

    .line 18
    iput-object p6, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 19
    iput-object p7, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    .line 20
    iput-object p8, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSamplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 21
    iput-boolean p9, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->isAcousticEchoCancelerSupported:Z

    .line 22
    iput-boolean p10, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->isNoiseSuppressorSupported:Z

    .line 23
    iput-object p11, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    if-nez p11, :cond_4

    .line 24
    new-instance p1, Lorg/hmwebrtc/audio/DefaultAudioRecordFactory;

    invoke-direct {p1}, Lorg/hmwebrtc/audio/DefaultAudioRecordFactory;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ctor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebRtcAudioRecordExternal"

    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/IAudioRecord;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->lambda$scheduleLogRecordingConfigurationsTask$0(Lorg/hmwebrtc/audio/IAudioRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nextSchedulerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/audio/WebRtcAudioRecord;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->doAudioRecordStateCallback(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mPendingMicrophoneMute:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->microphoneMute:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->microphoneMute:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->emptyBytes:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$800(Lorg/hmwebrtc/audio/WebRtcAudioRecord;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nativeDataIsRecorded(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSamplesReadyCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method private static assertTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    const-string v0, "Expected condition to be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private static audioStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const-string p0, "STOP"

    return-object p0

    :cond_1
    const-string p0, "START"

    return-object p0
.end method

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private static checkDeviceMatch(Landroid/media/AudioDeviceInfo;Landroid/media/AudioDeviceInfo;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/audio/k;->a(Landroid/media/AudioDeviceInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lorg/hmwebrtc/audio/k;->a(Landroid/media/AudioDeviceInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Le2/c;->a(Landroid/media/AudioDeviceInfo;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p1}, Le2/c;->a(Landroid/media/AudioDeviceInfo;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method private doAudioRecordStateCallback(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "doAudioRecordStateCallback: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioStateToString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "WebRtcAudioRecordExternal"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;->onWebRtcAudioRecordStart()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;->onWebRtcAudioRecordStop()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p1, "Invalid audio state"

    .line 45
    .line 46
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method private enableBuiltInAEC(Z)Z
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "enableBuiltInAEC("

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
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "WebRtcAudioRecordExternal"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 29
    .line 30
    invoke-interface {v0}, Lorg/hmwebrtc/audio/AudioRecordFactory;->isAecSupported()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->setAEC(Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
.end method

.method private enableBuiltInNS(Z)Z
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "enableBuiltInNS("

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
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "WebRtcAudioRecordExternal"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 29
    .line 30
    invoke-interface {v0}, Lorg/hmwebrtc/audio/AudioRecordFactory;->isNSSupported()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->setNS(Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
.end method

.method private static getBytesPerSample(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_2

    .line 4
    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq p0, v2, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0xd

    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Bad audio format "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    return v1

    .line 42
    :cond_2
    :goto_0
    return v0
.end method

.method private initRecording(II)I
    .locals 12
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initRecording(sampleRate="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", channels="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "WebRtcAudioRecordExternal"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-string p1, "InitRecording called twice without StopRecording."

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioFormat:I

    .line 48
    .line 49
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->getBytesPerSample(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    mul-int v0, v0, p2

    .line 54
    .line 55
    div-int/lit8 v3, p1, 0x64

    .line 56
    .line 57
    mul-int v0, v0, v3

    .line 58
    .line 59
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    const-string p1, "ByteBuffer does not have backing array."

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v4, "byteBuffer.capacity: "

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    new-array v0, v0, [B

    .line 110
    .line 111
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->emptyBytes:[B

    .line 112
    .line 113
    iget-wide v4, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 114
    .line 115
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    invoke-direct {p0, v4, v5, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->channelCountToConfiguration(I)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    iget p2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioFormat:I

    .line 125
    .line 126
    invoke-static {p1, v9, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eq p2, v2, :cond_8

    .line 131
    .line 132
    const/4 v0, -0x2

    .line 133
    if-ne p2, v0, :cond_2

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "AudioRecord.getMinBufferSize: "

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    mul-int/lit8 p2, p2, 0x2

    .line 158
    .line 159
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v0, "bufferSizeInBytes: "

    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-static {v1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v6, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mAudioRecordFactory:Lorg/hmwebrtc/audio/AudioRecordFactory;

    .line 190
    .line 191
    iget v7, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSource:I

    .line 192
    .line 193
    iget v10, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioFormat:I

    .line 194
    .line 195
    move v8, p1

    .line 196
    invoke-interface/range {v6 .. v11}, Lorg/hmwebrtc/audio/AudioRecordFactory;->create(IIIII)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 201
    .line 202
    if-nez p1, :cond_3

    .line 203
    .line 204
    const-string p1, "create audioRecord failed!"

    .line 205
    .line 206
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->releaseAudioResources()V

    .line 210
    .line 211
    .line 212
    return v2

    .line 213
    :cond_3
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 214
    .line 215
    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 220
    .line 221
    const/16 p2, 0x17

    .line 222
    .line 223
    if-lt p1, p2, :cond_4

    .line 224
    .line 225
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 226
    .line 227
    if-eqz p1, :cond_4

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 230
    .line 231
    .line 232
    :cond_4
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 233
    .line 234
    if-eqz p1, :cond_7

    .line 235
    .line 236
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getState()I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    const/4 p2, 0x1

    .line 241
    if-eq p1, p2, :cond_5

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_5
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    .line 245
    .line 246
    iget-object p2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 247
    .line 248
    invoke-interface {p2}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioSessionId()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->enable(I)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logMainParameters()V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logMainParametersExtended()V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 262
    .line 263
    const/4 p2, 0x0

    .line 264
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logRecordingConfigurations(Lorg/hmwebrtc/audio/IAudioRecord;Z)I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_6

    .line 269
    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v0, "Potential microphone conflict. Active sessions: "

    .line 276
    .line 277
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_6
    return v3

    .line 291
    :cond_7
    :goto_0
    const-string p1, "Creation or initialization of audio recorder failed."

    .line 292
    .line 293
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->releaseAudioResources()V

    .line 297
    .line 298
    .line 299
    return v2

    .line 300
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v0, "AudioRecord.getMinBufferSize failed: "

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return v2
.end method

.method private synthetic lambda$scheduleLogRecordingConfigurationsTask$0(Lorg/hmwebrtc/audio/IAudioRecord;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logRecordingConfigurations(Lorg/hmwebrtc/audio/IAudioRecord;Z)I

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "WebRtcAudioRecordExternal"

    .line 11
    .line 12
    const-string v0, "audio record has changed"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string p1, "Scheduled task is done"

    .line 18
    .line 19
    return-object p1
.end method

.method private static logActiveRecordingConfigs(ILjava/util/List;)Z
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "AudioRecordingConfigurations: "

    .line 15
    .line 16
    const-string v2, "WebRtcAudioRecordExternal"

    .line 17
    .line 18
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lorg/hmwebrtc/audio/e;->a(Ljava/lang/Object;)Landroid/media/AudioRecordingConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lorg/hmwebrtc/audio/l;->a(Landroid/media/AudioRecordingConfiguration;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-string v5, "  client audio source="

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->audioSourceToString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ", client session id="

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lorg/hmwebrtc/audio/m;->a(Landroid/media/AudioRecordingConfiguration;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, " ("

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, ")"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, "\n"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lorg/hmwebrtc/audio/n;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "  Device AudioFormat: "

    .line 91
    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, "channel count="

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lorg/hmwebrtc/audio/o;->a(Landroid/media/AudioFormat;)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v7, ", channel index mask="

    .line 108
    .line 109
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Lorg/hmwebrtc/audio/p;->a(Landroid/media/AudioFormat;)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v8, ", channel mask="

    .line 120
    .line 121
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getChannelMask()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    invoke-static {v9}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->channelMaskToString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v9, ", encoding="

    .line 136
    .line 137
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getEncoding()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    invoke-static {v10}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->audioEncodingToString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v10, ", sample rate="

    .line 152
    .line 153
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lorg/hmwebrtc/audio/q;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v11, "  Client AudioFormat: "

    .line 171
    .line 172
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-static {v5}, Lorg/hmwebrtc/audio/o;->a(Landroid/media/AudioFormat;)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Lorg/hmwebrtc/audio/p;->a(Landroid/media/AudioFormat;)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getChannelMask()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-static {v6}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->channelMaskToString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getEncoding()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-static {v6}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->audioEncodingToString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lorg/hmwebrtc/audio/r;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioDeviceInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    .line 242
    invoke-static {v0}, Lorg/hmwebrtc/audio/j;->a(Landroid/media/AudioDeviceInfo;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-static {v4}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 247
    .line 248
    .line 249
    const-string v4, "  AudioDevice: "

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v4, "type="

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Le2/c;->a(Landroid/media/AudioDeviceInfo;)I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-static {v4}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->deviceTypeToString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v4, ", id="

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Lorg/hmwebrtc/audio/k;->a(Landroid/media/AudioDeviceInfo;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_1
    return v1
.end method

.method private logMainParameters()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AudioRecord: session ID: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 12
    .line 13
    invoke-interface {v1}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioSessionId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", channels: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 26
    .line 27
    invoke-interface {v1}, Lorg/hmwebrtc/audio/IAudioRecord;->getChannelCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", sample rate: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 40
    .line 41
    invoke-interface {v1}, Lorg/hmwebrtc/audio/IAudioRecord;->getSampleRate()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "WebRtcAudioRecordExternal"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "AudioRecord: buffer size in frames: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 18
    .line 19
    invoke-interface {v1}, Lorg/hmwebrtc/audio/IAudioRecord;->getBufferSizeInFrames()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WebRtcAudioRecordExternal"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private logRecordingConfigurations(Lorg/hmwebrtc/audio/IAudioRecord;Z)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "WebRtcAudioRecordExternal"

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const-string p1, "AudioManager#getActiveRecordingConfigurations() requires N or higher"

    .line 11
    .line 12
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/hmwebrtc/audio/f;->a(Landroid/media/AudioManager;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "Number of active recording sessions: "

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioSessionId()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logActiveRecordingConfigs(ILjava/util/List;)Z

    .line 62
    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object p2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioSource()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioSessionId()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4}, Lorg/hmwebrtc/audio/g;->a(Landroid/media/AudioRecord;)Landroid/media/AudioFormat;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {p1}, Lorg/hmwebrtc/audio/IAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lorg/hmwebrtc/audio/h;->a(Landroid/media/AudioRecord;)Landroid/media/AudioDeviceInfo;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v2, v3, v4, p1, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->verifyAudioConfig(IILandroid/media/AudioFormat;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return v1

    .line 104
    :cond_3
    :goto_0
    return v2
.end method

.method private native nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V
.end method

.method private native nativeDataIsRecorded(JI)V
.end method

.method static newDefaultScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lorg/hmwebrtc/audio/WebRtcAudioRecord$1;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private releaseAudioResources()V
    .locals 2

    .line 1
    const-string v0, "WebRtcAudioRecordExternal"

    .line 2
    .line 3
    const-string v1, "releaseAudioResources"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->release()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private reportWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Run-time recording error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "WebRtcAudioRecordExternal"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;->onWebRtcAudioRecordError(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Init recording error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "WebRtcAudioRecordExternal"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logRecordingConfigurations(Lorg/hmwebrtc/audio/IAudioRecord;Z)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;->onWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Start recording error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ". "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "WebRtcAudioRecordExternal"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->logRecordingConfigurations(Lorg/hmwebrtc/audio/IAudioRecord;Z)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;->onWebRtcAudioRecordStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private scheduleLogRecordingConfigurationsTask(Lorg/hmwebrtc/audio/IAudioRecord;)V
    .locals 4

    .line 1
    const-string v0, "WebRtcAudioRecordExternal"

    .line 2
    .line 3
    const-string v1, "scheduleLogRecordingConfigurationsTask"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x18

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lorg/hmwebrtc/audio/s;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lorg/hmwebrtc/audio/s;-><init>(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/IAudioRecord;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    const-wide/16 v1, 0x64

    .line 39
    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 47
    .line 48
    return-void
.end method

.method private startRecording()Z
    .locals 5
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "WebRtcAudioRecordExternal"

    .line 2
    .line 3
    const-string v1, "startRecording"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_1
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 31
    .line 32
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->getRecordingState()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v3, 0x3

    .line 42
    if-eq v0, v3, :cond_2

    .line 43
    .line 44
    sget-object v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "AudioRecord.startRecording failed - incorrect state: "

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 57
    .line 58
    invoke-interface {v3}, Lorg/hmwebrtc/audio/IAudioRecord;->getRecordingState()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_2
    new-instance v0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 74
    .line 75
    const-string v2, "AudioRecordJavaThread"

    .line 76
    .line 77
    invoke-direct {v0, p0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;-><init>(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->scheduleLogRecordingConfigurationsTask(Lorg/hmwebrtc/audio/IAudioRecord;)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "AudioRecord.startRecording failed: "

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p0, v1, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v2
.end method

.method private stopRecording()Z
    .locals 6
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "stopRecording"

    .line 2
    .line 3
    const-string v1, "WebRtcAudioRecordExternal"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    iput-object v3, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->stopThread()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 43
    .line 44
    const-wide/16 v4, 0x7d0

    .line 45
    .line 46
    invoke-static {v0, v4, v5}, Lorg/hmwebrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    const-string v0, "Join of AudioRecordJavaThread timed out"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v4, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioManager:Landroid/media/AudioManager;

    .line 60
    .line 61
    invoke-static {v1, v0, v4}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iput-object v3, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;

    .line 65
    .line 66
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->effects:Lorg/hmwebrtc/audio/WebRtcAudioEffects;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/WebRtcAudioEffects;->release()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->releaseAudioResources()V

    .line 72
    .line 73
    .line 74
    return v2
.end method

.method private static verifyAudioConfig(IILandroid/media/AudioFormat;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioFormat;",
            "Landroid/media/AudioDeviceInfo;",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->assertTrue(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v2, "WebRtcAudioRecordExternal"

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lorg/hmwebrtc/audio/e;->a(Ljava/lang/Object;)Landroid/media/AudioRecordingConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lorg/hmwebrtc/audio/r;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioDeviceInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v0}, Lorg/hmwebrtc/audio/l;->a(Landroid/media/AudioRecordingConfiguration;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p0, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Lorg/hmwebrtc/audio/m;->a(Landroid/media/AudioRecordingConfiguration;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, p1, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Lorg/hmwebrtc/audio/q;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getEncoding()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ne v4, v5, :cond_0

    .line 62
    .line 63
    invoke-static {v0}, Lorg/hmwebrtc/audio/q;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ne v4, v5, :cond_0

    .line 76
    .line 77
    invoke-static {v0}, Lorg/hmwebrtc/audio/q;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getChannelMask()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-ne v4, v5, :cond_0

    .line 90
    .line 91
    invoke-static {v0}, Lorg/hmwebrtc/audio/q;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4}, Lorg/hmwebrtc/audio/p;->a(Landroid/media/AudioFormat;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {p2}, Lorg/hmwebrtc/audio/p;->a(Landroid/media/AudioFormat;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-ne v4, v5, :cond_0

    .line 104
    .line 105
    invoke-static {v0}, Lorg/hmwebrtc/audio/n;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_0

    .line 114
    .line 115
    invoke-static {v0}, Lorg/hmwebrtc/audio/n;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-lez v4, :cond_0

    .line 124
    .line 125
    invoke-static {v0}, Lorg/hmwebrtc/audio/n;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_2

    .line 134
    .line 135
    invoke-static {v0}, Lorg/hmwebrtc/audio/n;->a(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioFormat;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lorg/hmwebrtc/audio/p;->a(Landroid/media/AudioFormat;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    .line 145
    :cond_2
    invoke-static {v3, p3}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->checkDeviceMatch(Landroid/media/AudioDeviceInfo;Landroid/media/AudioDeviceInfo;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    const-string p0, "verifyAudioConfig: PASS"

    .line 152
    .line 153
    invoke-static {v2, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return v1

    .line 157
    :cond_3
    const-string p0, "verifyAudioConfig: FAILED"

    .line 158
    .line 159
    invoke-static {v2, p0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x0

    .line 163
    return p0
.end method


# virtual methods
.method isAcousticEchoCancelerSupported()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->isAcousticEchoCancelerSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method isAudioConfigVerified()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method isAudioSourceMatchingRecordingSession()Z
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioSourceMatchesRecordingSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "WebRtcAudioRecordExternal"

    .line 12
    .line 13
    const-string v1, "Audio configuration has not yet been verified"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method isNoiseSuppressorSupported()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->isNoiseSuppressorSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public setMicrophoneMute(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setMicrophoneMute("

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
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "WebRtcAudioRecordExternal"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->mPendingMicrophoneMute:Z

    .line 29
    .line 30
    return-void
.end method

.method public setNativeAudioRecord(J)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iput-wide p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 2
    .line 3
    return-void
.end method

.method setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setPreferredDevice "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lorg/hmwebrtc/audio/k;->a(Landroid/media/AudioDeviceInfo;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WebRtcAudioRecordExternal"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->audioRecord:Lorg/hmwebrtc/audio/IAudioRecord;

    .line 48
    .line 49
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->getSystemAudioRecord()Landroid/media/AudioRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lorg/hmwebrtc/audio/i;->a(Landroid/media/AudioRecord;Landroid/media/AudioDeviceInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    const-string p1, "setPreferredDevice failed"

    .line 60
    .line 61
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method
