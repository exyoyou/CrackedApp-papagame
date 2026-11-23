.class Lcom/haima/hmcp/dns/DnsAsyncParser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/dns/DnsAsyncParser;->getHostAddressList(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

.field final synthetic val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$listener:Lcom/haima/hmcp/dns/interfaces/DnsResultListener;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/dns/DnsAsyncParser;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$tag:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$listener:Lcom/haima/hmcp/dns/interfaces/DnsResultListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$tag:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    aput-object p2, v0, v1

    .line 14
    .line 15
    const-string v1, "DnsAsyncParser"

    .line 16
    .line 17
    const-string v2, "[%s] dnsRequestIpError got errorCode: %s\uff0cerrorMsg:%s"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$tag:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " dnsRequestIpError:"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ",msg:"

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "12516"

    .line 53
    .line 54
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$listener:Lcom/haima/hmcp/dns/interfaces/DnsResultListener;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-interface {p1, p2}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public dnsRequestIpResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 21
    .line 22
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2, v0}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$300(Lcom/haima/hmcp/dns/DnsAsyncParser;Lcom/haima/hmcp/dns/DnsCache;Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3, v0}, Lcom/haima/hmcp/dns/DnsParser;->getIpFromCache(Lcom/haima/hmcp/dns/DnsCache;Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 p1, 0x2

    .line 92
    new-array p1, p1, [Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$tag:Ljava/lang/String;

    .line 95
    .line 96
    aput-object v0, p1, v1

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    aput-object v1, p1, v0

    .line 102
    .line 103
    const-string v0, "[%s] getDnsRequestIp success and parse result:%s"

    .line 104
    .line 105
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "12515"

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$listener:Lcom/haima/hmcp/dns/interfaces/DnsResultListener;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$2;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v0, "DnsCache content after getDnsRequestIp parse:"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsCache;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v0, "DnsAsyncParser"

    .line 151
    .line 152
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
