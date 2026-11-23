.class Lio/netty/resolver/dns/DnsResolveContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsResolveContext;->resolve(Lio/netty/util/concurrent/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private searchDomainIdx:I

.field final synthetic this$0:Lio/netty/resolver/dns/DnsResolveContext;

.field final synthetic val$initialSearchDomainIdx:I

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field final synthetic val$searchDomains:[Ljava/lang/String;

.field final synthetic val$startWithoutSearchDomain:Z


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsResolveContext;ILio/netty/util/concurrent/Promise;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 2
    .line 3
    iput p2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$initialSearchDomainIdx:I

    .line 4
    .line 5
    iput-object p3, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 6
    .line 7
    iput-object p4, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$searchDomains:[Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$startWithoutSearchDomain:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->searchDomainIdx:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 8
    .line 9
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lio/netty/resolver/dns/DnsNameResolver;->isTransportOrTimeoutError(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 25
    .line 26
    new-instance v1, Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;

    .line 27
    .line 28
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 29
    .line 30
    invoke-static {v2}, Lio/netty/resolver/dns/DnsResolveContext;->access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v0, v2}, Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->searchDomainIdx:I

    .line 42
    .line 43
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$searchDomains:[Ljava/lang/String;

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    if-ge p1, v1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 49
    .line 50
    iget-object p1, p1, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1, p0}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 71
    .line 72
    invoke-static {v2}, Lio/netty/resolver/dns/DnsResolveContext;->access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 v2, 0x2e

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$searchDomains:[Ljava/lang/String;

    .line 85
    .line 86
    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->searchDomainIdx:I

    .line 87
    .line 88
    add-int/lit8 v4, v3, 0x1

    .line 89
    .line 90
    iput v4, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->searchDomainIdx:I

    .line 91
    .line 92
    aget-object v2, v2, v3

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1, p1}, Lio/netty/resolver/dns/DnsResolveContext;->doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-boolean p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$startWithoutSearchDomain:Z

    .line 106
    .line 107
    if-nez p1, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 110
    .line 111
    invoke-static {p1}, Lio/netty/resolver/dns/DnsResolveContext;->access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 116
    .line 117
    invoke-static {p1, v0, v1}, Lio/netty/resolver/dns/DnsResolveContext;->access$100(Lio/netty/resolver/dns/DnsResolveContext;Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->val$promise:Lio/netty/util/concurrent/Promise;

    .line 122
    .line 123
    new-instance v1, Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;

    .line 124
    .line 125
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext$1;->this$0:Lio/netty/resolver/dns/DnsResolveContext;

    .line 126
    .line 127
    invoke-static {v2}, Lio/netty/resolver/dns/DnsResolveContext;->access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-direct {v1, v0, v2}, Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void
.end method
