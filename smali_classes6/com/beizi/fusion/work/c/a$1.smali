.class Lcom/beizi/fusion/work/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

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

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiNativeUnifiedAd onAdFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/beizi/ad/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/beizi/fusion/work/c/a;->R:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;Z)Z

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;J)J

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 9
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->d(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->e(Lcom/beizi/fusion/work/c/a;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iget-object v1, v0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;D)V
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
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->f(Lcom/beizi/fusion/work/c/a;)V

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    const/16 v0, -0x3df

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;I)V

    return-void

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$1;->a:Lcom/beizi/fusion/work/c/a;

    iput-object p1, v0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/work/c/a;->b()V

    return-void
.end method
