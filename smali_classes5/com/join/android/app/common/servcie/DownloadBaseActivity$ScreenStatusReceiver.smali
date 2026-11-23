.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;
.super Lcom/join/mgps/broadcast/BaseBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method private constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-direct {p0}, Lcom/join/mgps/broadcast/BaseBroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 18
    .line 19
    iget-wide v1, v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    .line 20
    .line 21
    sub-long/2addr p1, v1

    .line 22
    const-wide/32 v1, 0x3a980

    .line 23
    .line 24
    .line 25
    cmp-long v3, p1, v1

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->access$400(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x1

    .line 34
    const-wide/16 v0, 0xbb8

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;->b:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method
