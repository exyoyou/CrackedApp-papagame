.class Lcom/join/android/app/component/video/MyVideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/video/MyVideoView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MyVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p2, p3}, Lcom/join/android/app/component/video/MyVideoView;->c(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2, p1}, Lcom/join/android/app/component/video/MyVideoView;->f(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/join/android/app/component/video/MyVideoView$g;->a()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iget-object p3, p0, Lcom/join/android/app/component/video/MyVideoView$a;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 62
    .line 63
    invoke-static {p3}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
