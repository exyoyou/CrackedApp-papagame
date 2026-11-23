.class public Lcom/byazt/sa/tt;
.super Lcom/byazt/xj/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nw/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31b,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/c<",
        "Lcom/byazt/nw/Swiper;",
        ">;",
        "Lcom/byazt/nw/c;"
    }
.end annotation


# instance fields
.field public az:Ljava/lang/String;

.field public ca:I

.field public cf:F

.field public cl:I

.field public di:I

.field public e:Z

.field public ej:Z

.field public gk:Z

.field public hg:F

.field public ij:Ljava/lang/String;

.field public is:F

.field public iw:I

.field public iy:F

.field public jg:Ljava/lang/String;

.field public jt:F

.field public k:F

.field public kz:Z

.field public mq:F

.field public nc:F

.field public nl:F

.field public nx:Z

.field public pe:Z

.field public pl:I

.field public sd:Lorg/json/JSONArray;

.field public vi:F

.field public vp:Z

.field public w:F

.field public yo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/sa/tt;->yo:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->vp:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->kz:Z

    .line 11
    .line 12
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 13
    .line 14
    iput v1, p0, Lcom/byazt/sa/tt;->vi:F

    .line 15
    .line 16
    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput v1, p0, Lcom/byazt/sa/tt;->mq:F

    .line 19
    .line 20
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 21
    .line 22
    iput v1, p0, Lcom/byazt/sa/tt;->cf:F

    .line 23
    .line 24
    const-string v1, "slide"

    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/sa/tt;->ij:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "dot"

    .line 29
    .line 30
    iput-object v1, p0, Lcom/byazt/sa/tt;->az:Ljava/lang/String;

    .line 31
    .line 32
    const/high16 v1, 0x41000000    # 8.0f

    .line 33
    .line 34
    iput v1, p0, Lcom/byazt/sa/tt;->is:F

    .line 35
    .line 36
    iput v1, p0, Lcom/byazt/sa/tt;->jt:F

    .line 37
    .line 38
    const/high16 v2, 0x42480000    # 50.0f

    .line 39
    .line 40
    iput v2, p0, Lcom/byazt/sa/tt;->w:F

    .line 41
    .line 42
    const/high16 v2, 0x42b40000    # 90.0f

    .line 43
    .line 44
    iput v2, p0, Lcom/byazt/sa/tt;->nl:F

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/byazt/sa/tt;->ej:Z

    .line 47
    .line 48
    const-string v2, "#666666"

    .line 49
    .line 50
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, p0, Lcom/byazt/sa/tt;->pl:I

    .line 55
    .line 56
    const-string v2, "#ffffff"

    .line 57
    .line 58
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, p0, Lcom/byazt/sa/tt;->di:I

    .line 63
    .line 64
    const-string v2, "row"

    .line 65
    .line 66
    iput-object v2, p0, Lcom/byazt/sa/tt;->jg:Ljava/lang/String;

    .line 67
    .line 68
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    iput v2, p0, Lcom/byazt/sa/tt;->hg:F

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lcom/byazt/sa/tt;->k:F

    .line 74
    .line 75
    iput v2, p0, Lcom/byazt/sa/tt;->iy:F

    .line 76
    .line 77
    iput v2, p0, Lcom/byazt/sa/tt;->nc:F

    .line 78
    .line 79
    iput p1, p0, Lcom/byazt/sa/tt;->ca:I

    .line 80
    .line 81
    iput p1, p0, Lcom/byazt/sa/tt;->cl:I

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->gk:Z

    .line 84
    .line 85
    iput-boolean p1, p0, Lcom/byazt/sa/tt;->e:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->pe:Z

    .line 88
    .line 89
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {p1, v1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lcom/byazt/sa/tt;->is:F

    .line 96
    .line 97
    iput p1, p0, Lcom/byazt/sa/tt;->jt:F

    .line 98
    .line 99
    return-void
.end method

.method private a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/byazt/sa/tt;->iw:I

    .line 7
    .line 8
    const-string v1, "SwiperView://reloop"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/sa/tt;->kk()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, v3

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    .line 22
    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v4, v2

    .line 30
    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/byazt/pm/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v0, p0, Lcom/byazt/sa/tt;->iw:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/byazt/sa/tt;->kk()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v3

    .line 41
    if-ne v0, v4, :cond_2

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    .line 46
    .line 47
    new-array v0, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v0, v2

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Lcom/byazt/pm/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private b()V
    .locals 7

    .line 1
    const-string v0, "$chunk"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/byazt/xj/ve;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/byazt/sa/tt;->sd:Lorg/json/JSONArray;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/byazt/sa/tt;->sd:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Lcom/byazt/sz/z;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v3}, Lcom/byazt/sa/tt;->c(Lcom/byazt/sz/z;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/byazt/sa/tt;->sd:Lorg/json/JSONArray;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v6, "$item"

    .line 64
    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    :try_start_1
    iget-object v5, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v5, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {v3, v4, v5, v6}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 94
    .line 95
    check-cast v4, Lcom/byazt/nw/Swiper;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Lcom/byazt/nw/BaseSwiper;->c(Ljava/lang/Object;)Lcom/byazt/nw/BaseSwiper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :catchall_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sa/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private c(Lcom/byazt/sz/z;)V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/byazt/sa/tt;->e:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/byazt/sa/tt$1;

    invoke-direct {v0, p0}, Lcom/byazt/sa/tt$1;-><init>(Lcom/byazt/sa/tt;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/a;)V

    :cond_0
    return-void
.end method

.method private c(ZIF)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/byazt/sa/tt;->kk()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/sa/tt;->pe:Z

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    const-string p2, "SwiperView://finish"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/byazt/pm/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-boolean p3, p0, Lcom/byazt/sa/tt;->pe:Z

    :cond_1
    return-void
.end method

.method private kk()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/sa/tt;->ca:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/sa/tt;->sd:Lorg/json/JSONArray;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_2
    return v2
.end method

.method private q()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/byazt/xj/ve;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/byazt/sz/z;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2}, Lcom/byazt/sa/tt;->c(Lcom/byazt/sz/z;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v2, v1, v3, v4}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 47
    .line 48
    check-cast v2, Lcom/byazt/nw/Swiper;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/byazt/nw/BaseSwiper;->c(Ljava/lang/Object;)Lcom/byazt/nw/BaseSwiper;

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method private sp(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->pn:Lcom/byazt/pm/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/byazt/sa/tt;->nx:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    xor-int/2addr v1, v2

    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    iget v4, p0, Lcom/byazt/sa/tt;->iw:I

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v4, v3, v5

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v3, v2

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v3, p1

    .line 34
    .line 35
    const-string p1, "SwiperView://slide"

    .line 36
    .line 37
    invoke-virtual {v0, p1, v3}, Lcom/byazt/pm/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/sa/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/nw/Swiper;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/nw/Swiper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/nw/Swiper;->c(Lcom/byazt/sa/uj;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object v0
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 7
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dataList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "indicatorSelectedColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "pageMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "pageCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "allowTouchMove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "indicatorDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "previousMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "indicatorY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "indicatorX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "indicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "disableOnInteraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "direction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "driveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "nextMargin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "indicatorHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "indicatorWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "indicatorStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "indicatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "startIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "startDelay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x0

    :goto_0
    const/high16 p1, 0x41000000    # 8.0f

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/byazt/cd/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sa/tt;->sd:Lorg/json/JSONArray;

    return-void

    .line 11
    :pswitch_1
    invoke-static {p2, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sa/tt;->kz:Z

    return-void

    .line 12
    :pswitch_2
    iget p1, p0, Lcom/byazt/sa/tt;->di:I

    invoke-static {p2, p1}, Lcom/byazt/cd/c;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->di:I

    return-void

    .line 13
    :pswitch_3
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->k:F

    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->hg:F

    return-void

    .line 15
    :pswitch_5
    invoke-static {p2, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sa/tt;->gk:Z

    return-void

    .line 16
    :pswitch_6
    iput-object p2, p0, Lcom/byazt/sa/tt;->jg:Ljava/lang/String;

    return-void

    :pswitch_7
    const/high16 p1, 0x43fa0000    # 500.0f

    .line 17
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->vi:F

    return-void

    :pswitch_8
    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 18
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->cf:F

    return-void

    .line 19
    :pswitch_9
    invoke-static {p2, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sa/tt;->vp:Z

    return-void

    .line 20
    :pswitch_a
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->iy:F

    return-void

    :pswitch_b
    const/high16 p1, 0x42b40000    # 90.0f

    .line 21
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->nl:F

    return-void

    :pswitch_c
    const/high16 p1, 0x42480000    # 50.0f

    .line 22
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->w:F

    return-void

    .line 23
    :pswitch_d
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sa/tt;->ej:Z

    return-void

    .line 24
    :pswitch_e
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sa/tt;->e:Z

    :goto_1
    return-void

    :pswitch_f
    const-string p1, "vertical"

    .line 25
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 26
    iput v1, p0, Lcom/byazt/sa/tt;->yo:I

    return-void

    .line 27
    :cond_1a
    iput v2, p0, Lcom/byazt/sa/tt;->yo:I

    return-void

    .line 28
    :pswitch_10
    iput-object p2, p0, Lcom/byazt/sa/tt;->ij:Ljava/lang/String;

    return-void

    .line 29
    :pswitch_11
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->ca:I

    return-void

    .line 30
    :pswitch_12
    iget-object p1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->nc:F

    return-void

    .line 31
    :pswitch_13
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->jt:F

    return-void

    .line 32
    :pswitch_14
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->is:F

    return-void

    .line 33
    :pswitch_15
    iput-object p2, p0, Lcom/byazt/sa/tt;->az:Ljava/lang/String;

    return-void

    .line 34
    :pswitch_16
    iget p1, p0, Lcom/byazt/sa/tt;->pl:I

    invoke-static {p2, p1}, Lcom/byazt/cd/c;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->pl:I

    return-void

    .line 35
    :pswitch_17
    invoke-static {p2, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->cl:I

    return-void

    :pswitch_18
    const/high16 p1, -0x40800000    # -1.0f

    .line 36
    invoke-static {p2, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/sa/tt;->mq:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f478dbf -> :sswitch_18
        -0x5efd1e70 -> :sswitch_17
        -0x5dec0d6c -> :sswitch_16
        -0x5d081f1e -> :sswitch_15
        -0x5cd50f09 -> :sswitch_14
        -0x579bcbea -> :sswitch_13
        -0x56a0457f -> :sswitch_12
        -0x51808db3 -> :sswitch_11
        -0x4dd9466f -> :sswitch_10
        -0x395ff881 -> :sswitch_f
        -0x32ffa355 -> :sswitch_e
        -0x2a7041f1 -> :sswitch_d
        -0x2397fbd7 -> :sswitch_c
        -0x2397fbd6 -> :sswitch_b
        -0xc0b287b -> :sswitch_a
        0x32c6a4 -> :sswitch_9
        0x5b0b983 -> :sswitch_8
        0x6890047 -> :sswitch_7
        0xba5ca30 -> :sswitch_6
        0x1dacf667 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(ZI)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->nx:Z

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 43
    iput-boolean v0, p0, Lcom/byazt/sa/tt;->pe:Z

    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/byazt/sa/tt;->nx:Z

    return-void
.end method

.method public c(ZIFI)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/sa/tt;->c(ZIF)V

    return-void
.end method

.method public c(ZIIZZ)V
    .locals 0

    .line 38
    iget p1, p0, Lcom/byazt/sa/tt;->iw:I

    if-eq p1, p2, :cond_0

    .line 39
    invoke-direct {p0, p2}, Lcom/byazt/sa/tt;->a(I)V

    .line 40
    invoke-direct {p0, p2}, Lcom/byazt/sa/tt;->sp(I)V

    .line 41
    iput p2, p0, Lcom/byazt/sa/tt;->iw:I

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/c;->tt()V

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/nw/Swiper;

    iget v1, p0, Lcom/byazt/sa/tt;->vi:F

    float-to-int v1, v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->ve(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/sa/tt;->e:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->n(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sa/tt;->az:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->c(Ljava/lang/String;)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->is:F

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->c(F)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->jt:F

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->tt(F)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->w:F

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->ve(F)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->nl:F

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->uj(F)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sa/tt;->jg:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->tt(Ljava/lang/String;)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->yo:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->c(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/nw/BaseSwiper;->tt()Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/sa/tt;->vp:Z

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->uj(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/sa/tt;->kz:Z

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->c(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->vi:F

    float-to-int v1, v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->tt(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->cf:F

    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->uj(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->mq:F

    float-to-int v1, v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->n(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/sa/tt;->gk:Z

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->tt(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/sa/tt;->ej:Z

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->ve(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->pl:I

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->sp(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->di:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->a(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->iy:F

    float-to-int v1, v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->i(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->nc:F

    float-to-int v1, v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->da(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->k:F

    float-to-int v1, v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->x(I)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->hg:F

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->n(F)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sa/tt;->ij:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->ve(Ljava/lang/String;)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    iget v1, p0, Lcom/byazt/sa/tt;->cl:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->yp(I)V

    .line 29
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/nw/Swiper;

    invoke-virtual {v0, p0}, Lcom/byazt/nw/BaseSwiper;->setOnPageChangeListener(Lcom/byazt/nw/c;)V

    .line 30
    iget v0, p0, Lcom/byazt/sa/tt;->ca:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/byazt/sa/tt;->q()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/byazt/sa/tt;->b()V

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/nw/Swiper;

    invoke-virtual {v0}, Lcom/byazt/nw/BaseSwiper;->ve()V

    return-void
.end method
