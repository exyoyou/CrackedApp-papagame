.class public Lcom/join/mgps/aidl/WifiServerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/WifiServerThread$b;
    }
.end annotation


# static fields
.field private static final SERVERPORT:I = 0x2001


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/aidl/Client;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isrun:Ljava/lang/Boolean;

.field private mserverSocket:Ljava/net/ServerSocket;

.field private single:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "handler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->context:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/join/mgps/aidl/WifiServerThread;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/aidl/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/aidl/WifiServerThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/aidl/WifiServerThread;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/aidl/WifiServerThread;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->single:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/join/mgps/aidl/WifiServerThread;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/aidl/WifiServerThread;->single:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/join/mgps/aidl/WifiServerThread;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/aidl/WifiServerThread;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/aidl/Client;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/aidl/WifiServerThread$b;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [B

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/aidl/Client;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/aidl/WifiServerThread$b;->b()[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    new-array v0, v1, [B

    .line 51
    .line 52
    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/aidl/Client;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/aidl/WifiServerThread$b;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    const-string v0, "0.0.0.0"

    .line 39
    .line 40
    return-object v0
.end method

.method public isShutDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/aidl/WifiServerThread$a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/WifiServerThread$a;-><init>(Lcom/join/mgps/aidl/WifiServerThread;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public send(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public send([B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v2, "gbk"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->clientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/aidl/Client;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/aidl/Client;->getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/aidl/WifiServerThread$b;->e([B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public shutDown()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "signalShutDown"

    .line 6
    .line 7
    const-string v1, "gbk"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/aidl/WifiServerThread;->send([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/aidl/WifiServerThread;->close()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->isrun:Ljava/lang/Boolean;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/aidl/WifiServerThread;->mserverSocket:Ljava/net/ServerSocket;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
