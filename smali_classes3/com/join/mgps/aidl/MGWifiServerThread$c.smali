.class Lcom/join/mgps/aidl/MGWifiServerThread$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/aidl/MGWifiServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiServerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiServerThread$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

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
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const-wide/16 v0, 0x1f4

    .line 11
    .line 12
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiServerThread$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 16
    .line 17
    iget-wide v0, v0, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiServerThread$c;->b:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 31
    .line 32
    iget-wide v3, v2, Lcom/join/mgps/aidl/MGWifiServerThread;->lastSyncTime:J

    .line 33
    .line 34
    sub-long/2addr v0, v3

    .line 35
    const-wide/16 v3, 0xfa0

    .line 36
    .line 37
    cmp-long v5, v0, v3

    .line 38
    .line 39
    if-lez v5, :cond_0

    .line 40
    .line 41
    iget-boolean v0, v2, Lcom/join/mgps/aidl/MGWifiServerThread;->monitoring:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiServerThread;->access$300(Lcom/join/mgps/aidl/MGWifiServerThread;)Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0x232a

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    return-void
.end method
