.class Lcom/join/mgps/activity/HMCloudMainActivity$p;
.super Lm6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudCharge(Lcom/wufan/user/service/protobuf/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$p;->a:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lm6/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "event",
            "jsonParams"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm6/d;->onEvent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x9

    .line 5
    .line 6
    if-ne p2, p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$p;->a:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showRechargeResult()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p3, 0xa

    .line 18
    .line 19
    if-ne p2, p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$p;->a:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showGameOver()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
