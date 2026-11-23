.class public Lcom/byazt/wi/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wi/tt$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/wi/tt;


# instance fields
.field public final tt:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/byazt/wi/tt$c;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/wi/tt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/wi/tt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/wi/tt;->c:Lcom/byazt/wi/tt;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LruCache;

    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/wi/tt;->tt:Landroid/util/LruCache;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/wi/tt;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    return-void
.end method

.method public static c(JJFFFFLcom/byazt/ete/x$n;)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_e

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->my()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpg-float v0, p5, v0

    if-ltz v0, :cond_2

    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->nu()F

    move-result v0

    cmpl-float v0, p7, v0

    if-lez v0, :cond_1

    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->rh()F

    move-result v0

    cmpg-float v0, p6, v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 73
    :goto_1
    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->gt()F

    move-result v3

    cmpg-float v3, p4, v3

    if-ltz v3, :cond_3

    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->qy()F

    move-result v3

    cmpl-float v3, p6, v3

    if-gtz v3, :cond_3

    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->gu()F

    move-result v3

    cmpg-float v3, p7, v3

    if-gez v3, :cond_4

    invoke-virtual {p8}, Lcom/byazt/ete/x$n;->rl()F

    move-result p8

    cmpg-float p8, p4, p8

    if-gez p8, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    const p4, 0x3dcccccd    # 0.1f

    cmpl-float p6, p6, p4

    if-lez p6, :cond_5

    return-wide p0

    :cond_5
    const p6, 0x3e99999a    # 0.3f

    const p8, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p5, p8

    if-gez v0, :cond_6

    const p4, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_6
    cmpg-float p5, p5, p6

    if-gez p5, :cond_7

    const p4, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_7
    cmpl-float p5, p7, p8

    if-ltz p5, :cond_8

    cmpg-float p5, p7, p6

    if-gtz p5, :cond_8

    goto :goto_2

    :cond_8
    const/4 p4, 0x0

    :goto_2
    long-to-float p5, p0

    const/high16 p6, 0x3f800000    # 1.0f

    sub-float/2addr p6, p4

    mul-float p5, p5, p6

    long-to-float p6, p2

    mul-float p6, p6, p4

    add-float/2addr p5, p6

    float-to-long p4, p5

    long-to-double p0, p0

    const-wide p6, 0x3feb333333333333L    # 0.85

    mul-double p0, p0, p6

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    .line 75
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_9
    if-eqz v1, :cond_d

    long-to-double p2, p2

    const-wide p5, 0x3ff2666666666666L    # 1.15

    mul-double p2, p2, p5

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p5, p2, p0

    if-gtz p5, :cond_a

    return-wide p0

    :cond_a
    const p5, 0x3f59999a    # 0.85f

    cmpg-float p5, p4, p5

    if-gez p5, :cond_b

    const p4, 0x3ecccccd    # 0.4f

    goto :goto_3

    :cond_b
    const p5, 0x3f666666    # 0.9f

    cmpg-float p4, p4, p5

    if-gez p4, :cond_c

    const/high16 p4, 0x3e800000    # 0.25f

    goto :goto_3

    :cond_c
    const p4, 0x3e19999a    # 0.15f

    :goto_3
    sub-long/2addr p2, p0

    long-to-float p2, p2

    mul-float p2, p2, p4

    float-to-double p2, p2

    .line 78
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-long p2, p2

    add-long/2addr p2, p0

    long-to-double p0, p0

    const-wide/high16 p4, 0x3ff4000000000000L    # 1.25

    mul-double p0, p0, p4

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    .line 80
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_d
    return-wide p0

    :cond_e
    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static synthetic c(Lcom/byazt/wi/tt;)Landroid/util/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wi/tt;->tt:Landroid/util/LruCache;

    return-object p0
.end method

