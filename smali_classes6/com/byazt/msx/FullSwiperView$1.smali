.class public Lcom/byazt/msx/FullSwiperView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nw/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x156
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/msx/FullSwiperView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/msx/FullSwiperView;


# direct methods
.method public constructor <init>(Lcom/byazt/msx/FullSwiperView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ZIFI)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(ZIIZZ)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->c(Lcom/byazt/msx/FullSwiperView;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    if-ne p2, p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/byazt/msx/FullSwiperView;->c(Lcom/byazt/msx/FullSwiperView;Z)Z

    .line 5
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1, p2}, Lcom/byazt/msx/FullSwiperView;->c(Lcom/byazt/msx/FullSwiperView;I)I

    .line 6
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1, p2}, Lcom/byazt/msx/FullSwiperView;->tt(Lcom/byazt/msx/FullSwiperView;I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p5, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p5}, Lcom/byazt/msx/FullSwiperView;->tt(Lcom/byazt/msx/FullSwiperView;)I

    move-result p5

    if-eqz p5, :cond_1

    .line 8
    invoke-virtual {p1, p4}, Lcom/byazt/msx/FullSwiperItemView;->tt(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    add-int/lit8 p5, p2, -0x1

    invoke-static {p1, p5}, Lcom/byazt/msx/FullSwiperView;->tt(Lcom/byazt/msx/FullSwiperView;I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/byazt/msx/FullSwiperItemView;->z()V

    .line 11
    invoke-virtual {p1}, Lcom/byazt/msx/FullSwiperItemView;->nu()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    add-int/lit8 p5, p2, 0x1

    invoke-static {p1, p5}, Lcom/byazt/msx/FullSwiperView;->ve(Lcom/byazt/msx/FullSwiperView;I)V

    .line 13
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->ve(Lcom/byazt/msx/FullSwiperView;)Z

    move-result p1

    if-nez p1, :cond_3

    if-lez p2, :cond_3

    .line 14
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1, p3}, Lcom/byazt/msx/FullSwiperView;->tt(Lcom/byazt/msx/FullSwiperView;Z)Z

    .line 15
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->uj(Lcom/byazt/msx/FullSwiperView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/dl/uj;->tt(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->n(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_4

    return-void

    .line 17
    :cond_4
    iget-object p5, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p5}, Lcom/byazt/msx/FullSwiperView;->a(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    sub-int/2addr p5, p3

    if-ne p2, p5, :cond_5

    return-void

    .line 18
    :cond_5
    iget-object p5, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p5}, Lcom/byazt/msx/FullSwiperView;->sp(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;

    move-result-object p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p5, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    invoke-static {p4}, Lcom/byazt/ete/or;->tt(Z)I

    move-result p2

    div-int/lit16 p5, p1, 0x3e8

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 20
    invoke-static {p4}, Lcom/byazt/ete/or;->tt(Z)I

    move-result v0

    sub-int/2addr p5, v0

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    if-lez p2, :cond_6

    .line 21
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->x(Lcom/byazt/msx/FullSwiperView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    iget-object p1, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p1}, Lcom/byazt/msx/FullSwiperView;->i(Lcom/byazt/msx/FullSwiperView;)Lcom/byazt/lcf/TTBaseVideoActivity;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2, p5}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(III)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/byazt/ete/or;->yp()I

    move-result p2

    if-ne p2, p3, :cond_7

    .line 24
    iget-object p2, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-virtual {p2, p1}, Lcom/byazt/msx/FullSwiperView;->c(I)V

    return-void

    .line 25
    :cond_7
    iget-object p2, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-static {p2}, Lcom/byazt/msx/FullSwiperView;->x(Lcom/byazt/msx/FullSwiperView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_8

    .line 26
    iget-object p2, p0, Lcom/byazt/msx/FullSwiperView$1;->c:Lcom/byazt/msx/FullSwiperView;

    invoke-virtual {p2, p1}, Lcom/byazt/msx/FullSwiperView;->c(I)V

    :cond_8
    return-void
.end method
