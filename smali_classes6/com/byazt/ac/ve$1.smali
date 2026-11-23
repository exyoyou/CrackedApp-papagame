.class public Lcom/byazt/ac/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ac/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/fcd/x;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/ve;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {p1}, Lcom/byazt/ac/ve;->c(Lcom/byazt/ac/ve;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-virtual {p1}, Lcom/byazt/ac/c;->qy()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/byazt/ac/ve;->c(I)V

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {p1}, Lcom/byazt/ac/ve;->tt(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$c;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {p1}, Lcom/byazt/ac/ve;->tt(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/kcl/tt$c;->c()V

    :cond_4
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 9
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ka()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {p1, p2}, Lcom/byazt/ac/ve;->c(Lcom/byazt/ac/ve;I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    const/16 p3, 0x65

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    iget-object p1, p1, Lcom/byazt/ac/ve;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/byazt/ac/ve;->h:J

    .line 15
    iget-object p1, p0, Lcom/byazt/ac/ve$1;->c:Lcom/byazt/ac/ve;

    invoke-static {p1}, Lcom/byazt/ac/ve;->ve(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/kcl/tt$tt;->c()V

    :cond_3
    return-void
.end method
