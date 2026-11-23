.class Lcom/join/android/app/component/video/MyVideoView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "w",
            "h"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-static {p1, p3}, Lcom/join/android/app/component/video/MyVideoView;->t(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 7
    .line 8
    invoke-static {p1, p4}, Lcom/join/android/app/component/video/MyVideoView;->v(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 12
    .line 13
    iget-object p2, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->o(Lcom/join/android/app/component/video/MyVideoView;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->b(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, p3, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->d(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, p4, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 48
    .line 49
    iget-object p2, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->w(Lcom/join/android/app/component/video/MyVideoView;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-static {p1, p2}, Lcom/join/android/app/component/video/MyVideoView;->x(Lcom/join/android/app/component/video/MyVideoView;I)I

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->show()V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/android/app/component/video/MyVideoView;->l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->m(Lcom/join/android/app/component/video/MyVideoView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MyVideoView;->l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$f;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 41
    .line 42
    iput-object v0, p1, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 43
    .line 44
    :cond_1
    return-void
.end method
