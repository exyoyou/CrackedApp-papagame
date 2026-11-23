.class Lcom/windmill/sdk/common/p$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/p;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/p;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/p;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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

    .line 27
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/windmill/sdk/common/l;->f:Z

    .line 28
    invoke-static {p2}, Lcom/windmill/sdk/common/p;->c(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/strategy/s$b;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 29
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-static {p2, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v1, p2, Lcom/windmill/sdk/common/l;->j:Z

    if-eqz v1, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Lcom/windmill/sdk/common/p;->c()V

    .line 32
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-object v1, p2, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2, p3, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/util/List;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 33
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-static {p2, p1, v0, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 14
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----WMSController--adapterLoadPassFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-object v2, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1, v2, p1, v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 22
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 23
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 2
    invoke-static {v0, p2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/l$a;)Lcom/windmill/sdk/strategy/l$a;

    .line 3
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Z)V

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V

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
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    iget-boolean v1, v0, Lcom/windmill/sdk/common/l;->c:Z

    iput-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 7
    invoke-static {v0, p2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;

    .line 8
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    invoke-virtual {p2, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;ILcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Z)V

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

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 25
    iput-object p1, v0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 26
    iput-object p2, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    return-void
.end method

.method public b(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->c:Z

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->l:Z

    .line 6
    .line 7
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "------------adapterLoadPassFilterBackup------------"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/strategy/a;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;ILcom/windmill/sdk/strategy/a;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p$7;->a:Lcom/windmill/sdk/common/p;

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method
