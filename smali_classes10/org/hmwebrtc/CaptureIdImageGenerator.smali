.class Lorg/hmwebrtc/CaptureIdImageGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureIdImageGenerator"


# instance fields
.field private final mCaptureInfoList:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGengerateTrackId:I

.field private mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/SurfaceTextureHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mCaptureInfoList:Ljava/util/concurrent/BlockingDeque;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lorg/hmwebrtc/CaptureIdImageGenerator;->createOverlap(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/CaptureIdImageGenerator;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mGengerateTrackId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lorg/hmwebrtc/CaptureIdImageGenerator;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mGengerateTrackId:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$008(Lorg/hmwebrtc/CaptureIdImageGenerator;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mGengerateTrackId:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mGengerateTrackId:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/CaptureIdImageGenerator;)Ljava/util/concurrent/BlockingDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mCaptureInfoList:Ljava/util/concurrent/BlockingDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method private createOverlap(Lorg/hmwebrtc/SurfaceTextureHelper;)Lorg/hmwebrtc/SurfaceTextureOverlap;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    new-instance v1, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 3
    .line 4
    const-string v2, "HMRTC_CaptureId_v1.cfg"

    .line 5
    .line 6
    invoke-static {v2}, Lorg/hmwebrtc/utils/PathUtils$Inject;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "frame_interval"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v2, "freeze_duration"

    .line 22
    .line 23
    const-wide/16 v3, 0x2710

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lorg/hmwebrtc/utils/FiledStringParser;->getLongValue(Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    :goto_0
    if-lez v0, :cond_0

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "createTextureOverlap: frameInterval="

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "CaptureIdImageGenerator"

    .line 52
    .line 53
    invoke-static {v4, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSharedContext()Lorg/hmwebrtc/EglBase$Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p1}, Lorg/hmwebrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v3, v4, v5, p1, v0}, Lorg/hmwebrtc/SurfaceTextureOverlap;-><init>(Lorg/hmwebrtc/EglBase$Context;Landroid/graphics/SurfaceTexture;Landroid/os/Handler;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v1, v2}, Lorg/hmwebrtc/SurfaceTextureOverlap;->setFreezeModeDuration(J)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_1
    return-object v3
.end method

.method private initOverlap(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-lez p1, :cond_1

    .line 6
    .line 7
    if-gtz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lorg/hmwebrtc/CaptureIdImageGenerator$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/hmwebrtc/CaptureIdImageGenerator$1;-><init>(Lorg/hmwebrtc/CaptureIdImageGenerator;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->setCaptureIdObserver(Lorg/hmwebrtc/SurfaceTextureOverlap$CaptureIdObserver;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/hmwebrtc/SurfaceTextureOverlap;->setTextureSize(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lorg/hmwebrtc/SurfaceTextureOverlap;->setMirror(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCaptureId()Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mCaptureInfoList:Ljava/util/concurrent/BlockingDeque;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;

    .line 12
    .line 13
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public init(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/hmwebrtc/CaptureIdImageGenerator;->initOverlap(IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CaptureIdImageGenerator;->mOverlap:Lorg/hmwebrtc/SurfaceTextureOverlap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureOverlap;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
