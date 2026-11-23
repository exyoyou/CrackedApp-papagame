.class Lcom/join/android/app/component/video/MediaController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/video/MediaController;


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
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bar",
            "progress",
            "fromuser"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->c(Lcom/join/android/app/component/video/MediaController;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    int-to-long p1, p2

    .line 11
    mul-long v0, v0, p1

    .line 12
    .line 13
    const-wide/16 p1, 0x3e8

    .line 14
    .line 15
    div-long/2addr v0, p1

    .line 16
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->f(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    long-to-int p3, v0

    .line 35
    invoke-interface {p2, p3}, Lcom/join/android/app/component/video/MediaController$e;->seekTo(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bar"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MediaController;->d(Lcom/join/android/app/component/video/MediaController;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 8
    .line 9
    const v1, 0x36ee80

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, ""

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bar"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x3e8

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/component/video/MediaController;->e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/join/android/app/component/video/MediaController;->c(Lcom/join/android/app/component/video/MediaController;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long v5, p1

    .line 28
    mul-long v3, v3, v5

    .line 29
    .line 30
    div-long/2addr v3, v1

    .line 31
    long-to-int p1, v3

    .line 32
    invoke-interface {v0, p1}, Lcom/join/android/app/component/video/MediaController$e;->seekTo(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, ""

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 66
    .line 67
    const/16 v0, 0xbb8

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 v3, 0x3

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 94
    .line 95
    invoke-static {p1, v4}, Lcom/join/android/app/component/video/MediaController;->d(Lcom/join/android/app/component/video/MediaController;Z)Z

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->b:Lcom/join/android/app/component/video/MediaController;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method
