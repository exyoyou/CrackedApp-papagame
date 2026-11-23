.class public Lcom/haima/hmcp/utils/ScreenShotManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;,
        Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenShotManager"

.field private static mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;


# instance fields
.field private mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

.field private mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/ScreenShotManager;)Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/ScreenShotManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ScreenShotManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

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
    sget-object v0, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 25
    .line 26
    return-object v0
.end method

.method private rtcScreenShot(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/haima/hmcp/utils/ScreenShotManager$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/haima/hmcp/utils/ScreenShotManager$1;-><init>(Lcom/haima/hmcp/utils/ScreenShotManager;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const-string v0, "rtc render is null"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;->onScreenShotFailed(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method private rtmpScreenShot(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/haima/hmcp/utils/ScreenShotManager$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/haima/hmcp/utils/ScreenShotManager$2;-><init>(Lcom/haima/hmcp/utils/ScreenShotManager;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const-string v0, "rtmp render is null"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;->onScreenShotFailed(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method


# virtual methods
.method public clearCallback()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 7
    .line 8
    :cond_0
    iput-object v1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 11
    .line 12
    sput-object v1, Lcom/haima/hmcp/utils/ScreenShotManager;->mScreenShotManager:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 13
    .line 14
    return-void
.end method

.method public screenShot(Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/utils/ScreenShotManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "screen shot callback is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mCallback:Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->validate()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->streamType:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "WEBRTC"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtcRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ScreenShotManager;->rtcScreenShot(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtmpRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ScreenShotManager;->rtmpScreenShot(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_3
    :goto_1
    const-string v0, "ScreenShotConfig is null or parameters is not validate"

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;->onScreenShotFailed(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager;->mConfig:Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 2
    .line 3
    return-void
.end method