.method private c(Lcom/byazt/ete/x$n;ILjava/lang/String;J)Lcom/byazt/wi/tt$c;
    .locals 26

    move/from16 v0, p2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    return-object v3

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->n()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v7, "record_time DESC"

    if-nez v6, :cond_2

    .line 25
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    move-object/from16 v6, p3

    .line 26
    invoke-static {v0, v6, v1, v2, v7}, Lcom/byazt/wi/n;->c(ILjava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {v0, v1, v2, v7}, Lcom/byazt/wi/n;->c(IJLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :goto_0
    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    .line 28
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_3
    return-object v3

    .line 29
    :cond_4
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "loaded_duration"

    .line 31
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "is_shown"

    .line 32
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ltz v6, :cond_1f

    if-gez v7, :cond_5

    goto/16 :goto_10

    :cond_5
    cmp-long v8, p4, v4

    if-gtz v8, :cond_6

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->ve()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto :goto_1

    :cond_6
    move-wide/from16 v8, p4

    :goto_1
    cmp-long v10, v8, v4

    if-gtz v10, :cond_7

    .line 34
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v3

    :cond_7
    long-to-double v10, v8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double v10, v10, v12

    .line 35
    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-long v10, v10

    move-wide/from16 v19, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 36
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->sp()I

    move-result v3

    if-ge v12, v3, :cond_b

    add-int/lit8 v12, v12, 0x1

    .line 37
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 38
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    cmp-long v18, v16, v4

    if-lez v18, :cond_8

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->uj()J

    move-result-wide v21

    cmp-long v23, v16, v21

    if-ltz v23, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->ve()J

    move-result-wide v21

    cmp-long v23, v16, v21

    if-gtz v23, :cond_8

    .line 40
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 41
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-lez v18, :cond_9

    cmp-long v3, v16, v8

    if-gtz v3, :cond_9

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v4, v19

    add-long v19, v4, v16

    add-int/lit8 v14, v14, 0x1

    cmp-long v3, v16, v10

    if-ltz v3, :cond_a

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_9
    move-wide/from16 v4, v19

    move-wide/from16 v19, v4

    :cond_a
    :goto_3
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_b
    move-wide/from16 v4, v19

    .line 42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v3, :cond_c

    .line 43
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_c
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->a()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v3, :cond_d

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-ge v7, v3, :cond_d

    .line 46
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_d
    :try_start_9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 49
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 50
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->i()F

    move-result v3

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->da()F

    move-result v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    move-result-wide v10

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->sl()F

    move-result v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v1, v3}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v12, :cond_f

    int-to-float v3, v13

    mul-float v3, v3, v6

    int-to-float v12, v12

    div-float/2addr v3, v12

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    :goto_4
    if-lez v14, :cond_10

    long-to-float v4, v4

    mul-float v4, v4, v6

    int-to-float v5, v14

    div-float/2addr v4, v5

    long-to-float v5, v8

    div-float/2addr v4, v5

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    :goto_5
    if-lez v13, :cond_11

    int-to-float v5, v15

    mul-float v5, v5, v6

    int-to-float v12, v13

    div-float/2addr v5, v12

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-lez v14, :cond_12

    sub-long v12, v8, v10

    long-to-float v12, v12

    mul-float v12, v12, v6

    long-to-float v13, v10

    div-float/2addr v12, v13

    move/from16 v19, v12

    goto :goto_7

    :cond_12
    const/16 v19, 0x0

    .line 53
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->u()F

    move-result v12

    mul-float v12, v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/4 v15, 0x1

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v13, 0x63

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->yp()F

    move-result v16

    mul-float v16, v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->z()F

    move-result v16

    mul-float v16, v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 56
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_13

    const-wide/16 v23, 0x0

    goto :goto_8

    :cond_13
    invoke-static {v2, v12}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    move-result-wide v12

    move-wide/from16 v23, v12

    .line 57
    :goto_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {v2, v6}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    .line 58
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    const-wide/16 v6, 0x0

    goto :goto_9

    :cond_15
    invoke-static {v2, v7}, Lcom/byazt/wi/c;->c(Ljava/util/List;I)J

    move-result-wide v6

    .line 59
    :goto_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v12, v12, v13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v12, v1

    move v1, v12

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    :goto_a
    const-wide/16 v12, 0x0

    cmp-long v16, v6, v12

    if-lez v16, :cond_17

    if-lez v14, :cond_17

    long-to-float v12, v6

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v12, v12, v13

    long-to-float v13, v10

    div-float/2addr v12, v13

    move/from16 v20, v12

    move-wide v12, v10

    goto :goto_b

    :cond_17
    move-wide v12, v10

    const/16 v20, 0x0

    :goto_b
    move-wide v10, v8

    move v14, v3

    const/4 v3, 0x0

    const/16 v25, 0x1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v19

    move-object/from16 v18, p1

    .line 60
    invoke-static/range {v10 .. v18}, Lcom/byazt/wi/tt;->c(JJFFFFLcom/byazt/ete/x$n;)J

    move-result-wide v10

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_18

    const/4 v15, 0x1

    goto :goto_c

    :cond_18
    const/4 v15, 0x0

    :goto_c
    if-eqz v15, :cond_19

    const v2, 0x3ca3d70a    # 0.02f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_19

    const/4 v1, 0x0

    cmpl-float v1, v20, v1

    if-lez v1, :cond_19

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v20, v1

    if-gez v1, :cond_19

    const/4 v15, 0x1

    goto :goto_d

    :cond_19
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_1c

    long-to-float v1, v6

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->t()F

    move-result v2

    mul-float v2, v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1a

    sub-long v4, v8, v2

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    long-to-float v6, v8

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v7, 0x3eb33333    # 0.35f

    mul-float v4, v4, v7

    const v7, 0x3e19999a    # 0.15f

    add-float/2addr v4, v7

    sub-float/2addr v5, v4

    mul-float v6, v6, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    add-float/2addr v6, v2

    float-to-long v10, v6

    .line 64
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->m()F

    move-result v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1b

    .line 65
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide/from16 v23, v1

    goto :goto_e

    :cond_1b
    move-wide/from16 v23, v10

    goto :goto_e

    .line 66
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->nu()F

    move-result v1

    cmpl-float v1, v19, v1

    if-lez v1, :cond_1d

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->rh()F

    move-result v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1d

    const-wide/16 v1, 0x0

    cmp-long v3, v23, v1

    if-lez v3, :cond_1d

    :goto_e
    move-wide/from16 v4, v23

    goto :goto_f

    :cond_1d
    move-wide v4, v10

    .line 68
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->uj()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/x$n;->ve()J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/byazt/wi/c;->c(JJJ)J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1e

    .line 69
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_1e
    :try_start_b
    new-instance v3, Lcom/byazt/wi/tt$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/byazt/wi/tt$c;-><init>(JJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 71
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    return-object v3

    :cond_1f
    :goto_10
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    const/4 v0, 0x0

    return-object v0

    :catchall_7
    nop

    goto :goto_11

    :catchall_8
    nop

    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_20

    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/wi/tt;Lcom/byazt/ete/x$n;ILjava/lang/String;J)Lcom/byazt/wi/tt$c;
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/wi/tt;->c(Lcom/byazt/ete/x$n;ILjava/lang/String;J)Lcom/byazt/wi/tt$c;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/byazt/wi/tt$c;
    .locals 9

    const-string v0, "sp_dynamic_tmax_timeout"

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/by/ve;->tt()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "_ts"

    const-wide/16 v4, -0x1

    const-string v6, "_v"

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_1

    .line 87
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7, v8}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/byazt/wi/tt;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    cmp-long p1, v4, v7

    if-gtz p1, :cond_2

    return-object v2

    .line 92
    :cond_2
    new-instance p1, Lcom/byazt/wi/tt$c;

    invoke-direct {p1, v4, v5, v0, v1}, Lcom/byazt/wi/tt$c;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    return-object v2
