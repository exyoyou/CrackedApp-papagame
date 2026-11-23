.class public Lcom/byazt/nw/BaseSwiper$tt;
.super Landroid/widget/Scroller;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x355,
        0x356
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nw/BaseSwiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tt"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nw/BaseSwiper;


# direct methods
.method public constructor <init>(Lcom/byazt/nw/BaseSwiper;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nw/BaseSwiper$tt;->c:Lcom/byazt/nw/BaseSwiper;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/byazt/nw/BaseSwiper$tt;->c:Lcom/byazt/nw/BaseSwiper;

    invoke-static {v0}, Lcom/byazt/nw/BaseSwiper;->x(Lcom/byazt/nw/BaseSwiper;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 1
    iget-object p5, p0, Lcom/byazt/nw/BaseSwiper$tt;->c:Lcom/byazt/nw/BaseSwiper;

    invoke-static {p5}, Lcom/byazt/nw/BaseSwiper;->x(Lcom/byazt/nw/BaseSwiper;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
