.class Lio/socket/client/Manager$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$1;

.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    aget-object p1, p1, v1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v2

    .line 10
    :goto_0
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v3, "connect_error"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    .line 20
    .line 21
    invoke-static {v0}, Lio/socket/client/Manager;->access$500(Lio/socket/client/Manager;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    .line 25
    .line 26
    sget-object v4, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    .line 27
    .line 28
    iput-object v4, v0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    new-array v4, v4, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v4, v1

    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    .line 39
    .line 40
    iget-object v0, v0, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Lio/socket/client/SocketIOException;

    .line 45
    .line 46
    instance-of v1, p1, Ljava/lang/Exception;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move-object v2, p1

    .line 51
    check-cast v2, Ljava/lang/Exception;

    .line 52
    .line 53
    :cond_1
    const-string p1, "Connection error"

    .line 54
    .line 55
    invoke-direct {v0, p1, v2}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lio/socket/client/Manager$1$3;->this$1:Lio/socket/client/Manager$1;

    .line 59
    .line 60
    iget-object p1, p1, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lio/socket/client/Manager$OpenCallback;->call(Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p0, Lio/socket/client/Manager$1$3;->val$self:Lio/socket/client/Manager;

    .line 67
    .line 68
    invoke-static {p1}, Lio/socket/client/Manager;->access$700(Lio/socket/client/Manager;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method
