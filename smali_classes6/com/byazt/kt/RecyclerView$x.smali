.class public abstract Lcom/byazt/kt/RecyclerView$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x407
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "x"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Rect;ILcom/byazt/kt/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public c(Landroid/graphics/Rect;Landroid/view/View;Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$gt;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/byazt/kt/RecyclerView$da;

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$da;->uj()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView$x;->c(Landroid/graphics/Rect;ILcom/byazt/kt/RecyclerView;)V

    return-void
.end method
