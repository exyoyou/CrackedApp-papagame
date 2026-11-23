.class public Lcom/haima/hmcp/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method private static newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/Network;I)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 8
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/Volley$1;

    invoke-direct {v0, p0}, Lcom/haima/hmcp/volley/toolbox/Volley$1;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p0, Lcom/haima/hmcp/volley/RequestQueue;

    new-instance v1, Lcom/haima/hmcp/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/haima/hmcp/volley/toolbox/DiskBasedCache;-><init>(Lcom/haima/hmcp/volley/toolbox/DiskBasedCache$FileSupplier;)V

    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/volley/RequestQueue;-><init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/volley/RequestQueue;->setThreadPriority(I)V

    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/RequestQueue;->start()V

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 1

    const/16 v0, 0xa

    .line 4
    invoke-static {p0, p1, v0}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;I)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;I)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;

    new-instance v0, Lcom/haima/hmcp/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/haima/hmcp/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p1, v0}, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/Network;I)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/HttpStack;)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/HttpStack;)V

    const/16 p1, 0xa

    invoke-static {p0, v0, p1}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/Network;I)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method
