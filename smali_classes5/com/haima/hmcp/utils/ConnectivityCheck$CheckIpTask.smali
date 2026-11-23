.class public Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;
.super Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/ConnectivityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckIpTask"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ConnectivityCheck$NamedRunnable;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->host:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->port:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->host:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$300(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->host:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->port:I

    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$400(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x5

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object p0, v2, v3

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    iget-object v4, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->host:Ljava/lang/String;

    .line 23
    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    iget v3, p0, Lcom/haima/hmcp/utils/ConnectivityCheck$CheckIpTask;->port:I

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x2

    .line 33
    aput-object v3, v2, v4

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const-string v0, "Reachable"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "NOT Reachable"

    .line 41
    .line 42
    :goto_0
    const/4 v3, 0x3

    .line 43
    aput-object v0, v2, v3

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v0, "SUCCEED"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v0, "FAILED"

    .line 51
    .line 52
    :goto_1
    const/4 v1, 0x4

    .line 53
    aput-object v0, v2, v1

    .line 54
    .line 55
    const-string v0, "%s check ip:%s , port:%d pingResult:%s,doTcpConnectResult:%s"

    .line 56
    .line 57
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "13334"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->access$100()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
