.class Lcom/haima/hmcp/business/HmcpRequestManager$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->gameArchived(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "113"

    .line 4
    .line 5
    const-string v2, "fail"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v4, ":"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    const/16 p2, -0x3e8

    .line 33
    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 39
    .line 40
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 41
    .line 42
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "100113004"

    .line 47
    .line 48
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 p2, -0x3ea

    .line 57
    .line 58
    if-ne p1, p2, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 63
    .line 64
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 65
    .line 66
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "100113001"

    .line 71
    .line 72
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 83
    .line 84
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 85
    .line 86
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "100113002"

    .line 91
    .line 92
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "113"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/haima/hmcp/beans/RequestSaveGameResult;

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "timeframe--gameArchived--response-->"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/RequestSaveGameResult;->hasArchive:Z

    .line 46
    .line 47
    invoke-interface {p1, v1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->success(Z)V

    .line 48
    .line 49
    .line 50
    iget p1, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->success(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$24;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 79
    .line 80
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 81
    .line 82
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "100113003"

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void
.end method
