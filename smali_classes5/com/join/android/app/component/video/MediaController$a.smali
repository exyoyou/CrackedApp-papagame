.class Lcom/join/android/app/component/video/MediaController$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/MediaController;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MediaController;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->a(Lcom/join/android/app/component/video/MediaController;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->b(Lcom/join/android/app/component/video/MediaController;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->g(Lcom/join/android/app/component/video/MediaController;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-wide/16 v3, 0x3e8

    .line 37
    .line 38
    rem-long/2addr v1, v3

    .line 39
    sub-long/2addr v3, v1

    .line 40
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->h(Lcom/join/android/app/component/video/MediaController;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$a;->a:Lcom/join/android/app/component/video/MediaController;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method
