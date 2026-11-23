.class Lcom/join/mgps/activity/AccountBindPhoneNew$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 2
    .line 3
    iget v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 17
    .line 18
    iget v2, v2, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "S"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 36
    .line 37
    iget v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 38
    .line 39
    if-gtz v0, :cond_0

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 49
    .line 50
    const-string v0, "\u91cd\u65b0\u83b7\u53d6"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->access$100(Lcom/join/mgps/activity/AccountBindPhoneNew;)Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-wide/16 v2, 0x3e8

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method
