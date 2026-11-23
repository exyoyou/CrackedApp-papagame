.class Lcom/haima/hmcp/business/HmcpRequestManager$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->requestStopForceKeepAlive(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "requestStopForceKeepAlive onError: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "13326"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const/16 v0, -0x3e8

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 48
    .line 49
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 50
    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "100309004"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, v1, p1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/16 v0, -0x3ea

    .line 66
    .line 67
    if-ne p1, v0, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 70
    .line 71
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 72
    .line 73
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "100309001"

    .line 78
    .line 79
    invoke-virtual {p1, v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p2, v1, p1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 88
    .line 89
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 90
    .line 91
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "100309002"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p2, v1, p1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "13326"

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget v2, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "requestStopForceKeepAlive onSuccess: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "requestStopForceKeepAlive onFail: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v3, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {v1, v0, p1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v2, "requestStopForceKeepAlive onFail: result is null"

    .line 97
    .line 98
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p1, "result is null"

    .line 102
    .line 103
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->val$listener:Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$42;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 109
    .line 110
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 111
    .line 112
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v3, "100309003"

    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;->onKeepAlive(ZLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_0
    return-void
.end method
