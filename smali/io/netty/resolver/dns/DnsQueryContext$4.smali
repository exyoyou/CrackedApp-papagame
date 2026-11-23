.class Lio/netty/resolver/dns/DnsQueryContext$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/dns/DnsQueryContext;->onQueryWriteCompletion(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/dns/DnsQueryContext;

.field final synthetic val$queryTimeoutMillis:J


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsQueryContext;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->this$0:Lio/netty/resolver/dns/DnsQueryContext;

    .line 2
    .line 3
    iput-wide p2, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->val$queryTimeoutMillis:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->this$0:Lio/netty/resolver/dns/DnsQueryContext;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/resolver/dns/DnsQueryContext;->access$100(Lio/netty/resolver/dns/DnsQueryContext;)Lio/netty/util/concurrent/Promise;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->this$0:Lio/netty/resolver/dns/DnsQueryContext;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "query via "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->this$0:Lio/netty/resolver/dns/DnsQueryContext;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsQueryContext;->protocol()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " timed out after "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v2, p0, Lio/netty/resolver/dns/DnsQueryContext$4;->val$queryTimeoutMillis:J

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " milliseconds"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lio/netty/resolver/dns/DnsQueryContext;->tryFailure(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
