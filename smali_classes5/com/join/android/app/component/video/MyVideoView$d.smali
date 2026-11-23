.class Lcom/join/android/app/component/video/MyVideoView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "framework_err",
            "impl_err"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->g(Lcom/join/android/app/component/video/MyVideoView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "Error: "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 62
    .line 63
    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$d;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->i(Lcom/join/android/app/component/video/MyVideoView;)Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    :cond_2
    return v0
.end method
