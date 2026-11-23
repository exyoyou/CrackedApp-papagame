.class Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiClientThread$a$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a$a;

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
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a$a;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSync()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a$a;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
