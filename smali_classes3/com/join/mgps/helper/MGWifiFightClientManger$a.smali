.class Lcom/join/mgps/helper/MGWifiFightClientManger$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGWifiFightClientManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGWifiFightClientManger;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

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
    const/16 v1, 0x232d

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0x4e20

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0x2331

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x2332

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->i()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->b()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->g(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->k(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->j()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->a()V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->d()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;->a:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->f()V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
