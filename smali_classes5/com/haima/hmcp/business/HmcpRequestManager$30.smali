.class Lcom/haima/hmcp/business/HmcpRequestManager$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->stopRecordStream(Ljava/lang/String;Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

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
    .locals 4

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
    const-string v2, "stopRecordStream onError: "

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
    const-string p2, "13338"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

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
    const/4 v2, 0x0

    .line 46
    if-ne p1, v0, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 49
    .line 50
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 51
    .line 52
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "100320004"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p2, v2, p1, v1}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, -0x3ea

    .line 67
    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 71
    .line 72
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 73
    .line 74
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v3, "100320001"

    .line 79
    .line 80
    invoke-virtual {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p2, v2, p1, v1}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 89
    .line 90
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 91
    .line 92
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v3, "100320002"

    .line 97
    .line 98
    invoke-virtual {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p2, v2, p1, v1}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget v2, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 6
    .line 7
    if-nez v2, :cond_0

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
    const-string v2, "stopRecordStream onSuccess: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/BaseResult;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Lcom/haima/hmcp/beans/StopRecordStreamResult;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v1, Lcom/haima/hmcp/beans/RecordStreamInfo;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/haima/hmcp/beans/StopRecordStreamResult;->filePath:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Lcom/haima/hmcp/beans/RecordStreamInfo;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    const-string v2, ""

    .line 52
    .line 53
    invoke-interface {v0, p1, v2, v1}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v3, "13338"

    .line 58
    .line 59
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 67
    .line 68
    iget-object v4, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 69
    .line 70
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v3, v4, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v2, v1, p1, v0}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v2, "stopRecordStream no response data"

    .line 89
    .line 90
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->val$listener:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$30;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 98
    .line 99
    sget v3, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 100
    .line 101
    invoke-static {v3}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "100320003"

    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {p1, v1, v2, v0}, Lcom/haima/hmcp/listeners/StopRecordStreamListener;->stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    return-void
.end method
