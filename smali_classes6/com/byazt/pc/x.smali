.class public Lcom/byazt/pc/x;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x47
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Throwable;

.field public tt:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/pc/x;->tt:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pc/x;->ve:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/pc/x;->c:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-void
.end method

.method private tt(Lcom/byazt/oz/ve;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->ve()Lcom/byazt/yj/gr;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/byazt/pc/x;->tt:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/pc/x;->ve:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/pc/x;->c:Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2}, Lcom/byazt/yj/gr;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "failed"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/byazt/oz/c;

    iget v1, p0, Lcom/byazt/pc/x;->tt:I

    iget-object v2, p0, Lcom/byazt/pc/x;->ve:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/pc/x;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/oz/c;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/oz/c;)V

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->nu()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/oz/a;->sp()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/pc/x;->tt(Lcom/byazt/oz/ve;)V

    return-void

    .line 7
    :cond_0
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/oz/ve;

    .line 9
    invoke-direct {p0, v3}, Lcom/byazt/pc/x;->tt(Lcom/byazt/oz/ve;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
