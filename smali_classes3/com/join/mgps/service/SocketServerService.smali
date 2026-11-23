.class public Lcom/join/mgps/service/SocketServerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/SocketServerService$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SocketServerService"


# instance fields
.field private b:Lcom/join/mgps/service/SocketServerService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/service/SocketServerService$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/service/SocketServerService$a;-><init>(Lcom/join/mgps/service/SocketServerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/SocketServerService;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$000(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/ServerSocket;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/join/mgps/service/SocketServerService$a;->access$100(Lcom/join/mgps/service/SocketServerService$a;)Ljava/net/Socket;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/SocketServerService;->b:Lcom/join/mgps/service/SocketServerService$a;

    .line 2
    .line 3
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/service/SocketServerService;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
