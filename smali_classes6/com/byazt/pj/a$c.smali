.class public Lcom/byazt/pj/a$c;
.super Lcom/byazt/kt/RecyclerView$x;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pj/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/pj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$x;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/pj/a$c;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public P_()V
    .locals 0

    return-void
.end method

.method public Q_()V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/Rect;Landroid/view/View;Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$gt;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/kt/RecyclerView$x;->c(Landroid/graphics/Rect;Landroid/view/View;Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$gt;)V

    .line 2
    .line 3
    .line 4
    iget p4, p0, Lcom/byazt/pj/a$c;->c:I

    .line 5
    .line 6
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Lcom/byazt/kt/RecyclerView;->a(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget p2, p0, Lcom/byazt/pj/a$c;->c:I

    .line 19
    .line 20
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public ve()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
