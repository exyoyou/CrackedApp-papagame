.class public Lcom/byazt/uo/SlideInterceptView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x8f5
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/uo/SlideInterceptView$c;,
        Lcom/byazt/uo/SlideInterceptView$tt;
    }
.end annotation


# instance fields
.field public a:F

.field public c:F

.field public final da:Lcom/byazt/dq/c;

.field public final i:Lcom/byazt/uo/SlideInterceptView$c;

.field public n:F

.field public final sl:Lcom/byazt/nr/d;

.field public sp:Z

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/uo/SlideInterceptView$tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:F

.field public uj:Landroid/view/MotionEvent;

.field public ve:J

.field public final x:Lcom/byazt/ete/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/s;Lcom/byazt/uo/SlideInterceptView$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/dq/c;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/byazt/dq/c;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->da:Lcom/byazt/dq/c;

    .line 13
    .line 14
    new-instance p1, Lcom/byazt/nr/d;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/byazt/nr/d;-><init>(Lcom/byazt/dna/qp$c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 31
    .line 32
    return-void
.end method

.method private c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;
    .locals 1

    .line 22
    new-instance p3, Lcom/byazt/ete/gr$c;

    invoke-direct {p3}, Lcom/byazt/ete/gr$c;-><init>()V

    .line 23
    iget v0, p0, Lcom/byazt/uo/SlideInterceptView;->c:F

    invoke-virtual {p3, v0}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    .line 24
    iget v0, p0, Lcom/byazt/uo/SlideInterceptView;->tt:F

    invoke-virtual {p3, v0}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    .line 25
    invoke-virtual {p3, p1}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    .line 26
    invoke-virtual {p3, p2}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    .line 27
    invoke-virtual {p3, p4}, Lcom/byazt/ete/gr$c;->c(B)Lcom/byazt/ete/gr$c;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p3, p1}, Lcom/byazt/ete/gr$c;->c(Z)Lcom/byazt/ete/gr$c;

    .line 29
    iget-wide p1, p0, Lcom/byazt/uo/SlideInterceptView;->ve:J

    invoke-virtual {p3, p1, p2}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    .line 31
    invoke-virtual {p3}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/uo/SlideInterceptView$tt;FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;
    .locals 1

    .line 32
    new-instance p4, Lcom/byazt/ete/gr$c;

    invoke-direct {p4}, Lcom/byazt/ete/gr$c;-><init>()V

    .line 33
    iget v0, p1, Lcom/byazt/uo/SlideInterceptView$tt;->c:F

    invoke-virtual {p4, v0}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    .line 34
    iget v0, p1, Lcom/byazt/uo/SlideInterceptView$tt;->tt:F

    invoke-virtual {p4, v0}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    .line 35
    invoke-virtual {p4, p2}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    .line 36
    invoke-virtual {p4, p3}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    const/4 p2, 0x1

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 37
    :goto_0
    invoke-virtual {p4, p2}, Lcom/byazt/ete/gr$c;->c(Z)Lcom/byazt/ete/gr$c;

    .line 38
    invoke-virtual {p4, p5}, Lcom/byazt/ete/gr$c;->c(B)Lcom/byazt/ete/gr$c;

    .line 39
    iget-wide p1, p1, Lcom/byazt/uo/SlideInterceptView$tt;->ve:J

    invoke-virtual {p4, p1, p2}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    .line 41
    invoke-virtual {p4}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/byazt/uo/SlideInterceptView$c;->c()Lcom/byazt/ouz/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->ve(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->tt(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/hkv/tt;->uj(I)V

    :cond_1
    return-void
.end method

.method private c(FFII)Z
    .locals 6

    .line 1
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, p3, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x8

    and-int/2addr p3, v5

    if-ne p3, v5, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    if-eqz v0, :cond_4

    neg-float v0, p2

    int-to-float v5, p4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    int-to-float v0, p4

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    return v2

    :cond_5
    if-eqz v4, :cond_6

    neg-float p2, p1

    int-to-float v0, p4

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    return v2

    :cond_6
    if-eqz p3, :cond_7

    int-to-float p2, p4

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method private c(FFJII)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p5, :cond_0

    return v0

    :cond_0
    int-to-long v1, p5

    cmp-long p5, p3, v1

    if-gez p5, :cond_1

    return v0

    .line 21
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p3, p6

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private c(Lcom/byazt/uo/SlideInterceptView$tt;FFJFFLandroid/view/MotionEvent;Z)Z
    .locals 11

    move-object v7, p0

    move-object v8, p1

    .line 7
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    invoke-virtual {v0}, Lcom/byazt/ete/s;->rh()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    invoke-virtual {v2}, Lcom/byazt/ete/s;->my()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 9
    iget-object v2, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    invoke-virtual {v2}, Lcom/byazt/ete/s;->gu()I

    move-result v5

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    invoke-virtual {v3}, Lcom/byazt/ete/s;->gr()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez p9, :cond_1

    .line 11
    iget-object v2, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    invoke-virtual {v2}, Lcom/byazt/ete/s;->qy()I

    move-result v2

    if-ne v2, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 12
    iget-boolean v2, v8, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    if-nez v2, :cond_3

    move v2, p2

    move v3, p3

    .line 13
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/byazt/uo/SlideInterceptView;->c(FFII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iput-boolean v10, v8, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 15
    iget-object v6, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/byazt/uo/SlideInterceptView;->c(Lcom/byazt/uo/SlideInterceptView$tt;FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    move-result-object v0

    invoke-interface {v6, p0, v0}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    :cond_2
    return v10

    :cond_3
    move v2, p2

    move v3, p3

    .line 17
    :cond_4
    iget-boolean v0, v8, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    if-nez v0, :cond_6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/byazt/uo/SlideInterceptView;->c(FFJII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iput-boolean v10, v8, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 19
    iget-object v6, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    if-eqz v6, :cond_5

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/byazt/uo/SlideInterceptView;->c(Lcom/byazt/uo/SlideInterceptView$tt;FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    move-result-object v0

    invoke-interface {v6, p0, v0}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    :cond_5
    return v10

    :cond_6
    return v9
.end method

.method private tt(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, v7, Lcom/byazt/uo/SlideInterceptView;->n:F

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, v7, Lcom/byazt/uo/SlideInterceptView;->a:F

    .line 24
    .line 25
    iput-object v8, v7, Lcom/byazt/uo/SlideInterceptView;->uj:Landroid/view/MotionEvent;

    .line 26
    .line 27
    iget v0, v7, Lcom/byazt/uo/SlideInterceptView;->c:F

    .line 28
    .line 29
    sub-float v1, v9, v0

    .line 30
    .line 31
    iget v0, v7, Lcom/byazt/uo/SlideInterceptView;->tt:F

    .line 32
    .line 33
    sub-float v2, v10, v0

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-wide v5, v7, Lcom/byazt/uo/SlideInterceptView;->ve:J

    .line 40
    .line 41
    sub-long/2addr v3, v5

    .line 42
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/byazt/ete/s;->rh()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v6, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/byazt/ete/s;->my()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    int-to-float v6, v6

    .line 59
    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget-object v6, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/byazt/ete/s;->gu()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    iget-object v12, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 74
    .line 75
    invoke-virtual {v12}, Lcom/byazt/ete/s;->gr()I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    int-to-float v12, v12

    .line 80
    invoke-static {v11, v12}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const/4 v13, 0x1

    .line 89
    if-eqz v12, :cond_6

    .line 90
    .line 91
    const/4 v14, 0x2

    .line 92
    if-eq v12, v13, :cond_3

    .line 93
    .line 94
    if-eq v12, v14, :cond_1

    .line 95
    .line 96
    const/4 v15, 0x3

    .line 97
    if-eq v12, v15, :cond_0

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    cmpl-float v15, v15, v16

    .line 112
    .line 113
    if-nez v15, :cond_3

    .line 114
    .line 115
    cmpl-float v12, v12, v16

    .line 116
    .line 117
    if-nez v12, :cond_3

    .line 118
    .line 119
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 120
    .line 121
    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_1
    iget-object v12, v7, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 127
    .line 128
    invoke-virtual {v12}, Lcom/byazt/ete/s;->qy()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-ne v12, v13, :cond_2

    .line 133
    .line 134
    invoke-direct {v7, v1, v2, v0, v5}, Lcom/byazt/uo/SlideInterceptView;->c(FFII)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 141
    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    iput-boolean v13, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 145
    .line 146
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    invoke-direct {v7, v9, v10, v8, v14}, Lcom/byazt/uo/SlideInterceptView;->c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v0, v7, v1}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_2
    move-object/from16 v0, p0

    .line 160
    .line 161
    move v5, v6

    .line 162
    move v6, v11

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/byazt/uo/SlideInterceptView;->c(FFJII)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 170
    .line 171
    if-nez v0, :cond_7

    .line 172
    .line 173
    iput-boolean v13, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 174
    .line 175
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 176
    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    const/4 v1, 0x5

    .line 180
    invoke-direct {v7, v9, v10, v8, v1}, Lcom/byazt/uo/SlideInterceptView;->c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v0, v7, v1}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    iget-object v12, v7, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v7, v1, v2, v0, v5}, Lcom/byazt/uo/SlideInterceptView;->c(FFII)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 200
    .line 201
    if-nez v0, :cond_7

    .line 202
    .line 203
    iput-boolean v13, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 204
    .line 205
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 206
    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    invoke-direct {v7, v9, v10, v8, v14}, Lcom/byazt/uo/SlideInterceptView;->c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {v0, v7, v1}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_4
    move-object/from16 v0, p0

    .line 218
    .line 219
    move v5, v6

    .line 220
    move v6, v11

    .line 221
    invoke-direct/range {v0 .. v6}, Lcom/byazt/uo/SlideInterceptView;->c(FFJII)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_5

    .line 226
    .line 227
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 228
    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    iput-boolean v13, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 232
    .line 233
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 234
    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    const/4 v1, 0x5

    .line 238
    invoke-direct {v7, v9, v10, v8, v1}, Lcom/byazt/uo/SlideInterceptView;->c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v0, v7, v1}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_5
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 247
    .line 248
    if-nez v0, :cond_7

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    goto :goto_1

    .line 252
    :cond_6
    iput v9, v7, Lcom/byazt/uo/SlideInterceptView;->c:F

    .line 253
    .line 254
    iput v10, v7, Lcom/byazt/uo/SlideInterceptView;->tt:F

    .line 255
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    iput-wide v0, v7, Lcom/byazt/uo/SlideInterceptView;->ve:J

    .line 261
    .line 262
    if-lez v6, :cond_7

    .line 263
    .line 264
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 265
    .line 266
    int-to-long v1, v6

    .line 267
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    .line 269
    .line 270
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 271
    :goto_1
    if-eqz v0, :cond_8

    .line 272
    .line 273
    iget-object v0, v7, Lcom/byazt/uo/SlideInterceptView;->da:Lcom/byazt/dq/c;

    .line 274
    .line 275
    invoke-virtual {v0, v7}, Lcom/byazt/dq/c;->c(Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    :cond_8
    iget-boolean v0, v7, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 279
    .line 280
    if-nez v0, :cond_9

    .line 281
    .line 282
    return v13

    .line 283
    :cond_9
    const/4 v0, 0x0

    .line 284
    return v0
.end method

.method private ve(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 14
    .line 15
    .line 16
    move-result v13

    .line 17
    const/4 v14, 0x0

    .line 18
    const/4 v15, 0x1

    .line 19
    if-eqz v12, :cond_9

    .line 20
    .line 21
    if-eq v12, v15, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v12, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v12, v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    if-eq v12, v1, :cond_9

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    if-eq v12, v0, :cond_5

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 38
    .line 39
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    .line 46
    .line 47
    iput-boolean v14, v10, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge v12, v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v1, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, Lcom/byazt/uo/SlideInterceptView$tt;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-boolean v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iput v6, v1, Lcom/byazt/uo/SlideInterceptView$tt;->uj:F

    .line 91
    .line 92
    iput v7, v1, Lcom/byazt/uo/SlideInterceptView$tt;->n:F

    .line 93
    .line 94
    iput-object v11, v1, Lcom/byazt/uo/SlideInterceptView$tt;->sp:Landroid/view/MotionEvent;

    .line 95
    .line 96
    iget v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->c:F

    .line 97
    .line 98
    sub-float v2, v6, v0

    .line 99
    .line 100
    iget v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->tt:F

    .line 101
    .line 102
    sub-float v3, v7, v0

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iget-wide v8, v1, Lcom/byazt/uo/SlideInterceptView$tt;->ve:J

    .line 109
    .line 110
    sub-long/2addr v4, v8

    .line 111
    const/4 v9, 0x0

    .line 112
    move-object/from16 v0, p0

    .line 113
    .line 114
    move-object/from16 v8, p1

    .line 115
    .line 116
    invoke-direct/range {v0 .. v9}, Lcom/byazt/uo/SlideInterceptView;->c(Lcom/byazt/uo/SlideInterceptView$tt;FFJFFLandroid/view/MotionEvent;Z)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-lez v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getX(I)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, v10, Lcom/byazt/uo/SlideInterceptView;->n:F

    .line 137
    .line 138
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getY(I)F

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput v0, v10, Lcom/byazt/uo/SlideInterceptView;->a:F

    .line 143
    .line 144
    iput-object v11, v10, Lcom/byazt/uo/SlideInterceptView;->uj:Landroid/view/MotionEvent;

    .line 145
    .line 146
    :cond_4
    if-eqz v13, :cond_a

    .line 147
    .line 148
    iput-boolean v15, v10, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_5
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 153
    .line 154
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move-object v1, v0

    .line 163
    check-cast v1, Lcom/byazt/uo/SlideInterceptView$tt;

    .line 164
    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    iget-boolean v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    iget v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->uj:F

    .line 172
    .line 173
    iget v2, v1, Lcom/byazt/uo/SlideInterceptView$tt;->c:F

    .line 174
    .line 175
    sub-float v2, v0, v2

    .line 176
    .line 177
    iget v0, v1, Lcom/byazt/uo/SlideInterceptView$tt;->n:F

    .line 178
    .line 179
    iget v3, v1, Lcom/byazt/uo/SlideInterceptView$tt;->tt:F

    .line 180
    .line 181
    sub-float v3, v0, v3

    .line 182
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    iget-wide v6, v1, Lcom/byazt/uo/SlideInterceptView$tt;->ve:J

    .line 188
    .line 189
    sub-long/2addr v4, v6

    .line 190
    iget v6, v1, Lcom/byazt/uo/SlideInterceptView$tt;->uj:F

    .line 191
    .line 192
    iget v7, v1, Lcom/byazt/uo/SlideInterceptView$tt;->n:F

    .line 193
    .line 194
    const/4 v9, 0x1

    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    move-object/from16 v8, p1

    .line 198
    .line 199
    invoke-direct/range {v0 .. v9}, Lcom/byazt/uo/SlideInterceptView;->c(Lcom/byazt/uo/SlideInterceptView$tt;FFJFFLandroid/view/MotionEvent;Z)Z

    .line 200
    .line 201
    .line 202
    :cond_6
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 203
    .line 204
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    if-ne v12, v15, :cond_a

    .line 212
    .line 213
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 214
    .line 215
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    .line 217
    .line 218
    iget-boolean v0, v10, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 219
    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    const/4 v0, 0x1

    .line 231
    goto :goto_1

    .line 232
    :cond_7
    const/4 v0, 0x0

    .line 233
    :goto_1
    if-eqz v0, :cond_8

    .line 234
    .line 235
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->da:Lcom/byazt/dq/c;

    .line 236
    .line 237
    invoke-virtual {v0, v10}, Lcom/byazt/dq/c;->c(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    .line 244
    .line 245
    iput-boolean v14, v10, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_9
    new-instance v6, Lcom/byazt/uo/SlideInterceptView$tt;

    .line 249
    .line 250
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    move-object v0, v6

    .line 263
    move-object/from16 v5, p1

    .line 264
    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/byazt/uo/SlideInterceptView$tt;-><init>(FFJLandroid/view/MotionEvent;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 269
    .line 270
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    if-nez v12, :cond_a

    .line 278
    .line 279
    iget v0, v6, Lcom/byazt/uo/SlideInterceptView$tt;->c:F

    .line 280
    .line 281
    iput v0, v10, Lcom/byazt/uo/SlideInterceptView;->c:F

    .line 282
    .line 283
    iget v1, v6, Lcom/byazt/uo/SlideInterceptView$tt;->tt:F

    .line 284
    .line 285
    iput v1, v10, Lcom/byazt/uo/SlideInterceptView;->tt:F

    .line 286
    .line 287
    iget-wide v2, v6, Lcom/byazt/uo/SlideInterceptView$tt;->ve:J

    .line 288
    .line 289
    iput-wide v2, v10, Lcom/byazt/uo/SlideInterceptView;->ve:J

    .line 290
    .line 291
    iput v0, v10, Lcom/byazt/uo/SlideInterceptView;->n:F

    .line 292
    .line 293
    iput v1, v10, Lcom/byazt/uo/SlideInterceptView;->a:F

    .line 294
    .line 295
    iput-object v11, v10, Lcom/byazt/uo/SlideInterceptView;->uj:Landroid/view/MotionEvent;

    .line 296
    .line 297
    iget-object v0, v10, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/byazt/ete/s;->gu()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-lez v0, :cond_a

    .line 304
    .line 305
    iget-object v1, v10, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    .line 306
    .line 307
    int-to-long v2, v0

    .line 308
    invoke-virtual {v1, v15, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 309
    .line 310
    .line 311
    :cond_a
    :goto_2
    iget-boolean v0, v10, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 312
    .line 313
    if-nez v0, :cond_b

    .line 314
    .line 315
    return v15

    .line 316
    :cond_b
    return v14
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/byazt/uo/SlideInterceptView;->sl:Lcom/byazt/nr/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    iget-object v0, p0, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/SlideInterceptView;->da:Lcom/byazt/dq/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/dq/c;->c(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/SlideInterceptView;->da:Lcom/byazt/dq/c;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p0, v1, p1}, Lcom/byazt/dq/c;->c(Landroid/view/View;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/byazt/uo/SlideInterceptView;->c(Landroid/view/MotionEvent;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->tw()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/byazt/uo/SlideInterceptView;->ve(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/uo/SlideInterceptView;->tt(Landroid/view/MotionEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->tw()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->t:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v4, v2

    .line 40
    check-cast v4, Lcom/byazt/uo/SlideInterceptView$tt;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    iget-boolean v2, v4, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget v2, v4, Lcom/byazt/uo/SlideInterceptView$tt;->uj:F

    .line 49
    .line 50
    iget v3, v4, Lcom/byazt/uo/SlideInterceptView$tt;->c:F

    .line 51
    .line 52
    sub-float v6, v2, v3

    .line 53
    .line 54
    iget v2, v4, Lcom/byazt/uo/SlideInterceptView$tt;->n:F

    .line 55
    .line 56
    iget v3, v4, Lcom/byazt/uo/SlideInterceptView$tt;->tt:F

    .line 57
    .line 58
    sub-float v7, v2, v3

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iget-wide v8, v4, Lcom/byazt/uo/SlideInterceptView$tt;->ve:J

    .line 65
    .line 66
    sub-long v8, v2, v8

    .line 67
    .line 68
    iget-object v2, p0, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/byazt/ete/s;->gu()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/byazt/ete/s;->gr()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    int-to-float v3, v3

    .line 85
    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    move-object v5, p0

    .line 90
    invoke-direct/range {v5 .. v11}, Lcom/byazt/uo/SlideInterceptView;->c(FFJII)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    .line 96
    iput-boolean v0, v4, Lcom/byazt/uo/SlideInterceptView$tt;->a:Z

    .line 97
    .line 98
    iget-object v1, p0, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    iget v5, v4, Lcom/byazt/uo/SlideInterceptView$tt;->uj:F

    .line 103
    .line 104
    iget v6, v4, Lcom/byazt/uo/SlideInterceptView$tt;->n:F

    .line 105
    .line 106
    iget-object v7, v4, Lcom/byazt/uo/SlideInterceptView$tt;->sp:Landroid/view/MotionEvent;

    .line 107
    .line 108
    const/4 v8, 0x5

    .line 109
    move-object v3, p0

    .line 110
    invoke-direct/range {v3 .. v8}, Lcom/byazt/uo/SlideInterceptView;->c(Lcom/byazt/uo/SlideInterceptView$tt;FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v1, p0, v2}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    if-eqz v1, :cond_3

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 122
    .line 123
    :cond_3
    return-void

    .line 124
    :cond_4
    iget p1, p0, Lcom/byazt/uo/SlideInterceptView;->n:F

    .line 125
    .line 126
    iget v1, p0, Lcom/byazt/uo/SlideInterceptView;->c:F

    .line 127
    .line 128
    sub-float v3, p1, v1

    .line 129
    .line 130
    iget p1, p0, Lcom/byazt/uo/SlideInterceptView;->a:F

    .line 131
    .line 132
    iget v1, p0, Lcom/byazt/uo/SlideInterceptView;->tt:F

    .line 133
    .line 134
    sub-float v4, p1, v1

    .line 135
    .line 136
    iget-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/byazt/ete/s;->gu()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v1, p0, Lcom/byazt/uo/SlideInterceptView;->x:Lcom/byazt/ete/s;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/byazt/ete/s;->gr()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    int-to-float v1, v1

    .line 153
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    iget-wide v5, p0, Lcom/byazt/uo/SlideInterceptView;->ve:J

    .line 162
    .line 163
    sub-long v5, v1, v5

    .line 164
    .line 165
    move-object v2, p0

    .line 166
    invoke-direct/range {v2 .. v8}, Lcom/byazt/uo/SlideInterceptView;->c(FFJII)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_5

    .line 171
    .line 172
    iget-boolean p1, p0, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 173
    .line 174
    if-nez p1, :cond_5

    .line 175
    .line 176
    iput-boolean v0, p0, Lcom/byazt/uo/SlideInterceptView;->sp:Z

    .line 177
    .line 178
    iget-object p1, p0, Lcom/byazt/uo/SlideInterceptView;->i:Lcom/byazt/uo/SlideInterceptView$c;

    .line 179
    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    iget v0, p0, Lcom/byazt/uo/SlideInterceptView;->n:F

    .line 183
    .line 184
    iget v1, p0, Lcom/byazt/uo/SlideInterceptView;->a:F

    .line 185
    .line 186
    iget-object v2, p0, Lcom/byazt/uo/SlideInterceptView;->uj:Landroid/view/MotionEvent;

    .line 187
    .line 188
    const/4 v3, 0x5

    .line 189
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/byazt/uo/SlideInterceptView;->c(FFLandroid/view/MotionEvent;B)Lcom/byazt/ete/gr;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {p1, p0, v0}, Lcom/byazt/uo/SlideInterceptView$c;->c(Landroid/view/View;Lcom/byazt/ete/gr;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    return-void
.end method
