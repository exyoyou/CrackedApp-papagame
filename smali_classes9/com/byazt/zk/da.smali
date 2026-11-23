.class public Lcom/byazt/zk/da;
.super Lcom/byazt/zk/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x48
    }
.end annotation


# instance fields
.field public final sp:Lcom/byazt/zy/uj;

.field public final x:Lcom/byazt/zk/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Lcom/byazt/zk/uj;Lcom/byazt/ga/a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/zk/ve;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/byazt/zk/da;->x:Lcom/byazt/zk/uj;

    .line 5
    .line 6
    new-instance p3, Lcom/byazt/jx/m;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/byazt/zk/x;->yp()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "__container"

    .line 14
    .line 15
    invoke-direct {p3, v1, p2, v0}, Lcom/byazt/jx/m;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/byazt/zy/uj;

    .line 19
    .line 20
    invoke-direct {p2, p1, p0, p3, p4}, Lcom/byazt/zy/uj;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/m;Lcom/byazt/ga/a;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/byazt/zk/da;->sp:Lcom/byazt/zy/uj;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, p1, p3}, Lcom/byazt/zy/uj;->c(Ljava/util/List;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/byazt/zk/da;->sp:Lcom/byazt/zy/uj;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0, p3}, Lcom/byazt/zy/uj;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t()Lcom/byazt/jx/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zk/ve;->t()Lcom/byazt/jx/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/da;->x:Lcom/byazt/zk/uj;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->t()Lcom/byazt/jx/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/zk/da;->sp:Lcom/byazt/zy/uj;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/zy/uj;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u()Lcom/byazt/fs/da;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/zk/ve;->u()Lcom/byazt/fs/da;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/da;->x:Lcom/byazt/zk/uj;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->u()Lcom/byazt/fs/da;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
