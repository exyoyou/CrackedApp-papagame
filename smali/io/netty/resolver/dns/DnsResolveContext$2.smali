.class Lio/netty/resolver/dns/DnsResolveContext$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/AddressedEnvelope<",
        "Lio/netty/handler/codec/dns/DnsResponse;",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/dns/DnsResolveContext;

.field final synthetic val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

.field final synthetic val$nameServerAddrStreamIndex:I

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field final synthetic val$queryLifecycleObserver:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

.field final synthetic val$question:Lio/netty/handler/codec/dns/DnsQuestion;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 2
    .line 3
    iput-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 4
    .line 5
    iput-object p3, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$queryLifecycleObserver:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 6
    .line 7
    iput-object p4, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 8
    .line 9
    iput p5, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStreamIndex:I

    .line 10
    .line 11
    iput-object p6, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext;->access$200(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 32
    .line 33
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 34
    .line 35
    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStreamIndex:I

    .line 36
    .line 37
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 38
    .line 39
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move-object v5, p1

    .line 44
    check-cast v5, Lio/netty/channel/AddressedEnvelope;

    .line 45
    .line 46
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$queryLifecycleObserver:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 47
    .line 48
    iget-object v7, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 49
    .line 50
    invoke-static/range {v1 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->access$400(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$queryLifecycleObserver:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 55
    .line 56
    invoke-interface {p1, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 60
    .line 61
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 62
    .line 63
    iget p1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStreamIndex:I

    .line 64
    .line 65
    add-int/lit8 v3, p1, 0x1

    .line 66
    .line 67
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 68
    .line 69
    invoke-static {v1, v4}, Lio/netty/resolver/dns/DnsResolveContext;->access$500(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v6, 0x1

    .line 74
    iget-object v7, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 75
    .line 76
    move-object v8, v0

    .line 77
    invoke-static/range {v1 .. v8}, Lio/netty/resolver/dns/DnsResolveContext;->access$600(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 81
    .line 82
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 83
    .line 84
    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStreamIndex:I

    .line 85
    .line 86
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 87
    .line 88
    sget-object v5, Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;->INSTANCE:Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;

    .line 89
    .line 90
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 91
    .line 92
    move-object v7, v0

    .line 93
    invoke-static/range {v1 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->access$700(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 99
    .line 100
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStream:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 101
    .line 102
    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$nameServerAddrStreamIndex:I

    .line 103
    .line 104
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 105
    .line 106
    sget-object v5, Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;->INSTANCE:Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;

    .line 107
    .line 108
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 109
    .line 110
    move-object v7, v0

    .line 111
    invoke-static/range {v1 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->access$700(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->val$queryLifecycleObserver:Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 116
    .line 117
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$2;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 118
    .line 119
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext;->access$300(Lio/netty/resolver/dns/DnsResolveContext;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-interface {v0, v1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lio/netty/channel/AddressedEnvelope;

    .line 131
    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void
.end method
