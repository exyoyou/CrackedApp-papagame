.class Lcom/windmill/sdk/common/t$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$request"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$2;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId",
            "failList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillError;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "------onStrategyFail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/windmill/sdk/common/l;->f:Z

    .line 38
    invoke-static {p2}, Lcom/windmill/sdk/common/t;->i(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/strategy/s$b;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {p2, v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-boolean v1, p2, Lcom/windmill/sdk/common/l;->j:Z

    if-eqz v1, :cond_2

    return-void

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcom/windmill/sdk/common/t;->b()V

    .line 42
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->a:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2, p3, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/util/List;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 43
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {p2, p1, v0, v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 18
    sget-boolean v0, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---adapterLoadPassFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 21
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "windMillError"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------adapterLoadNoPassFilter--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 30
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {v0, p2, p1, v1}, Lcom/windmill/sdk/common/t;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------adapterPreloadAd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v0, p2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/l$a;)Lcom/windmill/sdk/strategy/l$a;

    .line 4
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "biddingListener"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 14
    sget-boolean v0, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----adapterLoadBiddingParameter--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "listener"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------adapterLoadBiddingPrice-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 9
    invoke-static {v0, p2}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 10
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategyList",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/q;",
            ")V"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------onStrategySuccess-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 34
    iput-object p1, v0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 35
    iput-object p2, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    return-void
.end method

.method public b(Lcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/windmill/sdk/common/t;->h(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "-------adapterLoadPassFilterBackup--: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;ILcom/windmill/sdk/strategy/a;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$2;->b:Lcom/windmill/sdk/common/t;

    .line 79
    .line 80
    invoke-static {v0, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method
