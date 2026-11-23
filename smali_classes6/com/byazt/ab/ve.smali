.class public Lcom/byazt/ab/ve;
.super Lcom/byazt/zd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x36
    }
.end annotation


# instance fields
.field public qp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/zd/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/byazt/ab/ve;->qp:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->c(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/zd/c;->a(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/byazt/ab/ve;->qp:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/zd/c;->n()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zd/c;->tt()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public gr()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/zd/c;->aw()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public gu()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public p_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ab/ve;->qp:Z

    .line 2
    .line 3
    return-void
.end method
