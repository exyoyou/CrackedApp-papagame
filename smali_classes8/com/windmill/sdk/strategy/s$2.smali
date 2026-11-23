.class Lcom/windmill/sdk/strategy/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--------PriceTimeOut---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isPriceTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Z)Z

    .line 61
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 64
    iput-boolean v1, v2, Lcom/windmill/sdk/strategy/a;->m:Z

    .line 65
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->n(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3, v2, p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 68
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->o(Lcom/windmill/sdk/strategy/s;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "error"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--------PriceFail---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 48
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 49
    invoke-interface {v0, v1, p2}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->a:Z

    .line 51
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0, p1, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 53
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->n(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->m(Lcom/windmill/sdk/strategy/s;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "price"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--------PriceSuccess---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "strategy_stage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->h(Lcom/windmill/sdk/strategy/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->h(Lcom/windmill/sdk/strategy/s;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    iget-object v0, v0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v1}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v1

    iget-object v1, v1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 7
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v3, p2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, p2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {v1, v3}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 15
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p2}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object p2

    iget-object p2, p2, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object p1

    iput-object v0, p1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    :cond_4
    :goto_2
    return-void

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->g(Lcom/windmill/sdk/strategy/s;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 18
    :cond_6
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->n()Z

    move-result v1

    if-nez v1, :cond_7

    .line 23
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 24
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 25
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    new-instance v2, Lcom/windmill/sdk/strategy/s$2$1;

    invoke-direct {v2, p0, p1}, Lcom/windmill/sdk/strategy/s$2$1;-><init>(Lcom/windmill/sdk/strategy/s$2;Lcom/windmill/sdk/strategy/a;)V

    const-string v3, "bid_c2c"

    invoke-static {v3, v0, p1, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "price"

    .line 33
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance p2, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {p2}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 36
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 37
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->cur(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 38
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 39
    iget-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->is_pdb(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 40
    iget p1, p1, Lcom/windmill/sdk/strategy/a;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->pdb_priority(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 41
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->m(Lcom/windmill/sdk/strategy/s;)V

    return-void
.end method
