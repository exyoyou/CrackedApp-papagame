.class public abstract Lcom/byazt/kt/RecyclerView$my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x958
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "my"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/RecyclerView$my$c;,
        Lcom/byazt/kt/RecyclerView$my$tt;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public c:I

.field public n:Z

.field public final sp:Lcom/byazt/kt/RecyclerView$my$c;

.field public tt:Lcom/byazt/kt/RecyclerView;

.field public uj:Z

.field public ve:Lcom/byazt/kt/RecyclerView$i;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/kt/RecyclerView$my$c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, v1}, Lcom/byazt/kt/RecyclerView$my$c;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView;->x(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public abstract c()V
.end method

.method public c(II)V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    .line 14
    iget-boolean v1, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->n()V

    .line 16
    :cond_1
    iget-boolean v1, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->ve:Lcom/byazt/kt/RecyclerView$i;

    if-eqz v1, :cond_3

    .line 17
    iget v1, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$my;->uj(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3

    .line 19
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/kt/RecyclerView;->c(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    .line 21
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$my;->c(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    if-ne v1, v3, :cond_4

    .line 23
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    iget-object v2, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    invoke-virtual {p0, v1, v2, v3}, Lcom/byazt/kt/RecyclerView$my;->c(Landroid/view/View;Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$my$c;)V

    .line 24
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/RecyclerView$my$c;->c(Lcom/byazt/kt/RecyclerView;)V

    .line 25
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->n()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    .line 26
    invoke-static {v1, v3}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object v2, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    .line 28
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    if-eqz v1, :cond_7

    .line 29
    iget-object v1, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/byazt/kt/RecyclerView$my;->c(IILcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$my$c;)V

    .line 30
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$my$c;->c()Z

    move-result p1

    .line 31
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$my;->sp:Lcom/byazt/kt/RecyclerView$my$c;

    invoke-virtual {p2, v0}, Lcom/byazt/kt/RecyclerView$my$c;->c(Lcom/byazt/kt/RecyclerView;)V

    if-eqz p1, :cond_7

    .line 32
    iget-boolean p1, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    .line 34
    iget-object p1, v0, Lcom/byazt/kt/RecyclerView;->yv:Lcom/byazt/kt/RecyclerView$qy;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$qy;->c()V

    return-void

    .line 35
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->n()V

    :cond_7
    return-void
.end method

.method public abstract c(IILcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$my$c;)V
.end method

.method public c(Landroid/graphics/PointF;)V
    .locals 2

    .line 37
    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 38
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 39
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public abstract c(Landroid/view/View;Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$my$c;)V
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$i;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->x:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    .line 4
    iput-object p2, p0, Lcom/byazt/kt/RecyclerView$my;->ve:Lcom/byazt/kt/RecyclerView$i;

    .line 5
    iget p2, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 6
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iput p2, p1, Lcom/byazt/kt/RecyclerView$gt;->c:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    .line 8
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    .line 9
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->x()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/byazt/kt/RecyclerView$my;->n(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    .line 10
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    iget-object p2, p2, Lcom/byazt/kt/RecyclerView;->yv:Lcom/byazt/kt/RecyclerView$qy;

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$qy;->c()V

    .line 11
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$my;->x:Z

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->yp:Lcom/byazt/kt/RecyclerView$i;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public n(I)Landroid/view/View;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->yp:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$i;->tt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->c()V

    .line 4
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    const/4 v2, -0x1

    iput v2, v1, Lcom/byazt/kt/RecyclerView$gt;->c:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    .line 6
    iput v2, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    .line 7
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->uj:Z

    .line 8
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->ve:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0, p0}, Lcom/byazt/kt/RecyclerView$i;->tt(Lcom/byazt/kt/RecyclerView$my;)V

    .line 9
    iput-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->ve:Lcom/byazt/kt/RecyclerView$i;

    .line 10
    iput-object v1, p0, Lcom/byazt/kt/RecyclerView$my;->tt:Lcom/byazt/kt/RecyclerView;

    :cond_0
    return-void
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$my;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$my;->c(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->x()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$my;->a:Landroid/view/View;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public uj(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$my;->uj()Lcom/byazt/kt/RecyclerView$i;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/byazt/kt/RecyclerView$my$tt;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/byazt/kt/RecyclerView$my$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/RecyclerView$my$tt;->ve(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/byazt/kt/RecyclerView$my$tt;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public uj()Lcom/byazt/kt/RecyclerView$i;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$my;->ve:Lcom/byazt/kt/RecyclerView$i;

    return-object v0
.end method

.method public ve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/RecyclerView$my;->c:I

    .line 2
    .line 3
    return v0
.end method
