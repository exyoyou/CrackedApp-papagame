.class public Lcom/haima/hmcp/utils/ping/PingPara;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final UNKNOW_HOST_RETRY_INTERVALS:[I

.field public pingCount:J

.field public pingGrayPercent:J

.field public pingHost:Ljava/lang/String;

.field public pingInterval:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xbb8

    .line 5
    .line 6
    const/16 v1, 0x2328

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->UNKNOW_HOST_RETRY_INTERVALS:[I

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 19
    .line 20
    const-wide/16 v0, 0x3e8

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingInterval:J

    .line 23
    .line 24
    const-wide/16 v0, 0xf

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingCount:J

    .line 27
    .line 28
    const-string v0, "www.baidu.com"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->type:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public paraCheck()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    iput-wide v2, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingGrayPercent:J

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingInterval:J

    .line 12
    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-gez v4, :cond_1

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingInterval:J

    .line 20
    .line 21
    :cond_1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingCount:J

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-gez v4, :cond_2

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingCount:J

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const-string v0, "www.baidu.com"

    .line 40
    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 42
    .line 43
    :cond_3
    return-void
.end method
