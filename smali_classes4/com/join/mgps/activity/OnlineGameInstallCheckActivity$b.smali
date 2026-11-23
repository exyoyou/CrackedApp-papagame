.class Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->checkFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;->a:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;->a:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvBtnInstall:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;->a:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->access$400(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;->a:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvBtnInstall:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u7acb\u5373\u5b89\u88c5 "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    div-long/2addr p1, v2

    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\u79d2"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
