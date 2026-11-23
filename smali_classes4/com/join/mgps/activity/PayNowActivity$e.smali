.class Lcom/join/mgps/activity/PayNowActivity$e;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->startPayAlipay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$alipay_sign"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance v2, Lcom/alipay/sdk/app/PayTask;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v1, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    iput v0, v2, Landroid/os/Message;->what:I

    .line 28
    .line 29
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->access$600(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "orderId ="

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/join/mgps/activity/PayNowActivity;->access$300(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->c:Lcom/join/mgps/activity/PayNowActivity;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
