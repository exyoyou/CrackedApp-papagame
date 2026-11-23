.class Lcom/windmill/sdk/common/j$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/WindMillAdRequest;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$17;->a:Lcom/windmill/sdk/WindMillAdRequest;

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

    .line 34
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/windmill/sdk/common/l;->f:Z

    .line 35
    invoke-static {p2}, Lcom/windmill/sdk/common/j;->f(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/strategy/s$b;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {p2, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    iget-boolean v1, p2, Lcom/windmill/sdk/common/l;->j:Z

    if-eqz v1, :cond_1

    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/windmill/sdk/common/j;->c()V

    .line 39
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->a:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2, p3, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/util/List;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 40
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {p2, p1, v0, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

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

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----adapterLoadPassFilter--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;)Z

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

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----adapterLoadNoPassFilter--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/windmill/sdk/common/j;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/l$a;)V
    .locals 1
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
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v0, p2}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/l$a;)Lcom/windmill/sdk/strategy/l$a;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v0}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---adapterPreloadAd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;Z)V

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

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----adapterLoadBiddingParameter--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V

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

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----adapterLoadBiddingPrice--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v0, p2}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 8
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V
    .locals 6
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

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onStrategySuccess--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 23
    iput-object p1, v0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 24
    iput-object p2, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 25
    iget p1, p2, Lcom/windmill/sdk/strategy/q;->h:I

    const-wide/16 v2, -0x1

    const/16 v4, 0xbb8

    if-gez p1, :cond_0

    .line 26
    invoke-static {v0, v2, v3}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;J)J

    .line 27
    iget-object p1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget p2, p2, Lcom/windmill/sdk/strategy/q;->u:I

    if-nez p2, :cond_1

    const/4 v5, 0x5

    if-gt p1, v5, :cond_2

    :cond_1
    if-ne p2, v1, :cond_4

    const/16 p2, 0x1388

    if-le p1, p2, :cond_4

    .line 29
    :cond_2
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->e(Lcom/windmill/sdk/common/j;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {p1}, Lcom/windmill/sdk/common/j;->e(Lcom/windmill/sdk/common/j;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    iget-object v1, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget v1, v1, Lcom/windmill/sdk/strategy/q;->h:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    .line 30
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object p1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    invoke-static {p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    iget-object p2, p2, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget p2, p2, Lcom/windmill/sdk/strategy/q;->h:I

    int-to-long v0, p2

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    iget-object p2, p1, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget p2, p2, Lcom/windmill/sdk/strategy/q;->h:I

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;J)J

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x1388

    .line 33
    invoke-static {v0, p1, p2}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;J)J

    :goto_0
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/windmill/sdk/common/j;->d(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "-----adapterLoadPassFilterBackup--"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 56
    .line 57
    const/4 v1, 0x3

    .line 58
    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;ILcom/windmill/sdk/strategy/a;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/j$17;->b:Lcom/windmill/sdk/common/j;

    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method
