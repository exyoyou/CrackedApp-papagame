.class Lio/socket/engineio/client/Socket$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$7$1;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/engineio/client/Socket$7$1;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$7$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 4
    .line 5
    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-boolean v1, v1, v2

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    .line 14
    .line 15
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    .line 16
    .line 17
    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "changing transport and sending upgrade packet"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 34
    .line 35
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 36
    .line 37
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$cleanup:[Ljava/lang/Runnable;

    .line 38
    .line 39
    aget-object v0, v0, v2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 45
    .line 46
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 47
    .line 48
    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    .line 49
    .line 50
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 51
    .line 52
    aget-object v0, v0, v2

    .line 53
    .line 54
    invoke-static {v1, v0}, Lio/socket/engineio/client/Socket;->access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lio/socket/engineio/parser/Packet;

    .line 58
    .line 59
    const-string v1, "upgrade"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 65
    .line 66
    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 67
    .line 68
    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 69
    .line 70
    aget-object v3, v3, v2

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    new-array v5, v4, [Lio/socket/engineio/parser/Packet;

    .line 74
    .line 75
    aput-object v0, v5, v2

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 81
    .line 82
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 83
    .line 84
    iget-object v3, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    .line 85
    .line 86
    new-array v4, v4, [Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 89
    .line 90
    aget-object v0, v0, v2

    .line 91
    .line 92
    aput-object v0, v4, v2

    .line 93
    .line 94
    invoke-virtual {v3, v1, v4}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 98
    .line 99
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 100
    .line 101
    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    aput-object v3, v1, v2

    .line 105
    .line 106
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    .line 107
    .line 108
    invoke-static {v0, v2}, Lio/socket/engineio/client/Socket;->access$1302(Lio/socket/engineio/client/Socket;Z)Z

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    .line 112
    .line 113
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    .line 114
    .line 115
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    .line 116
    .line 117
    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$1400(Lio/socket/engineio/client/Socket;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
