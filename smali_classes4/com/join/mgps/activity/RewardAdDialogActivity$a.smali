.class Lcom/join/mgps/activity/RewardAdDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/RewardAdDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netMobile"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNoNet:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p1, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNoNet:Z

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$000(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$100(Lcom/join/mgps/activity/RewardAdDialogActivity;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$200(Lcom/join/mgps/activity/RewardAdDialogActivity;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$300(Lcom/join/mgps/activity/RewardAdDialogActivity;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/join/mgps/activity/RewardAdDialogActivity;->adVideoCallBack:Lcom/join/mgps/ad/n;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/ad/a;->h(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/n;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$400(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
