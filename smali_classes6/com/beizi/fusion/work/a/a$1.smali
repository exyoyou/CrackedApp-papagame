.class Lcom/beizi/fusion/work/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/a/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiNativeUnifiedAd onAdFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/beizi/ad/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Z)Z

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;J)J

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->c(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->d(Lcom/beizi/fusion/work/a/a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->d(Lcom/beizi/fusion/work/a/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->e(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->f(Lcom/beizi/fusion/work/a/a;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->g(Lcom/beizi/fusion/work/a/a;)V

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    const/16 v0, -0x3df

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 16
    invoke-interface {p1, v0}, Lcom/beizi/ad/e;->a(I)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {v0, p1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/ad/e;)Lcom/beizi/ad/e;

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/beizi/ad/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-virtual {p1}, Lcom/beizi/ad/lance/ApkBean;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/beizi/ad/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$1;->a:Lcom/beizi/fusion/work/a/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->j(Lcom/beizi/fusion/work/a/a;)V

    return-void
.end method
