.class public abstract Lcom/cloudplay/messagesdk/network/volley/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/Request$Priority;,
        Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;,
        Lcom/cloudplay/messagesdk/network/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/cloudplay/messagesdk/network/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/network/volley/g$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private f:Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;

.field private g:Ljava/lang/Integer;

.field private h:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

.field private o:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

.field private p:Ljava/lang/Object;

.field private q:Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g$a;->c:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/g$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/network/volley/g$a;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->a:Lcom/cloudplay/messagesdk/network/volley/g$a;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->i:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->j:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->k:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->l:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->m:Z

    .line 36
    .line 37
    iput-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->o:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 38
    .line 39
    iput p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->b:I

    .line 40
    .line 41
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->c:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->f:Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;

    .line 44
    .line 45
    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/b;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/cloudplay/messagesdk/network/volley/b;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;)Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->c(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->d:I

    .line 58
    .line 59
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 21
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/network/volley/Request;)Lcom/cloudplay/messagesdk/network/volley/g$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->a:Lcom/cloudplay/messagesdk/network/volley/g$a;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/network/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->n()Lcom/cloudplay/messagesdk/network/volley/Request$Priority;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->n()Lcom/cloudplay/messagesdk/network/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/cloudplay/messagesdk/network/volley/Request;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public a(Lcom/cloudplay/messagesdk/network/volley/Cache$a;)Lcom/cloudplay/messagesdk/network/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Cache$a;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->o:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    return-object p0
.end method

.method public a(Lcom/cloudplay/messagesdk/network/volley/RequestQueue;)Lcom/cloudplay/messagesdk/network/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/RequestQueue;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->h:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    return-object p0
.end method

.method public a(Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;)Lcom/cloudplay/messagesdk/network/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->n:Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

    return-object p0
.end method

.method protected abstract a(Lcom/cloudplay/messagesdk/network/volley/f;)Lcom/cloudplay/messagesdk/network/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/f;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_0
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->j:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->f:Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->h:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->a(Lcom/cloudplay/messagesdk/network/volley/Request;I)V

    :cond_0
    return-void
.end method

.method a(Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->q:Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lcom/cloudplay/messagesdk/network/volley/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->q:Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;->onResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->f:Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v1, p1}, Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;->onErrorResponse(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g$a;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->a:Lcom/cloudplay/messagesdk/network/volley/g$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/cloudplay/messagesdk/network/volley/g$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final b(I)Lcom/cloudplay/messagesdk/network/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/network/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->p:Ljava/lang/Object;

    return-object p0
.end method

.method protected b(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)Lcom/cloudplay/messagesdk/network/volley/VolleyError;
    .locals 0

    .line 1
    return-object p1
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->h:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->c(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 6
    :cond_0
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g$a;->c:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 9
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance v3, Lcom/cloudplay/messagesdk/network/volley/Request$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/Request$a;-><init>(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->a:Lcom/cloudplay/messagesdk/network/volley/g$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/g$a;->a(Ljava/lang/String;J)V

    .line 12
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->a:Lcom/cloudplay/messagesdk/network/volley/g$a;

    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/g$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/Request;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Lcom/cloudplay/messagesdk/network/volley/Cache$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->o:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x2d

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    :goto_0
    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public j()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->l()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->m()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->h()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n()Lcom/cloudplay/messagesdk/network/volley/Request$Priority;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/volley/Request$Priority;->b:Lcom/cloudplay/messagesdk/network/volley/Request$Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->n:Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->p:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->o()Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;->getCurrentTimeout()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->k:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "0x"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->r()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v2, "[X] "

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v2, "[ ] "

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->s()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->n()Lcom/cloudplay/messagesdk/network/volley/Request$Priority;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->g:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->j:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->k:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->q:Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p0}, Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;->onNoUsableResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v1
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Request;->l:Z

    .line 2
    .line 3
    return v0
.end method
