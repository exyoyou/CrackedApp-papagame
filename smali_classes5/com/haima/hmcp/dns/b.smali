.class public final synthetic Lcom/haima/hmcp/dns/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/dns/interfaces/DnsResultListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/dns/b;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->b(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method
