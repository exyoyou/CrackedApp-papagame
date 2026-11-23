.class Lcom/beizi/fusion/work/splash/a$1;
.super Lcom/beizi/ad/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/ad/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a$1;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v4}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beizi/fusion/c/e;->z()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->c(Lcom/beizi/fusion/work/splash/a;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiSplash onAdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->k()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;I)I

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->e(Lcom/beizi/fusion/work/splash/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;J)J

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->f(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->g(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->g(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 19
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->h(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->i(Lcom/beizi/fusion/work/splash/a;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->j(Lcom/beizi/fusion/work/splash/a;)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->k(Lcom/beizi/fusion/work/splash/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->l(Lcom/beizi/fusion/work/splash/a;)V

    goto :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->m(Lcom/beizi/fusion/work/splash/a;)V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiSplash onAdFailedToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(J)V
    .locals 8

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a$1;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->V(Lcom/beizi/fusion/work/splash/a;)V

    .line 29
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a$1;->a:Z

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->W(Lcom/beizi/fusion/work/splash/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->X(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->X(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->Y(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->Z(Lcom/beizi/fusion/work/splash/a;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aa(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aa(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ab(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    move-result-object v0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0, v2}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ab(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->X(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->Y(Lcom/beizi/fusion/work/splash/a;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ab(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ab(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/work/splash/a;I)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ac(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ad(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ae(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/c/e;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->e(Lcom/beizi/fusion/work/splash/a;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->n(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->g(Lcom/beizi/fusion/work/splash/a;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-lez v4, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->g(Lcom/beizi/fusion/work/splash/a;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->o(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->p(Lcom/beizi/fusion/work/splash/a;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->q(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->r(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x2

    .line 87
    if-eq v0, v1, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->s(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->t(Lcom/beizi/fusion/work/splash/a;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->u(Lcom/beizi/fusion/work/splash/a;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->v(Lcom/beizi/fusion/work/splash/a;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->w(Lcom/beizi/fusion/work/splash/a;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->x(Lcom/beizi/fusion/work/splash/a;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->y(Lcom/beizi/fusion/work/splash/a;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->z(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->A(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->B(Lcom/beizi/fusion/work/splash/a;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->C(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aq;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->C(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aq;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/aq;->c()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->D(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aj;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->D(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aj;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/aj;->a()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->E(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/am;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->E(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/am;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/am;->b()V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->F(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ak;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->F(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ak;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ak;->b()V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->G(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/s;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->G(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/s;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/s;->b()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->H(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ao;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->H(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ao;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ao;->b()V

    .line 129
    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->I(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/an;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->I(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/an;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/an;->b()V

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->J(Lcom/beizi/fusion/work/splash/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :goto_0
    return-void
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->K(Lcom/beizi/fusion/work/splash/a;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "uniteTime"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->L(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategy()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    if-lez v3, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v3, v4, :cond_1

    .line 46
    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;

    .line 52
    .line 53
    const-string v5, "290.300"

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getEventCode()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getRate()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    move v2, v1

    .line 78
    const/4 v1, 0x1

    .line 79
    goto :goto_3

    .line 80
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x1

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception v2

    .line 86
    move-object v3, v2

    .line 87
    const/4 v2, 0x1

    .line 88
    goto :goto_1

    .line 89
    :catch_1
    move-exception v2

    .line 90
    move-object v3, v2

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    move v1, v2

    .line 96
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 97
    :goto_3
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/beizi/fusion/work/splash/a;->M(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/beizi/fusion/work/splash/a;->O(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 114
    .line 115
    invoke-static {v4}, Lcom/beizi/fusion/work/splash/a;->N(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/beizi/fusion/work/splash/a;->P(Lcom/beizi/fusion/work/splash/a;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 132
    .line 133
    invoke-static {v3}, Lcom/beizi/fusion/work/splash/a;->Q(Lcom/beizi/fusion/work/splash/a;)V

    .line 134
    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    if-nez v2, :cond_4

    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 142
    .line 143
    invoke-static {v1, v0}, Lcom/beizi/fusion/work/splash/a;->c(Lcom/beizi/fusion/work/splash/a;Z)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->R(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->S(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->T(Lcom/beizi/fusion/work/splash/a;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$1;->b:Lcom/beizi/fusion/work/splash/a;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->U(Lcom/beizi/fusion/work/splash/a;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
