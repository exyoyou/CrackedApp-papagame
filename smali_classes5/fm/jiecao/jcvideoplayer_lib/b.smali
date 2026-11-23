.class public Lfm/jiecao/jcvideoplayer_lib/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/b$g;
    }
.end annotation


# static fields
.field public static h:Ljava/lang/String; = "JieCaoVideoPlayer"

.field private static i:Lfm/jiecao/jcvideoplayer_lib/b; = null

.field public static j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView; = null

.field public static k:Landroid/graphics/SurfaceTexture; = null

.field public static l:Ljava/lang/String; = null

.field public static m:Z = false

.field public static n:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:I = 0x0

.field public static final p:I = 0x2


# instance fields
.field public b:Landroid/media/MediaPlayer;

.field public c:I

.field public d:I

.field e:Landroid/os/HandlerThread;

.field f:Lfm/jiecao/jcvideoplayer_lib/b$g;

.field g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaPlayer;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 13
    .line 14
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 15
    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    .line 17
    .line 18
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->h:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->e:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$g;

    .line 29
    .line 30
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->e:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, p0, v1}, Lfm/jiecao/jcvideoplayer_lib/b$g;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Lfm/jiecao/jcvideoplayer_lib/b$g;

    .line 40
    .line 41
    new-instance v0, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 47
    .line 48
    return-void
.end method

.method public static b()Lfm/jiecao/jcvideoplayer_lib/b;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->i:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->i:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->i:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Point;

    .line 10
    .line 11
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 12
    .line 13
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Message;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Lfm/jiecao/jcvideoplayer_lib/b$g;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->f:Lfm/jiecao/jcvideoplayer_lib/b$g;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$b;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lfm/jiecao/jcvideoplayer_lib/b$b;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/b$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$d;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/b$d;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$e;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/b$e;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/b$c;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/b$c;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p3, "onSurfaceTextureAvailable ["

    .line 7
    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p3, "] "

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object p2, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    sput-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 32
    .line 33
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/b;->c()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "onSurfaceTextureSizeChanged ["

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, "] "

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 2
    .line 3
    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 4
    .line 5
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b;->g:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance p2, Lfm/jiecao/jcvideoplayer_lib/b$f;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lfm/jiecao/jcvideoplayer_lib/b$f;-><init>(Lfm/jiecao/jcvideoplayer_lib/b;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
