.class public Lcom/windmill/sdk/strategy/o;
.super Lcom/windmill/sdk/strategy/r;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/windmill/sdk/strategy/s$d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private g:Lcom/windmill/sdk/models/WMFilter;


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
    iput v0, p0, Lcom/windmill/sdk/strategy/o;->b:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/strategy/o;->f:Ljava/util/List;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    .line 29
    .line 30
    iput p3, p0, Lcom/windmill/sdk/strategy/o;->a:I

    .line 31
    .line 32
    iput-object p4, p0, Lcom/windmill/sdk/strategy/o;->g:Lcom/windmill/sdk/models/WMFilter;

    .line 33
    .line 34
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/o;->a(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/windmill/sdk/strategy/o;->a:I

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/windmill/sdk/strategy/o;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    .line 4
    div-int/2addr v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    mul-int v5, v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int v6, v4, v0

    .line 5
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 10
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/strategy/o;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/windmill/sdk/strategy/o;->b:I

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    iget-object v2, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    iget-object v2, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    sget-object v2, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WMStrategyB-------initializeADStrategyList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/windmill/sdk/strategy/o;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/strategy/o;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/windmill/sdk/strategy/o;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 19
    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 20
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 21
    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v4, :cond_1

    .line 22
    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->g:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v2, v4}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 23
    iget-object v5, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v5, v2, v4}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v4, v2}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 25
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 27
    invoke-virtual {v4, v3}, Lcom/windmill/sdk/strategy/a;->k(I)V

    add-int/lit8 v2, v2, 0x1

    .line 28
    invoke-virtual {v4, v2}, Lcom/windmill/sdk/strategy/a;->l(I)V

    .line 29
    invoke-virtual {v4, v0}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 30
    invoke-virtual {v4, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 31
    iget-object v5, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v5, :cond_2

    .line 32
    iget-object v5, p0, Lcom/windmill/sdk/strategy/o;->g:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v4, v5}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 33
    iget-object v6, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v6, v4, v5}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v5, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v5, v4}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public declared-synchronized a(Lcom/windmill/sdk/strategy/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMStrategyB-------loadBackupStrategy-----1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/windmill/sdk/strategy/o;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    .line 40
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :try_start_1
    iget p1, p0, Lcom/windmill/sdk/strategy/o;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/windmill/sdk/strategy/o;->b:I

    .line 42
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WMStrategyB-------loadBackupStrategy-----2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/windmill/sdk/strategy/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget p1, p0, Lcom/windmill/sdk/strategy/o;->b:I

    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 44
    iget-object p1, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    iget v0, p0, Lcom/windmill/sdk/strategy/o;->b:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 49
    iget v3, p0, Lcom/windmill/sdk/strategy/o;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/windmill/sdk/strategy/a;->k(I)V

    add-int/lit8 v1, v1, 0x1

    .line 50
    invoke-virtual {v2, v1}, Lcom/windmill/sdk/strategy/a;->l(I)V

    .line 51
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 52
    invoke-virtual {v2, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 53
    iget-object v3, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/windmill/sdk/strategy/o;->g:Lcom/windmill/sdk/models/WMFilter;

    invoke-static {v2, v3}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v4, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v4, v2, v3}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :cond_3
    const-string v3, "-----StrategyB---adapterLoadPassFilterBackup"

    .line 56
    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/windmill/sdk/strategy/o;->c:Lcom/windmill/sdk/strategy/s$d;

    invoke-interface {v3, v2}, Lcom/windmill/sdk/strategy/s$d;->b(Lcom/windmill/sdk/strategy/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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
    iget-object v1, p0, Lcom/windmill/sdk/strategy/o;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/windmill/sdk/strategy/o;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/windmill/sdk/strategy/o;->b:I

    .line 8
    .line 9
    return-void
.end method