.end method

.method public static c()Lcom/byazt/wi/tt;
    .locals 1

    .line 4
    sget-object v0, Lcom/byazt/wi/tt;->c:Lcom/byazt/wi/tt;

    return-object v0
.end method

.method private static c(Lcom/byazt/ete/x$n;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/x$n;->n()I

    move-result p0

    if-nez p0, :cond_2

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "slot_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "type_"

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/wi/tt;Ljava/lang/String;Lcom/byazt/wi/tt$c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/wi/tt;->c(Ljava/lang/String;Lcom/byazt/wi/tt$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ete/x$n;ILjava/lang/String;J)V
    .locals 11

    move-object v9, p0

    .line 21
    iget-object v0, v9, Lcom/byazt/wi/tt;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v8, p1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v10, Lcom/byazt/wi/tt$1;

    const-string v2, "dynamic_tmax_calc"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/byazt/wi/tt$1;-><init>(Lcom/byazt/wi/tt;Ljava/lang/String;Lcom/byazt/ete/x$n;ILjava/lang/String;JLjava/lang/String;)V

    invoke-static {v10}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/wi/tt$c;)V
    .locals 5

    const-string v0, "sp_dynamic_tmax_timeout"

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/by/ve;->tt()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "_ts"

    const-string v3, "_v"

    if-eqz v1, :cond_1

    .line 95
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p2, Lcom/byazt/wi/tt$c;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lcom/byazt/wi/tt$c;->tt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/byazt/wi/tt;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p2, Lcom/byazt/wi/tt$c;->c:J

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lcom/byazt/wi/tt$c;->tt:J

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private tt()Landroid/content/SharedPreferences;
    .locals 3

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_dynamic_tmax_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/wi/tt;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wi/tt;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public c(ILjava/lang/String;)J
    .locals 14

    move-object v7, p0

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->nu()Lcom/byazt/ete/x$n;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->nu()Lcom/byazt/ete/x$n;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->tt()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->ve()J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v3, v0, v10

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, p1

    move-object/from16 v4, p2

    .line 9
    invoke-static {v2, p1, v4}, Lcom/byazt/wi/tt;->c(Lcom/byazt/ete/x$n;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v8

    .line 11
    :cond_2
    iget-object v0, v7, Lcom/byazt/wi/tt;->tt:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/wi/tt$c;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/wi/tt$c;->c(Lcom/byazt/ete/x$n;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    iget-wide v0, v0, Lcom/byazt/wi/tt$c;->c:J

    return-wide v0

    .line 14
    :cond_3
    iget-wide v5, v0, Lcom/byazt/wi/tt$c;->c:J

    goto :goto_0

    :cond_4
    move-wide v5, v8

    .line 15
    :goto_0
    invoke-direct {p0, v1}, Lcom/byazt/wi/tt;->c(Ljava/lang/String;)Lcom/byazt/wi/tt$c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0, v2}, Lcom/byazt/wi/tt$c;->c(Lcom/byazt/ete/x$n;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 17
    iget-object v2, v7, Lcom/byazt/wi/tt;->tt:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-wide v0, v0, Lcom/byazt/wi/tt$c;->c:J

    return-wide v0

    .line 19
    :cond_5
    iget-wide v5, v0, Lcom/byazt/wi/tt$c;->c:J

    :cond_6
    move-wide v12, v5

    move-object v0, p0

    move v3, p1

    move-object/from16 v4, p2

    move-wide v5, v12

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/byazt/wi/tt;->c(Ljava/lang/String;Lcom/byazt/ete/x$n;ILjava/lang/String;J)V

    cmp-long v0, v12, v10

    if-lez v0, :cond_7

    return-wide v12

    :cond_7
    :goto_1
    return-wide v8
.end method
