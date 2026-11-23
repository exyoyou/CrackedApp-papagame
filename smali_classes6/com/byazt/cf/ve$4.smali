.class public Lcom/byazt/cf/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic n:Lcom/byazt/cf/uj;

.field public final synthetic sp:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Lcom/byazt/rob/uj;

.field public final synthetic ve:Lcom/byazt/ete/bm;

.field public final synthetic x:Lcom/byazt/cf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/ve;Ljava/util/concurrent/atomic/AtomicReference;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/rob/uj;Lcom/byazt/cf/uj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/ve$4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cf/ve$4;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/cf/ve$4;->ve:Lcom/byazt/ete/bm;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/cf/ve$4;->uj:Lcom/byazt/rob/uj;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/cf/ve$4;->n:Lcom/byazt/cf/uj;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/cf/ve$4;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/byazt/cf/ve$4;->sp:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    iget-object v1, p0, Lcom/byazt/cf/ve$4;->sp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->ve:Lcom/byazt/ete/bm;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/byazt/ete/bm;->c(Ljava/lang/Object;I)V

    .line 22
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    iget-object v1, p0, Lcom/byazt/cf/ve$4;->sp:Ljava/lang/String;

    new-instance v4, Lcom/byazt/lq/ve;

    invoke-direct {v4, p1, p2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 23
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->n:Lcom/byazt/cf/uj;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/byazt/cf/uj;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    invoke-virtual {v2}, Lcom/byazt/cf/ve;->tt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/wi/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/byazt/wi/a;->tt(Ljava/lang/String;J)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->n:Lcom/byazt/cf/uj;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/cf/uj;->tt(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Object;ZLcom/byazt/ete/ic;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/cf/ve$4;->tt:Lcom/byazt/dj/tt;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    invoke-static {v0}, Lcom/byazt/cf/ve;->c(Lcom/byazt/cf/ve;)Lcom/byazt/lh/tt;

    move-result-object v0

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ip/uj;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/cf/ve$4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/byazt/cf/ve$4;->ve:Lcom/byazt/ete/bm;

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/byazt/ete/bm;->c(Ljava/lang/Object;I)V

    .line 7
    iget-object p2, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    invoke-virtual {p2, p1}, Lcom/byazt/cf/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/cf/ve$4;->uj:Lcom/byazt/rob/uj;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/byazt/rob/uj;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/byazt/cf/ve$4;->uj:Lcom/byazt/rob/uj;

    invoke-virtual {p2, p3}, Lcom/byazt/rob/uj;->tt(Lcom/byazt/ete/ic;)V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/byazt/cf/ve$4;->n:Lcom/byazt/cf/uj;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/byazt/cf/uj;->c(Ljava/lang/Object;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 12
    iget-object p1, p0, Lcom/byazt/cf/ve$4;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/byazt/cf/ve$4;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/byazt/ete/ic;->c(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/cf/ve$4;->x:Lcom/byazt/cf/ve;

    invoke-virtual {p1}, Lcom/byazt/cf/ve;->tt()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
