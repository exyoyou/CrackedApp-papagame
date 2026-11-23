.class public Lcom/cloudplay/messagesdk/network/volley/toolbox/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/m;->a(Landroid/content/Context;Lcom/cloudplay/messagesdk/network/volley/toolbox/b;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/cloudplay/messagesdk/network/volley/Network;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/m$a;

    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/m$a;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    new-instance v1, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;)V

    invoke-direct {p0, v1, p1}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;-><init>(Lcom/cloudplay/messagesdk/network/volley/Cache;Lcom/cloudplay/messagesdk/network/volley/Network;)V

    .line 7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->b()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/cloudplay/messagesdk/network/volley/toolbox/b;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/toolbox/c;

    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/c;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/b;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/c;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/c;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/b;)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-static {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/m;->a(Landroid/content/Context;Lcom/cloudplay/messagesdk/network/volley/Network;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method
