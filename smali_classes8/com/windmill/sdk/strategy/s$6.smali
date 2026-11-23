.class Lcom/windmill/sdk/strategy/s$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$c;


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
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/windmill/sdk/strategy/q;Lcom/windmill/sdk/models/Waterfall;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "strategyList",
            "config",
            "water"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/q;",
            "Lcom/windmill/sdk/models/Waterfall;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----StrategyRequest--onSuccess--type--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0, p3}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/q;)Lcom/windmill/sdk/strategy/q;

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Ljava/util/List;)Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v0, p4}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/Waterfall;

    .line 6
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x2

    if-ne p1, p4, :cond_2

    .line 7
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->W()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 11
    iget v3, p3, Lcom/windmill/sdk/strategy/q;->f:I

    if-lez v3, :cond_1

    .line 12
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v3

    iget v4, p3, Lcom/windmill/sdk/strategy/q;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "load_timeout"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-eqz p3, :cond_5

    .line 13
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p4

    .line 14
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 15
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/windmill/sdk/base/WMAdapterError;

    const-string v5, "\u83b7\u53d6\u4ef7\u683c\u5931\u8d25\uff0c\u672a\u77e5\u9519\u8bef"

    invoke-direct {v4, v0, v5}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    if-eqz v3, :cond_4

    .line 20
    iget v5, v3, Lcom/windmill/sdk/strategy/a$a;->f:I

    invoke-virtual {v4, v5}, Lcom/windmill/sdk/base/WMAdapterError;->setErrorCode(I)V

    .line 21
    iget-object v3, v3, Lcom/windmill/sdk/strategy/a$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/windmill/sdk/base/WMAdapterError;->setMessage(Ljava/lang/String;)V

    .line 22
    :cond_4
    new-instance v3, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v3, v1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v1}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 24
    invoke-interface {v2, v3, v4}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_1

    .line 25
    :cond_5
    sput-boolean p2, Lcom/windmill/sdk/strategy/s;->b:Z

    if-eqz p3, :cond_6

    .line 26
    iget-object p4, p3, Lcom/windmill/sdk/strategy/q;->b:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 27
    sget-object p4, Lcom/windmill/sdk/strategy/s;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v1}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/windmill/sdk/strategy/q;->b:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p3, :cond_7

    .line 28
    iget p4, p3, Lcom/windmill/sdk/strategy/q;->f:I

    if-lez p4, :cond_7

    .line 29
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p4

    invoke-virtual {p4}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 30
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/windmill/sdk/strategy/WMSdkConfig;->_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p3, Lcom/windmill/sdk/strategy/q;->f:I

    invoke-interface {p4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-eqz p1, :cond_e

    if-ne p1, p2, :cond_8

    goto/16 :goto_5

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/l;->b()V

    .line 33
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/l;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    .line 36
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/windmill/sdk/strategy/a;

    .line 38
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 46
    :cond_a
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    const/4 p1, 0x0

    .line 47
    :goto_3
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p2}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_d

    .line 48
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p2}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/windmill/sdk/strategy/a;

    .line 49
    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/windmill/sdk/strategy/a;

    .line 50
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 51
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 52
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->l(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->m(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_b

    .line 55
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->ay()D

    move-result-wide v2

    .line 56
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->az()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aA()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aB()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->ax()Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aw()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    .line 61
    invoke-virtual/range {v1 .. v8}, Lcom/windmill/sdk/strategy/a;->a(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 62
    :cond_d
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Ljava/util/List;Z)V

    goto/16 :goto_a

    .line 63
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->p(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_f

    if-eqz p3, :cond_f

    iget p1, p3, Lcom/windmill/sdk/strategy/q;->f:I

    if-lez p1, :cond_f

    .line 64
    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3, p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;I)V

    .line 65
    :cond_f
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 66
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 67
    :cond_10
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/windmill/sdk/strategy/a;

    .line 69
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result p4

    if-ne p4, p2, :cond_15

    .line 70
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object p4

    const/4 v1, 0x0

    if-nez p4, :cond_11

    move-object p4, v1

    goto :goto_7

    :cond_11
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object p4

    invoke-virtual {p4}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object p4

    :goto_7
    if-eqz p4, :cond_12

    .line 71
    invoke-interface {p4}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object v1

    .line 72
    :cond_12
    invoke-static {p3, v1}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object p4

    if-eqz p4, :cond_13

    const-string v1, "error"

    const-string v2, "load"

    .line 73
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v3

    iget-object v5, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v6

    const-string v7, ""

    .line 74
    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/windmill/sdk/strategy/s$6$1;

    invoke-direct {v9, p0}, Lcom/windmill/sdk/strategy/s$6$1;-><init>(Lcom/windmill/sdk/strategy/s$6;)V

    move-object v4, p3

    .line 75
    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 77
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, v2, p4}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 78
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->n(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 80
    new-instance p4, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {p4}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    .line 81
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 82
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 84
    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p4}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 85
    :cond_13
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->Z()I

    move-result p4

    if-ne p4, p2, :cond_14

    .line 86
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 87
    :cond_14
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 88
    :cond_15
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->s(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 89
    :cond_16
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 90
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/windmill/sdk/strategy/a;

    .line 91
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4, p3}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_8

    .line 92
    :cond_17
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ctcStrategyList:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ":stsStrategyList:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ":normalStrategyList:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->s(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ":biddingList:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 94
    :goto_9
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_19

    .line 95
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/strategy/a;

    if-eqz p1, :cond_18

    .line 96
    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/s;->f()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/windmill/sdk/strategy/a;->b(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 97
    :cond_19
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1a

    .line 98
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Ljava/util/List;Z)V

    goto :goto_a

    .line 99
    :cond_1a
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    move-result-object p1

    iget-boolean p1, p1, Lcom/windmill/sdk/strategy/q;->o:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->s(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 101
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    new-instance p2, Lcom/windmill/sdk/strategy/l;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v1

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->s(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    move-result-object p3

    iget v4, p3, Lcom/windmill/sdk/strategy/q;->p:I

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;

    move-result-object v5

    iget-object p3, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p3}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/windmill/sdk/strategy/l;-><init>(Lcom/windmill/sdk/common/l;Ljava/util/List;Ljava/util/List;ILcom/windmill/sdk/strategy/s$d;Lcom/windmill/sdk/WindMillAdRequest;)V

    invoke-static {p1, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/strategy/l;

    .line 102
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/l;->a()V

    :cond_1b
    :goto_a
    return-void
.end method

.method public a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "failList",
            "strategy",
            "error_code",
            "error_msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p3

    move-object/from16 v9, p4

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----StrategyRequest-----onErrorResponse---:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 105
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 108
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v5

    invoke-static {v5}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 110
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 111
    :cond_1
    sget-object v12, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    const-string v2, "error"

    const-string v3, "load"

    .line 113
    iget-object v4, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v4}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v4

    iget-object v6, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    const-string v8, ""

    new-instance v10, Lcom/windmill/sdk/strategy/s$6$2;

    invoke-direct {v10, p0}, Lcom/windmill/sdk/strategy/s$6$2;-><init>(Lcom/windmill/sdk/strategy/s$6;)V

    move-object v5, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v10}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    if-eqz v1, :cond_5

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 115
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 116
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    iget-object v4, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v4}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 119
    iget-object v4, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v4}, Lcom/windmill/sdk/strategy/s;->i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    .line 122
    new-instance v6, Lcom/windmill/sdk/base/WMAdapterError;

    const-string v7, "\u83b7\u53d6\u4ef7\u683c\u5931\u8d25\uff0c\u672a\u77e5\u9519\u8bef"

    invoke-direct {v6, v11, v7}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    if-eqz v5, :cond_2

    .line 123
    iget v7, v5, Lcom/windmill/sdk/strategy/a$a;->f:I

    invoke-virtual {v6, v7}, Lcom/windmill/sdk/base/WMAdapterError;->setErrorCode(I)V

    .line 124
    iget-object v5, v5, Lcom/windmill/sdk/strategy/a$a;->g:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/windmill/sdk/base/WMAdapterError;->setMessage(Ljava/lang/String;)V

    .line 125
    :cond_2
    new-instance v5, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v5, v3}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 126
    iget-object v7, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v7}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 127
    invoke-interface {v4, v5, v6}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 128
    :cond_3
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 129
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v4

    invoke-static {v4}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "--------WMStrategyManager---sendTracking "

    .line 130
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    .line 132
    invoke-static {v5}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v5

    const-string v6, "lose"

    .line 133
    invoke-static {v4, v6, v3, v5}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 134
    :cond_5
    iget-object v2, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 135
    iget-object v2, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/l;->b()V

    .line 136
    :cond_6
    iget-object v2, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 137
    iget-object v2, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v2}, Lcom/windmill/sdk/strategy/s;->e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;

    move-result-object v2

    iget-object v3, v0, Lcom/windmill/sdk/strategy/s$6;->a:Lcom/windmill/sdk/strategy/s;

    invoke-static {v3}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3, p1}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    return-void
.end method
