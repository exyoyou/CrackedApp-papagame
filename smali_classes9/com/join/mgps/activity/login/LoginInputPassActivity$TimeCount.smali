.class Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;JJ)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v1, "#408DFF"

    .line 23
    .line 24
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "#494949"

    .line 14
    .line 15
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    .line 38
    div-long/2addr p1, v2

    .line 39
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "S\u540e\u91cd\u65b0\u83b7\u53d6"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
