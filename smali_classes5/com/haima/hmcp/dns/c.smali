.class public final synthetic Lcom/haima/hmcp/dns/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/dns/DnsAsyncParser$1;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/dns/DnsAsyncParser$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/dns/c;->b:Lcom/haima/hmcp/dns/DnsAsyncParser$1;

    iput-object p2, p0, Lcom/haima/hmcp/dns/c;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/haima/hmcp/dns/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/haima/hmcp/dns/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lcom/haima/hmcp/dns/c;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/c;->b:Lcom/haima/hmcp/dns/DnsAsyncParser$1;

    iget-object v1, p0, Lcom/haima/hmcp/dns/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/haima/hmcp/dns/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/haima/hmcp/dns/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/haima/hmcp/dns/c;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->a(Lcom/haima/hmcp/dns/DnsAsyncParser$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
