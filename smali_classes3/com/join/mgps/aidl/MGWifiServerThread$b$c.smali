.class Lcom/join/mgps/aidl/MGWifiServerThread$b$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiServerThread$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiServerThread$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$400(Lcom/join/mgps/aidl/MGWifiServerThread;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "disconnect "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiServerThread$b;->a(Lcom/join/mgps/aidl/MGWifiServerThread$b;)Ljava/io/BufferedOutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$b$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread$b;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread$b;->f:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method
