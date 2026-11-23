.class public Lcom/mob/tools/gui/CachePoolInner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;,
        Lcom/mob/tools/gui/CachePoolInner$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mob/tools/gui/CachePoolInner<",
            "TK;TV;>.Node<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private poolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 7
    .line 8
    if-lez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 37
    .line 38
    invoke-static {v0}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v1, v2

    .line 43
    iput v1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v2, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {v1, v2, v0}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    :cond_2
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    if-lez v0, :cond_6

    .line 10
    .line 11
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 12
    .line 13
    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 14
    .line 15
    if-le v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 28
    .line 29
    invoke-static {v0}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v2, v3

    .line 34
    iput v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {v2, v3, v0}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    iget-object v3, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    :cond_3
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object v3, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-object v2, v1

    .line 86
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 87
    .line 88
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    invoke-static {v2, v3, v4}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$102(Lcom/mob/tools/gui/CachePoolInner$Node;J)J

    .line 99
    .line 100
    .line 101
    iget-object p1, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-object p1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .line 112
    .line 113
    :cond_6
    monitor-exit p0

    .line 114
    return-object v1

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/CachePoolInner;->put(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v0, :cond_2

    .line 2
    :try_start_1
    new-instance v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mob/tools/gui/CachePoolInner$Node;-><init>(Lcom/mob/tools/gui/CachePoolInner;Lcom/mob/tools/gui/CachePoolInner$1;)V

    .line 3
    iput-object p1, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 4
    iput-object p2, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$102(Lcom/mob/tools/gui/CachePoolInner$Node;J)J

    .line 6
    invoke-static {v0, p3}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$202(Lcom/mob/tools/gui/CachePoolInner$Node;I)I

    .line 7
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 8
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 9
    :cond_0
    :goto_0
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-le p1, p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz p1, :cond_0

    .line 11
    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {p1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 12
    iget-object p2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz p2, :cond_0

    .line 13
    iget-object p3, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {p2, p3, p1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :cond_2
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnRemoveListener(Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized trimBeforeTime(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 7
    .line 8
    if-lez v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$100(Lcom/mob/tools/gui/CachePoolInner$Node;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    cmp-long v3, v1, p1

    .line 31
    .line 32
    if-gez v3, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 45
    .line 46
    invoke-static {v1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iput v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 52
    .line 53
    iget-object v2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    iget-object v3, v1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {v2, v3, v1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 69
    .line 70
    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 71
    .line 72
    if-le p1, p2, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 85
    .line 86
    invoke-static {p1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    sub-int/2addr p2, v0

    .line 91
    iput p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 92
    .line 93
    iget-object p2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    .line 94
    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    iget-object v0, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-interface {p2, v0, p1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    .line 109
    throw p1
.end method
