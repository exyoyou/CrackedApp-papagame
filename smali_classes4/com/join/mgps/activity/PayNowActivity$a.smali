.class Lcom/join/mgps/activity/PayNowActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PayNowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

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
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/PayResult;

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/PayResult;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayResult;->getResult()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayResult;->getResultStatus()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "9000"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v3, "alipaymobilesign"

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, ""

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "8000"

    .line 59
    .line 60
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 67
    .line 68
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 90
    .line 91
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    .line 106
    .line 107
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lcom/join/mgps/dto/PaymentInfo;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    .line 116
    .line 117
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$000(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PaymentInfo;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method
