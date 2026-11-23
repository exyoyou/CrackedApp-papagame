.class public Lcom/byazt/nm/t$c$1$3;
.super Lcom/byazt/vw/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x40d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/t$c$1;->c(Lcom/byazt/nc/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/t$c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/vw/tt;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashCardClick"

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->gu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/zq/n;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/zq/n;->l_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new api onSplashCardReadyToShow csjSplashAd.getSplashCardView()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/nc/tt;->getSplashCardView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->rl(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/n;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->qy(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/n;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/zq/n;->c()V

    :cond_2
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "new api onSplashCardClose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/nm/t$c;->gr(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/byazt/zq/n;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/t$c$1$3;->c:Lcom/byazt/nm/t$c$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/byazt/zq/n;->k_()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
