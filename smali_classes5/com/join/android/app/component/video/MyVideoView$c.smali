.class Lcom/join/android/app/component/video/MyVideoView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/android/app/component/video/MyVideoView;->e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView$c;->b:Lcom/join/android/app/component/video/MyVideoView;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
