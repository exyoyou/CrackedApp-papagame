.class Lcom/join/mgps/helper/MGWifiFightServerManger$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGWifiFightServerManger;-><init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/callbacks/g;

.field final synthetic b:Lcom/join/mgps/helper/MGWifiFightServerManger;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGWifiFightServerManger;Lcom/join/mgps/callbacks/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fightConnectListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->b:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v1, 0x2329

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x232a

    .line 11
    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->j()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 25
    .line 26
    const/16 v0, 0x2330

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->a(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->onSuccess(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->b()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger$a;->a:Lcom/join/mgps/callbacks/g;

    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->g(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x232f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
