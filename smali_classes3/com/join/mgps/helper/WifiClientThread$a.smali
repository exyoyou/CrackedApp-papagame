.class Lcom/join/mgps/helper/WifiClientThread$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiClientThread;->run(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/helper/WifiClientThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiClientThread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ip",
            "val$gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/helper/WifiClientThread$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 5
    .line 6
    new-instance v1, Ljava/net/Socket;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v3, 0x2001

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 26
    .line 27
    new-instance v1, Ljava/io/DataInputStream;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiClientThread;->access$002(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 44
    .line 45
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiClientThread;->access$102(Lcom/join/mgps/helper/WifiClientThread;Ljava/io/BufferedOutputStream;)Ljava/io/BufferedOutputStream;

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/Thread;

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/helper/WifiClientThread$a$a;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/helper/WifiClientThread$a$a;-><init>(Lcom/join/mgps/helper/WifiClientThread$a;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/16 v2, 0x4e20

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    iput-object v2, v1, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
