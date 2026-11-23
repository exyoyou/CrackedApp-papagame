.class Lcom/join/mgps/helper/WifiServerThread$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiServerThread$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/helper/WifiServerThread$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiServerThread$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->b:Lcom/join/mgps/helper/WifiServerThread$c;

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
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/aidl/FightProtocalManager;->disconnect()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->b:Lcom/join/mgps/helper/WifiServerThread$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "disconnect "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->b:Lcom/join/mgps/helper/WifiServerThread$c;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/helper/WifiServerThread$c;->a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->b:Lcom/join/mgps/helper/WifiServerThread$c;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread$c;->a(Lcom/join/mgps/helper/WifiServerThread$c;)Ljava/io/BufferedOutputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$c$a;->b:Lcom/join/mgps/helper/WifiServerThread$c;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/helper/WifiServerThread$c;->g:Lcom/join/mgps/helper/WifiServerThread;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
