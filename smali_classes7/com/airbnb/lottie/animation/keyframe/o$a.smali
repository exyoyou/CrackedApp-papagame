.class Lcom/airbnb/lottie/animation/keyframe/o$a;
.super Lcom/airbnb/lottie/value/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/animation/keyframe/o;->q(Lcom/airbnb/lottie/value/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/j<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/airbnb/lottie/value/b;

.field final synthetic e:Lcom/airbnb/lottie/value/j;

.field final synthetic f:Lcom/airbnb/lottie/model/DocumentData;

.field final synthetic g:Lcom/airbnb/lottie/animation/keyframe/o;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/animation/keyframe/o;Lcom/airbnb/lottie/value/b;Lcom/airbnb/lottie/value/j;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/o$a;->g:Lcom/airbnb/lottie/animation/keyframe/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/o$a;->d:Lcom/airbnb/lottie/value/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/airbnb/lottie/animation/keyframe/o$a;->e:Lcom/airbnb/lottie/value/j;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/airbnb/lottie/animation/keyframe/o$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/airbnb/lottie/value/j;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/value/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/o$a;->e(Lcom/airbnb/lottie/value/b;)Lcom/airbnb/lottie/model/DocumentData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/airbnb/lottie/value/b;)Lcom/airbnb/lottie/model/DocumentData;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/b<",
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;)",
            "Lcom/airbnb/lottie/model/DocumentData;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/o$a;->d:Lcom/airbnb/lottie/value/b;

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->f()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->a()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->g()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    .line 18
    .line 19
    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lcom/airbnb/lottie/model/DocumentData;

    .line 26
    .line 27
    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->d()F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->c()F

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->e()F

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/value/b;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/value/b;

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/o$a;->e:Lcom/airbnb/lottie/value/j;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/o$a;->d:Lcom/airbnb/lottie/value/b;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/value/j;->a(Lcom/airbnb/lottie/value/b;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v3, v1

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->c()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    .line 61
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->b()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/value/b;->g()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_0
    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/o$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    .line 77
    .line 78
    iget-object v4, v1, Lcom/airbnb/lottie/model/DocumentData;->b:Ljava/lang/String;

    .line 79
    .line 80
    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->c:F

    .line 81
    .line 82
    iget-object v6, v1, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 83
    .line 84
    iget v7, v1, Lcom/airbnb/lottie/model/DocumentData;->e:I

    .line 85
    .line 86
    iget v8, v1, Lcom/airbnb/lottie/model/DocumentData;->f:F

    .line 87
    .line 88
    iget v9, v1, Lcom/airbnb/lottie/model/DocumentData;->g:F

    .line 89
    .line 90
    iget v10, v1, Lcom/airbnb/lottie/model/DocumentData;->h:I

    .line 91
    .line 92
    iget v11, v1, Lcom/airbnb/lottie/model/DocumentData;->i:I

    .line 93
    .line 94
    iget v12, v1, Lcom/airbnb/lottie/model/DocumentData;->j:F

    .line 95
    .line 96
    iget-boolean v13, v1, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    .line 97
    .line 98
    iget-object v14, v1, Lcom/airbnb/lottie/model/DocumentData;->l:Landroid/graphics/PointF;

    .line 99
    .line 100
    iget-object v15, v1, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    .line 101
    .line 102
    invoke-virtual/range {v2 .. v15}, Lcom/airbnb/lottie/model/DocumentData;->a(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/o$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    .line 106
    .line 107
    return-object v1
.end method
