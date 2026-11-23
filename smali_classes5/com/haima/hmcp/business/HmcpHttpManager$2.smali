.class Lcom/haima/hmcp/business/HmcpHttpManager$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpHttpManager;->retryByErrorCode(Ljava/lang/String;Lcom/haima/hmcp/beans/BaseResult;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

.field final synthetic val$postJson:Ljava/io/Serializable;

.field final synthetic val$requestTag:Ljava/lang/String;

.field final synthetic val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpHttpManager;Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$postJson:Ljava/io/Serializable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$requestTag:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$clazz:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 8
    .line 9
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

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
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 24
    .line 25
    iget v2, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->actionId:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "\u63a5\u53e3\u7b2c"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$retryConfigBean:Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 36
    .line 37
    iget v2, v2, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\u6b21\u91cd\u8bd5"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$postJson:Ljava/io/Serializable;

    .line 57
    .line 58
    check-cast v1, Lcom/haima/hmcp/beans/PostJson;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$600(Lcom/haima/hmcp/business/HmcpHttpManager;Lcom/haima/hmcp/beans/PostJson;)Lcom/haima/hmcp/beans/PostJson;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$requestTag:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$clazz:Ljava/lang/Class;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$2;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
