.class Lio/socket/client/Socket$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->close()Lio/socket/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lio/socket/client/Socket;->access$800()Ljava/util/logging/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lio/socket/client/Socket;->access$800()Ljava/util/logging/Logger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-array v2, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v3, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 29
    .line 30
    invoke-static {v3}, Lio/socket/client/Socket;->access$1200(Lio/socket/client/Socket;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    const-string v3, "performing disconnect (%s)"

    .line 38
    .line 39
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 47
    .line 48
    new-instance v2, Lio/socket/parser/Packet;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Lio/socket/parser/Packet;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, Lio/socket/client/Socket;->access$1000(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 57
    .line 58
    invoke-static {v0}, Lio/socket/client/Socket;->access$1300(Lio/socket/client/Socket;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 62
    .line 63
    invoke-static {v0}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lio/socket/client/Socket$8;->this$0:Lio/socket/client/Socket;

    .line 70
    .line 71
    const-string v1, "io client disconnect"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lio/socket/client/Socket;->access$200(Lio/socket/client/Socket;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method
