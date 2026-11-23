.class public Lcom/join/mgps/service/SocketClientService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/SocketClientService$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "SocketClientService"


# instance fields
.field b:Ljava/lang/String;

.field public c:Lcom/join/mgps/service/SocketClientService$a;

.field d:I


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
    new-instance v0, Lcom/join/mgps/service/SocketClientService$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/service/SocketClientService$a;-><init>(Lcom/join/mgps/service/SocketClientService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/service/SocketClientService;->c:Lcom/join/mgps/service/SocketClientService$a;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/join/mgps/service/SocketClientService;->d:I

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/service/SocketClientService;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService;->c:Lcom/join/mgps/service/SocketClientService$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/SocketClientService;->c:Lcom/join/mgps/service/SocketClientService$a;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/service/SocketClientService$a;->socket:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
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
    const-string v0, "host"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/join/mgps/service/SocketClientService;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/service/SocketClientService;->c:Lcom/join/mgps/service/SocketClientService$a;

    .line 10
    .line 11
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/service/SocketClientService;->b()V

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

    .line 1
    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/join/mgps/service/SocketClientService;->d:I

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
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
