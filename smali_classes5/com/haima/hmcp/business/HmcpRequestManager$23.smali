.class Lcom/haima/hmcp/business/HmcpRequestManager$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->relaunchGame(Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

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
    const-string v2, "relaunchGame--response-->onError-->"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 26
    .line 27
    const-class v1, Lcom/haima/hmcp/beans/RelaunchGameResult;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v7, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    move-object v1, v7

    .line 57
    move-object v3, p2

    .line 58
    move v4, p1

    .line 59
    move-object v5, p2

    .line 60
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string p2, "13340"

    .line 64
    .line 65
    invoke-static {v7}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

    .line 73
    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    const/16 v0, -0x3e8

    .line 78
    .line 79
    if-ne p1, v0, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 82
    .line 83
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 84
    .line 85
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "100312004"

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/16 v0, -0x3ea

    .line 100
    .line 101
    if-ne p1, v0, :cond_2

    .line 102
    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 104
    .line 105
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 106
    .line 107
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "100312001"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 122
    .line 123
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 124
    .line 125
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "100312002"

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 4

    .line 1
    const-string v0, "13340"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "timeframe--relaunchGame--response-->"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-object v0, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget v0, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 60
    .line 61
    :goto_0
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 73
    .line 74
    :goto_1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 77
    .line 78
    invoke-virtual {v2, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {v1, p1}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->success(Z)V

    .line 92
    .line 93
    .line 94
    :cond_3
    const-string v0, "13329"

    .line 95
    .line 96
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->val$listener:Lcom/haima/hmcp/listeners/OnRelaunchGameListener;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$23;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 116
    .line 117
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 118
    .line 119
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "100312003"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnRelaunchGameListener;->fail(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_2
    return-void
.end method
