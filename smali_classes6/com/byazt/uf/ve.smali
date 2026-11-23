.class public Lcom/byazt/uf/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/uf/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x151,
        0x36
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/uf/n;

.field public n:Lcom/byazt/lph/ve;

.field public final tt:Lcom/byazt/uf/uj;

.field public uj:Lcom/byazt/vb/n;

.field public final ve:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/vb/n;Lcom/byazt/lph/ve;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/uf/ve;->ve:Ljava/util/Queue;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/uf/ve;->n:Lcom/byazt/lph/ve;

    .line 14
    .line 15
    new-instance p2, Lcom/byazt/uf/a;

    .line 16
    .line 17
    invoke-direct {p2, v0, p1}, Lcom/byazt/uf/a;-><init>(Ljava/util/Queue;Lcom/byazt/vb/n;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    .line 21
    .line 22
    new-instance p1, Lcom/byazt/uf/uj;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/byazt/uf/uj;-><init>(Lcom/byazt/vb/n;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v0}, Lcom/byazt/uf/n;->c()I

    move-result v0

    return v0
.end method

.method public declared-synchronized c(ILjava/util/List;I)Lcom/byazt/uf/tt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;I)",
            "Lcom/byazt/uf/tt;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    .line 7
    iget-object v3, p0, Lcom/byazt/uf/ve;->ve:Ljava/util/Queue;

    invoke-interface {v2}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    new-instance v2, Lcom/byazt/uf/tt;

    invoke-direct {v2}, Lcom/byazt/uf/tt;-><init>()V

    .line 9
    invoke-virtual {v2, v0}, Lcom/byazt/uf/tt;->c(Z)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sending exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/uf/tt;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {v1, v2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v1, p1, p2, p3}, Lcom/byazt/uf/n;->c(ILjava/util/List;I)Lcom/byazt/uf/tt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 13
    :try_start_3
    new-instance v2, Lcom/byazt/uf/tt;

    invoke-direct {v2}, Lcom/byazt/uf/tt;-><init>()V

    .line 14
    invoke-virtual {v2, v0}, Lcom/byazt/uf/tt;->c(Z)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mem exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/uf/tt;->c(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {v1, v2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    invoke-virtual {v1, p1, p2, p3}, Lcom/byazt/uf/uj;->c(ILjava/util/List;I)Lcom/byazt/uf/tt;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    :try_start_5
    new-instance p2, Lcom/byazt/uf/tt;

    invoke-direct {p2}, Lcom/byazt/uf/tt;-><init>()V

    .line 19
    invoke-virtual {p2, v0}, Lcom/byazt/uf/tt;->c(Z)V

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "db exception:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/byazt/uf/tt;->c(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {p1, p3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object p1, p2

    .line 22
    :goto_2
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ILcom/byazt/vb/tt;ZLjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/vb/tt;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object p4, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/byazt/uf/n;->c(ILcom/byazt/vb/tt;ZLjava/util/List;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 24
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    .line 26
    invoke-static {p1}, Lcom/byazt/ml/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    const/4 v1, 0x0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    invoke-virtual {v0, v2, p2, p1, p3}, Lcom/byazt/uf/uj;->c(Lcom/byazt/vb/tt;IIZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_c

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vb/tt;

    .line 32
    invoke-interface {v0}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/byazt/uf/ve;->ve:Ljava/util/Queue;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    .line 36
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-interface {v2}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    .line 38
    invoke-interface {v2}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 39
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vb/tt;

    .line 40
    invoke-interface {v0}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 41
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 43
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 44
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 46
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_8

    .line 47
    :cond_7
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/byazt/uf/ve;->ve:Ljava/util/Queue;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/byazt/uf/uj;->c(ILcom/byazt/vb/tt;ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_b

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    .line 54
    invoke-interface {v1}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_a

    .line 55
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 56
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 57
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 58
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 59
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 60
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 61
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 62
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    move-object p4, p1

    :cond_c
    :goto_8
    if-eqz p4, :cond_f

    .line 63
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_a

    .line 64
    :cond_d
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 65
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/vb/tt;

    .line 66
    iget-object p3, p0, Lcom/byazt/uf/ve;->ve:Ljava/util/Queue;

    invoke-interface {p2}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 67
    :cond_e
    monitor-exit p0

    return-object p4

    .line 68
    :cond_f
    :goto_a
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(ILcom/byazt/vb/tt;ZLjava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/vb/tt;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized c(Lcom/byazt/vb/tt;IZ)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {p1, v0}, Lcom/byazt/ml/c;->i(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/uf/ve;->n:Lcom/byazt/lph/ve;

    invoke-virtual {v0}, Lcom/byazt/lph/ve;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/uf/n;->c(Lcom/byazt/vb/tt;IZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/uf/uj;->c(Lcom/byazt/vb/tt;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    .line 5
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uf/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/uf/n;->c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "_opt"

    const-string p3, "cacheManager check result : memory meet "

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {p1, p2, p3}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return v1

    .line 72
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/byazt/ml/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/uf/uj;->c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_opt"

    const-string p3, "cacheManager check result : db meet "

    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/uf/ve;->uj:Lcom/byazt/vb/n;

    invoke-static {p1, p2, p3}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return v1

    .line 76
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uf/ve;->tt:Lcom/byazt/uf/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/uf/uj;->tt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
