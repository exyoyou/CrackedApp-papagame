.class Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/RewardAdDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/RewardAdDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "vipLevel"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "sVipLevel"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p2, "com.wufun.finish.activity"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$500(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of p1, p1, Le6/b;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$600(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Le6/b;

    .line 54
    .line 55
    invoke-interface {p1}, Le6/b;->onAdClose()V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method
