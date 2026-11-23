.class public Lcom/byazt/kt/RecyclerView$i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kt/u$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x19c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kt/RecyclerView$i;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 4
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->x(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public tt()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public tt(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 3
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i$2;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->da(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method
