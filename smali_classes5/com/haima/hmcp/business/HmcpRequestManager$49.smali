.class Lcom/haima/hmcp/business/HmcpRequestManager$49;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->retryByErrorCode(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 24
    .line 25
    iget v3, v3, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->actionId:I

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "=retryByErrorCode=\u63a5\u53e3\u7b2c"

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 36
    .line 37
    iget v3, v3, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "\u6b21\u91cd\u8bd5"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$49;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV3(Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
