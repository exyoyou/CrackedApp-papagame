.class Lcom/haima/hmcp/business/HmcpRequestManager$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->stopCloudService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->val$time:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-class v1, Lcom/haima/hmcp/beans/StopServiceResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v7, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    move-object v1, v7

    .line 33
    move-object v3, p2

    .line 34
    move v4, p1

    .line 35
    move-object v5, p2

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, v7, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 44
    .line 45
    const-string v0, "12077"

    .line 46
    .line 47
    invoke-static {v7}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 55
    .line 56
    const-string v3, "202"

    .line 57
    .line 58
    const-string v4, "fail"

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ":"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->val$time:J

    .line 81
    .line 82
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "stopCloudService--response-->onError-->"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 110
    .line 111
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 112
    .line 113
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1500(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "202"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/StopServiceResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "12077"

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance v8, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, ""

    .line 48
    .line 49
    iget v5, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 50
    .line 51
    const-string v6, ""

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    move-object v2, v8

    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iget v0, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 62
    .line 63
    iput v0, v8, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 64
    .line 65
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    const-string p1, "12076"

    .line 70
    .line 71
    invoke-static {v8}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v8}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 88
    .line 89
    const-string v3, "200"

    .line 90
    .line 91
    const-string v4, "result is null"

    .line 92
    .line 93
    const/16 v5, -0x3e9

    .line 94
    .line 95
    const-string v6, ""

    .line 96
    .line 97
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    move-object v2, p1

    .line 102
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "stopCloudService--response-->Success"

    .line 117
    .line 118
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$22;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1500(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
