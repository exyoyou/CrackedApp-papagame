.class Lcom/papa91/view/RewardBananaDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/RewardBananaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 4
    .line 5
    instance-of v1, v0, Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    iget v1, p1, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    iput v1, p1, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    sget p1, Lcom/papa91/mix/R$drawable;->ic_colse_gray:I

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 36
    .line 37
    iget v2, v2, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/papa91/mix/R$drawable;->shape_close_bg_gray:I

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog$1;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    const-wide/16 v1, 0x3e8

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method
