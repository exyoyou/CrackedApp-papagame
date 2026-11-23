.class Ltv/haima/ijk/media/player/IjkMediaPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/EglRenderer$FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/IjkMediaPlayer;->frameCapture(Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/IjkMediaPlayer;

.field final synthetic val$callback:Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/IjkMediaPlayer;Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/haima/ijk/media/player/IjkMediaPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Ltv/haima/ijk/media/player/IjkMediaPlayer$2;->val$callback:Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFrame(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "MediaCodec shot\uff1a"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ltv/haima/ijk/media/player/IjkMediaPlayer$2;->val$callback:Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;->onFrameCapture(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
