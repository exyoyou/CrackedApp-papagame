.class public Lcom/cloudplay/messagesdk/network/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/INetwork;


# static fields
.field private static volatile b:Lcom/cloudplay/messagesdk/network/c;

.field private static volatile c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postJson() JsonObjectRequest.onError() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolleyManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lorg/json/JSONObject;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postJson() JsonObjectRequest.onResponse() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolleyManager"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/cloudplay/messagesdk/network/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/cloudplay/messagesdk/network/c;->b:Lcom/cloudplay/messagesdk/network/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/cloudplay/messagesdk/network/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/network/c;->b:Lcom/cloudplay/messagesdk/network/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/cloudplay/messagesdk/network/c;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/network/c;-><init>()V

    sput-object v1, Lcom/cloudplay/messagesdk/network/c;->b:Lcom/cloudplay/messagesdk/network/c;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/cloudplay/messagesdk/network/c;->b:Lcom/cloudplay/messagesdk/network/c;

    return-object v0
.end method

.method public static synthetic b(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloudplay/messagesdk/network/c;->a(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloudplay/messagesdk/network/c;->a(Lcom/cloudplay/messagesdk/network/HttpResultListener;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/cloudplay/messagesdk/network/volley/RequestQueue;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/c;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/network/c;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/m;->a(Landroid/content/Context;)Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    move-result-object v1

    sput-object v1, Lcom/cloudplay/messagesdk/network/c;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/cloudplay/messagesdk/network/c;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    return-object v0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/c;->a()Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "hm_volley"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/c;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/c;->a()Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public postJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "postJson() url:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",body:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VolleyManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/i;

    .line 32
    .line 33
    new-instance v1, Lx2/a;

    .line 34
    .line 35
    invoke-direct {v1, p3}, Lx2/a;-><init>(Lcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lx2/b;

    .line 39
    .line 40
    invoke-direct {v2, p3}, Lx2/b;-><init>(Lcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/i;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/cloudplay/messagesdk/network/volley/Response$Listener;Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/cloudplay/messagesdk/network/a;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/cloudplay/messagesdk/network/a;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;)Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 52
    .line 53
    .line 54
    const-string p1, "hm_volley"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->b(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/c;->a()Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->a(Lcom/cloudplay/messagesdk/network/volley/Request;)Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 64
    .line 65
    .line 66
    return-void
.end method
