.class Lcom/join/mgps/activity/FullShareWebActivity$l;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity;->startPayAlipay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/FullShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->b:Ljava/lang/String;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Landroid/os/Message;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    iput v2, v1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$800(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroid/os/Message;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    iput v1, v0, Landroid/os/Message;->what:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$l;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$800(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
