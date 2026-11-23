.class public interface abstract Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dnsRequestIpError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dnsRequestIpResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;",
            ">;)V"
        }
    .end annotation
.end method
