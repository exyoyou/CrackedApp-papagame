.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "==volumeChangeReceiver-----"

    .line 2
    .line 3
    const-string v1, "AbsIjkVideoView"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string p1, "==volumeChangeReceiver appName && mGid isEmpty -----"

    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v0, 0x3

    .line 61
    if-ne p2, v0, :cond_2

    .line 62
    .line 63
    invoke-static {p1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolumeInt(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eq p2, p1, :cond_2

    .line 74
    .line 75
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 76
    .line 77
    invoke-static {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$002(Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)I

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 83
    .line 84
    const/16 p2, 0x16

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$VolumeChangeReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 92
    .line 93
    const-wide/16 v0, 0x7d0

    .line 94
    .line 95
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
