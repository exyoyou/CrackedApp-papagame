.class public Lorg/hmwebrtc/audio/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final ANDROID_TAG:Ljava/lang/String; = "WebRtcAudioTrack"

.field private static final AUDIO_TRACK_START:I = 0x0

.field private static final AUDIO_TRACK_STOP:I = 0x1

.field private static final AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEFAULT_USAGE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrackExternal"

.field private static volatile speakerMute:Z


# instance fields
.field private audioAttributes:Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private emptyBytes:[B

.field private final errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inUsedAudioAttributes:Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialBufferSizeInFrames:I

.field private nativeAudioTrack:J

.field private notSupportAudio:Z

.field private final stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

.field private useLowLatency:Z

.field private final volumeLogger:Lorg/hmwebrtc/audio/VolumeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->getDefaultUsageAttribute()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->DEFAULT_USAGE:I

    .line 6
    .line 7
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 7
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;Z)V
    .locals 1
    .param p3    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 5
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 7
    iput-object p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 8
    iput-object p4, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 9
    iput-object p5, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    .line 10
    new-instance p1, Lorg/hmwebrtc/audio/VolumeLogger;

    invoke-direct {p1, p2}, Lorg/hmwebrtc/audio/VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/hmwebrtc/audio/VolumeLogger;

    .line 11
    iput-boolean p6, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ctor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebRtcAudioTrackExternal"

    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private GetPlayoutUnderrunCount()I
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/audio/b;->a(Landroid/media/AudioTrack;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, -0x2

    .line 19
    return v0
.end method

.method static synthetic access$000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/audio/WebRtcAudioTrack;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$600(JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->nativeGetPlayoutData(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$800(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/hmwebrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/hmwebrtc/audio/c0;->a(Landroid/media/AudioAttributes;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p0, p1}, Lorg/hmwebrtc/audio/d0;->a(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
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

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private createAudioTrackOnLollipopOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 8
    .param p4    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    const-string v0, "WebRtcAudioTrackExternal"

    .line 2
    .line 3
    const-string v1, "createAudioTrackOnLollipopOrHigher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-direct {p0, p4}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance p4, Landroid/media/AudioFormat$Builder;

    .line 18
    .line 19
    invoke-direct {p4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p4, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p4, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    move-object v2, v0

    .line 42
    move v5, p3

    .line 43
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;
    .locals 8

    .line 1
    new-instance v7, Landroid/media/AudioTrack;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v4, 0x2

    .line 5
    const/4 v6, 0x1

    .line 6
    move-object v0, v7

    .line 7
    move v2, p0

    .line 8
    move v3, p1

    .line 9
    move v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method private createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 2
    .param p4    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    const-string v0, "WebRtcAudioTrackExternal"

    .line 2
    .line 3
    const-string v1, "createAudioTrackOnOreoOrHigher"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/hmwebrtc/audio/u;->a()Landroid/media/AudioTrack$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p4}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-static {v0, p4}, Lorg/hmwebrtc/audio/v;->a(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p4, p1}, Lorg/hmwebrtc/audio/w;->a(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1, p3}, Lorg/hmwebrtc/audio/x;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x1

    .line 54
    invoke-static {p1, p2}, Lorg/hmwebrtc/audio/y;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p2}, Lorg/hmwebrtc/audio/z;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-static {p1, p2}, Lorg/hmwebrtc/audio/a0;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lorg/hmwebrtc/audio/b0;->a(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method private doAudioTrackStateCallback(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "doAudioTrackStateCallback: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "WebRtcAudioTrackExternal"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->stateCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStart()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStop()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "Invalid audio state"

    .line 41
    .line 42
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method private getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 4
    .param p1    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->DEFAULT_USAGE:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "WebRtcAudioTrackExternal"

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 52
    .line 53
    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v3, 0x1d

    .line 57
    .line 58
    if-lt v2, v3, :cond_2

    .line 59
    .line 60
    invoke-static {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    move-object v0, p1

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "failed to override audio attributes as illegal argument exception."

    .line 75
    .line 76
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->inUsedAudioAttributes:Landroid/media/AudioAttributes;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "audioAttributes: Usage: "

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ", ContentType: "

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " Flags: "

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object p1
.end method

.method private getBufferSizeInFrames()I
    .locals 3
    .annotation build Lorg/hmwebrtc/CalledByNative;
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
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lorg/hmwebrtc/audio/c;->a(Landroid/media/AudioTrack;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "getBufferSizeInFrames Exception:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "WebRtcAudioTrackExternal"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v0, -0x1

    .line 44
    return v0
.end method

.method private static getDefaultUsageAttribute()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private getInitialBufferSizeInFrames()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    .line 2
    .line 3
    return v0
.end method

.method private getStreamMaxVolume()I
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "getStreamMaxVolume"

    .line 7
    .line 8
    const-string v1, "WebRtcAudioTrackExternal"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Audio was closed, the volume hardcode 10."

    .line 18
    .line 19
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method private getStreamVolume()I
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    const-string v0, "WebRtcAudioTrackExternal"

    .line 7
    .line 8
    const-string v1, "getStreamVolume"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private initPlayout(IID)I
    .locals 6
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "initPlayout(sampleRate="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", channels="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", bufferSizeFactor="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ")"

    .line 36
    .line 37
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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    mul-int/lit8 v0, p2, 0x2

    .line 50
    .line 51
    div-int/lit8 v2, p1, 0x64

    .line 52
    .line 53
    mul-int v0, v0, v2

    .line 54
    .line 55
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "byteBuffer.capacity: "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-array v0, v0, [B

    .line 94
    .line 95
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    .line 96
    .line 97
    iget-wide v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    .line 98
    .line 99
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    invoke-static {v2, v3, v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    const/4 v0, 0x2

    .line 109
    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    int-to-double v2, v0

    .line 114
    mul-double v2, v2, p3

    .line 115
    .line 116
    double-to-int v0, v2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "minBufferSizeInBytes: "

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    const/4 v2, 0x1

    .line 144
    const/4 v3, -0x1

    .line 145
    if-ge v0, v1, :cond_0

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string p2, "AudioTrack.getMinBufferSize returns an invalid value: "

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput-boolean v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 168
    .line 169
    return v3

    .line 170
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 171
    .line 172
    cmpl-double v1, p3, v4

    .line 173
    .line 174
    if-lez v1, :cond_1

    .line 175
    .line 176
    const/4 p3, 0x0

    .line 177
    iput-boolean p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 178
    .line 179
    :cond_1
    iget-object p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 180
    .line 181
    if-eqz p3, :cond_2

    .line 182
    .line 183
    const-string p1, "Conflict with existing AudioTrack."

    .line 184
    .line 185
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return v3

    .line 189
    :cond_2
    :try_start_0
    iget-boolean p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 190
    .line 191
    if-eqz p3, :cond_3

    .line 192
    .line 193
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .line 195
    const/16 p4, 0x1a

    .line 196
    .line 197
    if-lt p3, p4, :cond_3

    .line 198
    .line 199
    iget-object p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 200
    .line 201
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_3
    iget-object p3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 209
    .line 210
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->createAudioTrackOnLollipopOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 217
    .line 218
    if-eqz p1, :cond_6

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eq p1, v2, :cond_4

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 228
    .line 229
    const/16 p2, 0x17

    .line 230
    .line 231
    if-lt p1, p2, :cond_5

    .line 232
    .line 233
    iget-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 234
    .line 235
    invoke-static {p1}, Lorg/hmwebrtc/audio/c;->a(Landroid/media/AudioTrack;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iput p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    iput v3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    .line 243
    .line 244
    :goto_1
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logMainParameters()V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logMainParametersExtended()V

    .line 248
    .line 249
    .line 250
    return v0

    .line 251
    :cond_6
    :goto_2
    const-string p1, "Initialization of audio track failed."

    .line 252
    .line 253
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    .line 257
    .line 258
    .line 259
    iput-boolean v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 260
    .line 261
    return v3

    .line 262
    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    .line 271
    .line 272
    .line 273
    iput-boolean v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 274
    .line 275
    return v3
.end method

.method private isVolumeFixed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private logBufferCapacityInFrames()V
    .locals 2

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "AudioTrack: buffer capacity in frames: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/hmwebrtc/audio/t;->a(Landroid/media/AudioTrack;)I

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private logBufferSizeInFrames()V
    .locals 2

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
    const-string v1, "AudioTrack: buffer size in frames: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/hmwebrtc/audio/c;->a(Landroid/media/AudioTrack;)I

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
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
    const-string v1, "AudioTrack: session ID: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

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
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelCount()I

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
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", max gain: "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "WebRtcAudioTrackExternal"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logBufferSizeInFrames()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logBufferCapacityInFrames()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static logNativeOutputSampleRate(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "nativeOutputSampleRate: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "WebRtcAudioTrackExternal"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_0

    .line 29
    .line 30
    const-string p0, "Unable to use fast mode since requested sample rate is not native"

    .line 31
    .line 32
    invoke-static {v2, p0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private logUnderrunCount()V
    .locals 2

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "underrun count: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/hmwebrtc/audio/b;->a(Landroid/media/AudioTrack;)I

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private static native nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V
.end method

.method private static native nativeGetPlayoutData(JI)V
.end method

.method private releaseAudioResources()V
    .locals 2

    .line 1
    const-string v0, "WebRtcAudioTrackExternal"

    .line 2
    .line 3
    const-string v1, "releaseAudioResources"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Run-time playback error: "

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Init playout error: "

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Start playout error: "

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public static setSpeakerMute(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSpeakerMute("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    sput-boolean p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    .line 20
    .line 21
    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 4
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "setStreamVolume("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "WebRtcAudioTrackExternal"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string p1, "Audio was closed, ignore set volume."

    .line 39
    .line 40
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->isVolumeFixed()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const-string p1, "The device implements a fixed volume policy."

    .line 52
    .line 53
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method private startPlayout()Z
    .locals 5
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/hmwebrtc/audio/VolumeLogger;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/VolumeLogger;->start()V

    .line 9
    .line 10
    .line 11
    const-string v0, "startPlayout"

    .line 12
    .line 13
    const-string v1, "WebRtcAudioTrackExternal"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->notSupportAudio:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "not support audio, just return true when start playout."

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_1
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v3, 0x3

    .line 62
    if-eq v0, v3, :cond_3

    .line 63
    .line 64
    sget-object v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "AudioTrack.play failed - incorrect state :"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {p0, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :cond_3
    new-instance v0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 97
    .line 98
    const-string v1, "AudioTrackJavaThread"

    .line 99
    .line 100
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;-><init>(Lorg/hmwebrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v2, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v4, "AudioTrack.play failed: "

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p0, v2, v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    .line 137
    .line 138
    .line 139
    return v1
.end method

.method private stopPlayout()Z
    .locals 5
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/hmwebrtc/audio/VolumeLogger;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/VolumeLogger;->stop()V

    .line 9
    .line 10
    .line 11
    const-string v0, "stopPlayout"

    .line 12
    .line 13
    const-string v1, "WebRtcAudioTrackExternal"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->logUnderrunCount()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->stopThread()V

    .line 28
    .line 29
    .line 30
    const-string v0, "Stopping the AudioTrackThread..."

    .line 31
    .line 32
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 41
    .line 42
    const-wide/16 v2, 0x7d0

    .line 43
    .line 44
    invoke-static {v0, v2, v3}, Lorg/hmwebrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const-string v0, "Join of AudioTrackThread timed out."

    .line 51
    .line 52
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 58
    .line 59
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 64
    .line 65
    :cond_1
    const-string v0, "AudioTrackThread has now been stopped."

    .line 66
    .line 67
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const-string v0, "Calling AudioTrack.stop..."

    .line 76
    .line 77
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 83
    .line 84
    .line 85
    const-string v0, "AudioTrack.stop is done."

    .line 86
    .line 87
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v4, "AudioTrack.stop failed: "

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    .line 120
    .line 121
    .line 122
    return v2
.end method


# virtual methods
.method public getInUsedAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->inUsedAudioAttributes:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeAudioTrack(J)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iput-wide p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    .line 2
    .line 3
    return-void
.end method
