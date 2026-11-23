.class public abstract Lcom/byazt/zy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zy/n;
.implements Lcom/byazt/zy/sl;
.implements Lcom/byazt/dg/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a2,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zy/c$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final c:Lcom/byazt/zk/ve;

.field public final da:[F

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zy/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/graphics/Path;

.field public nu:Lcom/byazt/dg/ve;

.field public final sl:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Landroid/graphics/RectF;

.field public final t:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Landroid/graphics/Paint;

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/dg/c<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uj:Landroid/graphics/PathMeasure;

.field public ve:F

.field public final x:Lcom/byazt/ga/x;

.field public final yp:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/byazt/kd/uj;Lcom/byazt/kd/tt;Ljava/util/List;Lcom/byazt/kd/tt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ga/x;",
            "Lcom/byazt/zk/ve;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/byazt/kd/uj;",
            "Lcom/byazt/kd/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;",
            "Lcom/byazt/kd/tt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c;->sp:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/byazt/xg/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/byazt/xg/c;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/byazt/zy/c;->ve:F

    .line 9
    iput-object p1, p0, Lcom/byazt/zy/c;->x:Lcom/byazt/ga/x;

    .line 10
    iput-object p2, p0, Lcom/byazt/zy/c;->c:Lcom/byazt/zk/ve;

    .line 11
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 14
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 15
    invoke-virtual {p6}, Lcom/byazt/kd/uj;->c()Lcom/byazt/dg/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/zy/c;->t:Lcom/byazt/dg/c;

    .line 16
    invoke-virtual {p7}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/zy/c;->sl:Lcom/byazt/dg/c;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/byazt/zy/c;->yp:Lcom/byazt/dg/c;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p9}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/zy/c;->yp:Lcom/byazt/dg/c;

    .line 19
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    .line 20
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/byazt/zy/c;->da:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 21
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 22
    iget-object p4, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/byazt/kd/tt;

    invoke-virtual {p5}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iget-object p3, p0, Lcom/byazt/zy/c;->t:Lcom/byazt/dg/c;

    invoke-virtual {p2, p3}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 24
    iget-object p3, p0, Lcom/byazt/zy/c;->sl:Lcom/byazt/dg/c;

    invoke-virtual {p2, p3}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    const/4 p3, 0x0

    .line 25
    :goto_2
    iget-object p4, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 26
    iget-object p4, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/dg/c;

    invoke-virtual {p2, p4}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 27
    :cond_2
    iget-object p3, p0, Lcom/byazt/zy/c;->yp:Lcom/byazt/dg/c;

    if-eqz p3, :cond_3

    .line 28
    invoke-virtual {p2, p3}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 29
    :cond_3
    iget-object p3, p0, Lcom/byazt/zy/c;->t:Lcom/byazt/dg/c;

    invoke-virtual {p3, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 30
    iget-object p3, p0, Lcom/byazt/zy/c;->sl:Lcom/byazt/dg/c;

    invoke-virtual {p3, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 31
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 32
    iget-object p3, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/dg/c;

    invoke-virtual {p3, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/byazt/zy/c;->yp:Lcom/byazt/dg/c;

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 35
    :cond_5
    invoke-virtual {p2}, Lcom/byazt/zk/ve;->t()Lcom/byazt/jx/c;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 36
    invoke-virtual {p2}, Lcom/byazt/zk/ve;->t()Lcom/byazt/jx/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/jx/c;->c()Lcom/byazt/kd/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/zy/c;->m:Lcom/byazt/dg/c;

    .line 37
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 38
    iget-object p1, p0, Lcom/byazt/zy/c;->m:Lcom/byazt/dg/c;

    invoke-virtual {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 39
    :cond_6
    invoke-virtual {p2}, Lcom/byazt/zk/ve;->u()Lcom/byazt/fs/da;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 40
    new-instance p1, Lcom/byazt/dg/ve;

    invoke-virtual {p2}, Lcom/byazt/zk/ve;->u()Lcom/byazt/fs/da;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/byazt/dg/ve;-><init>(Lcom/byazt/dg/c$c;Lcom/byazt/zk/ve;Lcom/byazt/fs/da;)V

    iput-object p1, p0, Lcom/byazt/zy/c;->nu:Lcom/byazt/dg/ve;

    :cond_7
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Lcom/byazt/zy/c$c;Landroid/graphics/Matrix;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "StrokeContent#applyTrimPath"

    .line 51
    invoke-static {v3}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 52
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;

    move-result-object v4

    if-nez v4, :cond_0

    .line 53
    invoke-static {v3}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void

    .line 54
    :cond_0
    iget-object v4, v0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 55
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    .line 56
    iget-object v5, v0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/zy/u;

    invoke-interface {v6}, Lcom/byazt/zy/u;->uj()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/zy/rl;->tt()Lcom/byazt/dg/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 58
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/zy/rl;->ve()Lcom/byazt/dg/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v6, v5

    .line 59
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/zy/rl;->uj()Lcom/byazt/dg/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    const v7, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    .line 60
    iget-object v2, v0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 61
    invoke-static {v3}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void

    .line 62
    :cond_2
    iget-object v7, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    iget-object v8, v0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 63
    iget-object v7, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 64
    :goto_1
    iget-object v8, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    iget-object v8, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_1

    :cond_3
    mul-float v5, v5, v7

    mul-float v4, v4, v7

    add-float/2addr v4, v5

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    add-float v5, v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    .line 66
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 67
    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ltz v6, :cond_a

    .line 68
    iget-object v12, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/byazt/zy/u;

    invoke-interface {v13}, Lcom/byazt/zy/u;->uj()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 69
    iget-object v12, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 70
    iget-object v12, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    iget-object v13, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 71
    iget-object v12, v0, Lcom/byazt/zy/c;->uj:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    cmpl-float v13, v5, v7

    if-lez v13, :cond_5

    sub-float v13, v5, v7

    add-float v14, v11, v12

    cmpg-float v14, v13, v14

    if-gez v14, :cond_5

    cmpg-float v14, v11, v13

    if-gez v14, :cond_5

    cmpl-float v14, v4, v7

    if-lez v14, :cond_4

    sub-float v14, v4, v7

    div-float/2addr v14, v12

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    div-float/2addr v13, v12

    .line 72
    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13

    goto :goto_5

    :cond_5
    add-float v13, v11, v12

    cmpg-float v14, v13, v4

    if-ltz v14, :cond_9

    cmpl-float v14, v11, v5

    if-gtz v14, :cond_9

    cmpg-float v14, v13, v5

    if-gtz v14, :cond_6

    cmpg-float v14, v4, v11

    if-gez v14, :cond_6

    .line 73
    iget-object v13, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    cmpg-float v14, v4, v11

    if-gez v14, :cond_7

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    sub-float v14, v4, v11

    div-float/2addr v14, v12

    :goto_4
    cmpl-float v13, v5, v13

    if-lez v13, :cond_8

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    sub-float v13, v5, v11

    div-float/2addr v13, v12

    .line 74
    :goto_5
    iget-object v15, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    invoke-static {v15, v14, v13, v10}, Lcom/byazt/kk/da;->c(Landroid/graphics/Path;FFF)V

    .line 75
    iget-object v13, v0, Lcom/byazt/zy/c;->a:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-float/2addr v11, v12

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 76
    :cond_a
    invoke-static {v3}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method private c(Landroid/graphics/Matrix;)V
    .locals 5

    const-string v0, "StrokeContent#applyDashPattern"

    .line 89
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/byazt/kk/da;->c(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v1, 0x0

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/byazt/zy/c;->da:[F

    iget-object v3, p0, Lcom/byazt/zy/c;->u:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dg/c;

    invoke-virtual {v3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 95
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/byazt/zy/c;->da:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 97
    aput v4, v2, v1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/byazt/zy/c;->da:[F

    aget v3, v2, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 99
    aput v4, v2, v1

    .line 100
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/byazt/zy/c;->da:[F

    aget v3, v2, v1

    mul-float v3, v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/byazt/zy/c;->yp:Lcom/byazt/dg/c;

    if-nez v1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float p1, p1, v1

    .line 102
    :goto_2
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lcom/byazt/zy/c;->da:[F

    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 103
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zy/c;->x:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->invalidateSelf()V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "StrokeContent#draw"

    .line 18
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 19
    invoke-static {p2}, Lcom/byazt/kk/da;->tt(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void

    :cond_0
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 21
    iget-object v2, p0, Lcom/byazt/zy/c;->t:Lcom/byazt/dg/c;

    check-cast v2, Lcom/byazt/dg/a;

    invoke-virtual {v2}, Lcom/byazt/dg/a;->i()I

    move-result v2

    int-to-float v2, v2

    mul-float p3, p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 22
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lcom/byazt/kk/i;->c(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    iget-object p3, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/byazt/zy/c;->sl:Lcom/byazt/dg/c;

    check-cast v1, Lcom/byazt/dg/uj;

    invoke-virtual {v1}, Lcom/byazt/dg/uj;->i()F

    move-result v1

    invoke-static {p2}, Lcom/byazt/kk/da;->c(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object p3, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    .line 25
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void

    .line 26
    :cond_1
    invoke-direct {p0, p2}, Lcom/byazt/zy/c;->c(Landroid/graphics/Matrix;)V

    .line 27
    iget-object p3, p0, Lcom/byazt/zy/c;->z:Lcom/byazt/dg/c;

    if-eqz p3, :cond_2

    .line 28
    iget-object v2, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 29
    :cond_2
    iget-object p3, p0, Lcom/byazt/zy/c;->m:Lcom/byazt/dg/c;

    if-eqz p3, :cond_5

    .line 30
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float v1, p3, v1

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 32
    :cond_3
    iget v1, p0, Lcom/byazt/zy/c;->ve:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_4

    .line 33
    iget-object v1, p0, Lcom/byazt/zy/c;->c:Lcom/byazt/zk/ve;

    invoke-virtual {v1, p3}, Lcom/byazt/zk/ve;->tt(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 35
    :cond_4
    :goto_0
    iput p3, p0, Lcom/byazt/zy/c;->ve:F

    .line 36
    :cond_5
    iget-object p3, p0, Lcom/byazt/zy/c;->nu:Lcom/byazt/dg/ve;

    if-eqz p3, :cond_6

    .line 37
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lcom/byazt/dg/ve;->c(Landroid/graphics/Paint;)V

    .line 38
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_9

    .line 39
    iget-object p3, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/zy/c$c;

    .line 40
    invoke-static {p3}, Lcom/byazt/zy/c$c;->tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 41
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/zy/c;->c(Landroid/graphics/Canvas;Lcom/byazt/zy/c$c;Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_7
    const-string v1, "StrokeContent#buildPath"

    .line 42
    invoke-static {v1}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 44
    invoke-static {p3}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 45
    iget-object v4, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-static {p3}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/zy/u;

    invoke-interface {v5}, Lcom/byazt/zy/u;->uj()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 46
    :cond_8
    invoke-static {v1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    .line 47
    invoke-static {p3}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49
    invoke-static {p3}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_9
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    const-string p3, "StrokeContent#getBounds"

    .line 77
    invoke-static {p3}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/zy/c$c;

    const/4 v3, 0x0

    .line 81
    :goto_1
    invoke-static {v2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 82
    iget-object v4, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/zy/u;

    invoke-interface {v5}, Lcom/byazt/zy/u;->uj()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/byazt/zy/c;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/byazt/zy/c;->sp:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 84
    iget-object p2, p0, Lcom/byazt/zy/c;->sl:Lcom/byazt/dg/c;

    check-cast p2, Lcom/byazt/dg/uj;

    invoke-virtual {p2}, Lcom/byazt/dg/uj;->i()F

    move-result p2

    .line 85
    iget-object v0, p0, Lcom/byazt/zy/c;->sp:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object p2, p0, Lcom/byazt/zy/c;->sp:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 87
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    invoke-static {p3}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zy/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/zy/ve;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/zy/ve;

    .line 4
    instance-of v4, v3, Lcom/byazt/zy/rl;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/byazt/zy/rl;

    .line 5
    invoke-virtual {v3}, Lcom/byazt/zy/rl;->getType()Lcom/byazt/jx/my$c;

    move-result-object v4

    sget-object v5, Lcom/byazt/jx/my$c;->tt:Lcom/byazt/jx/my$c;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2, p0}, Lcom/byazt/zy/rl;->c(Lcom/byazt/dg/c$c;)V

    .line 7
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/zy/ve;

    .line 9
    instance-of v4, v3, Lcom/byazt/zy/rl;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/byazt/zy/rl;

    .line 10
    invoke-virtual {v4}, Lcom/byazt/zy/rl;->getType()Lcom/byazt/jx/my$c;

    move-result-object v5

    sget-object v6, Lcom/byazt/jx/my$c;->tt:Lcom/byazt/jx/my$c;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    .line 11
    iget-object v3, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v0, Lcom/byazt/zy/c$c;

    invoke-direct {v0, v4, v1}, Lcom/byazt/zy/c$c;-><init>(Lcom/byazt/zy/rl;Lcom/byazt/zy/c$1;)V

    .line 13
    invoke-virtual {v4, p0}, Lcom/byazt/zy/rl;->c(Lcom/byazt/dg/c$c;)V

    goto :goto_2

    .line 14
    :cond_4
    instance-of v4, v3, Lcom/byazt/zy/u;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 15
    new-instance v0, Lcom/byazt/zy/c$c;

    invoke-direct {v0, v2, v1}, Lcom/byazt/zy/c$c;-><init>(Lcom/byazt/zy/rl;Lcom/byazt/zy/c$1;)V

    .line 16
    :cond_5
    invoke-static {v0}, Lcom/byazt/zy/c$c;->c(Lcom/byazt/zy/c$c;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lcom/byazt/zy/u;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 17
    iget-object p1, p0, Lcom/byazt/zy/c;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
