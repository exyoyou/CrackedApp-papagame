.class Lcom/haima/hmcp/business/HmcpRequestManager$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getDnsRequestIp(Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

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
    const-string v2, "getDnsRequestIp onError: "

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
    const-string p2, "13309"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const/16 v0, -0x3e8

    .line 43
    .line 44
    if-ne p1, v0, :cond_0

    .line 45
    .line 46
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 47
    .line 48
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "100307004"

    .line 53
    .line 54
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/16 v0, -0x3ea

    .line 59
    .line 60
    if-ne p1, v0, :cond_1

    .line 61
    .line 62
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "100307001"

    .line 69
    .line 70
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 75
    .line 76
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "100307002"

    .line 81
    .line 82
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
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
    const-string v2, "timeframe--getDnsRequestIp---response---result--->"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 30
    .line 31
    const-string v3, "307"

    .line 32
    .line 33
    const-string v4, "success"

    .line 34
    .line 35
    const-string v5, ""

    .line 36
    .line 37
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$time:J

    .line 38
    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    const-string v0, "100307003"

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget v1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    check-cast p1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult;->result:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lez v1, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult;->result:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0, p1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpResult(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 75
    .line 76
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 77
    .line 78
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "13331"

    .line 87
    .line 88
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 94
    .line 95
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$32;->val$listener:Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 108
    .line 109
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;->dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method
