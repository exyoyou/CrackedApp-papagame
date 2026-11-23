.class Lcom/join/mgps/service/SocketServerService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/SocketServerService$a;->acceptClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/service/SocketServerService$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/SocketServerService$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

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
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$300(Lcom/join/mgps/service/SocketServerService$a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/join/mgps/service/SocketServerService$a;->access$102(Lcom/join/mgps/service/SocketServerService$a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/join/mgps/service/SocketServerService$a;->access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/service/SocketServerService;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v2, v3}, Lcom/join/mgps/service/SocketServerService$a;->postSocketConnectedStatus(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/service/SocketServerService$a$a;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 49
    .line 50
    invoke-static {v2, v0}, Lcom/join/mgps/service/SocketServerService$a;->access$302(Lcom/join/mgps/service/SocketServerService$a;Z)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
