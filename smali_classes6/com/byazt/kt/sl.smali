.class public abstract Lcom/byazt/kt/sl;
.super Lcom/byazt/kt/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x9e
    }
.end annotation


# instance fields
.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kt/sl;->x:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c(Lcom/byazt/kt/RecyclerView$gu;Z)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$a;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    return-void
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;)Z
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;IIII)Z
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
    .locals 6

    .line 1
    iget v2, p2, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 2
    iget v3, p2, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 3
    iget-object p2, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    :goto_1
    move v5, p3

    .line 6
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-ne v3, v5, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;IIII)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result p1

    return p1
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$gu;IIII)Z
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
    .locals 7

    .line 10
    iget v3, p3, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 11
    iget v4, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 12
    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget p4, p3, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 14
    iget p3, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 15
    :cond_0
    iget p3, p4, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 16
    iget p4, p4, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$gu;IIII)Z

    move-result p1

    return p1
.end method

.method public final da(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$a;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$a;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sp(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/sl;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public abstract tt(Lcom/byazt/kt/RecyclerView$gu;)Z
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
    .locals 6

    if-eqz p2, :cond_1

    .line 1
    iget v2, p2, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    iget v4, p3, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    if-ne v2, v4, :cond_0

    iget v0, p2, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    iget v1, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p2, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    iget v5, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;IIII)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/kt/sl;->tt(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result p1

    return p1
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
    .locals 6

    .line 1
    iget v2, p2, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 2
    .line 3
    iget v4, p3, Lcom/byazt/kt/RecyclerView$a$tt;->c:I

    .line 4
    .line 5
    if-ne v2, v4, :cond_0

    .line 6
    .line 7
    iget v0, p2, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 8
    .line 9
    iget v1, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/kt/sl;->i(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget v3, p2, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 19
    .line 20
    iget v5, p3, Lcom/byazt/kt/RecyclerView$a$tt;->tt:I

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kt/sl;->c(Lcom/byazt/kt/RecyclerView$gu;IIII)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final x(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$a;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
