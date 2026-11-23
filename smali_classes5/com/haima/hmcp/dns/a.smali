.class public final synthetic Lcom/haima/hmcp/dns/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/dns/a;->b:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    iput-object p2, p0, Lcom/haima/hmcp/dns/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/a;->b:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    iget-object v1, p0, Lcom/haima/hmcp/dns/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->a(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method
