.class public Lcom/haima/hmcp/utils/SystemMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public isPlayFile:Z

.field private mContext:Landroid/content/Context;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mPosition:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private msurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SystemMediaPlayer"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->isPlayFile:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/SystemMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/utils/SystemMediaPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mPosition:I

    .line 2
    .line 3
    return p0
.end method

.method private setMediaPlayerListenrs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/utils/SystemMediaPlayer$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/utils/SystemMediaPlayer$1;-><init>(Lcom/haima/hmcp/utils/SystemMediaPlayer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    new-instance v1, Lcom/haima/hmcp/utils/SystemMediaPlayer$2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/haima/hmcp/utils/SystemMediaPlayer$2;-><init>(Lcom/haima/hmcp/utils/SystemMediaPlayer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 29
    .line 30
    new-instance v1, Lcom/haima/hmcp/utils/SystemMediaPlayer$3;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/haima/hmcp/utils/SystemMediaPlayer$3;-><init>(Lcom/haima/hmcp/utils/SystemMediaPlayer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public play(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/utils/SystemMediaPlayer;->play(Ljava/lang/String;I)V

    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 1

    .line 2
    iput p2, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mPosition:I

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SystemMediaPlayer::play::video no exists"

    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    const-string p1, "SystemMediaPlayer"

    const-string p2, "\u89c6\u9891\u6587\u4ef6\u8def\u5f84\u9519\u8bef"

    .line 6
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->isPlayFile:Z

    .line 8
    :try_start_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->msurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/utils/SystemMediaPlayer;->setMediaPlayerListenrs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SystemMediaPlayer::play::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    const-string p2, "12029"

    .line 15
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public seSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->msurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->isPlayFile:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/utils/SystemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
