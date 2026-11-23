.class Lio/socket/client/Manager$1$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/client/Manager$1$4;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

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
    .locals 7

    .line 1
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    .line 9
    .line 10
    iget-wide v3, v3, Lio/socket/client/Manager$1$4;->val$timeout:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    const-string v3, "connect attempt timed out after %d"

    .line 20
    .line 21
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    .line 29
    .line 30
    iget-object v0, v0, Lio/socket/client/Manager$1$4;->val$openSub:Lio/socket/client/On$Handle;

    .line 31
    .line 32
    invoke-interface {v0}, Lio/socket/client/On$Handle;->destroy()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    .line 36
    .line 37
    iget-object v0, v0, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->close()Lio/socket/engineio/client/Socket;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    .line 43
    .line 44
    iget-object v0, v0, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    .line 45
    .line 46
    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    new-instance v3, Lio/socket/client/SocketIOException;

    .line 49
    .line 50
    const-string v5, "timeout"

    .line 51
    .line 52
    invoke-direct {v3, v5}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    aput-object v3, v2, v4

    .line 56
    .line 57
    const-string v3, "error"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v2}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->this$2:Lio/socket/client/Manager$1$4;

    .line 63
    .line 64
    iget-object v2, v0, Lio/socket/client/Manager$1$4;->val$self:Lio/socket/client/Manager;

    .line 65
    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    .line 68
    iget-wide v5, v0, Lio/socket/client/Manager$1$4;->val$timeout:J

    .line 69
    .line 70
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    aput-object v0, v1, v4

    .line 75
    .line 76
    const-string v0, "connect_timeout"

    .line 77
    .line 78
    invoke-static {v2, v0, v1}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
