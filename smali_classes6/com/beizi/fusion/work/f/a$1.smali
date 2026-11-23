.class Lcom/beizi/fusion/work/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/v2/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/f/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/f/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/work/f/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->k(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->d(Lcom/beizi/fusion/work/f/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/f/a;->d(Lcom/beizi/fusion/work/f/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/f/a;->l(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->m(Lcom/beizi/fusion/work/f/a;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->n(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->o(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->p(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-virtual {v1}, Lcom/beizi/fusion/work/f/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->q(Lcom/beizi/fusion/work/f/a;)V

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->r(Lcom/beizi/fusion/work/f/a;)V

    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->s(Lcom/beizi/fusion/work/f/a;)V

    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->t(Lcom/beizi/fusion/work/f/a;)V

    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->u(Lcom/beizi/fusion/work/f/a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBZUnifiedAd onAdFailedToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/work/f/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;Ljava/lang/String;I)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBZUnifiedAd onAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {v0, p1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 6
    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdResponse;->getEcpm()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdResponse;->getEcpm()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/ad/v2/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;Z)Z

    .line 10
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/work/f/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/ad/v2/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/work/f/a;J)J

    .line 12
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->c(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->d(Lcom/beizi/fusion/work/f/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->d(Lcom/beizi/fusion/work/f/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->e(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->f(Lcom/beizi/fusion/work/f/a;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->g(Lcom/beizi/fusion/work/f/a;)V

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->h(Lcom/beizi/fusion/work/f/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->i(Lcom/beizi/fusion/work/f/a;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/f/a;->j(Lcom/beizi/fusion/work/f/a;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->v(Lcom/beizi/fusion/work/f/a;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a$1;->a:Lcom/beizi/fusion/work/f/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/fusion/work/f/a;->w(Lcom/beizi/fusion/work/f/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
