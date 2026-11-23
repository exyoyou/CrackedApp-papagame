.class Lcom/join/mgps/activity/AccountUpgradeActivity$c;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountUpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/AccountUpgradeActivity;JJ)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 4
    .line 5
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 13
    .line 14
    const v1, 0x7f080665

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 26
    .line 27
    .line 28
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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 12
    .line 13
    const v1, 0x7f080666

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$c;->a:Lcom/join/mgps/activity/AccountUpgradeActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/AccountUpgradeActivity;->getValidateCode:Landroid/widget/Button;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    div-long/2addr p1, v2

    .line 31
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "\u79d2"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
