.class Lcom/join/mgps/helper/MGFightServerManager$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightServerManager$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightServerManager$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

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
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->j()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/16 v0, 0x2330

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->a(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$500(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->onSuccess(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->b()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->g(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a$a;->a:Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v0, "\u5ba2\u673a"

    .line 107
    .line 108
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->g(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x232f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
