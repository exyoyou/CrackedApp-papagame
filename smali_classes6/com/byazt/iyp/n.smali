.class public Lcom/byazt/iyp/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iyp/n$c;,
        Lcom/byazt/iyp/n$uj;,
        Lcom/byazt/iyp/n$ve;,
        Lcom/byazt/iyp/n$n;,
        Lcom/byazt/iyp/n$tt;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method; = null

.field public static c:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/iyp/n$n;",
            ">;"
        }
    .end annotation
.end field

.field public static final da:Landroid/graphics/Rect;

.field public static final i:Landroid/graphics/Rect;

.field public static n:Z = false

.field public static final sl:Landroid/graphics/Rect;

.field public static sp:Z = false

.field public static final t:Lcom/byazt/iyp/n$c;

.field public static tt:Z = true

.field public static final u:Lcom/byazt/iyp/n$uj;

.field public static uj:Z

.field public static ve:Ljava/lang/reflect/Method;

.field public static x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/iyp/n;->i:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/iyp/n;->da:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/iyp/n;->sl:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v0, Lcom/byazt/iyp/n$c;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lcom/byazt/iyp/n$c;-><init>(Lcom/byazt/iyp/n$1;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/byazt/iyp/n;->t:Lcom/byazt/iyp/n$c;

    .line 29
    .line 30
    new-instance v0, Lcom/byazt/iyp/n$uj;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/byazt/iyp/n$uj;-><init>(Lcom/byazt/iyp/n$1;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/byazt/iyp/n;->u:Lcom/byazt/iyp/n$uj;

    .line 36
    .line 37
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "LottieAnimationView"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    sget-boolean v1, Lcom/byazt/iyp/n;->sp:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    sget-boolean v1, Lcom/byazt/iyp/n;->x:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "isAnimating"

    .line 37
    .line 38
    new-array v5, v0, [Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    .line 46
    .line 47
    sput-object v1, Lcom/byazt/iyp/n;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    :try_start_1
    sput-boolean v3, Lcom/byazt/iyp/n;->x:Z

    .line 51
    .line 52
    sput-object v2, Lcom/byazt/iyp/n;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    :goto_0
    sput-boolean v3, Lcom/byazt/iyp/n;->sp:Z

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    sput-boolean v3, Lcom/byazt/iyp/n;->sp:Z

    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    :goto_1
    sget-object v1, Lcom/byazt/iyp/n;->a:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    sget-boolean v4, Lcom/byazt/iyp/n;->x:Z

    .line 66
    .line 67
    if-nez v4, :cond_4

    .line 68
    .line 69
    :try_start_2
    new-array v4, v0, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    check-cast p0, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    return v3

    .line 88
    :cond_3
    return v0

    .line 89
    :catchall_2
    sput-boolean v3, Lcom/byazt/iyp/n;->x:Z

    .line 90
    .line 91
    sput-object v2, Lcom/byazt/iyp/n;->a:Ljava/lang/reflect/Method;

    .line 92
    .line 93
    :cond_4
    return v0
.end method

.method private static c([FF)I
    .locals 7

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    .line 224
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 225
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget v6, p0, v4

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_1
    array-length v1, p0

    int-to-float v1, v1

    div-float/2addr v5, v1

    const/4 v1, -0x1

    .line 227
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 228
    aget v4, p0, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v6, v4, v3

    if-lez v6, :cond_2

    move v1, v2

    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    cmpl-float p0, v3, p1

    if-ltz p0, :cond_4

    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method private static c([I)I
    .locals 9

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    .line 207
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 208
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget v6, p0, v4

    if-eqz v6, :cond_1

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1, v6, v8}, Ld1/a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v2, :cond_3

    .line 213
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 215
    :cond_4
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-lt v2, v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 216
    :goto_2
    array-length v6, p0

    if-ge v3, v6, :cond_6

    .line 217
    aget v6, p0, v3

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-ne v1, v5, :cond_7

    return v2

    :cond_7
    :goto_3
    return v0
.end method

.method private static c(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, p2, v0}, Lcom/byazt/iyp/n;->c(Landroid/view/View;IIZ)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/view/View;IIZ)Landroid/view/ViewGroup;
    .locals 18
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 36
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_a

    .line 37
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    invoke-static {}, Lcom/byazt/iyp/da;->c()Z

    move-result v3

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 40
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 41
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_1

    .line 43
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const-wide v8, 0x3fc999999999999aL    # 0.2

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/4 v12, -0x1

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    const/4 v15, 0x1

    if-lt v7, v10, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v11, :cond_a

    .line 45
    sget-object v7, Lcom/byazt/iyp/n;->i:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 47
    invoke-virtual {v0, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 48
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-double v10, v10

    move-object/from16 p0, v5

    int-to-double v4, v1

    mul-double v4, v4, v13

    cmpl-double v16, v10, v4

    if-ltz v16, :cond_9

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    int-to-double v10, v2

    mul-double v13, v13, v10

    cmpl-double v16, v4, v13

    if-ltz v16, :cond_9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double v10, v10, v8

    cmpg-double v8, v4, v10

    if-gtz v8, :cond_9

    .line 49
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v4, v5

    .line 50
    div-int/lit8 v5, v4, 0x2

    .line 51
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, -0x1

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 52
    sget-object v10, Lcom/byazt/iyp/n;->da:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 54
    invoke-virtual {v9, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eq v8, v12, :cond_4

    .line 55
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    if-gt v9, v8, :cond_4

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 57
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_3

    .line 58
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_8

    .line 59
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 60
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_8

    return-object v0

    :cond_8
    if-eqz v3, :cond_13

    if-nez p3, :cond_13

    .line 61
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    goto/16 :goto_8

    :cond_9
    if-eqz v3, :cond_13

    if-nez p3, :cond_13

    .line 62
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 63
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 64
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    goto/16 :goto_8

    :cond_a
    move-object/from16 p0, v5

    .line 65
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v11, :cond_12

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xf

    if-gt v4, v5, :cond_12

    .line 66
    sget-object v4, Lcom/byazt/iyp/n;->i:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 69
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    int-to-double v11, v1

    mul-double v11, v11, v13

    cmpl-double v17, v6, v11

    if-ltz v17, :cond_13

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v6

    int-to-double v11, v2

    mul-double v13, v13, v11

    cmpl-double v17, v6, v13

    if-ltz v17, :cond_13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    mul-double v11, v11, v8

    cmpg-double v8, v6, v11

    if-gtz v8, :cond_13

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-static {v0, v6}, Lcom/byazt/iyp/n;->c(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 72
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v10, :cond_13

    const/4 v5, 0x6

    if-gt v8, v5, :cond_13

    .line 73
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 74
    div-int v5, v4, v8

    .line 75
    div-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_4
    if-ge v10, v8, :cond_d

    .line 76
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 77
    sget-object v13, Lcom/byazt/iyp/n;->da:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 79
    invoke-virtual {v12, v13}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    .line 80
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    int-to-float v11, v11

    int-to-float v12, v4

    const v17, 0x3d4ccccd    # 0.05f

    mul-float v12, v12, v17

    add-float/2addr v11, v12

    cmpg-float v11, v14, v11

    if-gtz v11, :cond_b

    goto :goto_5

    .line 81
    :cond_b
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    .line 82
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v9, :cond_c

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_11

    .line 83
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 84
    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_11

    if-eqz v3, :cond_10

    .line 85
    invoke-interface {v7}, Ljava/util/List;->size()I

    :cond_10
    return-object v0

    :cond_11
    if-eqz v3, :cond_13

    if-nez p3, :cond_13

    .line 86
    invoke-interface {v7}, Ljava/util/List;->size()I

    goto :goto_8

    :cond_12
    move-object/from16 v7, p0

    if-eqz v3, :cond_13

    if-nez p3, :cond_13

    .line 87
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 88
    invoke-interface {v7}, Ljava/util/List;->size()I

    :cond_13
    :goto_8
    const/4 v3, 0x0

    .line 89
    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_15

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v5}, Lcom/byazt/iyp/n;->c(Landroid/view/View;IIZ)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_14

    return-object v4

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    return-object v3

    :cond_16
    :goto_a
    const/4 v3, 0x0

    return-object v3
.end method

.method public static c(Landroid/app/Activity;)Lcom/byazt/iyp/n$tt;
    .locals 6
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 7
    new-instance v0, Lcom/byazt/iyp/n$tt;

    invoke-direct {v0}, Lcom/byazt/iyp/n$tt;-><init>()V

    if-eqz p0, :cond_6

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    invoke-static {p0, v1, v2}, Lcom/byazt/iyp/n;->c(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/iyp/n$tt;->c:Ljava/lang/String;

    :cond_1
    if-nez p0, :cond_2

    .line 14
    invoke-static {}, Lcom/byazt/iyp/da;->tt()V

    return-object v0

    .line 15
    :cond_2
    invoke-static {p0}, Lcom/byazt/iyp/n;->c(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/byazt/iyp/n$tt;->uj:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/byazt/iyp/uj;->tt()I

    move-result v2

    if-ltz v2, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 19
    new-instance v3, Lcom/byazt/iyp/n$ve;

    const/16 v4, 0x64

    const-string v5, "history click"

    invoke-direct {v3, v2, v4, v5}, Lcom/byazt/iyp/n$ve;-><init>(IILjava/lang/String;)V

    .line 20
    iget v2, v3, Lcom/byazt/iyp/n$ve;->c:I

    invoke-static {v2}, Lcom/byazt/iyp/da;->c(I)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v1}, Lcom/byazt/iyp/n;->c(Ljava/util/List;)Lcom/byazt/iyp/n$ve;

    move-result-object v3

    .line 22
    iget v2, v3, Lcom/byazt/iyp/n$ve;->c:I

    iget v4, v3, Lcom/byazt/iyp/n$ve;->tt:I

    iget-object v5, v3, Lcom/byazt/iyp/n$ve;->ve:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/byazt/iyp/da;->c(IILjava/lang/String;)V

    .line 23
    :goto_0
    iget v2, v3, Lcom/byazt/iyp/n$ve;->c:I

    iput v2, v0, Lcom/byazt/iyp/n$tt;->tt:I

    .line 24
    iget v4, v3, Lcom/byazt/iyp/n$ve;->tt:I

    iput v4, v0, Lcom/byazt/iyp/n$tt;->ve:I

    if-ltz v2, :cond_4

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 26
    iget v2, v0, Lcom/byazt/iyp/n$tt;->tt:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/iyp/n$n;

    invoke-virtual {v2}, Lcom/byazt/iyp/n$n;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/byazt/iyp/n$tt;->n:Ljava/lang/String;

    :cond_4
    if-eqz v1, :cond_5

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 28
    invoke-static {}, Lcom/byazt/iyp/uj;->ve()V

    .line 29
    invoke-static {p0, v1}, Lcom/byazt/iyp/n;->tt(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 30
    iget v2, v3, Lcom/byazt/iyp/n$ve;->c:I

    invoke-static {v2}, Lcom/byazt/iyp/uj;->c(I)V

    .line 31
    invoke-static {p0}, Lcom/byazt/iyp/uj;->c(Landroid/view/View;)V

    .line 32
    sput-object v1, Lcom/byazt/iyp/n;->c:Ljava/util/List;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    iget-object v1, v0, Lcom/byazt/iyp/n$tt;->n:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/byazt/iyp/da;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_5
    invoke-static {}, Lcom/byazt/iyp/da;->ve()V

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static c(Ljava/util/List;)Lcom/byazt/iyp/n$ve;
    .locals 12
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/iyp/n$n;",
            ">;)",
            "Lcom/byazt/iyp/n$ve;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    .line 157
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 158
    :cond_0
    invoke-static {}, Lcom/byazt/iyp/da;->c()Z

    move-result v2

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 160
    new-array v4, v3, [I

    if-eqz v2, :cond_1

    .line 161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 163
    :cond_2
    new-array v6, v3, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_3

    .line 164
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/iyp/n$n;

    iget-object v8, v8, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/byazt/iyp/n$n;

    iget-object v9, v9, Lcom/byazt/iyp/n$n;->ve:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/byazt/iyp/n;->tt(Landroid/view/View;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 165
    :cond_3
    invoke-static {v6}, Lcom/byazt/iyp/n;->c([I)I

    move-result v6

    if-eq v6, v0, :cond_4

    .line 166
    aget v7, v4, v6

    add-int/lit8 v7, v7, 0x5

    aput v7, v4, v6

    const-string v7, "textColorOdd +5"

    .line 167
    invoke-static {v5, v6, v7}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_d

    .line 168
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/iyp/n$n;

    .line 169
    iget-object v8, v7, Lcom/byazt/iyp/n$n;->ve:Ljava/lang/String;

    invoke-static {v8}, Lcom/byazt/iyp/n;->ve(Ljava/lang/String;)Z

    move-result v8

    .line 170
    iget-object v9, v7, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    invoke-static {v9}, Lcom/byazt/iyp/n;->ve(Landroid/view/View;)Lcom/byazt/iyp/n$uj;

    move-result-object v9

    .line 171
    iget-boolean v10, v9, Lcom/byazt/iyp/n$uj;->c:Z

    if-eqz v10, :cond_a

    .line 172
    iget-boolean v10, v9, Lcom/byazt/iyp/n$uj;->tt:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x6

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 173
    :goto_3
    iget-boolean v11, v9, Lcom/byazt/iyp/n$uj;->ve:Z

    if-eqz v11, :cond_6

    add-int/lit8 v10, v10, 0x4

    .line 174
    :cond_6
    iget-boolean v11, v9, Lcom/byazt/iyp/n$uj;->uj:Z

    if-eqz v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    .line 175
    :cond_7
    iget-boolean v11, v9, Lcom/byazt/iyp/n$uj;->n:Z

    if-eqz v11, :cond_8

    add-int/lit8 v10, v10, 0x2

    .line 176
    :cond_8
    iget-boolean v9, v9, Lcom/byazt/iyp/n$uj;->a:Z

    if-eqz v9, :cond_9

    add-int/lit8 v10, v10, 0x1

    .line 177
    :cond_9
    aget v9, v4, v6

    add-int/2addr v9, v10

    aput v9, v4, v6

    const-string v9, "stateHit +"

    .line 178
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    .line 179
    :cond_a
    iget-object v7, v7, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    invoke-static {v7}, Lcom/byazt/iyp/n;->n(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v8, :cond_b

    const-string v7, "lottie ignored(marketing)"

    .line 180
    invoke-static {v5, v6, v7}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    goto :goto_4

    .line 181
    :cond_b
    aget v7, v4, v6

    add-int/lit8 v7, v7, 0x2

    aput v7, v4, v6

    const-string v7, "lottieAnimating +2"

    .line 182
    invoke-static {v5, v6, v7}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 183
    :cond_d
    new-array v6, v3, [F

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_e

    .line 184
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/iyp/n$n;

    iget-object v8, v8, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    invoke-static {v8}, Lcom/byazt/iyp/n;->uj(Landroid/view/View;)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    const v7, 0x3e19999a    # 0.15f

    .line 185
    invoke-static {v6, v7}, Lcom/byazt/iyp/n;->c([FF)I

    move-result v6

    if-eq v6, v0, :cond_10

    .line 186
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/iyp/n$n;

    iget-object p0, p0, Lcom/byazt/iyp/n$n;->ve:Ljava/lang/String;

    invoke-static {p0}, Lcom/byazt/iyp/n;->ve(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "alphaOdd ignored(marketing)"

    .line 187
    invoke-static {v5, v6, p0}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    goto :goto_6

    .line 188
    :cond_f
    aget p0, v4, v6

    add-int/lit8 p0, p0, 0x2

    aput p0, v4, v6

    const-string p0, "alphaOdd +2"

    .line 189
    invoke-static {v5, v6, p0}, Lcom/byazt/iyp/n;->c(Ljava/util/Map;ILjava/lang/String;)V

    :cond_10
    :goto_6
    const/high16 p0, -0x80000000

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const/4 v8, -0x1

    :goto_7
    if-ge v6, v3, :cond_12

    .line 190
    aget v9, v4, v6

    if-le v9, v7, :cond_11

    move v8, v6

    move v7, v9

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_12
    if-gtz v7, :cond_13

    .line 191
    new-instance p0, Lcom/byazt/iyp/n$ve;

    const-string v2, "no strong signals"

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/iyp/n$ve;-><init>(IILjava/lang/String;)V

    return-object p0

    :cond_13
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_15

    if-eq v0, v8, :cond_14

    .line 192
    aget v6, v4, v0

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    sub-int p0, v7, p0

    .line 193
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v7

    .line 194
    new-instance v0, Lcom/byazt/iyp/n$ve;

    if-eqz v2, :cond_16

    if-eqz v5, :cond_16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_16
    const-string v1, ""

    :goto_9
    invoke-direct {v0, v8, p0, v1}, Lcom/byazt/iyp/n$ve;-><init>(IILjava/lang/String;)V

    return-object v0

    .line 195
    :cond_17
    :goto_a
    new-instance p0, Lcom/byazt/iyp/n$ve;

    const-string v2, "no tabs"

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/iyp/n$ve;-><init>(IILjava/lang/String;)V

    return-object p0
.end method

.method public static synthetic c(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/iyp/n;->tt(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    if-eqz p0, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 145
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_2

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    :cond_1
    move-object p1, v0

    .line 149
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 150
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static c([B)Ljava/lang/String;
    .locals 3

    .line 153
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 154
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 155
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private static c(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 7
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/iyp/n$n;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/byazt/iyp/n;->tt(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 93
    invoke-static {p0, v0}, Lcom/byazt/iyp/n;->c(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 94
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 97
    sget-object v3, Lcom/byazt/iyp/n;->sl:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 100
    invoke-static {v2}, Lcom/byazt/iyp/n;->tt(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 101
    new-instance v5, Lcom/byazt/iyp/n$n;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/byazt/iyp/n$n;-><init>(ILandroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 102
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static c(Landroid/view/View;Lcom/byazt/iyp/n$c;)V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 220
    iget v0, p1, Lcom/byazt/iyp/n$c;->c:F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    add-float/2addr v0, p0

    iput v0, p1, Lcom/byazt/iyp/n$c;->c:F

    .line 221
    iget p0, p1, Lcom/byazt/iyp/n$c;->tt:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/byazt/iyp/n$c;->tt:I

    return-void

    .line 222
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Lcom/byazt/iyp/n$c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Landroid/view/View;Lcom/byazt/iyp/n$uj;)V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    if-eqz p0, :cond_6

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p1, Lcom/byazt/iyp/n$uj;->tt:Z

    .line 200
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lcom/byazt/iyp/n$uj;->ve:Z

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lcom/byazt/iyp/n$uj;->uj:Z

    .line 202
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/byazt/iyp/n$uj;->n:Z

    .line 203
    :cond_4
    invoke-static {p0}, Lcom/byazt/iyp/n;->sp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p1, Lcom/byazt/iyp/n$uj;->a:Z

    .line 204
    :cond_5
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 205
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Lcom/byazt/iyp/n$uj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 12
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_9

    .line 104
    :cond_0
    sget-object v0, Lcom/byazt/iyp/n;->i:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 107
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz p0, :cond_11

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 109
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const v3, 0x3eb33333    # 0.35f

    if-ltz v1, :cond_8

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 111
    sget-object v5, Lcom/byazt/iyp/n;->da:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 113
    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 115
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v4, v4

    int-to-float v6, p0

    const v7, 0x3f6b851f    # 0.92f

    mul-float v7, v7, v6

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    int-to-float v7, v5

    int-to-float v8, v0

    const v9, 0x3f19999a    # 0.6f

    mul-float v8, v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const v7, 0x3cf5c28f    # 0.03f

    mul-float v7, v7, v6

    cmpg-float v7, v4, v7

    if-lez v7, :cond_6

    int-to-float v5, v5

    int-to-float v7, v0

    const v8, 0x3df5c28f    # 0.12f

    mul-float v8, v8, v7

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    goto :goto_1

    :cond_4
    const v8, 0x3d8f5c29    # 0.07f

    mul-float v6, v6, v8

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_5

    mul-float v7, v7, v3

    cmpg-float v3, v5, v7

    if-gez v3, :cond_7

    .line 117
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 118
    :cond_6
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 119
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_b

    const/4 v6, 0x0

    :goto_4
    sub-int v7, v5, v4

    if-ge v6, v7, :cond_a

    .line 120
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 121
    sget-object v8, Lcom/byazt/iyp/n;->da:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 122
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    add-int/lit8 v10, v6, 0x1

    .line 123
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 124
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v11, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 125
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    if-le v9, v8, :cond_9

    .line 126
    invoke-interface {p1, v6, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p1, v10, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move v6, v10

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 128
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_5
    if-lez v0, :cond_11

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    add-int/lit8 v5, v0, -0x1

    .line 130
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 131
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 133
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, p0

    const v9, 0x3d75c28f    # 0.06f

    mul-float v8, v8, v9

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_d

    .line 134
    invoke-static {v7, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 135
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 137
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v9, v9, v8

    .line 138
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int v8, v8, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int v10, v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v9, v9

    int-to-float v8, v8

    mul-float v8, v8, v3

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    if-nez v6, :cond_e

    if-eqz v8, :cond_10

    .line 139
    :cond_e
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v6, v6, v7

    .line 140
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v7, v7, v4

    if-lt v6, v7, :cond_f

    .line 141
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 142
    :cond_f
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    :cond_11
    :goto_9
    return-void
.end method

.method private static c(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 197
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 3
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 3
    sget-object v0, Lcom/byazt/iyp/n;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/iyp/n$n;

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v2, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/iyp/n;->tt(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static n(Landroid/view/View;)Z
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/byazt/iyp/n;->a(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast p0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v1, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/byazt/iyp/n;->n(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    return v0
.end method

.method private static sp(Landroid/view/View;)Z
    .locals 6
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    sget-boolean v1, Lcom/byazt/iyp/n;->tt:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :catchall_0
    nop

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    sput-boolean v0, Lcom/byazt/iyp/n;->tt:Z

    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/byazt/iyp/n;->uj:Z

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    sget-boolean v1, Lcom/byazt/iyp/n;->n:Z

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    :try_start_1
    const-class v1, Landroid/view/View;

    .line 37
    .line 38
    const-string v4, "isHovered"

    .line 39
    .line 40
    new-array v5, v0, [Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/byazt/iyp/n;->ve:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    :try_start_2
    sput-boolean v2, Lcom/byazt/iyp/n;->n:Z

    .line 53
    .line 54
    sput-object v3, Lcom/byazt/iyp/n;->ve:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    .line 56
    :goto_1
    sput-boolean v2, Lcom/byazt/iyp/n;->uj:Z

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    sput-boolean v2, Lcom/byazt/iyp/n;->uj:Z

    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    :goto_2
    sget-object v1, Lcom/byazt/iyp/n;->ve:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    sget-boolean v4, Lcom/byazt/iyp/n;->n:Z

    .line 68
    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    :try_start_3
    new-array v4, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    check-cast p0, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    return v2

    .line 90
    :cond_3
    return v0

    .line 91
    :catchall_3
    sput-boolean v2, Lcom/byazt/iyp/n;->n:Z

    .line 92
    .line 93
    sput-object v3, Lcom/byazt/iyp/n;->ve:Ljava/lang/reflect/Method;

    .line 94
    .line 95
    :cond_4
    :goto_3
    return v0
.end method

.method private static tt(Landroid/view/View;Ljava/lang/String;)I
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    return p0

    .line 11
    :cond_2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 12
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/byazt/iyp/n;->tt(Landroid/view/View;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private static tt(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 3
    invoke-static {p0, v0}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tt(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static tt()V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/byazt/iyp/n;->c:Ljava/util/List;

    .line 2
    invoke-static {}, Lcom/byazt/iyp/uj;->ve()V

    return-void
.end method

.method private static tt(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/byazt/iyp/n$n;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/iyp/n$n;

    .line 16
    iget-object v0, p1, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/byazt/iyp/uj;->c(Landroid/view/View;Lcom/byazt/iyp/n$n;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static tt(Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static uj(Landroid/view/View;)F
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 10
    sget-object v0, Lcom/byazt/iyp/n;->t:Lcom/byazt/iyp/n$c;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/byazt/iyp/n$c;->c:F

    const/4 v1, 0x0

    .line 12
    iput v1, v0, Lcom/byazt/iyp/n$c;->tt:I

    .line 13
    invoke-static {p0, v0}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Lcom/byazt/iyp/n$c;)V

    .line 14
    iget p0, v0, Lcom/byazt/iyp/n$c;->tt:I

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget v0, v0, Lcom/byazt/iyp/n$c;->c:F

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static uj()I
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/iyp/da;->uj()V

    .line 2
    sget-object v0, Lcom/byazt/iyp/n;->c:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/iyp/n$n;

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, v3, Lcom/byazt/iyp/n$n;->tt:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    :cond_2
    invoke-static {}, Lcom/byazt/iyp/da;->n()V

    return v1

    .line 7
    :cond_3
    invoke-static {v0}, Lcom/byazt/iyp/n;->c(Ljava/util/List;)Lcom/byazt/iyp/n$ve;

    move-result-object v0

    .line 8
    iget v1, v0, Lcom/byazt/iyp/n$ve;->c:I

    iget v2, v0, Lcom/byazt/iyp/n$ve;->tt:I

    iget-object v3, v0, Lcom/byazt/iyp/n$ve;->ve:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/byazt/iyp/da;->tt(IILjava/lang/String;)V

    .line 9
    iget v0, v0, Lcom/byazt/iyp/n$ve;->c:I

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private static ve(Landroid/view/View;)Lcom/byazt/iyp/n$uj;
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 11
    sget-object v0, Lcom/byazt/iyp/n;->u:Lcom/byazt/iyp/n$uj;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->a:Z

    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->n:Z

    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->uj:Z

    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->ve:Z

    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->tt:Z

    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->c:Z

    .line 13
    invoke-static {p0, v0}, Lcom/byazt/iyp/n;->c(Landroid/view/View;Lcom/byazt/iyp/n$uj;)V

    .line 14
    iget-boolean p0, v0, Lcom/byazt/iyp/n$uj;->tt:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/byazt/iyp/n$uj;->ve:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/byazt/iyp/n$uj;->uj:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/byazt/iyp/n$uj;->n:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/byazt/iyp/n$uj;->a:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Lcom/byazt/iyp/n$uj;->c:Z

    return-object v0
.end method

.method public static ve()Ljava/util/List;
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/iyp/n$n;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/iyp/n;->c:Ljava/util/List;

    return-object v0
.end method

.method private static ve(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    new-array v2, v1, [B

    .line 2
    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    .line 3
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    .line 4
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    .line 5
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    .line 6
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    .line 7
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    .line 8
    invoke-static {v2}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    .line 9
    invoke-static {v1}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    .line 10
    invoke-static {v1}, Lcom/byazt/iyp/n;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 1
        -0x24t
        -0x52t
        -0x50t
        -0x21t
        0x7dt
        -0x79t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x21t
        -0x76t
        -0x64t
        -0x25t
        -0x52t
        0x77t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x23t
        -0x64t
        -0x7bt
        -0x25t
        0x7et
        -0x61t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x22t
        -0x55t
        -0x70t
        -0x21t
        -0x78t
        -0x59t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x24t
        -0x7bt
        -0x7at
        -0x23t
        -0x7ct
        -0x5at
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x23t
        -0x50t
        -0x68t
        -0x25t
        -0x7et
        0x7bt
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x24t
        -0x56t
        -0x4ft
        -0x25t
        -0x80t
        -0x62t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x26t
        -0x4ft
        -0x4ft
        -0x25t
        -0x80t
        -0x69t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x22t
        -0x55t
        -0x70t
    .end array-data
.end method
