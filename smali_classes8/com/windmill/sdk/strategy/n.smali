.class public Lcom/windmill/sdk/strategy/n;
.super Lcom/windmill/sdk/strategy/r;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:Lcom/windmill/sdk/strategy/s$d;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/windmill/sdk/models/WMFilter;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/strategy/s$d;Ljava/util/List;ILcom/windmill/sdk/models/WMFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "strategyListener",
            "adStrategyList",
            "maxConcurrent",
            "wmFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/strategy/s$d;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;I",
            "Lcom/windmill/sdk/models/WMFilter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/r;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/windmill/sdk/strategy/n;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    .line 15
    .line 16
    iput p3, p0, Lcom/windmill/sdk/strategy/n;->b:I

    .line 17
    .line 18
    iput-object p4, p0, Lcom/windmill/sdk/strategy/n;->h:Lcom/windmill/sdk/models/WMFilter;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/windmill/sdk/strategy/n;->g:Ljava/util/List;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput p1, p0, Lcom/windmill/sdk/strategy/n;->a:I

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ge v0, p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    iget-object p2, p0, Lcom/windmill/sdk/strategy/n;->g:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, ":"

    .line 1
    :try_start_0
    iget v1, p0, Lcom/windmill/sdk/strategy/n;->b:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/windmill/sdk/strategy/n;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2
    :goto_0
    iput v1, p0, Lcom/windmill/sdk/strategy/n;->c:I

    .line 3
    iget-object v2, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    iget-object v2, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object v2, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WMStrategyA-------initializeADStrategyList:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/windmill/sdk/strategy/n;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 8
    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 10
    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->h:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v0, v3}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v5, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v5, v0, v3}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v3, v0}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-ge v0, v1, :cond_5

    .line 14
    iget-object v3, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 15
    invoke-virtual {v3, v2}, Lcom/windmill/sdk/strategy/a;->k(I)V

    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {v3, v0}, Lcom/windmill/sdk/strategy/a;->l(I)V

    .line 17
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 18
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 19
    iget-object v5, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v5, :cond_3

    .line 20
    iget-object v5, p0, Lcom/windmill/sdk/strategy/n;->h:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v3, v5}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 21
    iget-object v6, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v6, v3, v5}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_2

    .line 22
    :cond_4
    iget-object v5, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v5, v3}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_5
    return-void
.end method

.method public declared-synchronized a(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMStrategyA-------loadBackupStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/windmill/sdk/strategy/n;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "-------------loadBackupStrategy---A-----------"

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/windmill/sdk/strategy/n;->c:I

    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 29
    iget v0, p0, Lcom/windmill/sdk/strategy/n;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/windmill/sdk/strategy/n;->a:I

    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    iget v1, p0, Lcom/windmill/sdk/strategy/n;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 31
    iget v1, p0, Lcom/windmill/sdk/strategy/n;->a:I

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->k(I)V

    .line 32
    iget v1, p0, Lcom/windmill/sdk/strategy/n;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->l(I)V

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 35
    iget v1, p0, Lcom/windmill/sdk/strategy/n;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/windmill/sdk/strategy/n;->c:I

    .line 36
    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->h:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v0, p1}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v1, v0, p1}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :cond_2
    const-string p1, "-----StrategyA---adapterLoadPassFilterBackup"

    .line 42
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/windmill/sdk/strategy/n;->d:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {p1, v0}, Lcom/windmill/sdk/strategy/s$d;->b(Lcom/windmill/sdk/strategy/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :catchall_0
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/strategy/n;->f:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/n;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/windmill/sdk/strategy/n;->c:I

    .line 8
    .line 9
    return-void
.end method
