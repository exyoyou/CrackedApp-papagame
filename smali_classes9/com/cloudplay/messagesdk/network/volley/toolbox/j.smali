.class public abstract Lcom/cloudplay/messagesdk/network/volley/toolbox/j;
.super Lcom/cloudplay/messagesdk/network/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloudplay/messagesdk/network/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final u:Ljava/lang/String;


# instance fields
.field private final r:Ljava/lang/Object;

.field private s:Lcom/cloudplay/messagesdk/network/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/network/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "utf-8"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const-string v1, "application/json; charset=%s"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->u:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Response$Listener;Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/network/volley/Response$Listener<",
            "TT;>;",
            "Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/cloudplay/messagesdk/network/volley/Request;-><init>(ILjava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->s:Lcom/cloudplay/messagesdk/network/volley/Response$Listener;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->t:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->a()V

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->r:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->s:Lcom/cloudplay/messagesdk/network/volley/Response$Listener;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->s:Lcom/cloudplay/messagesdk/network/volley/Response$Listener;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, p1}, Lcom/cloudplay/messagesdk/network/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()[B
    .locals 5

    .line 1
    const-string v0, "utf-8"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->t:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_0
    return-object v1

    .line 14
    :catch_0
    const/4 v2, 0x2

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->t:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/cloudplay/messagesdk/network/volley/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->b()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/j;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
